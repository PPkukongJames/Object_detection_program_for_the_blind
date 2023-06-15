function [imoutput]=hisequaliz(I)
    [row,col] = size(I);
    K = 256;
    M = row*col;
    H=cumsum(imhist(I));
    for i=1:row
        for j=1:col
            a=I(i,j);
            b=(H(a+1)*(K-1))/M;
            I(i,j)=b;
        end
    end
    
    imoutput=I;
    %h=imhist(I);
    %H=cumsum(imhist(I));
end