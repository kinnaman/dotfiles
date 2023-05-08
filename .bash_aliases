# Alias definitions.
alias pythonserver='python3 -m http.server'
alias xup='xrdb .Xresources'
alias disk-usage-analyzer='baobab'
alias music='ncmpcpp'
alias npmbuild='npm run build'
alias python='python3'
alias jbuild='bundle exec jekyll build'
alias passwd-generate='openssl rand -base64 14'
alias yt-dlmp3='yt-dlp -x -i --audio-format mp3 --add-metadata --embed-thumbnail'
alias source-bashrc='source ~/.bashrc'
alias jserve='bundle exec jekyll serve'
# need to create full script so that backup can be run by other systems
alias backup-rsync="rsync -avP --delete-before --exclude-from="src/dotfiles/backup-exclude.txt" --delete-excluded /home/$USER/"
alias publish-page='npx wrangler pages publish public'
alias multi-screen='xrandr --output DP-2-2 --auto --right-of eDP-1'
alias mutt='neomutt'
#alias XDG_DATA_HOME=$XDG_DATA_DIRS
