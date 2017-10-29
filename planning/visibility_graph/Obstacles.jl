module Obstacles

export Point, Obstacle

type Point
    x::Int
    y::Int
end

type Obstacle
    vertices::Vector{Point}
end

end


