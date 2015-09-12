# Crypto

[![Version](https://img.shields.io/github/release/soffes/Crypto.svg)](https://github.com/soffes/Crypto/releases) [![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)

Simple CommonCrypto wrapper for Swift for Mac, iOS and watchOS with [Carthage](https://github.com/carthage/carthage) support.

Released under the [MIT license](LICENSE). Enjoy.

**This is a work in progress.**


## Installation

[Carthage](https://github.com/carthage/carthage) is the recommended way to install Crypto. Add the following to your Cartfile:

``` ruby
github "soffes/Crypto"
```


## Documentation

Currently, only hashing is supported. There are extensions for `NSData` and `NSString`.

``` swift
import Crypto

let data = NSData(...)
data.MD2    // <NSData ...>
data.MD4    // <NSData ...>
data.MD5    // <NSData ...>
data.SHA1   // <NSData ...>
data.SHA224 // <NSData ...>
data.SHA256 // <NSData ...>
data.SHA384 // <NSData ...>
data.SHA512 // <NSData ...>

let string = "sam"
string.MD2    // "3b68484d8f4aa7471d4d7a4f3a3650f9"
string.MD4    // "cd7d17e2d1b18fe34e1a7cc26c1afdf1"
string.MD5    // "332532dcfaa1cbf61e2a266bd723612c"
string.SHA1   // "f16bed56189e249fe4ca8ed10a1ecae60e8ceac0"
string.SHA224 // "3e158867fde8c88755ad7d28ac2525c612df7957efb527783ca41328"
string.SHA256 // "e96e02d8e47f2a7c03be5117b3ed175c52aa30fb22028cf9c96f261563577605"
string.SHA384 // "f43211f34235f416ed799126e46ff3b77155acff484eec2bbe93e081082a30e3dd7462217470747fdc8bc4fb9facf205"
string.SHA512 // "aa9a88785afb81fcb66da5b86d0aaf543dd883c8cf1e74f2f42c62195006606c69613170d56d2ecb8db6fb03f5acb6bdd0ffaf54bdf788854ddafc6becfdf3c7"
```

## CommonCrypto

It's worth noting, you can't directly use `CommonCrypto` in Swift since Apple doesn't define a module for it. In the project, there is a `CommonCrypto` framework that wraps the library. This makes importing it into Swift as simple as

``` swift
import CommonCrypto
```

If you want to use `CommonCrypto` in your own project and don't care about my helper extensions, this is still the easiest way to use it. You can just include the `CommonCrypto` framework and not the `Crypto` framework to just use the wrapper.
