# Traffic-Light-Color-Detection

Problem Description:

Our Problem is to find colors in Traffic Lights. Traffics lights have three colors: Red, Green and Yellow. Our task is to find which color is shown on the image and also if there are more than one, it will show which are present.

Description of the Process:

Our original Image will be processed into three different images ; one with Red component, One with Green Component and one with Yellow component. As Yellow is comprised of Red and Green, we will have to use both to comprise Yellow.
Red and Green parts will also have Yellow in them. So, will have to subtract yellow to get actual Red and Green.
We will use user defined functions to pass all three images to find if there are any colored circles.
These functions will return a message to the console if they have found a color in them.

Functions Used:

We have used quite a few built-in functions in our project. These built-in functions are used in few different places for many uses:
These are:
i) imdilate
ii) imerose
iii) imclose
iv) imfindcircle
v) imread
vi) imshow
vii) viscircles

Process:

i) First we will take the input image.
ii) The input image will turn into three components: Red, Green and Yellow.
iii) These three components will be passes to their respective functions which will give us our output images. Dilation/Closing were used to smooth the parts. Imfindcircle and viscircle functions were used to mark the colored part.
