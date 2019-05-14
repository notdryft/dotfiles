case "`uname -s`" in
  Darwin)
    java_version="1.8.0_162"

    export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk${java_version}.jdk/Contents/Home
    export JDK_HOME=/Library/Java/JavaVirtualMachines/jdk${java_version}.jdk/Contents/Home

    ;;
  Linux)
    java_short_version="1.8.0"
    java_version="${java_short_version}.212.b04-0"

    export JAVA_HOME=/usr/lib/jvm/java-${java_short_version}-openjdk-${java_version}.fc30.x86_64
    export JDK_HOME=/usr/lib/jvm/java-${java_short_version}-openjdk-${java_version}.fc30.x86_64

    ;;
esac

if [ ! -d "$JAVA_HOME/bin" ]; then
  echo "ERROR: JAVA_HOME is set to an invalid directory: $JAVA_HOME"
fi

export PATH=$JAVA_HOME/bin:$PATH
