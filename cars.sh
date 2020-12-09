#! /bin/bash
# cars.sh
# Spencer Lafferty

run=1
while [ $run -eq 1 ]
do
echo "Type 1 to enter a new car, 2 to display the current list of cars, or 3 to quit and exit the program"
read opt
case "$opt" in
"1")
	echo "Enter the year"
	read year
	echo "Enter the make"
	read make
	echo "Enter the model"
	read model
	newCar="$year : $make : $model"
	echo $newCar >> My_old_cars
	;;
"2")
	sort My_old_cars
	;;
"3") 
	echo "Goodbye!"
	run=0
	;;
*)
	;;
esac
done
