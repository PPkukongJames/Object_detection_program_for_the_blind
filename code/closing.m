function [pic] = closing(J,x,y)
    SE = strel('square',x);
    K = imerode(J,SE);
    K = medfilt2(K);
    SE = strel('square',y);
    K = imdilate(K,SE);
    pic=K;
end