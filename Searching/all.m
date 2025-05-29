
array=1:1000;
target=800;

%binary search
low = 1; % Index of the first element
high = length(array); % Index of the last element
tic;
while low <= high
    mid = floor((low + high) / 2); % Correctly calculate the middle index

    if array(mid) == target % Compare target with the actual array element
        fprintf('Element %d found at index %d.\n', target, mid);
        break;
    elseif target < array(mid) % Compare target with the array element
        high = mid - 1;
    else
        low = mid + 1;
    end
end

if low > high
    fprintf('Element %d not found in the array.\n', target);
end
toc;

%linear search
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