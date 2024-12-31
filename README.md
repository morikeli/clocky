# Clocky

## Mobile app screenshots

| Splash screen | Homescreen (light mode) |
| ------------- | ------------- |
| ![splash-screen](https://github.com/user-attachments/assets/1a35dba2-67c4-4df2-baf9-30fe3600ad52) | ![light-mode](https://github.com/user-attachments/assets/52f26600-910a-4aa6-9de9-14570e961b96) |
| | |
| | |
| Homescreen (dark mode) | Country cards on scroll |
| ![dark-mode](https://github.com/user-attachments/assets/cdfbcf40-e3cc-45a2-8202-6cba95dcb8e7) | ![country-card-onscroll](https://github.com/user-attachments/assets/9854e0db-8d48-474f-8ef0-96f92c5d9809) |
| | |
| | |



## Overview
This is a clock application developed for desktop and mobile. It is built for Android, iOS, Linux, macOS and Windows.

Techinologies used:
 - Flutter


## Developer instructions
---
**NOTE**: 
* To run this project, you **MUST** install Flutter SDK on your machine. Refer to [Flutter's documentation](https://docs.flutter.dev/get-started/install) and follow a step-by-step guide on how you can install Flutter SDK on your OS.

* Make sure you have installed Android Studio or a text editor of your choice - VS Code or XCode.

* Make sure your machine supports virtualization - required to run an emulator. If it doesn't, don't worry, you can install `scrcpy` on your machine or use Android Studio's `mirror device` feature.

**Scrcpy Installation guide** 
* [Install scrcpy on Windows](https://github.com/Genymobile/scrcpy/blob/master/doc/windows.md)
* [Install scrcpy on Linux](https://github.com/Genymobile/scrcpy/blob/master/doc/linux.md)
* [Install scrcpy on MacOS](https://github.com/Genymobile/scrcpy/blob/master/doc/macos.md)

---


#### Installation guide for developers

1. Git clone
Clone this repository by opening your terminal/CMD and change the current working directory to Desktop - use `cd Desktop` command.
```bash
    $ cd Desktop
    $ git clone https://github.com/morikeli/clocky.git
```

2. Open the cloned repository on your text editor and run this command:
```bash
    $ flutter run
```
3. Make sure you have a very strong internet connection so that the necessary gradle files can be downloaded. These files are necessary to build the project `apk` file.

---
**Keep in mind**:
* When building the application for the first time, it may take 10 - 15 minutes to finish the installation and build process.
* When running the application using the `flutter run` command, it may take atleast a minute to install the build files on a physical device.
---


## Contributor expectations
Incase of a bug or you wish to make a contribution, create a new branch using the git command `git checkout -b <name of your branch>` and create a pull request. Wait for review.

You can also open an issue using the `Issues` tab. The reported issue will be reviewed and a solution may be provided.


## Request
Don't forget to star the repo 🌟😉


## Known issues
The app is still under development. More features will be added with time.
