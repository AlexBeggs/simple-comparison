# simple-comparison
Simple project that contains a short set of dependent modules in order to compare Bazel and Gradle executions

#### Requirements:

- Install Android SDK
- set environment variable ANDROID_HOME
- If necessary, override the default `~/.gradle-profiler` local directory in the [gradle-profiler](gradle-profiler) script
- Install Buck using [OkBuck](https://github.com/uber/okbuck)
  - `./gradlew :buckwrapper`
  - `./buckw`

The following need to be installed and in the path
- Bazel
- Buck
- Git
- Java

#### Execution:

Call the following script.  It will clone the forked [gradle-profiler](https://github.com/sunyal/gradle-profiler) to the default location of `~/.gradle-profiler`.  The fork provides additional execution options for Bazel benchmarking.  The clone location can be overridden in the [gradle-profiler](gradle-profiler) script.  

[./benchmark.sh](benchmark.sh)

The scenarios are defined in the [performance.scenarios](performance.scenarios).

#### Output:

The default location is the `output/<timestamp>` directory
