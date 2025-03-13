# ocm-create-component

This is a basic demo scenario to create OCM components. There are constructor yaml files that describe the different components:

- two base components, one for podinfo and one for capacitor
- a composite component that references the base components

Using the [OCM CLI](https://github.com/open-component-model/ocm/releases/tag/v0.21.0) components can be created from the yaml files, stored in a CTF archive for transfer and then transferred to a target registry. The components have been upload to the [GitHub packages section of the Open Component Model project](https://github.com/orgs/open-component-model/packages?tab=packages&q=ocm.software%2Fdemos).

Inspection of the components can be done using the OCM CLI, e.g.

```bash
ocm get cv ghcr.io/open-component-model/ocm.software/demos/podinfo-component:6.8.0 -oyaml
```
