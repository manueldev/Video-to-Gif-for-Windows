# Video to Gif for Windows
Convert to Gif format any segment from any video file with this Windows batch script.

## Installation
1. Download [video_to_gif.bat](https://raw.githubusercontent.com/manueldev/Video-to-Gif-for-Windows/master/video_to_gif.bat)
2. Download [Windows FFMpeg static build](https://ffmpeg.zeranoe.com/builds/)
3. Extract FFMpeg.
4. Add bin folder inside FFmpeg to Windows PATH (or run video_to_gif.bat on FFMpeg bin folder).

## Usage
```shell
video_to_gif.bat VIDEO_FILE START_TIME(MINUTES:SECONDS) DURATION WIDTH_GIF GIF_FILENAME
```
* VIDEO_FILE: Video file (absolute or relative)
* START_TIME: Start point of segment. Format: 00:11 (Minutes:Seconds)
* DURATION: Seconds from START_TIME. Format: 0.00
* WIDTH_GIF: Width of output GIF
* GIF_FILENAME: GIF output filename (absolute or relative)
