#!/usr/bin/env bash
##
## Tests pour le firtree
##     Réalisés par
##  Maxence Carpentier
##

mkdir ~/.temp_tree
touch ~/.temp_tree/mouli
touch ~/.temp_tree/student
mkdir ~/errors_tree
NOTE=0
PERCENT=0
clear
echo -e "\033[34;1m\n\n\n\t\t\tHi ! What's up ? I'm sure you're here to check your Firtree ? Let me do this for you !\033[0m"
./firtree_real 1
sleep 0.1
clear
echo -e "\033[34;1m\n\n\n\t\t\tHi ! What's up ? I'm sure you're here to check your Firtree ? Let me do this for you !\033[0m"
./firtree_real 2
sleep 0.1
clear
echo -e "\033[34;1m\n\n\n\t\t\tHi ! What's up ? I'm sure you're here to check your Firtree ? Let me do this for you !\033[0m"
./firtree_real 3
sleep 0.1
clear
echo -e "\033[34;1m\n\n\n\t\t\tHi ! What's up ? I'm sure you're here to check your Firtree ? Let me do this for you !\033[0m"
./firtree_real 4
sleep 0.1
clear
echo -e "\033[34;1m\n\n\n\t\t\tHi ! What's up ? I'm sure you're here to check your Firtree ? Let me do this for you !\033[0m"
./firtree_real 5



sleep 5
clear


echo -e "\033[33;1mLet's make a tree with size 1 !\033[0m"
./firtree_real 1 > ~/.temp_tree/mouli
./firtree 1 > ~/.temp_tree/student
diff ~/.temp_tree/mouli ~/.temp_tree/student > ~/.temp_tree/result
if test -s ~/.temp_tree/result
then
echo -e "\033[41;1mFailed !\033[0m"
echo -e "Error for size 1 :" > ~/errors_tree/1
cat ~/.temp_tree/result >> ~/errors_tree/1
else
echo -e "\033[42;1mSuccess !\033[0m"
((NOTE++))
((PERCENT+=10))
fi

sleep 0.5

echo -e "\033[33;1m\nLet's make a tree with size 2 !\033[0m"
./firtree_real 2 > ~/.temp_tree/mouli
./firtree 2 > ~/.temp_tree/student
diff ~/.temp_tree/mouli ~/.temp_tree/student > ~/.temp_tree/result
if test -s ~/.temp_tree/result
then
echo -e "\033[41;1mFailed !\033[0m"
echo -e "Error for size 2 :" > ~/errors_tree/2
cat ~/.temp_tree/result >> ~/errors_tree/2
else
echo -e "\033[42;1mSuccess !\033[0m"
((NOTE++))
((PERCENT+=10))
fi

sleep 0.5

echo -e "\033[33;1m\nLet's make a tree with size 3 !\033[0m"
./firtree_real 3 > ~/.temp_tree/mouli
./firtree 3 > ~/.temp_tree/student
diff ~/.temp_tree/mouli ~/.temp_tree/student > ~/.temp_tree/result
if test -s ~/.temp_tree/result
then
echo -e "\033[41;1mFailed !\033[0m"
echo -e "Error for size 3 :" > ~/errors_tree/3
cat ~/.temp_tree/result >> ~/errors_tree/3
result >> error_tree
else
echo -e "\033[42;1mSuccess !\033[0m"
((NOTE++))
((PERCENT+=10))
fi

sleep 0.5

echo -e "\033[33;1m\nLet's make a tree with size 4 !\033[0m"
./firtree_real 4 > ~/.temp_tree/mouli
./firtree 4 > ~/.temp_tree/student
diff ~/.temp_tree/mouli ~/.temp_tree/student > ~/.temp_tree/result
if test -s ~/.temp_tree/result
then
    echo -e "\033[41;1mFailed !\033[0m"
    echo -e "Error for size 4 :" > ~/errors_tree/4
cat ~/.temp_tree/result >> ~/errors_tree/4
else
echo -e "\033[42;1mSuccess !\033[0m"
((NOTE++))
((PERCENT+=10))
fi

sleep 0.5

echo -e "\033[33;1m\nLet's make a tree with size 5 !\033[0m"
./firtree_real 5 > ~/.temp_tree/mouli
./firtree 5 > ~/.temp_tree/student
diff ~/.temp_tree/mouli ~/.temp_tree/student > ~/.temp_tree/result
if test -s ~/.temp_tree/result
then
    echo -e "\033[41;1mFailed !\033[0m"
    echo -e "Error for size 5 :" > ~/errors_tree/5
cat ~/.temp_tree/result >> ~/errors_tree/5
else
echo -e "\033[42;1mSuccess !\033[0m"
((NOTE++))
((PERCENT+=10))
fi

sleep 0.5

echo -e "\033[33;1m\nLet's make a tree with size 10 !\033[0m"
./firtree_real 10 > ~/.temp_tree/mouli
./firtree 10 > ~/.temp_tree/student
diff ~/.temp_tree/mouli ~/.temp_tree/student > ~/.temp_tree/result
if test -s ~/.temp_tree/result
then
    echo -e "\033[41;1mFailed !\033[0m"
    echo -e "Error for size 10 :" > ~/errors_tree/10
cat ~/.temp_tree/result >> ~/errors_tree/10
else
echo -e "\033[42;1mSuccess !\033[0m"
((NOTE++))
((PERCENT+=10))
fi

sleep 0.5

echo -e "\033[31;1m\n/!\ Let's try with some big size, it won't be long !(or maybe it will be)\033[0m"

sleep 0.5

echo -e "\033[33;1m\nLet's make a tree with size 50 !\033[0m"
./firtree_real 50 > ~/.temp_tree/mouli
./firtree 50 > ~/.temp_tree/student
diff ~/.temp_tree/mouli ~/.temp_tree/student > ~/.temp_tree/result
if test -s ~/.temp_tree/result
then
    echo -e "\033[41;1mFailed !\033[0m"
    echo -e "Error for size 50 :" > ~/errors_tree/50
cat ~/.temp_tree/result >> ~/errors_tree/50
else
echo -e "\033[42;1mSuccess !\033[0m"
((NOTE++))
((PERCENT+=10))
fi

sleep 0.5

echo -e "\033[31;1m\n/!\ This one is for the joke !\033[0m"

sleep 0.5

echo -e "\033[33;1m\nLet's make a tree with size 0 !\033[0m"

sleep 0.5

./firtree_real 0 > ~/.temp_tree/mouli
./firtree 0 > ~/.temp_tree/student
diff ~/.temp_tree/mouli ~/.temp_tree/student > ~/.temp_tree/result
if test -s ~/.temp_tree/result
then
echo -e "\033[41;1mFailed !\033[0m"
echo -e "Error for size 0 :" > ~/errors_tree/0
cat ~/.temp_tree/result >> ~/errors_tree/0
else
echo -e "\033[42;1mSuccess !\033[0m"
((NOTE++))
((PERCENT+=10))
fi

sleep 0.5

echo -e "\033[31;1m\n/!\ I hope you did your error management !\033[0m"

sleep 0.5

echo -e "\033[33;1m\nLet's make a tree with size -42 !\033[0m"

sleep 0.5

./firtree_real -42 > ~/.temp_tree/mouli
./firtree -42 > ~/.temp_tree/student
diff ~/.temp_tree/mouli ~/.temp_tree/student > ~/.temp_tree/result
if test -s ~/.temp_tree/result
then
    echo -e "\033[41;1mFailed !\033[0m"
    echo -e "Error for size -42 :" > ~/errors_tree/-42
cat ~/.temp_tree/result >> ~/errors_tree/-42
else
echo -e "\033[42;1mSuccess !\033[0m"
((NOTE++))
((PERCENT+=10))
fi

sleep 0.5

echo -e "\033[33;1m\nLet's make a tree with size Epitech !\033[0m"

sleep 0.5

./firtree_real Epitech > ~/.temp_tree/mouli
./firtree Epitech > ~/.temp_tree/student
diff ~/.temp_tree/mouli ~/.temp_tree/student > ~/.temp_tree/result
if test -s ~/.temp_tree/result
then
    echo -e "\033[41;1mFailed !\033[0m"
    echo -e "Error for size epitech :" > ~/errors_tree/epitech
cat ~/.temp_tree/result >> ~/errors_tree/epitech
else
echo -e "\033[42;1mSuccess !\033[0m"
((NOTE++))
((PERCENT+=10))
fi


sleep 0.5

##echo $(($NOTE/8*100))
echo -e "\033[34;1m\n\nYou got $NOTE/10 ! ($PERCENT%) \033[0m"
echo -e "\033[34;1m\nAt least your computer is still alive ...\033[0m"
echo -e "\033[34;1m\nGood luck for the end of your firtree !\033[0m"
if test $NOTE -lt 10
then
    echo -e "\033[34;1m\nError fils are located in ~/errors_tree !\033[0m"
    fi
echo -e "\033[37m\nAn automated test by Maxence Carpentier(Epitech Lille 2023)\033[0m"


rm -rf ~/.temp_tree
