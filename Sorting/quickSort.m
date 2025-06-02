function sortedArray = quicksort(arr)
    % Base case: if the array has 0 or 1 element, it's already sorted
    if length(arr) <= 1
        sortedArray = arr;
        return;
    end
    
    % Choose the pivot (here, the first element)
    pivot = arr(1);
    
    % Partition the array into elements less than, equal to, and greater than the pivot
    less = arr(arr < pivot);
    equal = arr(arr == pivot);
    greater = arr(arr > pivot);
    
    % Recursively sort the less and greater parts
    sortedArray = [quicksort(less), equal, quicksort(greater)];
end


arr = [8, 3, 5, 1, 7, 2]
sortedA = quicksort(arr);
disp('Sorted Array :');
disp(sortedA);


