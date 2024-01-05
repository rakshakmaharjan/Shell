#!/bin/awk -f

function add(x,y){
	print x+y
}

#Comment
BEGIN{
	print "Hello"
	name="ram"
	age=20

	#array
	arry[0]=1
	arry[1]=2

	marks["eng"]=50
	marks["math"]=40

	#For loop
	for(i in marks)
		print i ": " marks[i]

	for(i=1; i<=5; i++)
		print i

	#While loop
	count=6
	while(count<=10){
		print count
		count++
	}

}

#Pattern and Action
{
	print $0
}

#END
END{
	print arry[0], arry[1]

	add(4,4)
}
