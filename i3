set $mod Mod4
font pango:DejaVu Sans Mono 8
floating_modifier $mod
bindsym $mod+Return exec urxvtc
bindsym $mod+Shift+q kill
bindsym $mod+d exec j4-dmenu-desktop --dmenu="dmenu -i"
bindsym $mod+h focus left
bindsym $mod+j focus down
bindsym $mod+k focus up
bindsym $mod+semicolon focus right
bindsym $mod+Left focus left
bindsym $mod+Down focus down
bindsym $mod+Up focus up
bindsym $mod+Right focus right
bindsym $mod+Shift+j move left
bindsym $mod+Shift+k move down
bindsym $mod+Shift+l move up
bindsym $mod+Shift+colon move right
bindsym $mod+Shift+Left move left
bindsym $mod+Shift+Down move down
bindsym $mod+Shift+Up move up
bindsym $mod+Shift+Right move right
bindsym $mod+Shift+h split h
bindsym $mod+Shift+v split v
bindsym $mod+f fullscreen
bindsym $mod+Shift+space floating toggle
bindsym $mod+space focus mode_toggle
bindsym $mod+a focus parent
bindsym $mod+1 workspace 1
bindsym $mod+2 workspace 2
bindsym $mod+3 workspace 3
bindsym $mod+4 workspace 4
bindsym $mod+5 workspace 5
bindsym $mod+6 workspace 6
bindsym $mod+7 workspace 7
bindsym $mod+8 workspace 8
bindsym $mod+9 workspace 9
bindsym $mod+0 workspace 10
bindsym $mod+Shift+1 move container to workspace number 1
bindsym $mod+Shift+2 move container to workspace number 2
bindsym $mod+Shift+3 move container to workspace number 3
bindsym $mod+Shift+4 move container to workspace number 4
bindsym $mod+Shift+5 move container to workspace number 5
bindsym $mod+Shift+6 move container to workspace number 6
bindsym $mod+Shift+7 move container to workspace number 7
bindsym $mod+Shift+8 move container to workspace number 8
bindsym $mod+Shift+9 move container to workspace number 9
bindsym $mod+Shift+0 move container to workspace number 10
bindsym $mod+Shift+c reload
bindsym $mod+Shift+r restart
bindsym $mod+Shift+e exec "i3-nagbar -t warning -m 'You pressed the exit shortcut. Do you really want to exit i3? This will end your X session.' -b 'Yes, exit i3' 'i3-msg exit'"
mode "resize" {
        bindsym j resize shrink width 10 px or 10 ppt
        bindsym k resize grow height 10 px or 10 ppt
        bindsym l resize shrink height 10 px or 10 ppt
        bindsym semicolon resize grow width 10 px or 10 ppt
        bindsym Left resize shrink width 10 px or 10 ppt
        bindsym Down resize grow height 10 px or 10 ppt
        bindsym Up resize shrink height 10 px or 10 ppt
        bindsym Right resize grow width 10 px or 10 ppt
        bindsym Return mode "default"
        bindsym Escape mode "default"
}
bindsym $mod+r mode "resize"
bar {
        status_command i3status
        font pango:Inconsolata 11
}
for_window [title="Lautstärkeregler"] floating enable
for_window [title="Google Chrome"] border none
for_window [title="Mozilla Firefox"] border none
for_window [title="Telegram Web"] border none
for_window [title="urxvt"] border none
for_window [title="Sublime Text"] border none
for_window [title="Oracle VM VirtualBox"] border none
exec nm-applet
bindsym $mod+l exec /usr/local/bin/i3lock.sh
exec blueman-applet
#exec dropbox start
bindsym $mod+x exec /usr/local/bin/i3swap
exec --no-startup-id sudo /usr/sbin/powertop --auto-tune
bindsym XF86AudioRaiseVolume exec pactl set-sink-volume 0 +5% 
bindsym XF86AudioLowerVolume exec pactl set-sink-volume 0 -5% 
bindsym XF86AudioMute exec pactl set-sink-mute 0 toggle 
bindsym XF86MonBrightnessUp exec xbacklight -inc 5 
bindsym XF86MonBrightnessDown exec xbacklight -dec 5 
bindsym XF86AudioPlay exec playerctl play
bindsym XF86AudioPause exec playerctl pause
bindsym XF86AudioNext exec playerctl next
bindsym XF86AudioPrev exec playerctl previous
bindsym $mod+Shift+p exec systemctl suspend
bindsym $mod+c exec google-chrome --force-device-scale-factor=1
bindsym $mod+w exec invert
bindsym $mod+n exec pcmanfm
exec --no-startup-id redshift -l 50.95:6.69 
exec --no-startup-id urxvtd -o -q
exec --no-startup-id /usr/libexec/gnome-settings-daemon
exec --no-startup-id xsetroot -solid black
exec seafile-applet
exec --no-startup-id kmnotify
exec --no-startup-id pulseaudio -D
bindsym $mod+p exec pavucontrol
bindsym $mod+z exec google-chrome --app-id=clhhggbfdinjmjhajaheehoeibfljjno
exec xset -dpms
exec xset s off   
bindsym $mod+s exec scrot '%Y-%m-%d-%T_$wx$h_scrot.png' -e 'mv $f ~/Screenshots/'
bindsym $mod+Shift+s exec scrot -s '%Y-%m-%d-%T_$wx$h_scrot.png' -e 'mv $f ~/Screenshots/'
