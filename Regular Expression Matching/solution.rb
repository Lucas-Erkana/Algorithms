# @param {String} s
# @param {String} p
# @return {Boolean}
def is_match(s, p)
  m = s.length
  n = p.length
  
  dp = Array.new(m + 1) { Array.new(n + 1, false) }
  dp[0][0] = true
  
  # Initialize the first row of dp array
  (1..n).each do |j|
    dp[0][j] = dp[0][j - 2] if p[j - 1] == '*'
  end
  
  # Fill the dp array
  (1..m).each do |i|
    (1..n).each do |j|
      if p[j - 1] == s[i - 1] || p[j - 1] == '.'
        dp[i][j] = dp[i - 1][j - 1]
      elsif p[j - 1] == '*'
        dp[i][j] = dp[i][j - 2] || (dp[i - 1][j] && (s[i - 1] == p[j - 2] || p[j - 2] == '.'))
      end
    end
  end
  
  return dp[m][n]
end



# Call the function with desired values for s and p
s = "aab"
p = "c*a*b"
result = is_match(s, p)

# Print the result
puts result

# puts result ? "true" : "false"