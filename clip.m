function [ image_out ] = clip( image_in )
[f,c] = find(image_in);
image_out = image_in(min(f):max(f), min(c):max(c));
end

