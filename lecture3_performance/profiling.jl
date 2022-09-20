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

@profview_allocs foo() sample_rate=0.1