# helper.jl
# Contains modules useful for visibility graph implementation:
#   Obstacle, Graph


# Obstacle object used to represent objects in 2D space
module Obstacles

export Point, Obstacle

# Point Object that contains a location in 2D space
type Point
    x::Int
    y::Int
end

# Polygonal Obstacle object that contains a vector of points
type Obstacle
    vertices::Vector{Point}
end

end

# Undirected-graph object
module Ugraph

export Edge, Graph

# Edge relates the traversal cost between two Node IDs
type Edge
    startNode::Int
    endNode::Int
    cost::Real
end

# Graph contains vectors of all edges and nodes
type graph
    nodes::Vector{Int}
    edges::Vector{Edge}
end

# Takes a node
function get_neighbors(node::Int)

end

function get_neighboring_edges(node::Int)
end

function get_edge(node1::Int,node2::Int)
end

function is_neighbor(node1::Int,node2::Int)
end

function distance(node1::Int, node2::Int)
end

end
