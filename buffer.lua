function addString(stack,s)
	stack[#stack+1]=s
	for i =#stack-1,1,-1 do
		if #stack[i] > #stack[i+1] do
			break
		end
		stack[i]=stack[i] .. stack[i+1]
		stack[i+1]=nil
	end
end
	
			
