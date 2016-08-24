def leap_year?(year)
  if year % 4 == 0
    if year % 100 == 0
      if year % 400 == 0
        return true
      else
        return false
      end
    else
      return true
    end
  else
    return false
  end
end

# #Other solutions
# def leap_year?(year)
#   if year % 4 == 0
#     if year % 100 == 0 && year % 400 != 0
#       return false
#     end
#     return true
#   end
# end
#
# def leap_year?(year)
#   if (year % 4 == 0 && year % 100 != 0) || year % 400 == 0
#     return true
#   end
# end
