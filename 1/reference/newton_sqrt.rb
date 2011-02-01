def square(x)
	x * x
end

def average(x,y)
	(x + y)/2
end

def improve (guess,x)
	average guess, (x/guess)
end

def good_enough?(guess, x)
	if (square(guess) - x).abs < 0.001
		true
	else
		false
	end
end

def sqrt_iter(guess, x)
	if good_enough?(guess,x)
		guess
	else
		sqrt_iter improve(guess, x), x
	end
end

def newton_sqrt(x)
	puts sqrt_iter(1.0, x)
end

newton_sqrt(2)