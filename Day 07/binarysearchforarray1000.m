array=1:1000;

target=800;
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