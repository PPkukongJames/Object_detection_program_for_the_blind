folder_im='Picture';
picture_name = '9';
pic = imread(strcat(folder_im,'\',picture_name,'.jpg'));
pic = rgb2gray(pic);
imwrite(pic,strcat('Grayscale\',picture_name,'.jpg'));
pic_his = hisequaliz(pic);
imwrite(pic_his,strcat('histogram_equalization\',picture_name,'.jpg'));
pic_const = contrast_stretching(pic);
imwrite(pic_const,strcat('constast_stretching\',picture_name,'.jpg'));
fprintf('otsu\tmle_plus\tmle_minus\tmle_plus_sqrt\tmle_minus_sqrt\n');
fprintf("=======================Original picture=======================\n");
[otsu mle_plus mle_minus mle_plus_sqrt mle_minus_sqrt] = auto_threshold(pic);
ori_pic = [otsu mle_plus mle_minus mle_plus_sqrt mle_minus_sqrt];
fprintf("=======================histogram equalization picture=======================\n");
[otsu mle_plus mle_minus mle_plus_sqrt mle_minus_sqrt] = auto_threshold(pic_his);
his_pic = [otsu mle_plus mle_minus mle_plus_sqrt mle_minus_sqrt];
fprintf("=======================constast stretching picture=======================\n");
[otsu mle_plus mle_minus mle_plus_sqrt mle_minus_sqrt] = auto_threshold(pic_const);
const_pic = [otsu mle_plus mle_minus mle_plus_sqrt mle_minus_sqrt];
fprintf("========================================================================\n");
%%%%%%%%%%%%%%%%%%%%%%%%picture original
pic_otsu = im2bw(pic,ori_pic(1));
pic_mle_plus = im2bw(pic,ori_pic(2));
pic_mle_minus = im2bw(pic,ori_pic(3));
pic_mle_plus_sqrt = im2bw(pic,ori_pic(4));
pic_mle_minus_sqrt = im2bw(pic,ori_pic(5));
imwrite(pic_otsu,strcat('Binary_picture\original\otsu\',picture_name,'.jpg'));
imwrite(pic_mle_plus,strcat('Binary_picture\original\mle_plus\',picture_name,'.jpg'));
imwrite(pic_mle_minus,strcat('Binary_picture\original\mle_minus\',picture_name,'.jpg'));
imwrite(pic_mle_plus_sqrt,strcat('Binary_picture\original\mle_plus_sqrt\',picture_name,'.jpg'));
imwrite(pic_mle_minus_sqrt,strcat('Binary_picture\original\mle_minus_sqrt\',picture_name,'.jpg'));
%%%%%%%%%%%%%%%%%%%%%%%%picture histogram equalization
his_pic_otsu = im2bw(pic_his,his_pic(1));
his_pic_mle_plus = im2bw(pic_his,his_pic(2));
his_pic_mle_minus = im2bw(pic_his,his_pic(3));
his_pic_mle_plus_sqrt = im2bw(pic_his,his_pic(4));
his_pic_mle_minus_sqrt = im2bw(pic_his,his_pic(5));
imwrite(his_pic_otsu,strcat('Binary_picture\his\otsu\',picture_name,'.jpg'));
imwrite(his_pic_mle_plus,strcat('Binary_picture\his\mle_plus\',picture_name,'.jpg'));
imwrite(his_pic_mle_minus,strcat('Binary_picture\his\mle_minus\',picture_name,'.jpg'));
imwrite(his_pic_mle_plus_sqrt,strcat('Binary_picture\his\mle_plus_sqrt\',picture_name,'.jpg'));
imwrite(his_pic_mle_minus_sqrt,strcat('Binary_picture\his\mle_minus_sqrt\',picture_name,'.jpg'));

%%%%%%%%%%%%%%%%%%%%%%%%picture constast stretching
const_pic_otsu = im2bw(pic_const,const_pic(1));
const_pic_mle_plus = im2bw(pic_const,const_pic(2));
const_pic_mle_minus = im2bw(pic_const,const_pic(3));
const_pic_mle_plus_sqrt = im2bw(pic_const,const_pic(4));
const_pic_mle_minus_sqrt = im2bw(pic_const,const_pic(5));
imwrite(const_pic_otsu,strcat('Binary_picture\const\otsu\',picture_name,'.jpg'));
imwrite(const_pic_mle_plus,strcat('Binary_picture\const\mle_plus\',picture_name,'.jpg'));
imwrite(const_pic_mle_minus,strcat('Binary_picture\const\mle_minus\',picture_name,'.jpg'));
imwrite(const_pic_mle_plus_sqrt,strcat('Binary_picture\const\mle_plus_sqrt\',picture_name,'.jpg'));
imwrite(const_pic_mle_minus_sqrt,strcat('Binary_picture\const\mle_minus_sqrt\',picture_name,'.jpg'));
%%%%%%%%%%%%%%%%%%%%%%%%Closing%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%Closing%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%Closing%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%picture original
pic_otsu = closing(pic_otsu,22,10);
pic_mle_plus = closing(pic_mle_plus,3,8);
pic_mle_minus = closing(pic_mle_minus,8,2);
pic_mle_plus_sqrt = closing(pic_mle_plus_sqrt,5,3);
pic_mle_minus_sqrt = closing(pic_mle_minus_sqrt,10,10);
imwrite(pic_otsu,strcat('closing\original\otsu\',picture_name,'.jpg'));
imwrite(pic_mle_plus,strcat('closing\original\mle_plus\',picture_name,'.jpg'));
imwrite(pic_mle_minus,strcat('closing\original\mle_minus\',picture_name,'.jpg'));
imwrite(pic_mle_plus_sqrt,strcat('closing\original\mle_plus_sqrt\',picture_name,'.jpg'));
imwrite(pic_mle_minus_sqrt,strcat('closing\original\mle_minus_sqrt\',picture_name,'.jpg'));
%%%%%%%%%%%%%%%%%%%%%%%%picture histogram equalization
his_pic_otsu = closing(his_pic_otsu,6,1);
his_pic_mle_plus = closing(his_pic_mle_plus,2,4);
his_pic_mle_minus = closing(his_pic_mle_minus,31,1);
his_pic_mle_plus_sqrt = closing(his_pic_mle_plus_sqrt,7,6);
his_pic_mle_minus_sqrt = closing(his_pic_mle_minus_sqrt,16,2);
imwrite(his_pic_otsu,strcat('closing\his\otsu\',picture_name,'.jpg'));
imwrite(his_pic_mle_plus,strcat('closing\his\mle_plus\',picture_name,'.jpg'));
imwrite(his_pic_mle_minus,strcat('closing\his\mle_minus\',picture_name,'.jpg'));
imwrite(his_pic_mle_plus_sqrt,strcat('closing\his\mle_plus_sqrt\',picture_name,'.jpg'));
imwrite(his_pic_mle_minus_sqrt,strcat('closing\his\mle_minus_sqrt\',picture_name,'.jpg'));

%%%%%%%%%%%%%%%%%%%%%%%%picture constast stretching
const_pic_otsu = closing(const_pic_otsu,6,6);
const_pic_mle_plus = closing(const_pic_mle_plus,3,6);
const_pic_mle_minus = closing(const_pic_mle_minus,21,1);
const_pic_mle_plus_sqrt = closing(const_pic_mle_plus_sqrt,13,17);
const_pic_mle_minus_sqrt = closing(const_pic_mle_minus_sqrt,8,6);
imwrite(const_pic_otsu,strcat('closing\const\otsu\',picture_name,'.jpg'));
imwrite(const_pic_mle_plus,strcat('closing\const\mle_plus\',picture_name,'.jpg'));
imwrite(const_pic_mle_minus,strcat('closing\const\mle_minus\',picture_name,'.jpg'));
imwrite(const_pic_mle_plus_sqrt,strcat('closing\const\mle_plus_sqrt\',picture_name,'.jpg'));
imwrite(const_pic_mle_minus_sqrt,strcat('closing\const\mle_minus_sqrt\',picture_name,'.jpg'));

%%%%%%%%%%%%%%%%%%%%%%%%segmantation%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%segmantation%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%segmantation%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%picture origina
[m n] = size(pic);
pic_otsu = seg(pic_otsu,m,n);
pic_mle_plus = seg(pic_mle_plus,m,n);
pic_mle_minus = seg(pic_mle_minus,m,n);
pic_mle_plus_sqrt = seg(pic_mle_plus_sqrt,m,n);
pic_mle_minus_sqrt = seg(pic_mle_minus_sqrt,m,n);
imwrite(pic_otsu,strcat('segmentation\original\otsu\',picture_name,'.jpg'));
imwrite(pic_mle_plus,strcat('segmentation\original\mle_plus\',picture_name,'.jpg'));
imwrite(pic_mle_minus,strcat('segmentation\original\mle_minus\',picture_name,'.jpg'));
imwrite(pic_mle_plus_sqrt,strcat('segmentation\original\mle_plus_sqrt\',picture_name,'.jpg'));
imwrite(pic_mle_minus_sqrt,strcat('segmentation\original\mle_minus_sqrt\',picture_name,'.jpg'));
%%%%%%%%%%%%%%%%%%%%%%%%picture histogram equalization
his_pic_otsu = seg(his_pic_otsu,m,n);
his_pic_mle_plus = seg(his_pic_mle_plus,m,n);
his_pic_mle_minus = seg(his_pic_mle_minus,m,n);
his_pic_mle_plus_sqrt = seg(his_pic_mle_plus_sqrt,m,n);
his_pic_mle_minus_sqrt = seg(his_pic_mle_minus_sqrt,m,n);
imwrite(his_pic_otsu,strcat('segmentation\his\otsu\',picture_name,'.jpg'));
imwrite(his_pic_mle_plus,strcat('segmentation\his\mle_plus\',picture_name,'.jpg'));
imwrite(his_pic_mle_minus,strcat('segmentation\his\mle_minus\',picture_name,'.jpg'));
imwrite(his_pic_mle_plus_sqrt,strcat('segmentation\his\mle_plus_sqrt\',picture_name,'.jpg'));
imwrite(his_pic_mle_minus_sqrt,strcat('segmentation\his\mle_minus_sqrt\',picture_name,'.jpg'));

%%%%%%%%%%%%%%%%%%%%%%%%picture constast stretching
const_pic_otsu = seg(const_pic_otsu,m,n);
const_pic_mle_plus = seg(const_pic_mle_plus,m,n);
const_pic_mle_minus = seg(const_pic_mle_minus,m,n);
const_pic_mle_plus_sqrt = seg(const_pic_mle_plus_sqrt,m,n);
const_pic_mle_minus_sqrt = seg(const_pic_mle_minus_sqrt,m,n);
imwrite(const_pic_otsu,strcat('segmentation\const\otsu\',picture_name,'.jpg'));
imwrite(const_pic_mle_plus,strcat('segmentation\const\mle_plus\',picture_name,'.jpg'));
imwrite(const_pic_mle_minus,strcat('segmentation\const\mle_minus\',picture_name,'.jpg'));
imwrite(const_pic_mle_plus_sqrt,strcat('segmentation\const\mle_plus_sqrt\',picture_name,'.jpg'));
imwrite(const_pic_mle_minus_sqrt,strcat('segmentation\const\mle_minus_sqrt\',picture_name,'.jpg'));

%%%%%%%%%%%%%%%%%%%%%%%%predic
mark = pic==-1;
mark = mark==0;
mark = seg(mark,m,n);
all = sum(mark(:)');
pic_otsu = sum(pic_otsu(:)');
pic_mle_plus = sum(pic_mle_plus(:)');
pic_mle_minus = sum(pic_mle_minus(:)');
pic_mle_plus_sqrt = sum(pic_mle_plus_sqrt(:)');
pic_mle_minus_sqrt = sum(pic_mle_minus_sqrt(:)');

his_pic_otsu = sum(his_pic_otsu(:)');
his_pic_mle_plus = sum(his_pic_mle_plus(:)');
his_pic_mle_minus = sum(his_pic_mle_minus(:)');
his_pic_mle_plus_sqrt = sum(his_pic_mle_plus_sqrt(:)');
his_pic_mle_minus_sqrt = sum(his_pic_mle_minus_sqrt(:)');

const_pic_otsu = sum(const_pic_otsu(:)');
const_pic_mle_plus = sum(const_pic_mle_plus(:)');
const_pic_mle_minus = sum(const_pic_mle_minus(:)');
const_pic_mle_plus_sqrt = sum(const_pic_mle_plus_sqrt(:)');
const_pic_mle_minus_sqrt = sum(const_pic_mle_minus_sqrt(:)');

result = [pic_otsu/all pic_mle_plus/all pic_mle_minus/all pic_mle_plus_sqrt/all pic_mle_minus_sqrt/all
          his_pic_otsu/all his_pic_mle_plus/all his_pic_mle_minus/all his_pic_mle_plus_sqrt/all his_pic_mle_minus_sqrt/all
          const_pic_otsu/all const_pic_mle_plus/all const_pic_mle_minus/all const_pic_mle_plus_sqrt/all const_pic_mle_minus_sqrt/all];

more = [0.0674 0.0476 0.3077 0.2835 0.1564
        0.1362 0.0563 0.1109 0.1405 0.0767
        0.1346 0.0745 0.1291 0.1074 0.1224];

less = [0.1600 0.1805 0.7110 0.6501 0.3319
        0.2418 0.1847 0.4145 0.2624 0.1783
        0.3330 0.1508 0.4291 0.2537 0.3185];

pre = [0 0 0 0 0
       0 0 0 0 0
       0 0 0 0 0];

[x y] = size(pre);
for i = 1:x
    for j = 1:y
        if result(i,j)>=more(i,j) && result(i,j)<=less(i,j)
            pre(i,j) = 1;
        else
            pre(i,j) = 0;
        end
    end
end

fprintf('\t\t\totsu\tmle_plus\tmle_minus\tmle_plus_sqrt\tmle_minus_sqrt\n');

fprintf('original\t'+string(pre(1,1))+'\t\t\t'+pre(1,2)+'\t\t\t'+pre(1,3)+'\t\t\t'+pre(1,4)+'\t\t\t\t'+pre(1,5)+'\n');

fprintf('hist\t\t'+string(pre(2,1))+'\t\t\t'+pre(2,2)+'\t\t\t'+pre(2,3)+'\t\t\t'+pre(2,4)+'\t\t\t\t'+pre(2,5)+'\n');

fprintf('const\t\t'+string(pre(3,1))+'\t\t\t'+pre(3,2)+'\t\t\t'+pre(3,3)+'\t\t\t'+pre(3,4)+'\t\t\t\t'+pre(3,5)+'\n');


