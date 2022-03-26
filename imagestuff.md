# Useful stuff: Images and videos

### Split a multi-layer TIFF to multiple PNG files
`convert image.tiff[0-99] o/%02d.png`

### Split a GIF animation to multiple PNG files
`ffmpeg -i image.gif -vsync 0 o/%02d.png`

### Create a WEBM video from PNG files (lossless)
`ffmpeg -framerate 30 -f image2 -i frames/%d.png -c:v libvpx-vp9 -pix_fmt yuva420p -lossless 1 output.webm`

