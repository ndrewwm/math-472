using Distributions, Plots

U = Uniform()
X = Beta(2, 1)

f(x) = 2x
g(x) = 1
c = 2

function gen_beta()
    u₁ = rand(U, 1)
    u₂ = rand(U, 1)

    if u₂ < f(u₁) / (c * g(u₁))
        return u₁
    else
        gen_beta()
    end
end

gen_beta()

x = [gen_beta() for i in 1:10000]

histogram(x)
