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

end
