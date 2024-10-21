# GRB Plots

define some common functions and plot it !
much intuitive than using numpy(

```julia
using CairoMakie

band(K, E, E_p, α, β, E_piv=100) = E > (α - β) * E_p / (2 + α) ?
                                   K * (E / E_piv)^β * exp(β - α) * ((α - β) * E_p / (2 + α) / E_piv)^(α - β) :
                                   K * (E / E_piv)^α * exp(-(2 + α) * E / E_p)


grbm(K, E, E_c, α, β, E_piv=100) = E > (α - β) * E_c ?
                                   K * (E / E_piv)^β * exp(β - α) * ((α - β) * E_c / E_piv)^(α - β) :
                                   K * (E / E_piv)^α * exp(-E / E_c)


cutoff_powerlaw(K, E, E_c, index, E_piv=100) = K * (E / E_piv)^index * exp(-E / E_c)

blackbody(K, E, kT) = K * (E^2 / (exp(E / kT) - 1))

x = logrange(10^-2, 10^5, 200)

K_1, α, β, E_p = 0.01445, -1.04, -2.64, 492
K_2, kT = 3.728e-5, 20.51

fig, ax, plot = lines(x, @. x^2 * band(K_1, x, E_p, α, β);
    label="band",
    axis=(;
        xscale=log10, yscale=log10,
        limits=((nothing, nothing), (1e-5, 1e5)),
    ))
lines!(ax, x, @. x^2 * blackbody(K_2, x, kT); label="bb")
lines!(ax, x, @. x^2 * grbm(K_1, x, E_p, α, β) + x^2 * blackbody(K_2, x, kT); label="band+bb")
CairoMakie.axislegend(position=:lt, framevisible=false)
fig
```