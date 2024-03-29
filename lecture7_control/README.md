# Julia for Control

- [Slides](https://docs.google.com/presentation/d/1XSY-l4tIMMo1ZvbO9H9_d20Q8VxoDItPPDa0cpbvKrI/edit?usp=sharing)
- [Video (first half only)](https://youtu.be/Effifd9Th9I)

This weeks material is a mix of
- ControlSystems and ModelingToolkit
- How to control physical hardware

## Hosted notebooks
See the notebooks rendered here
- [`control_demo.jl`](https://juliahub.com/pluto/editor.html?id=375e4201-8b44-4636-98b6-4f8e4af4c450)
- [`control_mtk`](https://juliahub.com/pluto/editor.html?id=ac5abd85-4cb4-42bd-9e8f-b04b6eef3f52)


## Homework

### Step 1: Modeling
Pick a modeling tool of your choice, for example
- ControlSystems.jl
- ModelingToolkit.jl
- DifferentialEquations.jl
- RigidBodyDynamics.jl

and model a control problem (preferably related to your research or teaching).

### Step 2: Design and Analysis
Design a controller for the system using any method and tool you see fit. Perform some form of analysis on the design, such as
- Robustness analysis using ControlSystems or RobustAndOptimalControl
- Reachability analysis using REachabilityAnalysis.jl
- Monte-Carlo analysis
- Your own fancy method

Present the analysis using some nice figures.

