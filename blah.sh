# #!/bin/zsh
localPATH=`pwd`                          # path of current directory
sep='---------------'
# declare -a arr=(false true false false true false)
# ## now loop through the above array
# for j in "${arr[@]}"
# do
#    echo "$j"
#    if [ "$j" = true ] ; then
#     echo 'Be careful not to fall off!'
#    fi
#    # or do whatever with individual element of the array
# done
# echo -n "Enter Fullname: " 
# read fullname 
#echo $fullname
declare -a array1=( zero1 one1 two1 $fullname )
declare -a array2=( f g h )
dest=( "${array1[@]}" "${array2[@]}" )
echo ${dest[@]}
#declare -a letterO=(true true true true true true true true true true true true true true true true false false false true true true true false false false true true true true true true true true true true true true true true true true)
declare -a letterO=(true true true true true true true true false false false false false true true true true true true true true)
declare -a space=(false false false false false false false)
declare -a letterI=(true true true true true true true)
declare -a letterA=(true true true true true true true false false false true false false true true true true true true true true)
word=( "${letterA[@]}" "${space[@]}" "${letterI[@]}" "${space[@]}" "${letterO[@]}" )
# echo ${array2[1]}
# typeset -A animals
# alphabet=( ["moo"]="cow" ["O"]=$letterO)
# echo ${alphabet[$fullname]}
# echo letterO.length
DOW=$(date +%u)
echo $DOW "!"
# for (( i=0; i<10; ++i)); do
#     echo $i i 'i'
# done
day=$(($DOW+70));
date='days ago'
total=0
for index in ${word[@]}; do
    #day=$(($day+$DOW))
    day=$(($day+1))
    echo 'new day' $index $day '...'
     for (( i=0; i<10; ++i)); do
      echo 'repeat' 
      if [ $index = true ] ; then
        #echo $sep"Checking Status of" $d$sep
        #d=`echo $d | sed s#/##`                # remove trailing forward slash
        #git -C $localPATH/$d checkout master   # checkout master in different directory
        #git -C $localPATH/$d status            # run git status
        #NEW_UUID=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 32 | head -n 1)
        number=$RANDOM
        #echo 'Be careful not to fall off!'
        echo $number > $localPATH/hi.html
        echo "$day $date $index !!!"
        git -C $localPATH/ add . 
        git -C $localPATH/ commit --date="$day $date" -m "hmm???"
        total=$(($total+1))
        #sleep .1  # or sleep +3m
        echo -e '\n'
      fi
    done
done
git -C $localPATH/ push
echo "DAY IS" $day " TOTAL COMMITS IS " $total