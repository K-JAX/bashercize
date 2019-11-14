#!/bash/bin

echo -e "\033[1;34m
Bashercise 1 💪: Get the shell to print "Hello World" with shell's built-in echo program.
"
preexec () { 
	# Check command is correct
	if [[ "$1" == echo* ]]
	then
		# Check spelling of message
		if [[ "$1" == *"Hello World"* ]]
		then
			echo "Hello World"
			echo -e "\033[1;33mSuccess 😎 \033[36m"
			exec zsh
		else
			echo "Whoops, you may have mispelled it."
		fi
	fi
}
