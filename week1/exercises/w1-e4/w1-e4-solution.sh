echo "Every command has its own properties, and its own syntax"
echo "They always have a default function, but adding an option may change its function drastically  "
echo "The commands are case sensitive."
echo ""
echo ""
comando=$1
case $comando in
  cd)
    echo "cd : Changes the directory "
    echo ""
    echo "Syntax: cd [Destiny directory]"
    echo "Examples:"
    echo "cd ~ #Change to the home area of the current user"
    echo "cd $HOME #Do the same as above"
    echo "cd / #Change directory to the root"
    echo "cd ~/Dev/dev/dev/week1/exercises/w1-e4 #Change directory directly to w1-e4"
    echo "cd .. #Go up in the tree"
    echo "But, if you are already in a directory..."
    echo "cd ~/Dev/dev/dev/week1/exercises"
    echo "and just want to go to w1-e4"
    echo "cd w1-e4 #and its done."
  ;;
  ls)
    echo "ls : List information about certain File. "
    echo "If no argument is selected, the File is the current directory"
    echo ""
    echo "Syntax: ls [OPTION] [FILE]"
    echo "Examples:"
    echo "In the w1-e4 directory"
    echo "ls       #input command"
    echo "w1-e4.md  w1-e4-solution.sh  w1-e4-spec.rb  w1-e4-submit.sh    #output"
  ;;
  pwd)
    echo "pwd : Prints the current working directory"
    echo ""
    echo "Syntax: pwd [OPTION]"
    echo "Examples:"
    echo "cd ~/Dev/dev/dev/week1/exercises/w1-e4  #going to any directory"
    echo "pwd       #input command"
    echo "/home/ubuntu/Dev/dev/dev/week1/exercises/w1-e4  #displays the current working directory"
  ;;
  cat)
    echo "cat : Shows what is inside a File, or ,in the man command words, concatenate files and print on the standard output"
    echo ""
    echo "Syntax: cat [OPTION] [FILE]"
    echo "cat text.txt    #Show everything thats inside this txt"
    echo "cat -e text.txt   #display $ at the end of each line"
    echo "cat -T text.txt   #dislpay TAB character as ^I "
    echo "cat -n text.txt   #number all output lines"
  ;;
  rm)
    echo "rm : Removes files or directories"
    echo ""
    echo "Syntax: rm [OPTION] [FILE]"
    echo "Exmaples:"
    echo "rm text.txt  #will remove text.txt"
    echo "rm -r /home/ubuntu/Dev #will remove their contents recursively. Meaning, it will remove Dev and everything its inside"
  ;;
  mv)
    echo "mv: Move or rename files"
    echo ""
    echo "Syntax.1: mv [OPTION] [FILE] [NEWFILE]  #change the name of a file to newfile"
    echo "Syntax.2: mv [OPTION] [FILE] [DESINTY]  #move the file from the current directory to destiny directory"
    echo "Syntax.3: mv [OPTION] [FILE] [DESTINY]/[NEWFILE]  #move the file to destiny and rename it (moves to filename Newfile)"
    echo "Examples:"
    echo "mv w1-e4-solution.sh teste.sh  #Move the file w1-e4-solution.sh to teste.sh (Renaming the file)"
    echo "mv teste.sh ..   #move teste.sh up in the directory"
    echo "mv w1-e4-solution.sh ~/Dev/dev/dev/week1/exercises/teste.sh #Move the file w1-e4-solution.sh to another directory and rename it to teste.sh"
  ;;
  chmod)
    echo "chmod : Change file mode bits/the administrative rights"
    echo ""
    echo "Syntax: chmod [OPTION] [MODE] [FILE]"
    echo "There are 2 types of modes:"
    echo ""
    echo "The octal permission notation: "
    echo "4 - Read"
    echo "2 - write"
    echo "1 - execute"
    echo "0 - no permission"
    echo "in the order: user, group, other, the combination of the values 4, 2, 1 and 0 represents the administrative rights one file can have."
    echo "chmod 754 myfile.txt #so in that order, user has all rights, group have read and execute and others, read only."
    echo ""
    echo "The symbolic permission notation:"
    echo "r - read"
    echo "w - write"
    echo "x - execute"
    echo "u - user"
    echo "g - group"
    echo "o - others"
    echo "The equal sign (=) means set permission"
    echo "chmod u=rwx,g=rx,o=r myfile.txt #user has all rights, group have read and execute. Others, read only. Carefull, there is no space between commas"
    echo ""
    echo "You can also use the operator + or - to add or remove a permission"
    echo "Remember, if no user, group or others are explicit shown, the rights go to all (-a)"
    echo "chmod +x w1-e4-solution.sh #all receive execute permission  "
    echo "chmod 700 teste.txt #user has all privileges, group and others have none"
    echo ""
    echo "To see the permissions in a directory, use ls -l"
  ;;
  man)
    echo "man : Gives the manual of a command"
    echo ""
    echo "Syntax: man [Command]"
    echo "Examples:"
    echo "man man #Prompt the manual of man with all its functions and properties"
    echo "man wget #Prompt the manual of wget with all its functions and properties"
  ;;
  time)
    echo "time : Runs the specified program command with the given arguments. When its done, it writes a message to standard output giving timing statistics"
    echo "The statistics consists of:"
    echo "i) The elapsed real time between invocation and termination"
    echo "ii) The user CPU time "
    echo "iii) The system CPU time"
    echo ""
    echo "Syntax: time [MODE] [FILE]"
esac