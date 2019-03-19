# Sample code
module Code

  # Returns indices where the sum of two numbers in the array equals target
  def self.two_sum(nums, target)
    nums.each_with_index do |_n1, i|
      nums.each_with_index do |_n2, j|
        return [i, j] if i != j && (nums[i] + nums[j]) == target
      end
    end
    []
  end

  # Given a 32-bit signed integer, reverse digits of an integer.
  # 123 => 321, -123 => -321, 120 => 21
  def self.reverse_integer(x)
    s = x.to_s.reverse

    negative = false
    if s.include?('-')
      s.delete!('-')
      negative = true
    end

    n = s.to_i
    n *= -1 if negative

    return 0 if n < -2**31 || (2**31 - 1) < n

    n
  end

end
