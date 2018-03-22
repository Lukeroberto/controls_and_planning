module pendulum_dynamics

function τ(x, t)
    return 0.0
end

# System to integrate
function pendulum(dx, x, p, t)
    m = p[1]
    g = p[2]
    l = p[3]
    b = p[4]
    J = p[5]

    dx[1] = x[2]
    dx[2] = -(b/J)*x[2]*abs(x[2]) - (m*g*l/J)*sin(x[1]) + τ(x,t)
end

export τ, pendulum

end
