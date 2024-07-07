<div align="center">

***`unixtime`***<br>`0.1`

[![ci status](https://github.com/tayloraswift/swift-unixtime/actions/workflows/ci.yml/badge.svg)](https://github.com/tayloraswift/swift-unixtime/actions/workflows/ci.yml)

[![swift package index versions](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Ftayloraswift%2Fswift-unixtime%2Fbadge%3Ftype%3Dswift-versions)](https://swiftpackageindex.com/tayloraswift/swift-unixtime)
[![swift package index platforms](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Ftayloraswift%2Fswift-unixtime%2Fbadge%3Ftype%3Dplatforms)](https://swiftpackageindex.com/tayloraswift/swift-unixtime)

</div>

The ***`swift-unixtime`*** library is a portable, Foundation-free library for working with machine time and its human-readable representations.

Swift UnixTime is not a date computation library; use [davedelong.time](https://github.com/davedelong/time) for that. Swift UnixTime is principally concerned with static typing, unit safety, and minimizing binary size. It represents temporal concepts in a persistence-friendly format, optimizing for use cases such as task scheduling in long-running server applications.

One of the paramount goals of this library is to allow other libraries to exchange strongly-typed values with zero overhead without falling back to raw integer representations or linking against large frameworks.

<div align="center">

[documentation](https://swiftinit.org/docs/swift-unixtime/unixtime) ·
[license](LICENSE)

</div>
