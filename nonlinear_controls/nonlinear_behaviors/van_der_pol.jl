# Van der Pol Oscillator
using Plots

# # initialize initial conditions and parameters
# n = 1500
# dt = 0.02
#
# μ = 1
# x = [rand(),rand()]
#
#
# # Initialize 2d plot
# plt = plot(1, xlim=(-5,5), ylim=(-5,5), zlim=(-1,1), xlab="x", ylab="xdot",
#            zlab="z")
#
# a = animation(plt, "~/workspace/workspace/nonlinear_controls/nonlinear_behaviors/")
#
# # build animated gif
# for i=1:n
#     dx = x[2]; x[1] += dt*dx
#     dy = -x[1] -μ*(x[1]^2-1)*x[2]; x[2] += dt*dy
#     push!(plt,x[1],x[2],0)
# end every 10
#
# makegif(a)
p = plot([sin,cos], 0, π, size=(300,300))
scatter!([0], [sin,cos])
@gif for i in 0:0.1:π
    p[3] = [i], [sin(i)]
    p[4] = [i], [cos(i)]
end
