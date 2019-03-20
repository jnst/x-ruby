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

  # Discard except plus, minus and digits. Then convert to integer.
  def self.string_to_integer(str)
    s = str.strip
    return 0 unless s.match?(/^+|^\-|^-d/)

    n = s.to_i

    max = 2**31 - 1
    min = -2**31
    return max if max < n
    return min if n < min

    n
  end

  # Validate the number.
  def self.is_number(str)
    s = str.strip

    return false if s.empty?
    return true if /^\.\d+$/.match?(s)

    signs = ['+', '-']

    arr = s.split('')
    last_index = arr.size - 1
    arr.each_with_index do |c, i|
      return false if i != 0 && signs.include?(c)
      return false if c == '-' && (i <= last_index && !/\d/.match?(arr[i + 1]))
      return false if c != 'e' && c != '.' && !signs.include?(c) && !/\d/.match?(c)
    end

    has_sign = signs.include?(s[0])

    return false if !has_sign && /[^\d]/.match?(s[0])
    return false if s[s.size - 1] == 'e'

    arr.each_with_index do |c, i|
      return false if i > 0 && !signs.include?(c) && /[^\d|^e|^\.]/.match?(c)
    end

    decimal_point_count = 0
    arr.each do |c|
      decimal_point_count += 1 if c == '.'
      return false if decimal_point_count >= 2
    end

    sign_count = 0
    arr.each do |c|
      sign_count += 1 if signs.include?(c)
      return false if sign_count >= 2
    end

    is_exponent = false
    exponent_index = -1
    arr.each_with_index do |c, i|
      return false if i.zero? && ['e', '.'].include?(c)
      return false if is_exponent && c == 'e'
      return false if is_exponent && c == '.'
      return false if is_exponent && (exponent_index + 1) != i && signs.include?(c)

      if c == 'e'
        is_exponent = true
        exponent_index = i
      end
    end

    true
  end
end
