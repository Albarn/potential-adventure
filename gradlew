#!/usr/bin/env sh
##########################################################################
#
# Gradle start up script for UN*X
#
##########################################################################

# Attempt to set APP_HOME
# Resolve links: $0 may be a link
PRG="$0"
while [ -h "$PRG" ]; do
  ls=`ls -ld "$PRG"`
  link=`expr "$ls" : '.*-> .*$'`
  if expr "$link" : '/.*' > /dev/null; then
    PRG="$link"
  else
    PRG="`dirname "$PRG"`/$link"
  fi
done

SAVED_IFS="$IFS"
IFS=/
PROGDIR=""
for component in $PRG; do
    PROGDIR="$PROGDIR/$component"
done
IFS="$SAVED_IFS"

APP_HOME=`dirname "$PROGDIR"`
APP_NAME="gradlew"
GREP="grep"

if [ -n "$JAVA_HOME" ] ; then
  if [ -x "$JAVA_HOME/bin/java" ] ; then
    JAVACMD="$JAVA_HOME/bin/java"
  else
    echo "ERROR: JAVA_HOME is set to an invalid directory: $JAVA_HOME" >&2
    echo "Please set the JAVA_HOME variable in your environment to match the" >&2
    echo "location of your Java installation." >&2
    exit 1
  fi
else
  JAVACMD="`which java`"
fi

if [ ! -x "$JAVACMD" ] ; then
  echo "ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH." >&2
  echo "Please set the JAVA_HOME variable in your environment to match the location of your Java installation." >&2
  exit 1
fi

CLASSPATH=$APP_HOME/gradle/wrapper/gradle-wrapper.jar

exec "$JAVACMD" -classpath "$CLASSPATH" org.gradle.wrapper.GradleWrapperMain "$@"
