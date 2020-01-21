#!/bin/bash

echo $0
posts_dir="${0%/*}"/../_posts
drafts_dir="${0%/*}"/../_drafts
echo $mydir


#Check if the post for the day exists, if not then require title.
if [ ! ls $posts_dir/$TODAY*> /dev/null 2>&1 ]
then

    if [ $# -eq 0 ]; then
        echo "Usage: ./newblogpost.sh <post title>; Post Title Like This"
        exit
    fi
fi


#get the date
TODAY=$(date +"%Y-%m-%d")

FILENAME="$TODAY"

TITLE=""

for var in "$@"
do
    TITLE="$TITLE$var "
    #make all caps
    capvar=`echo $var | tr 'a-z' 'A-Z'`
    FILENAME="$FILENAME-$capvar"
done

#add the extension
FILENAME="$FILENAME.md"

if ls $posts_dir/$TODAY*> /dev/null 2>&1
then
    echo "$TODAY already used in " _posts/$TODAY*

else
    echo "Creating _posts/$FILENAME"
    #copy over template
    cp $drafts_dir/post_template.md $posts_dir/$FILENAME
    #insert post title
    sed -i '/title/ s/$/ \"'"$TITLE"'\"/' $posts_dir/$FILENAME
    sed -i '/date/ s/$/ \"'"$TODAY"'\"/' $posts_dir/$FILENAME
    git add $posts_dir/$FILENAME
fi 

sleep 1

emacs -nw $posts_dir/$TODAY*

#sed -ri 's/^(\s*)(title\s*:\s* \"Post Title\"\s*$)/\1title: '"$1"'/' $posts_dir/$FILENAME
#echo "sed -ri 's/^(\s*)(image\s*:\s*\s*$)/\1image: '"$1"'/' ../_post/$FILENAME"

#echo $TITLE
#echo $FILENAME

#The title for the post, does not insert in post, so be careful

