module FunWithStrings
  def palindrome?   
    var = self.gsub(/(\W|\d)/,"").downcase
    var.reverse == var
  end

  def count_words
    hash = Hash.new(0)
    var = self.gsub(/(\W|\d)/," ").downcase
    word_array = var.split(" ")
    word_array.each do |word|	
	 count = hash[word] + 1
	  hash[word] = count	
    end
    return hash
  end

  def anagram_groups      
    return [] if self.empty?
    hash = Hash.new(Array.new)  
    word_array = self.split(" ")
	word_array.each do |word|
	       keyWord = word.downcase
	       array_letters = Array.new(word.length)
	       array_letters = keyWord.split("")
	       array_letters.sort!
	       sorted_word = array_letters.join
		tmp = Array.new
		if hash.has_key?(sorted_word)
		 tmp =   hash[sorted_word]		
		end	
		tmp << word
		hash[sorted_word] = tmp
	end
     return hash.values 
  end  
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end
