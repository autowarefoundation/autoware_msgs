# autoware_system_msgs

## `GetVersionAutoware.srv`

This service is designed to provide the Autoware version.

Autoware version is based on the [Calendar Versioning](https://calver.org/#scheme) `YYYY.0M.MICRO` format.

This versioning format doesn't have information about backwards compatibility.

The data structure is defined as follows:

```yaml
---
uint16 year # Year of the release
uint16 month # Month of the release
uint16 micro # Micro version number: Incremented when bugs fixes are made
```

## `GetVersionComponentInterface.srv`

This service is designed to provide the Component Interface version.

Component Interface version is based on the [Semantic Versioning 2.0.0](https://semver.org/) format.

The data structure is defined as follows:

```yaml
---
uint16 major # Major version number: Incremented when incompatible API changes are made
uint16 minor # Minor version number: Incremented when new, backward-compatible functionalities are added
uint16 patch # Patch version number: Incremented when backward-compatible bugs fixes are made
```
