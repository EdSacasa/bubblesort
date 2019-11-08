`#frozen_string_literal: true`
def bubble_sort_by(arr)
  answer = []
  i = 1
  until arr.length.zero?
    while i <= arr.size - 1
      if yield(arr[i - 1], arr[i]) >= 1
        el = arr.slice!(i - 1)
        arr.insert(i, el)
      end
      i += 1
    end
    answer << arr.pop
    i = 1
  end
  p answer.reverse
end

bubble_sort_by( %W[ hola hi hellopop hey qhuboman]) do |left, right|
  left.length - right.length
end
