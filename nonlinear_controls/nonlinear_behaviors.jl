# Examples of Nonlinear Behaviors
using PyPlot

# Multiple Equilibrium Types
#= 
    In this example we will examine the equation x_dot = -x + x^2. If we
    linearize it around a point x_0, we get x(t) = x_0*e^-t. The exact solution
    to this equation is given by x(t) = x_0*e^-t/(1 - x_0 + x_0*e^-t).

    Let's take a look at these:
=#

# Initial Conditions and time
x_0 = linspace(-2,2,10);
t   = linspace(0,10,100); 

# Dynamics of linearized and nonlinear system
x_l = x_0.*e^(-t);
x_n = x_0.*e^(-t)./(1 - x_0 + x_0.*e(^-t));
    


# Limit Cycles

# Bifurcations

# Chaos
