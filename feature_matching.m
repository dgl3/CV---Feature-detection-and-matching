%Load two images and compute their descriptors
Ia = vl_impattern('roofs1');
figure, imshow(Ia);
Ib = vl_impattern('roofs2');
figure, imshow(Ib);
Ia = single(rgb2gray(Ia));
Ib = single(rgb2gray(Ib));
[fa, da] = vl_sift(Ia);
[fb, db] = vl_sift(Ib);

[matches, scores] = vl_ubcmatch(da, db, 1);
figure, show_matches(Ia,Ib,fa,fb,matches);

[matches, scores] = vl_ubcmatch(da, db, 1.5);
figure, show_matches(Ia,Ib,fa,fb,matches);

%Computes the keypoint matching
[matches, scores] = vl_ubcmatch(da, db, 2.0);
figure, show_matches(Ia,Ib,fa,fb,matches);
%show_matches(Ia,Ib,fa,fb,random_selection(matches,50));

[matches, scores] = vl_ubcmatch(da, db, 2.5);
figure, show_matches(Ia,Ib,fa,fb,matches);

[matches, scores] = vl_ubcmatch(da, db, 3);
figure, show_matches(Ia,Ib,fa,fb,matches);

