# Deploy Flowfuse Device Agent with Balena

[![balena deploy button](https://www.balena.io/deploy.svg)](https://dashboard.balena-cloud.com/deploy?repoUrl=https://github.com/flowfuse/balena-device-agent)

The documentation for the FlowFuse Device Agent can be found [here](https://flowfuse.com/docs/device-agent/introduction/)

## Configure

The FlowFuse Device Agent can be configured in 2 ways:

 1.  Using a "Device Configuration": A Device Configuration is provided when a Device is created in the FlowFuse platform. This configuration can be set in the Belena device using the `FF_DEVICE_YML` environment variable (see below)
 2. Using a "Device Provisioning Configuration". A Device Provisioning Configuration is provided when a Provisioning Token is generated on the FlowFuse platform. This can be used to permit the Device Agent to connect to the FlowFuse platform and auto register itself as a new device. It will then download and store it's own unique Device Configuration. This Provisioning Configuration can be set in the Belena device using the `FF_DEVICE_YML` environment variable (see below). Provisioning tokens are created on the FlowFuse platform in "Team Settings" under the "Devices" tab.
    When using a Provisioning Token the Belena Device name will match the FlowFuse Device name.

### Passing configuration via Environment variable

Download either a Device configuration file or a Provisioning token and then Base64 encode this (with no line breaks) using the following command:

```
base64 -w 0 device.yml
```

In the Balena Fleet config set a Variable called `FF_DEVICE_YML` to the output of the base64 command, this can either be on a per device basis for option 1 or fleet wide variable for option 2.

