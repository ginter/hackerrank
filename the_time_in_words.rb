def word_for_num num
  case num
  when 1 then 'one'
  when 2 then 'two'
  when 3 then 'three'
  when 4 then 'four'
  when 5 then 'five'
  when 6 then 'six'
  when 7 then 'seven'
  when 8 then 'eight'
  when 9 then 'nine'
  when 10 then 'ten'
  when 11 then 'eleven'
  when 0, 12 then 'twelve'
  when 13 then 'thirteen'
  when 14 then 'fourteen'
  when 15 then 'fifteen'
  when 16 then 'sixteen'
  when 17 then 'seventeen'
  when 18 then 'eighteen'
  when 19 then 'nineteen'
  when 20 then 'twenty'
  when 21..29 then "twenty #{word_for_num num%20}"
  end
end

def pluralize_minutes m
  m == 1 ? 'minute' : 'minutes'
end

h = gets.to_i
m = gets.to_i

sentence = case m
           when 0 then "#{word_for_num h} o' clock"
           when 15 then "quarter past #{word_for_num h}"
           when 0...30 then "#{word_for_num m} #{pluralize_minutes m} past #{word_for_num h}"
           when 30 then "half past #{word_for_num h}"
           when 45 then "quarter to #{word_for_num (h+1)%12}"
           when 30...60 then "#{word_for_num 60-m} #{pluralize_minutes m} to #{word_for_num (h+1)%12}"
           end

print sentence
