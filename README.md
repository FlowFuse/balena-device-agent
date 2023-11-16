# Deploy Flowfuse Device Agent with Balena

From Team -> Settings page create a new device provisioning file

Base64 encode this (with no line breaks)

```
base64 -w 0 device.yml
```

In the Balena Fleet config set a Variable called `FF_DEVICE_YML` to the output of the base64 command.

This will cause the device to register with the team on first startup.

Device names should match across FlowFuse and Balena
