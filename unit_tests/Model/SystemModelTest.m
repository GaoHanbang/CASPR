% Testing of the system model - ASK DARWIN
%
% Author        : Jonathan EDEN
% Created       : 2016
% Description    :
classdef SystemModelTest < matlab.unittest.TestCase
    % Create the model objects for testing
    properties (ClassSetupParameter)
        model_config_type = struct('SCDM', 'test_SCDM', ...
            'MCDM', 'test_MCDM', ...
            'Active_passive_cables', 'test_active_passive_cables');
    end
    
    properties
        modelObj;
    end
    
    % Setup the test case object
    methods (TestClassSetup)
        function setupModelObj(testCase, model_config_type)
            model_config = TestModelConfig(model_config_type);
            testCase.modelObj = model_config.getModel(model_config.defaultCableSetId);
        end
    end
    
    methods (Test)        
        % Test that L is of the correct size 
        function testL(testCase)
            disp('Testing the System Jacobian');
            L = testCase.modelObj.L;
            testCase.assertSize(L,[testCase.modelObj.numCables,testCase.modelObj.numDofVars],'L is not of the correct size');
        end
    end
end