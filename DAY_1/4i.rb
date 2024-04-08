def longest_common_subsequence(str1, str2, i, j, dp)
  return 0 if i == 0 || j == 0
  return dp[i][j] if dp[i][j] != -1  # Check if value is already calculated

  if str1[i - 1] == str2[j - 1]
    dp[i][j] = 1 + longest_common_subsequence(str1, str2, i - 1, j - 1, dp)
  else
    dp[i][j] = [
      0 + longest_common_subsequence(str1, str2, i - 1, j, dp),
      0 + longest_common_subsequence(str1, str2, i, j - 1, dp)
    ].max
  end

  return dp[i][j]
end

str1 = "aggtab"
str2 = "agxtxab"
i = str1.length
j = str2.length
dp = Array.new(i + 1) { Array.new(j + 1, -1) }  
puts longest_common_subsequence(str1, str2, i, j, dp)
puts dp.inspect
