mkdir ./pngs 
ffmpeg -i $1 -r 10 ./pngs/out%04d.png  
mkdir ./gifs
sips -s format gif ./pngs/*.png --out ./gifs
cd ./gifs
gifsicle --optimize=3 --delay=3 --loopcount *.gif > animation.gif