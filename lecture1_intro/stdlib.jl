# Statistics
a = randn(100)
sum(a)
mean(a)
using Statistics, BenchmarkTools
mean(a)
@btime mean(a.^2)
@btime mean(abs2, a)
@btime mean(x^2 for x in a)

std(a)
std(randn(100,100), dims=2)
names(Statistics)


# LinearAlgebra
using LinearAlgebra
A = randn(20,20)
s = svd(A)

b = randn(20)
s\b

using BenchmarkTools
@btime $A\$b
@btime $s\$b

q = qr(A)
eigvals(q.Q)

names(LinearAlgebra)

apropos("trace")


# Random
randn()
randn(20)
rand()
rand(1:5)
using Random
Random.seed!(0)
rand()
names(Random)


# Distributions
using Distributions, StatsPlots
dist = Normal(10,2)
sample = rand(dist, 100)
plot(dist, lab=dist)
density!(sample, alpha=0.5, lab="Estimated density")

dist = Gamma(3,2)
sample = rand(dist, 1000)
plot(dist, lab=dist)
density!(sample, alpha=0.5, lab="Estimated density")


# DSP
using DSP
u = randn(100)
y = filtfilt(ones(10), [10], u)
plot([y u], lab=["y" "u"])



# Parallel
using Distributed
addprocs(4)
@show workers()
pmap(1:4) do i
    println("Im worker $(myid())")
end

a = zeros(Int, 10)
Threads.@threads for i = 1:10
    a[i] = Threads.threadid()
end
@show a



# Printf
using Printf
@printf "This is a formatted float %10.4f" randn()
@printf "This is a formatted float %8.4f" randn()
@printf "This is a formatted float %10.3f" randn()
@printf "This is a formatted float %10.4g" 1000000randn()
@printf "This is a formatted float %10.4e" randn()
@printf "This is a formatted int %12d" rand(1:100)



# startup.jl
"~/.julia/config/startup.jl"
