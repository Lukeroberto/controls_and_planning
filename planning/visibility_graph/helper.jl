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

module Visibility_graph

export Node, graph, vis_graph

type Node
    
end

type graph
end

type vis_graph 
end

end


