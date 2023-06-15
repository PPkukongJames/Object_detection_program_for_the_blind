function [out] = seg(img,m,n)
    h = 1150;
    w = 250;
    for i = 1:m
        for j = 1:n
            if ((i<h && j<w) || (i<h && j>n-w) || (i<600))
                img(i,j) = 0;
            end
        end
    end
    out = img;
end