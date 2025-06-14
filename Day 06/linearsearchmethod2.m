arr=[3,5,7,9,11,13];
target=9;
n=length(arr);
ifFound=false;
tic;
for i=1:n
    if arr(i)==target
        ifFound=true;
        index=i;
        break;   
    end
end

if ifFound
    fprintf('The target %d is found at index %d.\n :',target,index);
else
    disp('The target elemnt is not found');
end
toc;