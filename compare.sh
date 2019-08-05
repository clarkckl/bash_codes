#!/bin/bash


# ---------------------------------------------------------
# this bash code compares files in two folders
# it moves the files in folder_1 to 
# 2 different folders: folder_same and folder_extra
# ---------------------------------------------------------



if [ 0 == 1 ]; then
    echo "hi"
else
    echo "no"
fi


counter=0

count_same=0
count_diff=0

tag="diff"

for file_e in ~/Desktop/folder_1/*; do
    for file_c in ~/Desktop/folder_2/*; do

        if  cmp -s "$file_c" "$file_e" ; then
            # echo "same file         $file_c    $file_e"
            ((count_same=count_same+1))
            tag="same"
        fi

        if ! cmp -s "$file_c" "$file_e" ; then
            # echo "different file    $file_c    $file_e"
            ((count_diff=count_diff+1))
        fi

        ((counter=counter+1))

    done

#    echo "ha: $tag"

    if [ "$tag" = "same" ]; then
        echo "mv ${file_e##*/} to folder_same"
        mv "$file_e" ~/Desktop/folder_same/
    else
        echo "mv ${file_e##*/} to folder_extra"
        mv "$file_e" ~/Desktop/folder_extra/
    fi
    tag="diff"

done


#    echo "${file_c##*/}"
#    echo "hi $file_c"



echo "check $counter combinations"
echo "$count_same file combinations are same"
echo "$count_diff file combinations are different"
