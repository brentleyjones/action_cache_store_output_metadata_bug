load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

http_archive(
    name = "build_bazel_rules_swift",
    sha256 = "1e09d205c714e14216900d48204aeda477763ab95e3a1953a466892a032d73ae",
    strip_prefix = "rules_swift-1af61b8d2027b18b50958848297e8975c92d5fde",
    url = "https://github.com/bazelbuild/rules_swift/archive/1af61b8d2027b18b50958848297e8975c92d5fde.tar.gz",
)

load("@build_bazel_rules_swift//swift:repositories.bzl", "swift_rules_dependencies")

swift_rules_dependencies()

load("@build_bazel_rules_swift//swift:extras.bzl", "swift_rules_extra_dependencies")

swift_rules_extra_dependencies()
