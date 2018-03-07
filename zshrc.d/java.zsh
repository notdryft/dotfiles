case "`uname -s`" in
  Darwin)
    java_version="1.8.0_162"

    export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk${java_version}.jdk/Contents/Home
    export JDK_HOME=/Library/Java/JavaVirtualMachines/jdk${java_version}.jdk/Contents/Home

    ;;
  Linux)
    java_short_version="1.8.0"
    java_version="${java_short_version}.131-1.b12"

    export JAVA_HOME=/usr/lib/jvm/java-${java_short_version}-openjdk-${java_version}.fc25.x86_64
    export JDK_HOME=/usr/lib/jvm/java-${java_short_version}-openjdk-${java_version}.fc25.x86_64

    ;;
esac

export PATH=${JAVA_HOME}/bin:$PATH
