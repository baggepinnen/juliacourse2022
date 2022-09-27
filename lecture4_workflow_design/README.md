# Lecture 4 -- Workflow, creating and testing packages and creating system images



## Homework
Create a package hosted on github or gitlab, with tests and continuous integration. Ideally, create a package that is meaningful to you, containing research code or an experiment etc. If you have no ideas for such a package, you may package the TrackingFloat implementation.

If you have already created such a package, link to this instead and spend your time improving tests or CI on this package.

- To create the package folder and file structure, I suggest using [PkgTemplates.jl](https://github.com/invenia/PkgTemplates.jl).
- To setup continuous integration, I suggest using Github actions if hosting on github. See an example repository for how this is done, e.g., [DiscretePIDs.jl](https://github.com/JuliaControl/DiscretePIDs.jl) and look in the [`.github/workflows`](https://github.com/JuliaControl/DiscretePIDs.jl/tree/main/.github/workflows) folder.


Requirements:
- Host the package on github or gitlab
- Export some useful functions or types
- Have meaningful tests and test coverage
- Host it on github/gitlab with continuous integration
- Follow the julia style guide
- Have a meaningful README
- Should be possible to `]add https://github.com/user/PackageName.jl.git`
- Hint: Use some existing packages for "inspiration".
- Optional: Create a system image that includes your package for faster loading, see [PackageCompiler.jl](https://github.com/JuliaLang/PackageCompiler.jl) for details or the [example building a system image with ControlSystems](https://juliacontrol.github.io/ControlSystems.jl/latest/man/differences/#Precompilation-for-faster-load-times).