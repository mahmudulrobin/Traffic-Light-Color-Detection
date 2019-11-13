function [] = Red(X)
%RED Summary of this function goes here
%   Detailed explanation goes here

[row,col]=size(X);
x=floor(row/10);
y=floor(col/12);
SE=[1 1 1;1 1 1;1 1 1];
X=imerode(X,SE);
found =false;
%G=imopen(G,SE);
[centers,radii] = imfindcircles(X,[15 100],'ObjectPolarity','bright','Sensitivity',.95);
%centers
%radii
imshow(X)
plot=subplot(224);
title(plot,'Red')
h = viscircles(centers,radii);
c=0;

[a,b]=size(radii);
for x = 1:a

    rr=floor(centers(x,1));
    cc=floor(centers(x,2));
    radii=floor(radii);

    for i=cc-radii:cc+radii
        for j=rr-radii:rr+radii
            if X(i,j)==255
                c=c+1;

            end
        end
    end
    c;
    d=floor(3.1416*radii(x)*radii(x));

    if (c<d*1.25 || d<c*1.25 )&& found==false
        found=true;
        disp('Red Color Detected')
    else
       % disp('Red Not Detected')
    end
end

end

