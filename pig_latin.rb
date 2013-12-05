#THE CHALLENGE
#
#Create a Command Line Pig Latin translator.
#
#Pig Latin is a game of alterations played on the English language game. To create the Pig Latin 
#form of an #English word the initial consonant sound is transposed to the end of the word and an 
#ay is affixed. Read #Wikipedia for more information on rules.
#
#Example output:
#
#> pig_latin("banana") #=> "anana-bay"
require 'rainbow'

def pig_latin(word)
consonants =  %w(b c d f g h j k l m n p q r s t v x z y,th)
vowels = %w(a e i o u)
 consonants.each do |letter|
	  new_word = word[1..-1]
		 if word[0] == letter
			new_string = new_word + "-" + word[0] + "ay".color(:red)
			 puts new_string
			end
	end
	vowels.each do |vletter|
				if word[0] == vletter
					puts word + "way".color(:blue)
				end
			end
end
pig_latin("rhythm")
