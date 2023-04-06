### Partition function
# This function partitions a set, if possible creating subsets of equal size.
# It takes as input a vector and the number of subsets requred, and returns a vector of vectors.

function partition(set::Vector, K)

    if K > length(set)
        error("Number of subsets is greater than number of elements.")
    end

    P    = Vector{Vector}(undef,K)
    step = Int64(ceil(length(set)/K))

    starts = collect(1:step:length(set))
    for k=1:K
        subset  = starts[k] .+ collect(0:(step-1))
        subset  = subset[subset .<= length(set)]
        P[k]    = set[subset]
    end

    return P
end

