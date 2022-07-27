#=

Problem:    4
Difficulty: Hard
Author:     Jonathan Fogel

Given two sorted arrays nums1 and nums2 of size m and n respectively, return the median of the two sorted arrays.

The overall run time complexity should be O(log (m+n)).

Constraints:

nums1.length == m
nums2.length == n
0 <= m <= 1000
0 <= n <= 1000
1 <= m + n <= 2000
-106 <= nums1[i], nums2[i] <= 106

=#

"""
    findMedianSortedArrays(nums1::Vector{Int64},nums2::Vector{Int64}) -> Float64

    Returns the median of the Union of the two sorted arrays.

"""
function findMedianSortedArrays(nums1::Vector{Int64},nums2::Vector{Int64}) 
    sort!(append!(nums1,nums2))
    if length(nums1) % 2 == 0
        return (nums1[(length(nums1)÷2)+1] + nums1[length(nums1)÷2])/2
    else
        return nums1[(length(nums1)÷2)+1]
    end
end