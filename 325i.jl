### A Pluto.jl notebook ###
# v0.14.3

using Markdown
using InteractiveUtils

# ╔═╡ f49f0b9f-5c18-4d6c-9760-28341a7815c5
using Unitful, CoolProp, Statistics;

# ╔═╡ 51bfcf8c-4057-4966-9903-48f991d27691
md"## Given"

# ╔═╡ d4c15ae0-a5f5-11eb-241e-25766f188d94
begin
	Fp = 471.1u"N"
	d = 0.02u"m"
	Patm = 1u"bar"
end;

# ╔═╡ 3f4b4698-2601-4d53-8083-006ed441b4ea
md"""
## Find
- w_out
"""

# ╔═╡ 3691b0b2-d47f-4bf0-9a67-568a6e2c50f4
md"# Attack"

# ╔═╡ 66d1dc19-5418-4235-96e5-4545ef54a95e
md"$w_{out} = w_{b,out} \equiv \int^2_1 P dv$"

# ╔═╡ b2b35be7-71f7-4281-bdb9-6f4b0e79de01
Ap = π/4 * d^2

# ╔═╡ 389b1d12-9823-4fe1-9f20-9aa6285cbc24
Fatm = Patm * Ap |> u"N"

# ╔═╡ 32c5430a-8a95-41b8-b59f-ce1da37e0061
ΣF = Fatm + Fp |> u"N"

# ╔═╡ 6f065a36-a63b-4dcd-9071-b24bcc37a53f
P = Patm + ΣF/Ap |> u"bar"

# ╔═╡ 8cc75f3f-c323-4508-b4da-785b5de5ee43
v2 = mean([0.01601,0.01677])u"m^3/kg"    # table

# ╔═╡ 72c5417c-b07e-4a64-b91f-605c40d0ffc0
v1 = 0.0121u"m^3/kg"    				 # table

# ╔═╡ c2efa637-e107-4f1f-80aa-f9d2a8669799
w_out = P * (v2 - v1) |> u"kJ/kg"

# ╔═╡ Cell order:
# ╠═f49f0b9f-5c18-4d6c-9760-28341a7815c5
# ╟─51bfcf8c-4057-4966-9903-48f991d27691
# ╠═d4c15ae0-a5f5-11eb-241e-25766f188d94
# ╟─3f4b4698-2601-4d53-8083-006ed441b4ea
# ╟─3691b0b2-d47f-4bf0-9a67-568a6e2c50f4
# ╟─66d1dc19-5418-4235-96e5-4545ef54a95e
# ╠═c2efa637-e107-4f1f-80aa-f9d2a8669799
# ╠═6f065a36-a63b-4dcd-9071-b24bcc37a53f
# ╠═32c5430a-8a95-41b8-b59f-ce1da37e0061
# ╠═389b1d12-9823-4fe1-9f20-9aa6285cbc24
# ╠═b2b35be7-71f7-4281-bdb9-6f4b0e79de01
# ╠═8cc75f3f-c323-4508-b4da-785b5de5ee43
# ╠═72c5417c-b07e-4a64-b91f-605c40d0ffc0
