alias vax="ssh -Y jwillis@vax.scripps.edu"
alias multi="ssh jwillis@multiseq.scripps.edu"
alias mount_vaxapp='sshfs jwillis@vax.scripps.edu:/dnas/apps/ /Users/jwillis/Mounts/vax_apps -o volname=vaxapps'
alias mount_vax='sshfs jwillis@vax.scripps.edu:/dnas/home/jwillis/ /Users/jwillis/Mounts/vax -o volname=vax'
alias mount_multi_var='sshfs jwillis@multiseq.scripps.edu:/var/www/ /Users/jwillis/Mounts/multi_var -o volname=multi_var'
alias umount_all='diskutil unmount force /Users/jwillis/Mounts/vax;diskutil unmount force /Users/jordanwillis/Mounts/vax_apps; diskutil unmount force ~/Mounts/multi; diskutil unmount force ~/Mounts/multi_var'
alias mount_all='umount_all;mount_vaxapp ;mount_vax; mount_multi_var'
alias pymol="/Applications/MacPyMOL.app/Contents/MacOS/MacPyMOL"

AWS_LATEST_EMR=`~/anaconda/bin/aws emr list-clusters  | grep CLUSTERS | awk '{print($2)}' | head -n 1`
LATEST_AWS_IP=`~/anaconda/bin/aws emr describe-cluster --cluster-id $AWS_LATEST_EMR | head -n 1 | awk '{print($8)}'`
alias gcid="ssh -i /Users/jwillis/GoogleDrive/AWS/hal11k_oregon.pem hadoop@$LATEST_AWS_IP"
alias open_zepp="open http://$LATEST_AWS_IP:8890"
