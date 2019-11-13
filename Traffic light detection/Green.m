function [] = Green(X)
%GREEN Summary of this function goes here
%   Detailed explanation goes here
subplot(222)

%imshow(X)

[row,col]=size(X);
SE=[1 1 1;1 1 1;1 1 1];
X=imerode(X,SE);
%G=imopen(G,SE);
[centers,radii] = imfindcircles(X,[15 100],'ObjectPolarity','bright','Sensitivity',.962);
imshow(X)
plot=subplot(222);
title(plot,'Green')
h = viscircles(centers,radii);
c=0;
[a,b]=size(radii);
found=false;
for x = 1:a
    rr=floor(centers(x,1));
    cc=floor(centers(x,2));
    radii=floor(radii);
    for i=cc-radii:cc+radii
        for j=rr-radii:rr+radii
            if i>row || i<=0 || j>col || j<=0
                continue;
            end
            if X(i,j)==255
                c=c+1;

            end
        end
    end
    c;
    d=floor(3.1416*radii(x)*radii(x));

    if abs(c-d)<d*.3 && found==false 
        disp('Green Color Detected')
        found=true;
    else
        %disp('Green Not Detected')
    end
end
end

