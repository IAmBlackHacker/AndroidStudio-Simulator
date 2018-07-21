echo "Available Devices"

index=1 
for device in `/Users/$USER/Library/Android/sdk/tools/emulator -list-avds`
do
       echo "   " $index. $device
       index=$((index + 1))
done
index=$((index-1))

echo Select your choice : 
read choice

if  [ $choice -lt 1 -o $choice -gt $index ]
then 
       echo Wrong choice
else
       echo 'Starting Simulator'
       index=1
       for device in `/Users/$USER/Library/Android/sdk/tools/emulator -list-avds`
       do 
              if [ $choice == $index ]
              then
                     /Users/$USER/Library/Android/sdk/tools/emulator -avd $device </dev/null &>/dev/null &
              fi
              index=$((index+1))
       done
fi