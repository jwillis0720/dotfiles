alias vax="ssh -Y jwillis@vax.scripps.edu"
alias multi="ssh jwillis@multiseq.scripps.edu"
alias mount_vaxapp='sshfs jwillis@vax.scripps.edu:/dnas/apps/ /Users/jwillis/Mounts/vax_apps -o volname=vaxapps'
alias mount_vax='sshfs jwillis@vax.scripps.edu:/dnas/home/jwillis/ /Users/jwillis/Mounts/vax -o volname=vax'
alias mount_multi_var='sshfs jwillis@multiseq.scripps.edu:/var/www/ /Users/jwillis/Mounts/multi_var -o volname=multi_var'
alias umount_all='diskutil unmount force /Users/jwillis/Mounts/vax;diskutil unmount force /Users/jordanwillis/Mounts/vax_apps; diskutil unmount force ~/Mounts/multi; diskutil unmount force ~/Mounts/multi_var'
alias mount_all='umount_all;mount_vaxapp ;mount_vax; mount_multi_var'
alias pymol="/Applications/MacPyMOL.app/Contents/MacOS/MacPyMOL"

