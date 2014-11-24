%Roof image
Iroofs = vl_impattern('roofs1');
Iroofs = single(rgb2gray(Iroofs));
figure, imshow(Iroofs);
[f,d] = vl_sift(Iroofs);

%Show the descriptors
figure, show_keypoints(Iroofs,f);

%{
%River image
Iriver = vl_impattern('river1');
Iriver = single(rgb2gray(Iriver));
figure, imshow(Iriver);
[f,d] = vl_sift(Iriver);

%Show the descriptors
figure, show_keypoints(Iriver,f);

%Testing the SIFT detector
[f,d] = vl_sift(Iroofs,'PeakThresh', 0.01);
figure, show_keypoints(Iroofs,f);

[f,d] = vl_sift(Iroofs,'PeakThresh', 0.03);
figure, show_keypoints(Iroofs,f);

[f,d] = vl_sift(Iroofs,'PeakThresh', 0.05);
figure, show_keypoints(Iroofs,f);

[f,d] = vl_sift(Iroofs,'PeakThresh', 0.08);
figure, show_keypoints(Iroofs,f);

[f,d] = vl_sift(Iroofs,'PeakThresh', 0.005);
figure, show_keypoints(Iroofs,f);
%}

[f,d] = vl_sift(Iroofs,'PeakThresh', 0.04, 'EdgeThresh', 10);
figure, show_keypoints(Iroofs,f);

[f,d] = vl_sift(Iroofs,'PeakThresh', 0.04, 'EdgeThresh', 8);
figure, show_keypoints(Iroofs,f);

[f,d] = vl_sift(Iroofs,'PeakThresh', 0.04, 'EdgeThresh', 5);
figure, show_keypoints(Iroofs,f);

[f,d] = vl_sift(Iroofs,'PeakThresh', 0.04, 'EdgeThresh', 12);
figure, show_keypoints(Iroofs,f);

[f,d] = vl_sift(Iroofs,'PeakThresh', 0.04, 'EdgeThresh', 15);
figure, show_keypoints(Iroofs,f);