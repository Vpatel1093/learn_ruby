#write your code here

def add(x,y)
	return x+y
end

def subtract(x,y)
	return x-y
end

def sum(x)
	s=0
	x.each do |i|
		s+=i
	end
	return s
end

def multiply(*x)
	m=1	
	x.each {|x| m*=x}
	return m
end

def power(x,y)
	return x**y
end

def factorial(x)
	f=1	
	i=1
	until i==x+1
		f*=i
		i+=1
	end
	return f
end
