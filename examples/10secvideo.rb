require '../lib/goprocam'
require '../lib/constants'
gpCamera = Camera.new
gpCamera.camera_mode(Mode::VideoMode, Mode::SubMode::Video::Video)
gpCamera.shutter(Shutter::ON)
sleep 10
gpCamera.shutter(Shutter::OFF)