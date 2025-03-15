# VHS demo script

## Commands in demo.tape file

Below are the OCM CLI commands used in the `./demo.tape` file. Can be used in vhs with `vhs demo.tape` to create a session recording:

### View component constructor file

```bash
bat podinfo-component.yaml
```

### Create OCM component version from constructor file and store it in local CTF archive

```bash
ocm add componentversion -c --file ./ctf-archive podinfo-component.yaml
```

### Sign OCM component version with private key

```bash
ocm sign componentversion --signature my-ocm --private-key ~/.ocm/keys/sap.com.key ctf-archive//ocm.software/demos/podinfo:6.8.0
```

### Transfer OCM component from local CTF archive to ghcr.io registry

```bash
ocm transfer componentversion --enforce ctf-archive ghcr.io/open-component-model
```

### View all OCM component versions in ghcr.io registry

```bash
ocm get componentversion ghcr.io/open-component-model//ocm.software/demos/podinfo
```

### Get version 6.8.0 of podinfo component, save to local file and display content

```bash
ocm get componentversion ghcr.io/open-component-model//ocm.software/demos/podinfo:6.8.0 -oyaml > downloaded-comp.yaml
bat downloaded-comp.yaml
```
