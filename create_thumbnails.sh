rm -r thumbs
mkdir thumbs
mogrify -path thumbs -format jpg -resize "200x200^" -gravity center -crop 200x200+0+0 +repage *.jpg

for f in thumbs/*.jpg
do
    # echo "Removing password for pdf file - $f"
    mv $f ${f/jpg/thumb.jpg}
done

# mv thumbs/*.thumb.jpg ./