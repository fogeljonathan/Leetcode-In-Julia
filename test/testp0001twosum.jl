@testset "p0001twosum.jl" begin
    @testset "twoSum" begin
        @test twoSum([2, 7, 11, 15], 9) == [1, 2] || twoSum([2, 7, 11, 15], 9) == [2,1]
        @test twoSum([3, 2, 4], 6) == [2, 3] || @test twoSum([3, 2, 4], 6) == [3,2]
        @test twoSum([3, 3], 6) == [1, 2] || twoSum([3, 3], 6) == [2,1]
    end
    @testset "twoSum2" begin
        @test twoSum2([2, 7, 11, 15], 9) == [1, 2] || twoSum2([2, 7, 11, 15], 9) == [2,1]
        @test twoSum2([3, 2, 4], 6) == [2, 3] || twoSum2([3, 2, 4], 6) == [3, 2]
        @test twoSum2([3, 3], 6) == [1, 2] || twoSum2([3, 3], 6) == [2,1]
    end
end