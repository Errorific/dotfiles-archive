-- automatically generated file. Do not edit (see /usr/share/doc/menu/html)

module("debian.menu")

Debian_menu = {}

Debian_menu["Debian_Applications_Accessibility"] = {
	{"Xmag","xmag"},
}
Debian_menu["Debian_Applications_Data_Management"] = {
	{"LibreOffice Base","/usr/bin/libreoffice --base","/usr/share/icons/hicolor/32x32/apps/libreoffice-base.xpm"},
	{"Tomboy","/usr/bin/tomboy"},
}
Debian_menu["Debian_Applications_Editors"] = {
	{"Emacs 24 (text)", "x-terminal-emulator -e ".."/usr/bin/emacs24 -nw"},
	{"Emacs 24 (X11)","/usr/bin/emacs24"},
	{"Gedit","/usr/bin/gedit","/usr/share/pixmaps/gedit-icon.xpm"},
	{"GVIM","/usr/bin/vim.gnome -g -f","/usr/share/pixmaps/vim-32.xpm"},
	{"Nano", "x-terminal-emulator -e ".."/bin/nano","/usr/share/nano/nano-menu.xpm"},
	{"Xedit","xedit"},
}
Debian_menu["Debian_Applications_File_Management"] = {
	{"Baobab","/usr/bin/baobab","/usr/share/pixmaps/baobab.xpm"},
	{"Brasero","/usr/bin/brasero"},
	{"File-Roller","/usr/bin/file-roller","/usr/share/pixmaps/file-roller.xpm"},
	{"mc", "x-terminal-emulator -e ".."/usr/bin/mc","/usr/share/pixmaps/mc.xpm"},
	{"Nemo","/usr/bin/nemo","/usr/share/pixmaps/nemo.xpm"},
}
Debian_menu["Debian_Applications_Graphics"] = {
	{"LibreOffice Draw","/usr/bin/libreoffice --draw","/usr/share/icons/hicolor/32x32/apps/libreoffice-draw.xpm"},
	{"The GIMP","/usr/bin/gimp","/usr/share/pixmaps/gimp.xpm"},
	{"X Window Snapshot","xwd | xwud"},
}
Debian_menu["Debian_Applications_Network_Communication"] = {
	{"Pidgin","/usr/bin/pidgin","/usr/share/pixmaps/pidgin-menu.xpm"},
	{"Telnet", "x-terminal-emulator -e ".."/usr/bin/telnet"},
	{"Xbiff","xbiff"},
	{"X Chat","/usr/bin/xchat","/usr/share/icons/xchat.xpm"},
}
Debian_menu["Debian_Applications_Network_File_Transfer"] = {
	{"Transmission BitTorrent Client (GTK)","/usr/bin/transmission-gtk","/usr/share/pixmaps/transmission.xpm"},
}
Debian_menu["Debian_Applications_Network"] = {
	{ "Communication", Debian_menu["Debian_Applications_Network_Communication"] },
	{ "File Transfer", Debian_menu["Debian_Applications_Network_File_Transfer"] },
}
Debian_menu["Debian_Applications_Office"] = {
	{"LibreOffice Calc","/usr/bin/libreoffice --calc","/usr/share/icons/hicolor/32x32/apps/libreoffice-calc.xpm"},
	{"LibreOffice Impress","/usr/bin/libreoffice --impress","/usr/share/icons/hicolor/32x32/apps/libreoffice-impress.xpm"},
	{"LibreOffice Writer","/usr/bin/libreoffice --writer","/usr/share/icons/hicolor/32x32/apps/libreoffice-writer.xpm"},
}
Debian_menu["Debian_Applications_Programming"] = {
	{"Eclipse","eclipse"},
	{"GDB", "x-terminal-emulator -e ".."/usr/bin/gdb"},
	{"Python (v2.7)", "x-terminal-emulator -e ".."/usr/bin/python2.7","/usr/share/pixmaps/python2.7.xpm"},
	{"Python (v3.2)", "x-terminal-emulator -e ".."/usr/bin/python3.2","/usr/share/pixmaps/python3.2.xpm"},
	{"Tclsh8.5", "x-terminal-emulator -e ".."/usr/bin/tclsh8.5"},
}
Debian_menu["Debian_Applications_Science_Mathematics"] = {
	{"Bc", "x-terminal-emulator -e ".."/usr/bin/bc"},
	{"Dc", "x-terminal-emulator -e ".."/usr/bin/dc"},
	{"GCalcTool","/usr/bin/gcalctool","/usr/share/pixmaps/gcalctool.xpm"},
	{"LibreOffice Math","/usr/bin/libreoffice --math","/usr/share/icons/hicolor/32x32/apps/libreoffice-math.xpm"},
	{"Xcalc","xcalc"},
}
Debian_menu["Debian_Applications_Science"] = {
	{ "Mathematics", Debian_menu["Debian_Applications_Science_Mathematics"] },
}
Debian_menu["Debian_Applications_Shells"] = {
	{"Bash", "x-terminal-emulator -e ".."/bin/bash --login"},
	{"Dash", "x-terminal-emulator -e ".."/bin/dash -i"},
	{"Sh", "x-terminal-emulator -e ".."/bin/sh --login"},
	{"Zsh", "x-terminal-emulator -e ".."/bin/zsh5"},
}
Debian_menu["Debian_Applications_Sound"] = {
	{"Banshee","/usr/bin/banshee","/usr/share/pixmaps/banshee.xpm"},
	{"grecord (GNOME 2.0 Recorder)","/usr/bin/gnome-sound-recorder","/usr/share/pixmaps/gnome-grecord.xpm"},
}
Debian_menu["Debian_Applications_System_Administration"] = {
	{"DSL/PPPoE configuration tool", "x-terminal-emulator -e ".."/usr/sbin/pppoeconf","/usr/share/pixmaps/pppoeconf.xpm"},
	{"Editres","editres"},
	{"Gnome Control Center","/usr/bin/gnome-control-center",},
	{"MDM flexiserver","mdmflexiserver","/usr/share/pixmaps/mdm.xpm"},
	{"MDM flexiserver in Xnest","mdmflexiserver -n","/usr/share/pixmaps/mdm.xpm"},
	{"MDM Photo Setup","mdmphotosetup","/usr/share/pixmaps/mdm.xpm"},
	{"MDM Setup","su-to-root -X -p root -c /usr/sbin/mdmsetup","/usr/share/pixmaps/mdm.xpm"},
	{"pppconfig", "x-terminal-emulator -e ".."su-to-root -p root -c /usr/sbin/pppconfig"},
	{"System Information","/usr/bin/hardinfo","/usr/share/pixmaps/hardinfo.xpm"},
	{"Xclipboard","xclipboard"},
	{"Xfontsel","xfontsel"},
	{"Xkill","xkill"},
	{"Xrefresh","xrefresh"},
}
Debian_menu["Debian_Applications_System_Hardware"] = {
	{"Windows Wireless Drivers","su-to-root -X -c /usr/sbin/ndisgtk","/usr/share/pixmaps/ndisgtk.xpm"},
	{"Xvidtune","xvidtune"},
}
Debian_menu["Debian_Applications_System_Language_Environment"] = {
	{"Input Method Swicher", "x-terminal-emulator -e ".."/usr/bin/im-switch"},
}
Debian_menu["Debian_Applications_System_Monitoring"] = {
	{"GNOME system monitor","/usr/bin/gnome-system-monitor"},
	{"htop", "x-terminal-emulator -e ".."/usr/bin/htop"},
	{"Pstree", "x-terminal-emulator -e ".."/usr/bin/pstree.x11","/usr/share/pixmaps/pstree16.xpm"},
	{"Top", "x-terminal-emulator -e ".."/usr/bin/top"},
	{"Xconsole","xconsole -file /dev/xconsole"},
	{"Xev","x-terminal-emulator -e xev"},
	{"Xload","xload"},
}
Debian_menu["Debian_Applications_System_Package_Management"] = {
	{"Aptitude Package Manager (text)", "x-terminal-emulator -e ".."/usr/bin/aptitude-curses"},
	{"Synaptic Package Manager","synaptic-pkexec","/usr/share/synaptic/pixmaps/synaptic_32x32.xpm"},
}
Debian_menu["Debian_Applications_System_Security"] = {
	{"gufw","/usr/bin/gufw"},
	{"Seahorse","/usr/bin/seahorse","/usr/share/pixmaps/seahorse.xpm"},
}
Debian_menu["Debian_Applications_System"] = {
	{ "Administration", Debian_menu["Debian_Applications_System_Administration"] },
	{ "Hardware", Debian_menu["Debian_Applications_System_Hardware"] },
	{ "Language Environment", Debian_menu["Debian_Applications_System_Language_Environment"] },
	{ "Monitoring", Debian_menu["Debian_Applications_System_Monitoring"] },
	{ "Package Management", Debian_menu["Debian_Applications_System_Package_Management"] },
	{ "Security", Debian_menu["Debian_Applications_System_Security"] },
}
Debian_menu["Debian_Applications_Terminal_Emulators"] = {
	{"Gnome Terminal","/usr/bin/gnome-terminal","/usr/share/pixmaps/gnome-terminal.xpm"},
	{"XTerm","xterm","/usr/share/pixmaps/xterm-color_32x32.xpm"},
	{"X-Terminal as root (GKsu)","/usr/bin/gksu -u root /usr/bin/x-terminal-emulator","/usr/share/pixmaps/gksu-debian.xpm"},
	{"XTerm (Unicode)","uxterm","/usr/share/pixmaps/xterm-color_32x32.xpm"},
}
Debian_menu["Debian_Applications_Text"] = {
	{"Character map","/usr/bin/gucharmap"},
	{"Fortune","sh -c 'while /usr/games/fortune | col -x | xmessage -center -buttons OK:1,Another:0 -default OK -file - ; do :; done'"},
}
Debian_menu["Debian_Applications_Video"] = {
	{"GNOME MPlayer","gnome-mplayer","/usr/share/pixmaps/gnome-mplayer.xpm"},
	{"Totem","/usr/bin/totem","/usr/share/pixmaps/totem.xpm"},
	{"VLC media player","/usr/bin/qvlc","/usr/share/icons/hicolor/32x32/apps/vlc.xpm"},
}
Debian_menu["Debian_Applications_Viewers"] = {
	{"Evince","/usr/bin/evince","/usr/share/pixmaps/evince.xpm"},
	{"Eye of GNOME","/usr/bin/eog","/usr/share/pixmaps/gnome-eog.xpm"},
	{"gThumb Image Viewer","/usr/bin/gthumb","/usr/share/pixmaps/gthumb.xpm"},
	{"Xditview","xditview"},
}
Debian_menu["Debian_Applications"] = {
	{ "Accessibility", Debian_menu["Debian_Applications_Accessibility"] },
	{ "Data Management", Debian_menu["Debian_Applications_Data_Management"] },
	{ "Editors", Debian_menu["Debian_Applications_Editors"] },
	{ "File Management", Debian_menu["Debian_Applications_File_Management"] },
	{ "Graphics", Debian_menu["Debian_Applications_Graphics"] },
	{ "Network", Debian_menu["Debian_Applications_Network"] },
	{ "Office", Debian_menu["Debian_Applications_Office"] },
	{ "Programming", Debian_menu["Debian_Applications_Programming"] },
	{ "Science", Debian_menu["Debian_Applications_Science"] },
	{ "Shells", Debian_menu["Debian_Applications_Shells"] },
	{ "Sound", Debian_menu["Debian_Applications_Sound"] },
	{ "System", Debian_menu["Debian_Applications_System"] },
	{ "Terminal Emulators", Debian_menu["Debian_Applications_Terminal_Emulators"] },
	{ "Text", Debian_menu["Debian_Applications_Text"] },
	{ "Video", Debian_menu["Debian_Applications_Video"] },
	{ "Viewers", Debian_menu["Debian_Applications_Viewers"] },
}
Debian_menu["Debian_CrossOver"] = {
	{"CrossOver","/opt/cxoffice/bin/cxsetup","/opt/cxoffice/share/icons/32x32/crossover.png"},
	{"Uninstall CrossOver Linux","/opt/cxoffice/bin/cxuninstall","/opt/cxoffice/share/icons/32x32/cxuninstall.png"},
}
Debian_menu["Debian_Games_Adventure"] = {
	{"uqm-hd","/usr/games/uqm-hd","/usr/share/pixmaps/uqm-hd.xpm"},
}
Debian_menu["Debian_Games_Toys"] = {
	{"Oclock","oclock"},
	{"Redshift","gtk-redshift"},
	{"Xclock (analog)","xclock -analog"},
	{"Xclock (digital)","xclock -digital -update 1"},
	{"Xeyes","xeyes"},
	{"Xlogo","xlogo"},
}
Debian_menu["Debian_Games"] = {
	{ "Adventure", Debian_menu["Debian_Games_Adventure"] },
	{ "Toys", Debian_menu["Debian_Games_Toys"] },
}
Debian_menu["Debian_Help"] = {
	{"Info", "x-terminal-emulator -e ".."info"},
	{"Xman","xman"},
	{"yelp","/usr/bin/yelp"},
}
Debian_menu["Debian_Windows_Applications_GOG.com_Sid_Meier's_Alpha_Centauri_Documents"] = {
	{"Support","\"/home/error/.cxoffice/sid_meiers_alpha_centauri/desktopdata/cxmenu/StartMenu.C^3A_users_Public_Start+Menu/Programs/GOG.com/Sid Meier's Alpha Centauri/Documents/Support.url\"","/home/error/.cxoffice/sid_meiers_alpha_centauri/windata/cxmenu/icons/hicolor/32x32/apps/DDD6_Support.0.png"},
}
Debian_menu["Debian_Windows_Applications_GOG.com_Sid_Meier's_Alpha_Centauri_Sid_Meier's_Alien_Crossfire_Documents"] = {
	{"Readme","\"/home/error/.cxoffice/sid_meiers_alpha_centauri/desktopdata/cxmenu/StartMenu.C^3A_users_Public_Start+Menu/Programs/GOG.com/Sid Meier's Alpha Centauri/Sid Meier's Alien Crossfire/Documents/Readme.lnk\"","/home/error/.cxoffice/sid_meiers_alpha_centauri/windata/cxmenu/icons/hicolor/32x32/apps/C15C_Readme_ac.0.png"},
}
Debian_menu["Debian_Windows_Applications_GOG.com_Sid_Meier's_Alpha_Centauri_Sid_Meier's_Alien_Crossfire"] = {
	{ "Documents", Debian_menu["Debian_Windows_Applications_GOG.com_Sid_Meier's_Alpha_Centauri_Sid_Meier's_Alien_Crossfire_Documents"] },
	{"Run Faction Editor","\"/home/error/.cxoffice/sid_meiers_alpha_centauri/desktopdata/cxmenu/StartMenu.C^3A_users_Public_Start+Menu/Programs/GOG.com/Sid Meier's Alpha Centauri/Sid Meier's Alien Crossfire/Run Faction Editor.lnk\"","/home/error/.cxoffice/sid_meiers_alpha_centauri/windata/cxmenu/icons/hicolor/32x32/apps/8D93_facedit.0.png"},
	{"Sid Meier's Alien Crossfire","\"/home/error/.cxoffice/sid_meiers_alpha_centauri/desktopdata/cxmenu/StartMenu.C^3A_users_Public_Start+Menu/Programs/GOG.com/Sid Meier's Alpha Centauri/Sid Meier's Alien Crossfire/Sid Meier's Alien Crossfire.lnk\"","/home/error/.cxoffice/sid_meiers_alpha_centauri/windata/cxmenu/icons/hicolor/32x32/apps/BF55_gfw_high_add.0.png"},
}
Debian_menu["Debian_Windows_Applications_GOG.com_Sid_Meier's_Alpha_Centauri_Sid_Meier's_Alpha_Centauri_Documents"] = {
	{"Manual","\"/home/error/.cxoffice/sid_meiers_alpha_centauri/desktopdata/cxmenu/StartMenu.C^3A_users_Public_Start+Menu/Programs/GOG.com/Sid Meier's Alpha Centauri/Sid Meier's Alpha Centauri/Documents/Manual.lnk\"","/opt/cxoffice/share/icons/32x32/crossover.png"},
	{"Readme","\"/home/error/.cxoffice/sid_meiers_alpha_centauri/desktopdata/cxmenu/StartMenu.C^3A_users_Public_Start+Menu/Programs/GOG.com/Sid Meier's Alpha Centauri/Sid Meier's Alpha Centauri/Documents/Readme.lnk\"","/home/error/.cxoffice/sid_meiers_alpha_centauri/windata/cxmenu/icons/hicolor/32x32/apps/6740_Readme.0.png"},
}
Debian_menu["Debian_Windows_Applications_GOG.com_Sid_Meier's_Alpha_Centauri_Sid_Meier's_Alpha_Centauri"] = {
	{ "Documents", Debian_menu["Debian_Windows_Applications_GOG.com_Sid_Meier's_Alpha_Centauri_Sid_Meier's_Alpha_Centauri_Documents"] },
	{"Sid Meier's Alpha Centauri","\"/home/error/.cxoffice/sid_meiers_alpha_centauri/desktopdata/cxmenu/StartMenu.C^3A_users_Public_Start+Menu/Programs/GOG.com/Sid Meier's Alpha Centauri/Sid Meier's Alpha Centauri/Sid Meier's Alpha Centauri.lnk\"","/home/error/.cxoffice/sid_meiers_alpha_centauri/windata/cxmenu/icons/hicolor/32x32/apps/6FCF_gfw_high.0.png"},
}
Debian_menu["Debian_Windows_Applications_GOG.com_Sid_Meier's_Alpha_Centauri"] = {
	{ "Documents", Debian_menu["Debian_Windows_Applications_GOG.com_Sid_Meier's_Alpha_Centauri_Documents"] },
	{ "Sid Meier's Alien Crossfire", Debian_menu["Debian_Windows_Applications_GOG.com_Sid_Meier's_Alpha_Centauri_Sid_Meier's_Alien_Crossfire"] },
	{ "Sid Meier's Alpha Centauri", Debian_menu["Debian_Windows_Applications_GOG.com_Sid_Meier's_Alpha_Centauri_Sid_Meier's_Alpha_Centauri"] },
	{"Uninstall Sid Meier's Alpha Centauri","\"/home/error/.cxoffice/sid_meiers_alpha_centauri/desktopdata/cxmenu/StartMenu.C^3A_users_Public_Start+Menu/Programs/GOG.com/Sid Meier's Alpha Centauri/Uninstall Sid Meier's Alpha Centauri.lnk\"","/home/error/.cxoffice/sid_meiers_alpha_centauri/windata/cxmenu/icons/hicolor/32x32/apps/A20B_unins000.0.png"},
}
Debian_menu["Debian_Windows_Applications_GOG.com_Stronghold_Crusader_Extreme_HD_Documents"] = {
	{"Manual","\"/home/error/.cxoffice/Stronghold_ Crusader Extreme/desktopdata/cxmenu/StartMenu.C^3A_users_Public_Start+Menu/Programs/GOG.com/Stronghold Crusader Extreme HD/Documents/Manual.lnk\"","/opt/cxoffice/share/icons/32x32/crossover.png"},
	{"Readme","\"/home/error/.cxoffice/Stronghold_ Crusader Extreme/desktopdata/cxmenu/StartMenu.C^3A_users_Public_Start+Menu/Programs/GOG.com/Stronghold Crusader Extreme HD/Documents/Readme.lnk\"","/opt/cxoffice/share/icons/32x32/crossover.png"},
	{"Support","\"/home/error/.cxoffice/Stronghold_ Crusader Extreme/desktopdata/cxmenu/StartMenu.C^3A_users_Public_Start+Menu/Programs/GOG.com/Stronghold Crusader Extreme HD/Documents/Support.url\"","/home/error/.cxoffice/Stronghold_ Crusader Extreme/windata/cxmenu/icons/hicolor/32x32/apps/3CC4_Support.0.png"},
}
Debian_menu["Debian_Windows_Applications_GOG.com_Stronghold_Crusader_Extreme_HD"] = {
	{ "Documents", Debian_menu["Debian_Windows_Applications_GOG.com_Stronghold_Crusader_Extreme_HD_Documents"] },
	{"Language Setup","\"/home/error/.cxoffice/Stronghold_ Crusader Extreme/desktopdata/cxmenu/StartMenu.C^3A_users_Public_Start+Menu/Programs/GOG.com/Stronghold Crusader Extreme HD/Language Setup.lnk\"","/home/error/.cxoffice/Stronghold_ Crusader Extreme/windata/cxmenu/icons/hicolor/32x32/apps/2730_Language Setup.0.png"},
	{"Stronghold Crusader Extreme HD","\"/home/error/.cxoffice/Stronghold_ Crusader Extreme/desktopdata/cxmenu/StartMenu.C^3A_users_Public_Start+Menu/Programs/GOG.com/Stronghold Crusader Extreme HD/Stronghold Crusader Extreme HD.lnk\"","/home/error/.cxoffice/Stronghold_ Crusader Extreme/windata/cxmenu/icons/hicolor/32x32/apps/62AE_gfw_high.0.png"},
	{"Stronghold Crusader HD","\"/home/error/.cxoffice/Stronghold_ Crusader Extreme/desktopdata/cxmenu/StartMenu.C^3A_users_Public_Start+Menu/Programs/GOG.com/Stronghold Crusader Extreme HD/Stronghold Crusader HD.lnk\"","/home/error/.cxoffice/Stronghold_ Crusader Extreme/windata/cxmenu/icons/hicolor/32x32/apps/4F80_Stronghold Crusader.0.png"},
	{"Uninstall Stronghold Crusader Extreme HD","\"/home/error/.cxoffice/Stronghold_ Crusader Extreme/desktopdata/cxmenu/StartMenu.C^3A_users_Public_Start+Menu/Programs/GOG.com/Stronghold Crusader Extreme HD/Uninstall Stronghold Crusader Extreme HD.lnk\"","/home/error/.cxoffice/Stronghold_ Crusader Extreme/windata/cxmenu/icons/hicolor/32x32/apps/AF6A_unins000.0.png"},
}
Debian_menu["Debian_Windows_Applications_GOG.com_Stronghold_HD_Documents"] = {
	{"Manual","\"/home/error/.cxoffice/stronghold_hd/desktopdata/cxmenu/StartMenu.C^3A_users_Public_Start+Menu/Programs/GOG.com/Stronghold HD/Documents/Manual.lnk\"","/opt/cxoffice/share/icons/32x32/crossover.png"},
	{"Readme","\"/home/error/.cxoffice/stronghold_hd/desktopdata/cxmenu/StartMenu.C^3A_users_Public_Start+Menu/Programs/GOG.com/Stronghold HD/Documents/Readme.lnk\"","/opt/cxoffice/share/icons/32x32/crossover.png"},
	{"Support","\"/home/error/.cxoffice/stronghold_hd/desktopdata/cxmenu/StartMenu.C^3A_users_Public_Start+Menu/Programs/GOG.com/Stronghold HD/Documents/Support.url\"","/home/error/.cxoffice/stronghold_hd/windata/cxmenu/icons/hicolor/32x32/apps/0146_Support.0.png"},
}
Debian_menu["Debian_Windows_Applications_GOG.com_Stronghold_HD"] = {
	{ "Documents", Debian_menu["Debian_Windows_Applications_GOG.com_Stronghold_HD_Documents"] },
	{"Stronghold HD","\"/home/error/.cxoffice/stronghold_hd/desktopdata/cxmenu/StartMenu.C^3A_users_Public_Start+Menu/Programs/GOG.com/Stronghold HD/Stronghold HD.lnk\"","/home/error/.cxoffice/stronghold_hd/windata/cxmenu/icons/hicolor/32x32/apps/0313_gfw_high.0.png"},
	{"Uninstall Stronghold HD","\"/home/error/.cxoffice/stronghold_hd/desktopdata/cxmenu/StartMenu.C^3A_users_Public_Start+Menu/Programs/GOG.com/Stronghold HD/Uninstall Stronghold HD.lnk\"","/home/error/.cxoffice/stronghold_hd/windata/cxmenu/icons/hicolor/32x32/apps/CED7_unins000.0.png"},
}
Debian_menu["Debian_Windows_Applications_GOG.com"] = {
	{ "Sid Meier's Alpha Centauri", Debian_menu["Debian_Windows_Applications_GOG.com_Sid_Meier's_Alpha_Centauri"] },
	{ "Stronghold Crusader Extreme HD", Debian_menu["Debian_Windows_Applications_GOG.com_Stronghold_Crusader_Extreme_HD"] },
	{ "Stronghold HD", Debian_menu["Debian_Windows_Applications_GOG.com_Stronghold_HD"] },
}
Debian_menu["Debian_Windows_Applications_Steam"] = {
	{"Steam","\"/home/error/.cxoffice/Steam/desktopdata/cxmenu/StartMenu.C^3A_users_Public_Start+Menu/Programs/Steam/Steam.lnk\"","/home/error/.cxoffice/Steam/windata/cxmenu/icons/hicolor/32x32/apps/BAC4_steam.0.png"},
	{"Steam Support Center","\"/home/error/.cxoffice/Steam/desktopdata/cxmenu/StartMenu.C^3A_users_crossover_Start+Menu/Programs/Steam/Steam Support Center.lnk\"","/home/error/.cxoffice/Steam/windata/cxmenu/icons/hicolor/32x32/apps/1990_Icon048298C92.1.png"},
	{"Terraria","\"/home/error/.cxoffice/Steam/desktopdata/cxmenu/StartMenu.C^3A_users_crossover_Start+Menu/Programs/Steam/Terraria.url\"","/home/error/.cxoffice/Steam/windata/cxmenu/icons/hicolor/32x32/apps/7ECB_a4ce7b163832f35ffcbf560ca40974bccd5d4cd5.0.png"},
}
Debian_menu["Debian_Windows_Applications"] = {
	{ "GOG.com", Debian_menu["Debian_Windows_Applications_GOG.com"] },
	{ "Steam", Debian_menu["Debian_Windows_Applications_Steam"] },
}
Debian_menu["Debian"] = {
	{ "Applications", Debian_menu["Debian_Applications"] },
	{ "CrossOver", Debian_menu["Debian_CrossOver"] },
	{ "Games", Debian_menu["Debian_Games"] },
	{ "Help", Debian_menu["Debian_Help"] },
	{ "Windows Applications", Debian_menu["Debian_Windows_Applications"] },
}
