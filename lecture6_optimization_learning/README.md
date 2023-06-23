# AD, Optimization and Learning
Lecture videos: [Part 1](https://youtu.be/7kygBYcajQ4), [Part 2 (Flux)](https://youtu.be/w8NP8AfY7bk)

- Automatic differentiation
  - ForwardDiff.jl
  - ReverseDiff.jl
  - Zygote.jl
  - Enzyme (advanced)
- JuMP.jl: Modeling language for all kinds of optimization problems.
- Optim.jl: Native julia solvers, supports AD
- ProximalOperators.jl:
- Convex.jl: Modeling language for convex optimization problems.
- Flux.jl: Native Julia Deep learning
- Lux.jl: Pure (functional) version of Flux

Why DL in Julia? 
When coding in julia, you machine learning library is likely written in julia (e.g., Flux). You can inspect the code, understand it, modify it, debug it. You do not have to write your code in a DSL using a subset of the host language (every python DL-framework), you can write pretty much any valid julia code and use it together with AD. This holds to such an extent that learning works even if it’s an afterthought, using a model that was originally built for simulation only.


### Homework:
#### Part 1, reading:
Study the five notebook lectures in 
- [Differentiation for Hackers](https://github.com/MikeInnes/diff-zoo)

Pay particular attention to the fundamental differences between forward and reverse mode AD. You will not be questioned on the contents and do not have to study it in great detail, but you should be comfortable enough with the basics to be able to explain your results in the task below.

#### Part 2, doing:
Consider an optimization problem (with differentiable cost function) related to your research, it may be anything, big or small (preferably complicated enough to make manual derivation of the gradient an arduous task). Code this up in Julia and compute the gradient (and Hessian or some Jacobian if you find it relevant) of the loss function using *both* forward and reverse mode AD. You may use any AD packages of your choice, the simplest ones to get started with are
- [ForwardDiff.jl](https://github.com/JuliaDiff/ForwardDiff.jl/) for forward mode.
- [ReverseDiff.jl](https://github.com/JuliaDiff/ReverseDiff.jl) or [Zygote.jl](https://github.com/FluxML/Zygote.jl) for reverse mode.

Benchmark the gradient computation using both forward and reverse mode AD and explain why the relative results are the way they are for your application. If the problem size can be easily scaled up and down, try to find a size where forward and reverse modes perform similarly. If you cannot make either forward or reverse mode work, try to explain why.

*Optional*: The performance of AD is affected by the same things as standard julia code; use the tricks you've learned from performance optimization to figure out the bottlenecks of your gradient computation.
