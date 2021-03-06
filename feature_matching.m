%Load two images and compute their descriptors
Ia = vl_impattern('roofs1');
figure, imshow(Ia);
Ib = vl_impattern('roofs2');
figure, imshow(Ib);
Ia = single(rgb2gray(Ia));
Ib = single(rgb2gray(Ib));
[fa, da] = vl_sift(Ia);
[fb, db] = vl_sift(Ib);
%{
[matches, scores] = vl_ubcmatch(da, db, 1);
figure, show_matches(Ia,Ib,fa,fb,matches);

[matches, scores] = vl_ubcmatch(da, db, 1.5);
figure, show_matches(Ia,Ib,fa,fb,matches);
%}
%Computes the keypoint matching
[matches, scores] = vl_ubcmatch(da, db, 2.0);
figure, show_matches(Ia,Ib,fa,fb,matches);
%show_matches(Ia,Ib,fa,fb,random_selection(matches,50));

%{
[matches, scores] = vl_ubcmatch(da, db, 2.5);
figure, show_matches(Ia,Ib,fa,fb,matches);

[matches, scores] = vl_ubcmatch(da, db, 3);
figure, show_matches(Ia,Ib,fa,fb,matches);
%}

%Linear model
d = fb(1:2,matches(2,:))-fa(1:2,matches(1,:));
p = mean(d,2);
figure, show_matches_linear_model(Ia,Ib,fa,fb,matches,p);

%Affine model
i = size(matches, 2);
d = fb(1:2,matches(2,:))-fa(1:2,matches(1,:));
A = zeros(6,6);
b = zeros(6,1);
for j = 1:i,
    x = fa(1:2,matches(1,j));
    J = [x(1), x(2), 0, 0, 1, 0; 0, 0, x(1), x(2), 0, 1];
    A = A + J'*J;
    b = b + J'*d(1:2,j);
end
p = inv(A)*b;
figure, show_matches_affine_model(Ia,Ib,fa,fb,matches,p);