#=

Problem:    1
Author:     Jonathan Fogel

Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.

You may assume that each input would have exactly one solution, and you may not use the same element twice.

You can return the answer in any order.

Constraints:

2 <= nums.length <= 104
-109 <= nums[i] <= 109
-109 <= target <= 109
Only one valid answer exists.

=#

"""
    twoSum(nums::Vector{Int64}, target::Int64) -> items::Vector{Int64}

    Finds the relative positions of the two numbers inside of nums whose sum is target. 
    
    A single, unique solution is assumed.

"""
function twoSum(nums::Vector{Int64}, target::Int64) 
    len = length(nums)
    for i in 1:(len-1) 
        for j in (i+1):len
            nums[i]+nums[j]==target && return [i,j]
        end
    end
    return []
end

"""
    twoSum2(nums::Vector{Int64}, target::Int64) -> items::Vector{Int64}

    Alternate Solution. Finds the relative positions of the two numbers inside of nums whose sum is target. 
    
    A single, unique solution is assumed.

"""
function twoSum2(nums::Vector{Int64}, target::Int64) 
    len = length(nums)
    for i in 1:(len) 
        j = findfirst(x-> x==(target-nums[i]), nums)
        if j !== nothing && j != i
            return [i,j]
        end
    end
    return []
end
