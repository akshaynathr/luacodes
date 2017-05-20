List={}
function List.new()
	return { first=0,last=-1}
end

function List.pushfirst(list,val)
	local first=list.first-1
	list.first=first
	list[first]=val
end

function List.pushLast(list,val)
	local last=list.last+1
	list.last =last
	list[last]=val
end

function List.popfirst(list)
	local first=list.first
	if first>list.last then error("list is empty") end
	local value=list[first]
	list[first]=nil
	list.first=first+1
	return value
end

function List.poplast(list)
	local last=list.last
	if list.first>last then error ("list is empty") end
	local value=list[last]
	list[last]=nil
	list.last=last-1
	return value
end

