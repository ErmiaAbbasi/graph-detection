load data.mat


% Polynomial
[f1,g1] = fit(x', y', 'poly5');

% Exponential
[f2,g2] = fit(x', y', 'exp2');

% fourier
[f3,g3] = fit(x', y', 'fourier5');
f3

% rational
[f4,g4] = fit(x',y','rat55');

% Display R^2
fprintf('Polynomial:     R^2 = %.6f\n', g1.rsquare);
fprintf('Exponential:  R^2 = %.6f\n', g2.rsquare);
fprintf('Fourier:      R^2 = %.6f\n', g3.rsquare);
fprintf('Rational:      R^2 = %.6f\n', g4.rsquare);

% figure
figure;

plot(x, y, 'r.', 'DisplayName', 'Data');
hold on;

plot(x, f1(x), 'DisplayName', 'Polynomial');
plot(x, f2(x), 'DisplayName', 'Exponential');
plot(x, f3(x), 'DisplayName', 'Fourier');
plot(x, f4(x), 'DisplayName', 'Rational');

hold off;

legend('show');
grid on;

xlim([-540 540]);
ylim([-540 540]);

xlabel('x');
ylabel('y');