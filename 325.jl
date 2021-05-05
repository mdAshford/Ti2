### A Pluto.jl notebook ###
# v0.14.3

using Markdown
using InteractiveUtils

# ╔═╡ dce040ee-a5ee-11eb-0f79-ddbfb5643d80
using Unitful, CoolProp, Statistics

# ╔═╡ 81168755-19f3-4d82-9092-601713911480
md"""
## Given
"""

# ╔═╡ 232127d1-b9f4-45fa-bb6b-405eb57f4dc2


# ╔═╡ c5b0285c-5c96-49b5-9221-894d1f31273c
begin
	Fp = 471.1u"N"
	d = 0.02u"m"
	Patm = 1u"bar"
end;

# ╔═╡ eec078f3-92ca-49cd-8eb3-889b470662a1
Ap = π/4 * d^2

# ╔═╡ 438fa3a4-3236-432d-a076-073ef96a8ed0
Fatm = Patm * Ap

# ╔═╡ 850d5125-8ab2-478e-80e8-878358829692
ΣF = Fatm + Fp

# ╔═╡ 254e7da4-5b5e-4034-a0fd-c086c483aa72
P1 = Patm + ΣF/Ap

# ╔═╡ 80b4dfa9-7b9a-4fe2-a310-9fb8152ed164
v1 = 0.0121u"m^3/kg"

# ╔═╡ af3b1044-6c16-4883-8450-1173f370d310
v2 = mean([0.01601,0.01677])u"m^3/kg"

# ╔═╡ 0f10ee25-7924-435f-8411-2231863acec6
w_out = P1 * (v2 - v1) |> u"kJ/kg"

# ╔═╡ Cell order:
# ╠═dce040ee-a5ee-11eb-0f79-ddbfb5643d80
# ╟─81168755-19f3-4d82-9092-601713911480
# ╠═232127d1-b9f4-45fa-bb6b-405eb57f4dc2
# ╠═c5b0285c-5c96-49b5-9221-894d1f31273c
# ╠═0f10ee25-7924-435f-8411-2231863acec6
# ╠═254e7da4-5b5e-4034-a0fd-c086c483aa72
# ╠═eec078f3-92ca-49cd-8eb3-889b470662a1
# ╠═850d5125-8ab2-478e-80e8-878358829692
# ╠═438fa3a4-3236-432d-a076-073ef96a8ed0
# ╠═80b4dfa9-7b9a-4fe2-a310-9fb8152ed164
# ╠═af3b1044-6c16-4883-8450-1173f370d310
