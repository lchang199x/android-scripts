# Useful Configuration in Startup File (MacOS)

# list all contents including hidden ones
alias la="ls -A"
# list with a long listing format
alias ll="ls -alF"

# navigate to the most common folders
alias cdd="cd ~/Desktop"
# Workspace is where I always put my <PROJECT>
alias cdw="cd ~/Workspace"

# replace PROJECT & PACKAGE with your own
export PROJECT=bar
export PACKAGE=com.foo.bar
export LAUNCHER_ACTIVITY=.FooBarActivity

# list the running activities of a <PACKAGE>
alias hist="adb shell dumpsys activity activities | grep $PACKAGE | grep Hist"
# find the top activity
alias act="adb shell dumpsys window | grep mCurrentFocus"
# capture screen display & open the image
alias cap="adb shell screencap -p > ~/Desktop/screenshot.png && open ~/Desktop/screenshot.png"
# goto launcher
alias launcher="adb shell am start -n com.android.launcher3/com.android.launcher3.Launcher && adb shell input keyevent KEYCODE_HOME"

# install release apk
alias installr="adb install -r ~/Workspace/$PROJECT/app/build/outputs/apk/release/app-release.apk"
# install debug apk
alias installd="adb install -r -t ~/Workspace/$PROJECT/app/build/outputs/apk/debug/app-debug.apk"
# uninstall the <PACKAGE>, assume your app name starts with x-
alias unix="adb uninstall $PACKAGE"

# start
alias startx="adb shell am start -n $PACKAGE/$LAUNCHER_ACTIVITY"
# stop
alias stopx="adb shell am force-stop $PACKAGE"
# restart
alias restartx="adb shell am start -S $PACKAGE/$LAUNCHER_ACTIVITY"
# delete all data
alias clearx="adb shell pm clear $PACKAGE"

# input text via adb
alias input="adb shell input text"
# input keyevent via adb
alias event="adb shell input keyevent"
# start app details settings page
alias detail="adb shell am start -a android.settings.APPLICATION_DETAILS_SETTINGS -d package:"

# git related
alias st = "git status"
alias amend="git commit --amend --no-edit"
alias lg1="git log --oneline"

# environment variables
export JAVA_HOME="/Applications/Android Studio.app/Contents/jre/jdk/Contents/Home"
export ANDROID_HOME=~/Library/Android/sdk
export PATH=$JAVA_HOME/bin:$ANDROID_HOME/platform-tools:$PATH
