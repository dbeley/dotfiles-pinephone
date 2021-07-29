#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias l='ls --color=auto'
alias ls='ls --color=auto'
alias ll='ls -l --color=auto'
alias la='ls -la --color=auto'
alias lah='ls -lah --color=auto'
alias latr='ls -latrh --color=auto'
PS1='[\u@\h \W]\$ '

# export LIBVA_DRIVER_NAME=v4l2_request
# # If you compile your own libva-v4l2-request and install in /usr/local/
# #export LIBVA_DRIVERS_PATH=/usr/local/lib/dri
# # You have to identify correct devices for cedrus, these are just examples.
# # Check /sys/class/video4linux/*/name and /sys/bus/media/devices/*/model
# export LIBVA_V4L2_REQUEST_VIDEO_PATH=/dev/video0
# export LIBVA_V4L2_REQUEST_MEDIA_PATH=/dev/media0
# export MOZ_ENABLE_WAYLAND=1

alias vim='nvim'
export EDITOR=nvim

export NNN_OPTS="cdEx"

alias cpr="rsync -azvhP --stats --inplace"
