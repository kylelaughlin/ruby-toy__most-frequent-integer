# This method takes an array of integers (arr). Your task is to find and then return the most
# frequent integer. These integers might be positive or negative. If no most-frequent integer
# exists, return nil.

def find_most_frequent_integer(arr)
    results_hash = Hash.new
    keys = Array.new
    arr.each do |a|
        occurances = 0
        arr.each do |b|
            if a == b
                occurances += 1
            end
        end
        results_hash[a] = occurances
    end
    max_occurance = results_hash.values.max
    results_hash.each do |k, v|
        if v == max_occurance
            keys << k
        end
    end
    if keys.length == 1
        keys[0]
    else
        nil
    end
end

p find_most_frequent_integer([1,2,2,2,3,3,3,1,3])