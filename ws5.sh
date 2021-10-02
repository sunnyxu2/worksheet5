for i in {1..1000}
do
	customer_id=$(sed "${i}q;d" $1 | awk '{print $2}')
	grep "$customer_id" $2 >> $3/${customer_id}.txt
done
