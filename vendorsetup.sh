for combo in $(curl -s https://raw.githubusercontent.com/sam-aosp/hudson/master/aosp-build-targets | sed -e 's/#.*$//' | grep android-m-preview | awk {'print $1'})
do
    add_lunch_combo $combo
done
