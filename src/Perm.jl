#Author: Gianfranco Ponza, a.k.a GianProgrammer, gianeering, innerRot
module Perm
  export perm!,moveleft!
  """
  permute gets all the possible rearrangements of a string, and returns them in an array.
  WARNING: DO NOT USE WORDS THAT ARE LONGER THAN 7 CHARACTERS.
  """
  function perm!(word::String,out::AbstractVector = moveleft!(word))
      for perm in out
          for item in moveleft!(perm)
              !(item in out) ? push!(out,item) : nothing
          end
      end
      return out
  end

  """
  moveleft! moves the left-most character towards the beginning of the string.
  """
  function moveleft!(word::String,out::AbstractVector = [])
      k = length(word)
      if k < 2
          return -1
      end
      for i in 1:length(word)
          i > 1 ? push!(out,string(word[1:k-1],word[length(word)],word[k:end-1])) : nothing
          k-=1
      end
      return out
  end
end
