
I=imread('d.jpg');
warning('off','all')
R=I(:,:,1);
G=I(:,:,2);
O=I(:,:,1)*.4+I(:,:,2)*.4;
figure;

plot=subplot(221);

subplot(221)

[row,col]=size(R);
for j =1 :row
    for k=1:col
        if R(j,k)>=120
            R(j,k)=255;
        else
            R(j,k)=0;
        end
        if G(j,k)>=120
            G(j,k)=255;
        else
            G(j,k)=0;
        end
        if O(j,k)>=140
            O(j,k)=255;
        else
            O(j,k)=0;
        end
    end
end


Z=.59*I(:,:,1);+.3*I(:,:,2);+.11*I(:,:,3);
imshow(Z)
title(plot,'Gray Image')
%set(get(gca,'title'),'Position',[3 1.4 1.00011])
SE=[1 1 1;1 1 1;1 1 1];
imdilate(R,SE);
imdilate(O,SE);
imdilate(G,SE);


subplot(222)
%G=imbinarize(G);
X=R-G;
imdilate(X,SE);

subplot(223)
%O=imbinarize(O);
imshow(O);

subplot(224)

Red(X);
X=G-R;
Green(X);
Yellow(O);

% 
% figure;
% subplot(231)
% imshow(R)
% subplot(232)
% imshow(G)
% subplot(233)
% imshow(O)
% subplot(234)
% imshow(R-O)
% subplot(235)
% imshow(G-O)
% 
% 


