A=[15, 16, 6, 8, 5];
n=length(A);

for i=1:n-1
    for j=1:n-i
        if A(j)>A(j+1)
            temp=A(j);
            A(j)=A(j+1);
            A(j+1)=temp;
        end
    end
end

fprintf('Sorted array :');
disp(A);