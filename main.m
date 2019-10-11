%match = imread('test.jpg');
%match = rgb2gray(match);
%match = match <= 100;
%imshow(a3);
%imwrite(a3, 'a3.jpg');
%match = clip(match);
%match = imresize(match, [500 500]);
%match = medfilt2(match);

%-----------
A = zeros(1,50);
for i = 1:50
    data = imread(strcat( num2str(i), '.jpg'));
    data = rgb2gray(data);
    data = data <= 100;
    data = clip(data);
    data = imresize(data, [500 500]);
    data = medfilt2(data);
    A(i) = corr2(data,data);
end
[i j] = max(A);
A_max = [i j];
%---------------

% if A_max(1) >= ????
%     disp('matched');
% else
%     disp('Fuck yourself');
% end
