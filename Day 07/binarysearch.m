arr = [3, 6, 8, 12, 14, 17, 25, 29, 31, 36, 42, 47, 53, 55, 62];
target = 42;

low = 1; % Index of the first element
high = length(arr); % Index of the last element

while low <= high
    mid = floor((low + high) / 2); % Correctly calculate the middle index

    if arr(mid) == target % Compare target with the actual array element
        fprintf('Element %d found at index %d.\n', target, mid);
        break;
    elseif target < arr(mid) % Compare target with the array element
        high = mid - 1;
    else
        low = mid + 1;
    end
end

if low > high
    fprintf('Element %d not found in the array.\n', target);
end