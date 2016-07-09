#write your code here
def echo(a)
	return a
end

def shout(a)
	return a.upcase
end

def repeat(a,x=1)
	rep=a+" "+a
	i=2
	if x>i
		until i==x
			rep+=" "
			rep+=a
			i+=1
		end
	end
	return rep
end

def start_of_word(x,i)
	return x.slice(0..i-1)
end

def first_word(x)
	return x.slice(0..((x.index(' '))-1))
end

def titleize(x)
	ignore=['and','but','of','the','over']
	tit=x.split(' ').each{|i| i.capitalize! if ! ignore.include? i}.join(' ')
	return tit.slice(0,1).capitalize+tit.slice(1..-1)
end
