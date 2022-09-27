# Compiling a system image

Julia suffers from JIT latency upon first call
```julia
@time begin
    using Plots
    plot(randn(10)) |> display
end
  8.682779 seconds (22.79 M allocations: 1.326 GiB, 4.84% gc time, 57.58% compilation time: 4% of which was recompilation)
```

This can be almost eliminated by creating a custom system image using [PackageCompiler.jl](https://julialang.github.io/PackageCompiler.jl/stable/).

Start Julia with a custom system image `julia -J/home/fredrikb/sys_1.8.1.so`
```julia
@time begin
    using Plots
    plot(randn(10)) |> display
end
  0.359080 seconds (35.22 k allocations: 2.300 MiB, 7.63% compilation time)
```



Benefits:
- Much faster load time and time to first result.

Drawbacks:
- Packages built into the system image can not be updated without rebuilding the image.
- Packages under development should not be built into system image (but their dependencies can be).