A=[5,4,10,1,6,2];
n=length(A);

for i=2:n
    key=A(i);
    j=i-1;

    while j>=1 && A(j)>key
        A(j+1)=A(j);
        j=j-1;
    end
    A(j+1)=key;
end

fprintf('Sorted Array:');
disp(A);
