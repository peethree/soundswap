# soundswap

autohotkey script to swap from speakers to headphones and vice versa on windows 10.

With the script active, upon pressing the set keybind combination, it opens the sound settings, clicks on the device list. Then moves up 2 spaces. This targets "speakers" for me, but if this device is already set as default. The initial state will equal the finalized state once the script tries to click the "set as default" button. Only then the conditions of the if statement are run. Which means the script will once again click on the device list (for me it lands on the device in the middle) and this time move a different amount of spaces upwards so it selects the other device. Finally, the script closes the sound settings and returns for following usage. 

This script is personal and will most definitely not work when copied unless we happen to have a similar amount of audio devices linked up to the pc.