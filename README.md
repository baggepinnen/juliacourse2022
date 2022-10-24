# juliacourse 2022
A short course in Julia for scientific programming

This version of the julia course is given for graduate students at Dept. Automatic Control at Lund University.

Teachers:
Fredrik Bagge Carlson ([@baggepinnen](https://github.com/baggepinnen))

## Upcoming: Lecture 6
Session on Tuesday 25/10 08:15-10:00, [Optimization and Learning](https://github.com/baggepinnen/juliacourse2022/tree/master/lecture6_optimization_learning). Please note the updated time for this session.

### Homework:
#### Part 1, reading:
Study the five notebook lectures in 
- [Differentiation for Hackers](https://github.com/MikeInnes/diff-zoo)

Pay particular attention to the fundamental differences between forward and reverse mode AD. You will not be questioned on the contents and do not have to study it in great detail, but you should be comfortable enough with the basics to be able to explain your results in the task below.

#### Part 2, doing:
Consider an optimization problem (with differentiable cost function) related to your research, it may be anything, big or small (preferably complicated enough to make manual derivation of the gradient an ardeous task). Code this up in Julia and compute the gradient (and Hessian or some Jacobian if you find it relevant) of the loss function using *both* forward and reverse mode AD. You may use any AD packages of your choice, the simplest ones to get started with are
- [ForwardDiff.jl](https://github.com/JuliaDiff/ForwardDiff.jl/) for forward mode.
- [ReverseDiff.jl](https://github.com/JuliaDiff/ReverseDiff.jl) or [Zygote.jl](https://github.com/FluxML/Zygote.jl) for reverse mode.

Benchmark the gradient computation using both forward and reverse mode AD and explain why the relative results are the way they are for your application. If the problem size can be easily scaled up and down, try to find a size where forward and reverse modes perform similarily. If you cannot make either forward or reverse mode work, try to explain why.

*Optimal*: The performance of AD is affected by the same things as standard julia code; use the tricks you've learned from performance optimization to figure out the bottlenecks of your gradient computation.


## Previously under "Upcoming"

### Lecture 5
Session on Tuesday 4/10 10:15-12:00 [Parallel and distributed computing](https://github.com/baggepinnen/juliacourse2022/tree/master/lecture5_distributed)

*Homework*: Run a distributed workload. If you have no suitable workload of your own, run the particle-filtering distributed.
Try making use of the cloud computers for this homework.



### Lecture 4
Session on Tuesday 27/9 10:25-12:00 [Workflow, packages and design](https://github.com/baggepinnen/juliacourse2022/tree/master/lecture4_workflow_design)
- Creating packages
- Testing
- Workflow
- Patterns and antipatterns
- System images

*Homework*: Create a package, see instructions in [`presentation.pdf`](https://github.com/baggepinnen/juliacourse2022/tree/master/lecture4_workflow_design/presentation.pdf)


### Lecture 3

Session on Tuesday 20/9 10:25-12:00 [Performance and profiling](https://github.com/baggepinnen/juliacourse2022/tree/master/lecture3_performance).
*Homework*: see [test_pf.jl](https://github.com/baggepinnen/juliacourse2022/blob/main/lecture3_performance/test_pf.jl).

### Lecture 2
Session on Tuesday 13/9 10:15-12:00 [Types, functions and dispatch](https://github.com/baggepinnen/juliacourse2022/tree/master/lecture2_types_functions).
*Homework*: see [homework_instructions.jl](https://github.com/baggepinnen/juliacourse2022/blob/main/lecture2_types_functions/homework_instructions.jl).


### Lecture 1
Session on Tuesday 6/9 10:15-12:00 [Introduction](https://github.com/baggepinnen/juliacourse2022/tree/master/lecture1_intro).

In the first lecture we will discuss the course format and I'll give an introduction to Julia. In advance of this lecture, it would be great if you have installed Julia (using [juliaup](https://github.com/JuliaLang/juliaup) or by [downloading the binary](https://julialang.org/downloads/)), and setup your editor of choice. If you are unsure what editor to use, I recommend using [vscode with julia support](https://www.julia-vscode.org/). Support for other editors can be found [here](https://github.com/JuliaEditorSupport).

*Homework*: Convert a script or function you have written in another language to julia. Test that it computes what you expect. 
