% Represents a trajectory in operational space
%
% Author        : Jonathan EDEN
% Created       : 2016
% Description   :
classdef OperationalTrajectory < TrajectoryBase
    properties
        y           % The op coordinate as a cell array
        y_dot       % The op coordinate derivative as a cell array
        y_ddot      % The op coordinate double derivative as a cell array
    end
    
    methods        
        % Plots the operational space
        function plotOperationalSpace(obj, states_to_plot)
            n_operational_dof = length(obj.y{1});
            
            if nargin == 1 || isempty(states_to_plot)
                states_to_plot = 1:n_operational_dof;
            end
            
            y_vector = cell2mat(obj.q);
            yd_vector = cell2mat(obj.q_dot);
            ydd_vector = cell2mat(obj.q_ddot);
            
            figure;
            title('Trajectory');
            plot(obj.timeVector, y_vector(states_to_plot, :), 'Color', 'k', 'LineWidth', 1.5);
            
            figure;
            title('Trajectory velocity');
            plot(obj.timeVector, yd_vector(states_to_plot, :), 'Color', 'k', 'LineWidth', 1.5);
            
            figure;
            title('Trajectory acceleration');
            plot(obj.timeVector, ydd_vector(states_to_plot, :), 'Color', 'k', 'LineWidth', 1.5);
        end
    end
    
    methods (Static)
        % Loads all trajectories from XML configuration
        function [trajectory] = LoadXmlObj(xmlObj, bodiesObj)
            node_name = xmlObj.getNodeName;
            % First select the type of trajectory and then pass it to 
            % individual functions
            if (strcmp(node_name, 'linear_spline_trajectory'))
                trajectory = OperationalTrajectory.LinearTrajectoryLoadXmlObj(xmlObj, bodiesObj);
            elseif (strcmp(node_name, 'cubic_spline_trajectory'))
                trajectory = OperationalTrajectory.CubicTrajectoryLoadXmlObj(xmlObj, bodiesObj);
            elseif (strcmp(node_name, 'quintic_spline_trajectory'))
                trajectory = OperationalTrajectory.QuinticTrajectoryLoadXmlObj(xmlObj, bodiesObj);
            elseif (strcmp(node_name, 'cubic_spline_average_velocity_trajectory'))
                trajectory = OperationalTrajectory.CubicTrajectoryAverageVelocityLoadXmlObj(xmlObj, bodiesObj);
            elseif (strcmp(node_name, 'parabolic_blend_trajectory'))
                trajectory = OperationalTrajectory.ParabolicBlendTrajectoryLoadXmlObj(xmlObj, bodiesObj);
            else
                CASPR_log.Error('Trajectory type in XML undefined');
            end
        end
        
        % Perform linear trajectory spline to produce trajectory
        function [trajectory] = LinearTrajectoryLoadXmlObj(xmlObj, bodiesObj)
            CASPR_log.Assert(strcmp(xmlObj.getNodeName, 'linear_spline_trajectory'), 'Element should be <linear_spline_trajectory>');
            trajectory = OperationalTrajectory;
            points_node = xmlObj.getElementsByTagName('points').item(0);
            point_nodes = points_node.getChildNodes;
            num_points = point_nodes.getLength;
            time_step = str2double(xmlObj.getAttribute('time_step'));
            
            time_abs = TrajectoryBase.get_xml_absolute_tag(xmlObj);
                  
            % Cell of points of joints coordinates
            y_pj = cell(num_points,1); 
            time_points_abs = zeros(1, num_points);
            
            y_trajectory = [];
            y_d_trajectory = [];
            y_dd_trajectory = [];
            
            % First process the data and save it to variables
            for p = 1:num_points
                point_node = point_nodes.item(p-1);
                y = XmlOperations.StringToVector(char(point_node.getElementsByTagName('y').item(0).getFirstChild.getData));
                % Error checking on whether the XML file is valid
                CASPR_log.Assert(length(y) == bodiesObj.numOperationalDofs, sprintf('Trajectory config point does not contain correct number of operational space variables, desired : %d, specified : %d', bodiesObj.numOperationalDofs, length(y)));
                               
                y_pj{p} = mat2cell(y, bodiesObj.operationalSpaceNumDofs);
                
                if (p == 1)
                    time_points_abs(p) = 0.0;
                elseif (time_abs)
                    time_points_abs(p) = str2double(point_node.getAttribute('time'));
                else
                    time_points_abs(p) = time_points_abs(p-1) + str2double(point_node.getAttribute('time'));
                end
            end
                                   
            % Generate the trajectory between the points
            for p = 1:num_points-1
                y_section = [];
                y_d_section = [];
                y_dd_section = [];
                time_section = time_points_abs(p):time_step:time_points_abs(p+1);
                for j = 1:bodiesObj.numOperationalSpaces
                    % NEED TO UPDATE THIS
                    [y_op, y_d_op, y_dd_op] = bodiesObj.bodies{bodiesObj.operationalSpaceBodyIndices(j)}.operationalSpace.generateTrajectoryLinearSpline(y_pj{p}{j}, y_pj{p+1}{j}, time_section);
                    y_section = [y_section; y_op];
                    y_d_section = [y_d_section; y_d_op];
                    y_dd_section = [y_dd_section; y_dd_op];
                end
                if (p > 1)
                    y_section(:,1) = [];
                    y_d_section(:,1) = [];
                    y_dd_section(:,1) = [];
                    time_section(:,1) = [];
                end
                
                y_trajectory = [y_trajectory y_section];
                y_d_trajectory = [y_d_trajectory y_d_section];
                y_dd_trajectory = [y_dd_trajectory y_dd_section];
                trajectory.timeVector = [trajectory.timeVector time_section];
            end            
            trajectory.y = mat2cell(y_trajectory, size(y_trajectory,1), ones(size(y_trajectory,2),1));
            trajectory.y_dot = mat2cell(y_d_trajectory, size(y_d_trajectory,1), ones(size(y_d_trajectory,2),1));
            trajectory.y_ddot = mat2cell(y_dd_trajectory, size(y_dd_trajectory,1), ones(size(y_dd_trajectory,2),1));
        end
        
        % Perform quintic trajectory spline to produce trajectory
        function [trajectory] = CubicTrajectoryLoadXmlObj(xmlObj, bodiesObj)
            CASPR_log.Error('Function has not been implemented yet');
        end
        
        % Perform quintic trajectory spline to produce trajectory
        function [trajectory] = QuinticTrajectoryLoadXmlObj(xmlObj, bodiesObj)
            CASPR_log.Assert(strcmp(xmlObj.getNodeName, 'quintic_spline_trajectory'), 'Element should be <quintic_spline_trajectory>');
            trajectory = OperationalTrajectory;
            points_node = xmlObj.getElementsByTagName('points').item(0);
            point_nodes = points_node.getChildNodes;
            num_points = point_nodes.getLength;
            time_step = str2double(xmlObj.getAttribute('time_step'));
            
            time_abs = TrajectoryBase.get_xml_absolute_tag(xmlObj);
                  
            % Cell of points of joints coordinates
            y_pj = cell(num_points,1); 
            y_d_pj = cell(num_points,1);
            y_dd_pj = cell(num_points,1);
            time_points_abs = zeros(1, num_points);
            
            y_trajectory = [];
            y_d_trajectory = [];
            y_dd_trajectory = [];
            
            % First process the data and save it to variables
            for p = 1:num_points
                point_node = point_nodes.item(p-1);
                y = XmlOperations.StringToVector(char(point_node.getElementsByTagName('y').item(0).getFirstChild.getData));
                y_d = XmlOperations.StringToVector(char(point_node.getElementsByTagName('y_dot').item(0).getFirstChild.getData));
                y_dd = XmlOperations.StringToVector(char(point_node.getElementsByTagName('y_ddot').item(0).getFirstChild.getData));
                % Error checking on whether the XML file is valid
                CASPR_log.Assert(length(y) == bodiesObj.numOperationalDofs, sprintf('Trajectory config point does not contain correct number of operational space variables, desired : %d, specified : %d', bodiesObj.numOperationalDofs, length(y)));
                CASPR_log.Assert(length(y_d) == bodiesObj.numOperationalDofs, sprintf('Trajectory config point does not contain correct number of operational space variables, desired : %d, specified : %d', bodiesObj.numOperationalDofs, length(y_d)));
                CASPR_log.Assert(length(y_dd) == bodiesObj.numOperationalDofs, sprintf('Trajectory config point does not contain correct number of operational space variables, desired : %d, specified : %d', bodiesObj.numOperationalDofs, length(y_dd)));
                               
                y_pj{p} = mat2cell(y, bodiesObj.operationalSpaceNumDofs);
                y_d_pj{p} = mat2cell(y_d, bodiesObj.operationalSpaceNumDofs);
                y_dd_pj{p} = mat2cell(y_dd, bodiesObj.operationalSpaceNumDofs);
                
                if (p == 1)
                    time_points_abs(p) = 0.0;
                elseif (time_abs)
                    time_points_abs(p) = str2double(point_node.getAttribute('time'));
                else
                    time_points_abs(p) = time_points_abs(p-1) + str2double(point_node.getAttribute('time'));
                end
            end
                                   
            % Generate the trajectory between the points
            for p = 1:num_points-1
                y_section = [];
                y_d_section = [];
                y_dd_section = [];
                time_section = time_points_abs(p):time_step:time_points_abs(p+1);
                for j = 1:bodiesObj.numOperationalSpaces
                    [y_op, y_d_op, y_dd_op] = bodiesObj.bodies{bodiesObj.operationalSpaceBodyIndices(j)}.operationalSpace.generateTrajectoryQuinticSpline(y_pj{p}{j}, y_d_pj{p}{j}, y_dd_pj{p}{j}, y_pj{p+1}{j}, y_d_pj{p+1}{j}, y_dd_pj{p+1}{j}, time_section);
                    
                    y_section = [y_section; y_op];
                    y_d_section = [y_d_section; y_d_op];
                    y_dd_section = [y_dd_section; y_dd_op];
                end
                if (p > 1)
                    y_section(:,1) = [];
                    y_d_section(:,1) = [];
                    y_dd_section(:,1) = [];
                    time_section(:,1) = [];
                end
                
                y_trajectory = [y_trajectory y_section];
                y_d_trajectory = [y_d_trajectory y_d_section];
                y_dd_trajectory = [y_dd_trajectory y_dd_section];
                trajectory.timeVector = [trajectory.timeVector time_section];
            end            
            trajectory.y = mat2cell(y_trajectory, size(y_trajectory,1), ones(size(y_trajectory,2),1));
            trajectory.y_dot = mat2cell(y_d_trajectory, size(y_d_trajectory,1), ones(size(y_d_trajectory,2),1));
            trajectory.y_ddot = mat2cell(y_dd_trajectory, size(y_dd_trajectory,1), ones(size(y_dd_trajectory,2),1));
        end        
        
        function [trajectory] = CubicTrajectoryAverageVelocityLoadXmlObj(xmlObj, bodiesObj)
            CASPR_log.Error('Function has not been implemented yet');
        end       
        
        function [trajectory] = ParabolicBlendTrajectoryLoadXmlObj(xmlObj, bodiesObj)
            CASPR_log.Error('Function has not been implemented yet');
        end       
        
        % Loads a complete trajectory by reading a .traj file
        function [trajectory_all, force_trajectory] = LoadCompleteTrajectory(traj_file,model)
            CASPR_log.Error('Function has not been implemented yet');
        end
    end
end