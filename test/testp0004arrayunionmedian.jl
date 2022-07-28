@testset "p0004arrayunionmedian.jl" begin
    @testset "findMedianSortedArrays" begin
        @test findMedianSortedArrays([1,3],[2]) == 2
        @test findMedianSortedArrays([1,2],[3,4]) == 2.5
    end
end