### printlatex: a function to print a matrix or dataframe to latex. The function accepts the following types of inputs:
# - a matrix containing Floats, Integers, Strings, missing
# - a dataframe containing Floats, Integers, Strings, missing

function printlatex(M::Union{Matrix, DataFrame}, file; digits = 2)


# # Convert to matrix of type Any
# M   = convert(Matrix{Any},Matrix(M))
# I,J = size(M)

# # Missings, nothings, etc (could become an option)
# M[ismissing.(M)] .= ""
# M[isnothing.(M)] .= ""

# # Delimiters (what delimiter to print after each entry)
# D        = fill(" & ", I,J)
# D[:,end] = fill(" \\\\ \n", I)

# # Printing
# if digits>4
#   @warn "Warning: printlatex does not support more than four digits after the decimal point."
# end

# for k=eachindex(M)
#   type_ij = typeof(M[k])

#   if type_ij==String
#     M[k] = @sprintf "%s" M[k]
#   elseif type_ij==Int || type_ij==Int32 || type_ij==Int64
#     M[k] = @sprintf "%s" M[k]
#   elseif type_ij==Float32 || type_ij==Float64
#     if digits==0
#       M[k] = @sprintf "%0.0f" M[k]
#     elseif digits==1
#       M[k] = @sprintf "%0.1f" M[k]
#     elseif digits==2      
#       M[k] = @sprintf "%0.2f" M[k]
#     elseif digits==3
#       M[k] = @sprintf "%0.3f" M[k]
#     elseif digits==4
#       M[k] = @sprintf "%0.4f" M[k]
#     else
#       M[k] = @sprintf "%0.4f" M[k]
#     end
#   end
# end

# # # Format matrix: indicates the format to use to print each entry ij
# # if isnothing(format)
# #   format = Matrix{Any}(undef,I,J)

# #   for i=1:I
# #     for j=1:J
# #       type_ij = typeof(M[i,j])

# #       if type_ij==String || type_ij==Int || type_ij==Int32 || type_ij==Int64
# #         format[i,j] = "%s"
# #       elseif type_ij==Float32 || type_ij==Float64
# #         format[i,j] = string("%0.",digits,"f")
# #       end
# #     end
# #   end
# # end

# # # Print using format
# # for k=eachindex(M)
# #   M[k] = Printf.format(Printf.Format(format[k]), M[k])
# # end

# # Add delimiters
# for k=eachindex(M)
#   M[k] = string(M[k], D[k])
# end

# ### Print to a file
# open(file, "w") do f
# for i = 1:I
#   for j = 1:J
#     write(f,M[i,j])
#   end
# end
# end

end