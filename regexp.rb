################################################
## Regexp's or regular expressions are a      ##
## way to match a string against a patterm    ##
## A good example is that of verifying that a ##
## string is in the format of an email adress ##
## that's the point of your the morning today ##
################################################

## Try this in IRB 
my_reg_exp = /michael/
puts my_reg_exp.match('michael')
puts my_reg_exp.match('michael desa')
puts my_reg_exp.match('desa')

puts /1 \+ 2 = 3\?/.match('Does 1 + 2 = 3?')
puts /1 \+ 2 = 3\?/.match('Does 2 + 2 = 3?')

another_reg_exp = /\d \+ \d = \d\?/

puts another_reg_exp.match('Does 1 + 2 = 3?')
puts another_reg_exp.match('Does 4 + 2 = 3?')
puts another_reg_exp.match('4 + 2 = 3?')

## Here's a link to help you with constructing regexp's
## http://rubular.com/
## Use rubular to try to construct your own regexps
