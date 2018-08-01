#!/usr/bin/julia

# Simple simulation of a dynamical system
# TODO: generics to run the system and controller separately

# Import all local files
include("pendulum_dynamics.jl")
using pendulum_dynamics

# Import specific libraries
using DifferentialEquations
using Plots

# Parameters
m = 1.0 # Kg
g = 1.0 # m/s^2
l = 1.0 # m
b = 1.0# drag coeff
J = 1.0 # kg*m^2

# Parameter vector
p = (m, g, l, b, J)


# Time Interval
t0 = 0.0
tend = 50.0

# Initial Conditions
x0 = [3.12;0]

# Problem definition
prob = ODEProblem(pendulum, x0, (t0,tend), p)

# Solve it
sol = solve(prob, reltol=1e-6, abstol=1e-6)

pyplot()
plt = plot(sol[1,:],sol[2,:])
plt2 = plot(sol[1,:])
display(plot(plt, plt2))
# print(sol(1:10))
