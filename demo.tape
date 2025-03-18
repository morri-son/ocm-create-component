Output demo.mp4
Output demo.gif

Set Shell zsh
Set FontSize 16
Set Width 2200
Set Height 1300
Set WindowBar Colorful
Set TypingSpeed 60ms
Set PlaybackSpeed 0.6

# Setting correct prompt
Env PROMPT "$ "

# Show OCM Logo
Hide
Type `echo -e "$(cat colored-ascii-art.txt)"` Enter
Show
Sleep 9
Ctrl+L

# View component constructor file
Type "##### Display component constructor file for podinfo component #####" Sleep 2 Ctrl+C
Enter
Enter
Enter
Type "bat podinfo-component.yaml" Sleep 1s Enter
Sleep 10s
Ctrl+L

# Create OCM component version
Type "##### Create OCM component version from constructor file and store it in local CTF archive #####" Sleep 2 Ctrl+C
Enter
Enter
Enter
Type "ocm add componentversion -c --file ./ctf-archive podinfo-component.yaml" Enter
Sleep 2
Enter
Sleep 10
Ctrl+L

# Sign OCM component
Type "##### Sign OCM component using a private key #####" Sleep 2 Ctrl+C
Enter
Enter
Enter
Type "ocm sign componentversion --signature my-ocm --private-key ~/.ocm/keys/sap.com.key ctf-archive//ocm.software/demos/podinfo:6.8.0" Enter
Sleep 2s
Enter
Sleep 10s
Ctrl+L

# Transfer OCM component
Type "##### Transfer OCM component from local CTF archive to ghcr.io registry #####" Ctrl+C
Enter
Type "##### Only OCM component is transferred, RESOURCES are just links to their origin source registries (NO --copy-resources param) #####" Sleep 2 Ctrl+C
Enter
Enter
Enter
Type "ocm transfer componentversion --enforce ctf-archive ghcr.io/open-component-model" Enter
Sleep 4
Enter
Sleep 10
Ctrl+L

# View OCM component descriptor
Type "##### Get all OCM versions for podinfo component in ghcr.io registry #####" Sleep 2 Ctrl+C
Enter
Enter
Enter
Type "ocm get componentversion ghcr.io/open-component-model//ocm.software/demos/podinfo" Enter
Sleep 2
Enter
Sleep 10
Ctrl+L

# Get and save component version, then view component desriptor with bat
Type "##### Get OCM component version 6.8.0, save to local file and display it #####" Sleep 2 Ctrl+C
Enter
Enter
Enter
Type "ocm get componentversion ghcr.io/open-component-model//ocm.software/demos/podinfo:6.8.0 -oyaml > comp-NO-copy-resources.yaml" Enter
Sleep 2
Enter
Type "bat comp-NO-copy-resources.yaml" Sleep 1s Enter
Sleep 10s
Ctrl+L

# Transfer component to different target with resources
Type "##### Transfer OCM component to different target (air-gapped) registry #####" Ctrl+C
Enter
Type "##### RESOURCES are transferred ALONG WITH the OCM component (--copy-resources param) #####" Sleep 2 Ctrl+C
Enter 3
Type "ocm transfer componentversion --copy-resources ghcr.io/open-component-model//ocm.software/demos/podinfo:6.8.0 europe-west4-docker.pkg.dev/sap-cp-k8s-ocm-gcp-eu30-dev/ocm" Sleep 2s Enter 
Sleep 2
Wait+Screen@45s /resource 0/
Sleep 500ms
Wait+Screen@45s /resource 1/
Sleep 1
Wait+Screen@45s /transferred/
Sleep 10
Ctrl+L

# Get and save component version, then diff component desriptors
Type "##### Get OCM component with COPIED RESOURCES and diff it against the component before transfer #####" Ctrl+C
Enter
Type "##### The access locations of all resources will change to the target (air-gapped) registry ####" Sleep 2 Ctrl+C
Enter
Enter
Enter
Type "ocm get componentversion europe-west4-docker.pkg.dev/sap-cp-k8s-ocm-gcp-eu30-dev/ocm//ocm.software/demos/podinfo:6.8.0 -oyaml > comp-copy-resources.yaml" Sleep 2 Enter
Sleep 2
Enter
Type "git diff --no-index comp-NO-copy-resources.yaml comp-copy-resources.yaml" Sleep 1 Enter
Sleep 10
