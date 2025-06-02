function sortedArray = mergesort(arr)
    % Base case: if the array has 1 or 0 elements, it is already sorted
    if length(arr) <= 1
        sortedArray = arr;
        return;
    end

    % Find the middle index
    mid = floor(length(arr) / 2);

    % Recursively split and sort the two halves
    left = mergesort(arr(1:mid));
    right = mergesort(arr(mid+1:end));

    % Merge the two sorted halves
    sortedArray = merge(left, right);
end

function merged = merge(left, right)
    merged = [];
    i = 1; j = 1;

    % Merge while elements remain in both arrays
    while i <= length(left) && j <= length(right)
        if left(i) <= right(j)
            merged(end+1) = left(i);
            i = i + 1;
        else
            merged(end+1) = right(j);
            j = j + 1;
        end
    end

    % Append any remaining elements from left or right
    if i <= length(left)
        merged = [merged left(i:end)];
    end
    if j <= length(right)
        merged = [merged right(j:end)];
    end
end

arr = [8, 3, 5, 1, 7, 2];
sortedArr = mergesort(arr);
disp('Sorted Array :');
disp(sortedArr);