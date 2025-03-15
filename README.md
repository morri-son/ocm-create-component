# ocm-create-component

This repository contains basic demo scenarios for the [Open Component Model (OCM)](https://ocm.software) and describes basic actions around actions with OCM components. It describes an action sequence from creating, over signing and lastly transferring OCM components to their target registry.

These actions are used to create a so-called `tape` file that can be used to record a terminal session used to execute the scenario. A tape file contains the code describing the recording and can be used with [VHS](https://github.com/charmbracelet/vhs). The repo also contrains a demo tape file and a rendered version of the tape file in GIF and MP4 format.

The demo scenario consists of:

- Creating podinfo component from a constructor file
- Storing component in a local CTF archive
- Signing component with a private key (key pair not part of this repo)
- Transferring component to GitHub container registry
- Checking uploaded component

All actions in the scenario use the [OCM CLI](https://github.com/open-component-model/ocm/releases/tag/v0.21.0). All components have been uploaded to the [GitHub packages section of the Open Component Model project](https://github.com/orgs/open-component-model/packages?tab=packages&q=ocm.software%2Fdemos).

The repo contains multiple component constructor files that describe different components (only the podinfo component is used in the demo):

- two base components, one for podinfo and one for capacitor
- a composite component that references the base components
