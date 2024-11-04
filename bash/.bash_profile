#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc
. "$HOME/.cargo/env"

if [ -e /home/sr/.nix-profile/etc/profile.d/nix.sh ]; then . /home/sr/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer
