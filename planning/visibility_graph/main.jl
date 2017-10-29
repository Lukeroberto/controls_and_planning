include("helper.jl")

using Obstacles

points = Vector{Point}(0);

push!(points, Point(1,1), Point(2,2), Point(1,2));

println(points)
