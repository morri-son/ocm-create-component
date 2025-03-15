Output demo.mp4
Output demo.gif

Require ocm

Set Shell zsh
Set FontSize 16
Set Width 2200
Set Height 1300
Set WindowBar Colorful
Set PlaybackSpeed 0.6

# Setting correct prompt
Set TypingSpeed 1ms
Type 'PS1="$ ";'
Enter
Ctrl+L

# Show OCM Logo
Type `echo -e "$(cat colored-ascii-art.txt)"` Enter
Sleep 12s
Ctrl+L
Set TypingSpeed 100ms

# View component constructor file
Type "##### Display component constructor file for podinfo component #####" Sleep 3s Ctrl+C
Enter
Enter
Enter
Type "bat podinfo-component.yaml" Sleep 1s Enter
Sleep 12s
Ctrl+L

# Create OCM component version
Type "##### Create OCM component version from constructor file and store it in local CTF archive #####" Sleep 3s Ctrl+C
Enter
Enter
Enter
Type "ocm add componentversion -c --file ./ctf-archive podinfo-component.yaml" Sleep 1s Enter
Sleep 2s
Enter
Sleep 10s
Ctrl+L

# Sign OCM component
Type "##### Sign OCM component using a private key #####" Sleep 3s Ctrl+C
Enter
Enter
Enter
Type "ocm sign componentversion --signature my-ocm --private-key ~/.ocm/keys/sap.com.key ctf-archive//ocm.software/demos/podinfo:6.8.0" Sleep 2s Enter
Sleep 2s
Enter
Sleep 10s
Ctrl+L

# Transfer OCM component
Type "##### Transfer OCM component from local CTF archive to ghcr.io registry #####" Sleep 3s Ctrl+C
Enter
Enter
Enter
Type "ocm transfer componentversion --enforce ctf-archive ghcr.io/open-component-model" Sleep 2s Enter
Sleep 4s
Enter
Sleep 10s
Ctrl+L

# View OCM component descriptor
Type "##### Get all OCM versions for podinfo component in ghcr.io registry #####" Sleep 3s Ctrl+C
Enter
Enter
Enter
Type "ocm get componentversion ghcr.io/open-component-model//ocm.software/demos/podinfo" Sleep 2s Enter
Sleep 2s
Enter
Sleep 10s
Ctrl+L

# Get and save component version, then view component desriptor with bat
Type "##### Get OCM component version 6.8.0, save to local file and display it #####" Sleep 3s Ctrl+C
Enter
Enter
Enter
Type "ocm get componentversion ghcr.io/open-component-model//ocm.software/demos/podinfo:6.8.0 -oyaml > downloaded-comp.yaml" Sleep 2s Enter
Sleep 2s
Enter
Type "bat downloaded-comp.yaml" Sleep 1s Enter
Sleep 20s
