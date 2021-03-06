#
# Let's enumerate through the various plugins for the chrome browser. 
#
chrome=( chromecookies chromedownloadchains chromedownloads chromehistory chromesearchterms chromevisits )
for i in "${chrome[@]}"; do
	if [ ! -f "text/$i.txt" ]; then
		echo "$i module has already been run, against the memory file."
        echo "$i module has been run at $(date), against the memory file." >> $HOME/$CASE/evidence/$CASE.chrome.log
		echo " " >> $HOME/$CASE/evidence/$CASE.chrome.log; echo "";
		$VOL -f $FILE --profile=$PRFL $i > text/$i.txt
		echo " " >> $HOME/$CASE/evidence/$CASE.chrome.log; echo " ";
		sleep 1;
	else 
		echo "It looks as if the $i module has already been run."
		echo "I am skipping this step for now. "
		sleep 1; echo " ";
	fi
done
echo " " >> $HOME/$CASE/evidence/$CASE.chrome.log; echo " ";
#
#
------------------