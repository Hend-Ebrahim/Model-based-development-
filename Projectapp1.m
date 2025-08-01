classdef Projectapp1 < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        UIFigure          matlab.ui.Figure
        ONOFFSwitch       matlab.ui.control.Switch
        ONOFFswitchLabel  matlab.ui.control.Label
        L2EditField       matlab.ui.control.NumericEditField
        L2EditFieldLabel  matlab.ui.control.Label
        L1EditField       matlab.ui.control.NumericEditField
        L1Label           matlab.ui.control.Label
        simulateButton    matlab.ui.control.Button
        UIAxes            matlab.ui.control.UIAxes
    end

    % Callbacks that handle component events
    methods (Access = private)

        % Value changed function: ONOFFSwitch
        function ONOFFSwitchValueChanged(app, event)
            value = app.ONOFFSwitch.Value;


        end

        % Button pushed function: simulateButton
        function simulateButtonPushed(app, event)
            l1 = app.L1EditField.Value;
l2 = app.L2EditField.Value;
theta = linspace(0, 360, 100); 
theta1 = 45 + 30 * sind(theta); 
theta2 = 90 + 30 * cosd(theta); 

x1 = l1*cosd(theta1);
y1 = l1*sind(theta1);
x2 = x1 + l2*cosd(theta1 + theta2);
y2 = y1 + l2*sind(theta1 + theta2);

p1 = plot(app.UIAxes, [0, x1(1)], [0, y1(1)]);
hold(app.UIAxes, 'on');
p2 = plot(app.UIAxes, [x1(1), x2(1)], [y1(1), y2(1)]);
xlim(app.UIAxes, [-2*l2, 2*l2]);
ylim(app.UIAxes, [-2*l2, 2*l2]);
plot(app.UIAxes, x2, y2)

while (app.ONOFFSwitch.Value == "On")
    for i = 1:length(theta1)
        delete(p1); delete(p2);
        p1 = plot(app.UIAxes, [0, x1(i)], [0, y1(i)], 'r');
        p2 = plot(app.UIAxes, [x1(i), x2(i)], [y1(i), y2(i)], 'b');
        drawnow
        pause(0.01)
    end
end

        end
    end

    % Component initialization
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Create UIFigure and hide until all components are created
            app.UIFigure = uifigure('Visible', 'off');
            app.UIFigure.Position = [100 100 640 480];
            app.UIFigure.Name = 'MATLAB App';

            % Create UIAxes
            app.UIAxes = uiaxes(app.UIFigure);
            title(app.UIAxes, 'Robot Arm simulation')
            xlabel(app.UIAxes, 'X')
            ylabel(app.UIAxes, 'Y')
            zlabel(app.UIAxes, 'Z')
            app.UIAxes.Position = [28 82 572 359];

            % Create simulateButton
            app.simulateButton = uibutton(app.UIFigure, 'push');
            app.simulateButton.ButtonPushedFcn = createCallbackFcn(app, @simulateButtonPushed, true);
            app.simulateButton.Position = [169 34 100 23];
            app.simulateButton.Text = 'simulate';

            % Create L1Label
            app.L1Label = uilabel(app.UIFigure);
            app.L1Label.HorizontalAlignment = 'right';
            app.L1Label.Position = [289 34 25 22];
            app.L1Label.Text = 'L1';

            % Create L1EditField
            app.L1EditField = uieditfield(app.UIFigure, 'numeric');
            app.L1EditField.Limits = [0.1 5];
            app.L1EditField.Position = [329 34 100 22];
            app.L1EditField.Value = 0.1;

            % Create L2EditFieldLabel
            app.L2EditFieldLabel = uilabel(app.UIFigure);
            app.L2EditFieldLabel.HorizontalAlignment = 'right';
            app.L2EditFieldLabel.Position = [448 34 25 22];
            app.L2EditFieldLabel.Text = 'L2';

            % Create L2EditField
            app.L2EditField = uieditfield(app.UIFigure, 'numeric');
            app.L2EditField.Limits = [0.1 5];
            app.L2EditField.Position = [488 34 100 22];
            app.L2EditField.Value = 0.1;

            % Create ONOFFswitchLabel
            app.ONOFFswitchLabel = uilabel(app.UIFigure);
            app.ONOFFswitchLabel.HorizontalAlignment = 'center';
            app.ONOFFswitchLabel.Position = [73 13 47 22];
            app.ONOFFswitchLabel.Text = 'ONOFF';

            % Create ONOFFSwitch
            app.ONOFFSwitch = uiswitch(app.UIFigure, 'slider');
            app.ONOFFSwitch.ValueChangedFcn = createCallbackFcn(app, @ONOFFSwitchValueChanged, true);
            app.ONOFFSwitch.Position = [74 38 45 20];
            app.ONOFFSwitch.Value = 'On';

            % Show the figure after all components are created
            app.UIFigure.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = Projectapp1

            % Create UIFigure and components
            createComponents(app)

            % Register the app with App Designer
            registerApp(app, app.UIFigure)

            if nargout == 0
                clear app
            end
        end

        % Code that executes before app deletion
        function delete(app)

            % Delete UIFigure when app is deleted
            delete(app.UIFigure)
        end
    end
end