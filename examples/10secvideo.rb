require '../GoPro/GoPro'
require '../GoPro/constants'
camera_mode(Mode::VideoMode, Mode::SubMode::Video::Video)
shutter(Shutter::ON)
sleep 10
shutter(Shutter::OFF)