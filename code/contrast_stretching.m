function [J] = contrast_stretching(I)
    J = imadjust(I,stretchlim(I),[]);
end