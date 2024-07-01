nums = [4, 3, 78, 2, 0, 2]

def bubble_sort(nums)
  (0...nums.length - 1).each do |i|
    (0...nums.length - i - 1).each do |j|
      if nums[j] > nums[j + 1]
        temp = nums[j]
        nums[j] = nums[j + 1]
        nums[j + 1] = temp
      end
    end
  end
  nums
end

print bubble_sort(nums)

