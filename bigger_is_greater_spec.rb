actual = `cat bigger_is_greater_test_case.txt | ruby bigger_is_greater_three.rb` 
expected = <<-STDOUT
ba
no answer
hegf
dhkc
hcdk
habcdk
STDOUT

print actual == expected ? 'SUCCESS' : 'FAIL', "\n"
