require '../lib/goprocam'
require '../lib/constants'

###################################
# Photogrammetry with GoPro camera #
# Proof of concept, not for real  #
# world usage.                    #
###################################

gpCamera = Camera.new

gpCamera.camera_mode(Mode::MultiShotMode, Mode::SubMode::MultiShot::TimeLapse)
gpCamera.gpControlCommand(Multishot::TIMELAPSE_INTERVAL, Multishot::TimeLapseInterval::IHalf1)
gpCamera.shutter(Shutter::ON)
while gpCamera.status(Status::Status,Status::STATUS::IsBusy) == 1
		puts Time.now.to_f*1000
end
