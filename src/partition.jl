### Partition function
# This function partitions a set, if possible creating subsets of equal size.
# It takes as input a vector and the number of subsets requred, and returns a vector of vectors.

function partition(set::Vector, K)

    if K > length(set)
        error("Number of subsets is greater than number of elements.")
    end

    P    = Vector{Vector}(undef,K)
    if K==1
        P[1] = collect(set)
    else
        step = Int64(floor(length(set)/K))
        starts = collect(1:step:length(set))
        for k=1:(K-1)
            P[k]  = set[starts[k] .+ collect(0:(step-1))]
        end
        P[K] = set[collect((1 + (K-1)*step):length(set))]
    end
    
    return P
end