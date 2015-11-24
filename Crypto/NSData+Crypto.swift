//
//  NSData+Crypto.swift
//  Crypto
//
//  Created by Sam Soffes on 4/21/15.
//  Copyright (c) 2015 Sam Soffes. All rights reserved.
//

import Foundation
import CommonCrypto
import Zlib

extension NSData {

	// MARK: - Hashing

	public var MD2: NSData {
		var hash = [UInt8](count: Int(CC_MD2_DIGEST_LENGTH), repeatedValue: 0)
		CC_MD2(bytes, CC_LONG(length), &hash)
		return NSData(bytes: hash, length: Int(CC_MD2_DIGEST_LENGTH))
	}

	public var MD4: NSData {
		var hash = [UInt8](count: Int(CC_MD4_DIGEST_LENGTH), repeatedValue: 0)
		CC_MD4(bytes, CC_LONG(length), &hash)
		return NSData(bytes: hash, length: Int(CC_MD4_DIGEST_LENGTH))
	}

	public var MD5: NSData {
		var hash = [UInt8](count: Int(CC_MD5_DIGEST_LENGTH), repeatedValue: 0)
		CC_MD5(bytes, CC_LONG(length), &hash)
		return NSData(bytes: hash, length: Int(CC_MD5_DIGEST_LENGTH))
	}

	public var SHA1: NSData {
		var hash = [UInt8](count: Int(CC_SHA1_DIGEST_LENGTH), repeatedValue: 0)
		CC_SHA1(bytes, CC_LONG(length), &hash)
		return NSData(bytes: hash, length: Int(CC_SHA1_DIGEST_LENGTH))
	}

	public var SHA224: NSData {
		var hash = [UInt8](count: Int(CC_SHA224_DIGEST_LENGTH), repeatedValue: 0)
		CC_SHA224(bytes, CC_LONG(length), &hash)
		return NSData(bytes: hash, length: Int(CC_SHA224_DIGEST_LENGTH))
	}

	public var SHA256: NSData {
		var hash = [UInt8](count: Int(CC_SHA256_DIGEST_LENGTH), repeatedValue: 0)
		CC_SHA256(bytes, CC_LONG(length), &hash)
		return NSData(bytes: hash, length: Int(CC_SHA256_DIGEST_LENGTH))
	}

	public var SHA384: NSData {
		var hash = [UInt8](count: Int(CC_SHA384_DIGEST_LENGTH), repeatedValue: 0)
		CC_SHA384(bytes, CC_LONG(length), &hash)
		return NSData(bytes: hash, length: Int(CC_SHA384_DIGEST_LENGTH))
	}

	public var SHA512: NSData {
		var hash = [UInt8](count: Int(CC_SHA512_DIGEST_LENGTH), repeatedValue: 0)
		CC_SHA512(bytes, CC_LONG(length), &hash)
		return NSData(bytes: hash, length: Int(CC_SHA512_DIGEST_LENGTH))
	}

	// public func crc32(crc: uLong, _ buf: UnsafePointer<Bytef>, _ len: uInt) -> uLong

	public var CRC32: Int {
		let buffer = UnsafePointer<Bytef>(bytes)
		return Int(crc32(0, buffer, uInt(length)))
	}
}
