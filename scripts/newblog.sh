#!/bin/bash

if [ $# -eq 0 ]; then
        echo "Usage: ./newblogpost.sh <post title>; Post Title Like This"
        exit
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

if ls ../_posts/$TODAY*> /dev/null 2>&1
then
    echo "$TODAY already used in " ../_posts/$TODAY*

else
    echo "Creating $FILENAME"
    #copy over template
    cp ../_drafts/post_template.md ../_posts/$FILENAME
    #insert post title
    sed -i '/title/ s/$/ \"'"$TITLE"'\"/' ../_posts/$FILENAME
    sed -i '/date/ s/$/ \"'"$TODAY"'\"/' ../_posts/$FILENAME
    git add ../_posts/$FILENAME
fi 


#sed -ri 's/^(\s*)(title\s*:\s* \"Post Title\"\s*$)/\1title: '"$1"'/' ../_posts/$FILENAME
#echo "sed -ri 's/^(\s*)(image\s*:\s*\s*$)/\1image: '"$1"'/' ../_post/$FILENAME"

#echo $TITLE
#echo $FILENAME

#The title for the post, does not insert in post, so be careful

