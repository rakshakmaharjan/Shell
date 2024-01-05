#emp.csv - Display 'High' in Salary greater than 20000 else display 'Low'.

BEGIN{
	print "----Start----"
}

{
	if($NF>20000)
		$7="High"
	else
		$7="Low"

	print$0
}

END{
	print "----END----"
}
