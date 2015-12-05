//
//  NSData+Crypto.swift
//  Crypto
//
//  Created by Sam Soffes on 4/21/15.
//  Copyright (c) 2015 Sam Soffes. All rights reserved.
//

import Foundation
import CommonCrypto

extension NSData {

	// MARK: - Hashing

	public var MD2: NSData {
		let hash = Digest.MD2(bytes: bytes, length: UInt32(length))
		return NSData(bytes: hash, length:  hash.count)
	}

	public var MD4: NSData {
		let hash = Digest.MD4(bytes: bytes, length: UInt32(length))
		return NSData(bytes: hash, length:  hash.count)
	}

	public var MD5: NSData {
		let hash = Digest.MD5(bytes: bytes, length: UInt32(length))
		return NSData(bytes: hash, length:  hash.count)
	}

	public var SHA1: NSData {
		let hash = Digest.SHA1(bytes: bytes, length: UInt32(length))
		return NSData(bytes: hash, length:  hash.count)
	}

	public var SHA224: NSData {
		let hash = Digest.SHA224(bytes: bytes, length: UInt32(length))
		return NSData(bytes: hash, length:  hash.count)
	}

	public var SHA256: NSData {
		let hash = Digest.SHA256(bytes: bytes, length: UInt32(length))
		return NSData(bytes: hash, length:  hash.count)
	}

	public var SHA384: NSData {
		let hash = Digest.SHA384(bytes: bytes, length: UInt32(length))
		return NSData(bytes: hash, length:  hash.count)
	}

	public var SHA512: NSData {
		let hash = Digest.SHA512(bytes: bytes, length: UInt32(length))
		return NSData(bytes: hash, length:  hash.count)
	}
}
