function [otsu,mle_plus,mle_minus,mle_plus_sqrt,mle_minus_sqrt] = auto_threshold(pic)
    otsu = graythresh(pic);
    temp = double(pic(:)');
    temp = mle(temp);
    mle_plus = (temp(1)+(temp(2)))/255;
    mle_minus = (temp(1)-(temp(2)))/255;
    mle_plus_sqrt = (temp(1)+sqrt(temp(2)))/255;
    mle_minus_sqrt = (temp(1)-sqrt(temp(2)))/255;
    text = strcat(string(otsu),'\t\t',string(mle_plus),'\t\t',string(mle_minus),'\t\t',string(mle_plus_sqrt),'\t\t',string(mle_minus_sqrt),'\n');
    fprintf(text);
end