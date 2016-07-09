#write your code here
def translate(x)
	pl=''
	vowels=['a','e','i','o','u']
	con=['b','c','d','f','g','h','j','j','k','l','m','n','p','q','r','s','t','v','w','x','y','z']
	x.split(' ').each do |i|
		if vowels.include? i[0]
			pl+= i+'ay'+' '
		elsif i[0..1]=='qu'
			pl+=i[2..-1]+i[0..1]+'ay'+' '
		elsif con.include? i[0]
			if vowels.include? i[1]
				pl+= i[1..-1]+i[0]+'ay'+' '
			elsif i[1..2]=='qu'
				pl+=i[3..-1]+i[0..2]+'ay'+' '
			elsif con.include? i[1]
				if vowels.include? i[2]
					pl+= i[2..-1]+i[0..1]+'ay'+' '
				elsif con.include? i[2]
					pl+= i[3..-1]+i[0..2]+'ay'+' '
				end
			end
		end
	end
	return pl[0..-2]
end
