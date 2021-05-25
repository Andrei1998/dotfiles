# Upgrading to WSL 2

The first steps follow what can be found online, but most places tell you how to upgrade WSL, but not how to upgrade existing installed distros. **Note:** run all commands in PowerShell with admin rights. 

## 1. Enable the Windows Subsystem for Linux

```bash
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
```

## 2. Enable Virtual Machine Feature

```bash
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart
```

## 3. Restart and Enable Virtualization in BIOS/UEFI

**Restart** is still required if virtualization is already enabled.

## 4. Download and Install the Linux Kernel Update Package

Run the following installer: https://wslstorestorage.blob.core.windows.net/wslblob/wsl_update_x64.msi.

## 5. Upgrade Existing Distros

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
* Ubuntu-18.04    Stopped         1
```

Then, run the following to complete the upgrade (might take some good minutes, and will fail if, for instance, virtualization was not enabled in BIOS in step 3):

```bash
wsl --set-version Ubuntu-18.04 2
```

where `Ubuntu-18.04` replaces the name in the output of `wsl -l -v`.

Run `wsl -l -v` again and the `VERSION` column should now display `2`.

## References

* https://docs.microsoft.com/ro-ro/windows/wsl/install-win10
* https://admcpr.com/how-to-upgrade-wsl-1-to-wsl-2/
