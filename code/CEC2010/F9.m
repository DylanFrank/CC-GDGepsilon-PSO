function f= F9( x )
%UNTITLED D/2m group
%   �˴���ʾ��ϸ˵��
D = size(x,1);
m = ceil(D/20);
z = shift(x);
z = permutation(z);
k = ceil(D/(2*m));
f =0;
for i = 1:k
    f = f+ Frot_elliptic(z((i-1)*m+1:i*m));
end
f = f+ Felliptic(z(k*m+1:D));

