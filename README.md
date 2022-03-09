# ubuntu-setup
Setup a clean ubuntu to get ready for work

## Hint
Make sure you have saved your ssh keys and 1password secret key from your previous machine

## planned updates
* Ask to install for some tools
* Increase inotify watch limit: https://youtrack.jetbrains.com/articles/IDEA-A-2/Inotify-Watches-Limit
`sudo bash -c 'echo "fs.inotify.max_user_watches = 524288" > /etc/sysctl.d/60-inotify-increase.conf'
* Install gnome extensions
`gnome-shell-extension, gnome-shell-extension-prefs,  libproxy1-plugin-networkmanager, gnome-shell-extension-sound-device-chooser
* Install mkcert: https://techviewleo.com/create-locally-trusted-ssl-certificate-with-mkcert-on-linux/
* increase swap