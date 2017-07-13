
FONTS=$(ls ../TTF/*.ttf)

for font in $FONTS
do
    echo "unhinting $font"
    ttfautohint -d $font $font.fix
done

rm $FONTS


# remove duplicates
FONTS=$(ls ../TTF/*.fix)

for font in $FONTS
do
    mv $font "${font%.*}"
done