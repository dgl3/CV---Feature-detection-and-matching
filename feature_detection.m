%Roof image
I = vl_impattern('roofs1');
I = single(rgb2gray(I));
figure, imshow(I);
[f,d] = vl_sift(I);

%Show the descriptors
figure, show_keypoints(I,f);


%River image
I = vl_impattern('river1');
I = single(rgb2gray(I));
figure, imshow(I);
[f,d] = vl_sift(I);

%Show the descriptors
figure, show_keypoints(I,f);