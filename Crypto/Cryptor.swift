//
//  Cryptor.swift
//  Crypto
//
//  Created by Sam Soffes on 12/5/15.
//  Copyright © 2015 Sam Soffes. All rights reserved.
//

import CommonCrypto

public struct Cryptor {
	public static func MD2(bytes bytes: UnsafePointer<Void>, length: UInt32) -> [UInt8] {
		var hash = [UInt8](count: Int(CC_MD2_DIGEST_LENGTH), repeatedValue: 0)
		CC_MD2(bytes, length, &hash)
		return hash
	}

	public static func MD4(bytes bytes: UnsafePointer<Void>, length: UInt32) -> [UInt8] {
		var hash = [UInt8](count: Int(CC_MD4_DIGEST_LENGTH), repeatedValue: 0)
		CC_MD4(bytes, length, &hash)
		return hash
	}

	public static func MD5(bytes bytes: UnsafePointer<Void>, length: UInt32) -> [UInt8] {
		var hash = [UInt8](count: Int(CC_MD5_DIGEST_LENGTH), repeatedValue: 0)
		CC_MD5(bytes, length, &hash)
		return hash
	}

	public static func SHA1(bytes bytes: UnsafePointer<Void>, length: UInt32) -> [UInt8] {
		var hash = [UInt8](count: Int(CC_SHA1_DIGEST_LENGTH), repeatedValue: 0)
		CC_SHA1(bytes, length, &hash)
		return hash
	}

	public static func SHA224(bytes bytes: UnsafePointer<Void>, length: UInt32) -> [UInt8] {
		var hash = [UInt8](count: Int(CC_SHA224_DIGEST_LENGTH), repeatedValue: 0)
		CC_SHA224(bytes, length, &hash)
		return hash
	}

	public static func SHA256(bytes bytes: UnsafePointer<Void>, length: UInt32) -> [UInt8] {
		var hash = [UInt8](count: Int(CC_SHA256_DIGEST_LENGTH), repeatedValue: 0)
		CC_SHA256(bytes, length, &hash)
		return hash
	}

	public static func SHA384(bytes bytes: UnsafePointer<Void>, length: UInt32) -> [UInt8] {
		var hash = [UInt8](count: Int(CC_SHA384_DIGEST_LENGTH), repeatedValue: 0)
		CC_SHA384(bytes, length, &hash)
		return hash
	}

	public static func SHA512(bytes bytes: UnsafePointer<Void>, length: UInt32) -> [UInt8] {
		var hash = [UInt8](count: Int(CC_SHA512_DIGEST_LENGTH), repeatedValue: 0)
		CC_SHA512(bytes, length, &hash)
		return hash
	}
}
