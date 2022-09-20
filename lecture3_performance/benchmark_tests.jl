using BenchmarkTools

a = 1
@btime begin
    for i = 1:100_000
        global a
        a += 1
    end
end

function foo()
    a = 1
    for i = 1:100_000
        a += 1
    end
    a
end
@btime foo()


using BenchmarkTools
stable(i) = rand() > 0.5 ? 1 : -1
unstable(i) = rand() > 0.5 ? 1.0 : -1
quasistable(i) = rand() > 1.5 ? 1. : -1

function foo()
    a = 1
    for i = 1:100_000
        a += stable(i)
    end
    a
end

function bar()
    a = 1
    for i = 1:100_000
        a += unstable(i)
    end
    a
end


function baz()
    a = 1
    for i = 1:100_000
        a += quasistable(i)::Int
    end
    a
end

@btime foo()
@btime bar()
@btime baz()



function foo()
    x = Matrix{Float64}(undef, 4096, 4096)
    for i = 1:size(x,1)
        for j = 1:size(x,2)
            x[i,j] = i*j
        end
    end
end
@btime foo()

function bar()
    x = Matrix{Float64}(undef, 4096, 4096)
    for j = 1:size(x,2)
        for i = 1:size(x,1)
            x[i,j] = i*j
        end
    end
end
@btime bar()





@inline function food()
    A = Matrix{Int64}(undef,100,100)
    for i = eachindex(A)
        A[i] = i
    end
    return A
end

function eat()
    for i = 1:10_000
        chicken = food()
        sum(chicken)
    end
end
@btime eat()


@inline function bärs!(A)
    for i = eachindex(A)
        A[i] = i
    end
end

function drink()
    weiss = Matrix{Int64}(undef,100,100)
    for i = 1:10_000
        bärs!(weiss)
        sum(weiss)
    end
end
@btime drink()




function foo()
    s = 0.0
    for i = 1:10
        a = randn(1000,1000)
        σ = svdvals(a)
        s += sum(σ)
    end
    s
end

@profview foo()




using BenchmarkTools
a64 = randn(1000000)
a32 = randn(Float32,1000000)
function regular_sum(x)
    s = zero(eltype(x))
    for i = eachindex(x)
        s += x[i]
    end
    s
end
@btime regular_sum($(a64))
@btime regular_sum($(a32))
@btime sum($a64)
@btime sum($a32)

function simd_sum(x)
    s = zero(eltype(x))
    @inbounds @simd for i = eachindex(x)
        s += x[i]
    end
    s
end

@btime simd_sum($(a64))
@btime simd_sum($(a32))


using LoopVectorization
function turbo_sum(x)
    s = zero(eltype(x))
    @tturbo for i = eachindex(x)
        s += x[i]
    end
    s
end

@btime turbo_sum($(a64))
@btime turbo_sum($(a32))



using StaticArrays
a  = [randn(3) for _ = 1:1000]
am = randn(3,1000)
as = [@SVector randn(3) for _ = 1:1000]
@btime sum($a)
@btime sum($am, dims=2)
@btime sum($as)

@btime reshape(reinterpret(Float64,as), 3, 1000)
