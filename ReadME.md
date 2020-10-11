# Installation of WSL on Windows

At First you need to Open PowerShell in administration mode :


* Click on windows button on Your Keyboard
* Type PowerShell it should appear in search result than click on Run as Administrator
* Then Paste this command 
     ```bash
        dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
    ```
* This should Restart Your PC after that come continue
* Now you have WSL version of 1 on your System now you can Install any Linux Distrobution and Start (You can Install some Linux Distro from Windows Store Directly and better yet install the new windows Terminal also from the Store)
* If you want to upgrade to WSL version 2 follow these Steps
    * First, you need to enable Virtual Machine 
    ```bash
        dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart
    ```
    * Second you need to install linux kernel ( kernel is the Core Of Operation Systems)
        * [WSL2 Linux Kernel Update package for x64 Machines](https://wslstorestorage.blob.core.windows.net/wslblob/wsl_update_x64.msi)
    * Set WSL2 as Your Default Version 
        *    ```bash
                wsl --set-default-version 2
             ```
* Now Set Your Linux Disto to either WSL or WSL2
    * First back to PowerShell with admin access and You can check the WSL version assigned to each of the Linux distributions you have installed
        *   ```bash
                wsl --list --verbose
             ```