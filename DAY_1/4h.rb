#  h) Count distinct subsequences

def count_subsequence str
  n = str.length
  dp = Array.new(n+1,0)
  last_occurance = {}

  dp[0] = 1

  (1..n).each do |i|
    dp[i] = 2 * dp[i - 1]

    if last_occurance.key?(str[i-1])
      dp[i] -= dp[last_occurance[str[i-1]]-1]
    end

    last_occurance[str[i-1]] = i 
  end
  dp[n]
end

puts count_subsequence  "allahuakbar"