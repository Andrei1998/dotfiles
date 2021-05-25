The first steps follow what can be found online, but most places tell you how to upgrade WSL, but not how to upgrade existing installed distros.

**Note** Run all commands in PowerShell with admin rights. 

# Enable the Windows Subsystem for Linux

```bash
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
```

# Enable Virtual Machine Feature

```bash
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart
```

***Restart and enable virtualization in BIOS/UEFI.***

# Download and Install the Linux Kernel Update Package

https://wslstorestorage.blob.core.windows.net/wslblob/wsl_update_x64.msi

# Next Steps to Upgrade Existing Distros

To make subsequent installations use WSL 2, run the following:

```bash
wsl --set-default-version 2
```

To see list of WSL installations, run:

```bash
wsl -l -v
```

which prints a list like the following:

```text
NAME            STATE           VERSION
* Ubuntu-18.04    Stopped         2
```

Then, run the following to complete the upgrade (might take good minutes, and will fail if, for instance, virtualization was not enabled in BIOS):

```bash
wsl --set-version Ubuntu-18.04 2
```

where `Ubuntu-18.04` replaces the name in the output of `wsl -l -v`.

# References

* https://docs.microsoft.com/ro-ro/windows/wsl/install-win10
* https://admcpr.com/how-to-upgrade-wsl-1-to-wsl-2/
