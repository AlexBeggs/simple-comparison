# simple-comparison
Simple project that contains a short set of dependent modules in order to compare Bazel and Gradle executions

#### Requirements:

- Install Android SDK
- set environment variable ANDROID_HOME

The following need to be installed and in the path
- Bazel
- Git
- Java

#### Execution:

Call the following script.  This will clone the forked [gradle-profiler](https://github.com/sunyal/gradle-profiler) that provides additional execution options for Bazel benchmarking.

[./benchmark.sh](benchmark.sh)

The scenarios are defined in the [performance.scenarios](performance.scenarios).

#### Output:

The default location is the `output/<timestamp>` directory
