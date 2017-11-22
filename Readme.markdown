# Crypto

[![Version](https://img.shields.io/github/release/soffes/Crypto.svg)](https://github.com/soffes/Crypto/releases)
![Swift Version](https://img.shields.io/badge/swift-4.0-orange.svg)
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)

Simple CommonCrypto wrapper for Swift for macOS, iOS, watchOS, and tvOS with [Carthage](https://github.com/carthage/carthage) support.

This library depends on [CommonCrypto](https://github.com/soffes/CommonCrypto) since you can't use it directly from Swift. If you don't my extensions and just want that made easy, use that library directly.

Released under the [MIT license](LICENSE). Enjoy.

| Swift Version | Crypto Version |
| ------------- | -------------- |
| 4.0           | 0.5.4          |
| 3.0           | 0.5.3          |
| 3.1           | 0.5.2          |
| 3.0.1         | 0.5.1          |
| 3.0           | 0.5.0          |
| 2.3           | 0.4.1          |
| 2.2           | 0.4.0          |


## Installation

[Carthage](https://github.com/carthage/carthage) is the recommended way to install Crypto. Add the following to your Cartfile:

``` ruby
github "soffes/Crypto"
```

Note: this library depends on [CommonCrypto](https://github.com/soffes/CommonCrypto), so you'll need to add both Crypto and CommonCrypto to your project.


## Documentation

Currently, only digest and HMAC are supported.

### Digest

There are extensions for `NSData` and `String` for convenience:

``` swift
import Crypto

"sam".sha1 // "f16bed56189e249fe4ca8ed10a1ecae60e8ceac0"
data.sha1  // <Data …>
```

MD2, MD4, MD5, SHA1, SHA224, SHA256, SHA384, SHA512 are available.

You can also use `Digest` directly:

```swift
Digest.md5(bytes: data.bytes, length: data.length) // [UInt8]
```

### HMAC

[HMAC](https://en.wikipedia.org/wiki/Hash-based_message_authentication_code) in CommonCrypto is also supported.

```swift
HMAC.sign(message: "sam", algorithm: .sha1, key: "secret") // 1a90fa4e73686dfca75f5411d9fb81951edf1292

HMAC.sign(data: messageData, algorithm: .sha1, key: keyData) // <Data …>
```

MD5, SHA1, SHA224, SHA256, SHA384, SHA512 are the available algorithms.


## Roadmap

This is a work in progress.

- [ ] Cryptor
- [x] Digest
- [x] HMAC
- [ ] Key Derivation
- [ ] Random
- [ ] Symmetric Key Wrap
