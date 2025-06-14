array=1:1000;
target=800;

n=length(array);
ifFound=false;
tic;
for i=1:n
    if array(i)==target
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