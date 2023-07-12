### Partition function
# This function partitions a set, if possible creating subsets of equal size.
# It takes as input a vector and the number of subsets requred, and returns a vector of vectors.

function partition(set::Vector, K)

    if K > length(set)
        error("Number of subsets is greater than number of elements.")
    end

    P    = Vector{Vector}(undef,K)
    step = Int64(floor(length(set)/K))

    starts = collect(1:step:length(set))
    for k=1:(K-1)
        P[k]  = starts[k] .+ collect(0:(step-1))
    end
    P[K] = collect((1 + (K-1)*step):length(set))

    return P
end