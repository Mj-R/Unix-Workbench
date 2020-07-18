function guessing {
	n_files=$(ls -1 | wc -l)
	while true
	do
		echo "Guess, how many files are there in your current directory?"
		read response

		if ! [[ $response =~ ^[0-9]+$ ]]
		then
			echo "Invalid input. Note: Numeric values only"
		
		elif [[ $response -ne $n_files ]]
		then	
			if [[ $response -gt $n_files ]]
			then
				echo "Oops.. you exceed the number, please try again"
			else
				echo "Great work, almost there!!"
			fi

		else	
			echo "WwoowW... Congrats!"
			echo "Thanks for active participation."
			break
		fi
	done
}

guessing
