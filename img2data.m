img = imread("test.png");
x = zeros(1,1080);
y = zeros(1,1080);
for i=1:1080
    x(i) = i-540;
    for j=1:1080
        color = squeeze(img(j,i,:));
        if (color(1)==color(2))&&(color(1)==color(3))&&color(1)==0
            y(i) = 540-j;
        end
    end
end

save('data.mat', 'x', 'y');