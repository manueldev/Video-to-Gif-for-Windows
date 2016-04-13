@echo off
set video_file=%1
set punto_inicio=%2
set duracion=%3
set ancho=%4
set nombre_gif=%5

ffmpeg -v warning -ss %punto_inicio% -t %duracion% -i %video_file% -vf "fps=15,scale=%ancho%:-1:flags=lanczos,palettegen" -y paleta.png
ffmpeg -v warning -ss %punto_inicio% -t %duracion% -i %video_file% -i paleta.png -lavfi "fps=15,scale=%ancho%:-1:flags=lanczos [x]; [x][1:v] paletteuse=dither=bayer:bayer_scale=3" -y %nombre_gif%
del paleta.png