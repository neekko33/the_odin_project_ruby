nums = [4, 3, 78, 2, 0, 2]

# def bubble_sort(nums)
#   (0...nums.length - 1).each do |i|
#     (0...nums.length - i - 1).each do |j|
#       if nums[j] > nums[j + 1]
#         temp = nums[j]
#         nums[j] = nums[j + 1]
#         nums[j + 1] = temp
#       end
#     end
#   end
#   nums
# end

# 更好的实现
def bubble_sort(nums)
  n = nums.length
  loop do
    swapped = false
    (0...n - 1).each do |i|
      if nums[i] > nums[i + 1]
        nums[i], nums[i + 1] = nums[i + 1], nums[i]
        swapped = true
      end
    end
    break unless swapped
  end
  nums
end

p bubble_sort(nums)

