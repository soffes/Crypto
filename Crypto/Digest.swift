//
//  Digest.swift
//  Crypto
//
//  Created by Sam Soffes on 12/5/15.
//  Copyright © 2015 Sam Soffes. All rights reserved.
//

import CommonCrypto

public struct Digest {
	public static func md2(bytes: UnsafeRawPointer, length: UInt32) -> [UInt8] {
		var hash = [UInt8](repeating: 0, count: Int(CC_MD2_DIGEST_LENGTH))
		CC_MD2(bytes, length, &hash)
		return hash
	}

	public static func md4(bytes: UnsafeRawPointer, length: UInt32) -> [UInt8] {
		var hash = [UInt8](repeating: 0, count: Int(CC_MD4_DIGEST_LENGTH))
		CC_MD4(bytes, length, &hash)
		return hash
	}

	public static func md5(bytes: UnsafeRawPointer, length: UInt32) -> [UInt8] {
		var hash = [UInt8](repeating: 0, count: Int(CC_MD5_DIGEST_LENGTH))
		CC_MD5(bytes, length, &hash)
		return hash
	}

	public static func sha1(bytes: UnsafeRawPointer, length: UInt32) -> [UInt8] {
		var hash = [UInt8](repeating: 0, count: Int(CC_SHA1_DIGEST_LENGTH))
		CC_SHA1(bytes, length, &hash)
		return hash
	}

	public static func sha224(bytes: UnsafeRawPointer, length: UInt32) -> [UInt8] {
		var hash = [UInt8](repeating: 0, count: Int(CC_SHA224_DIGEST_LENGTH))
		CC_SHA224(bytes, length, &hash)
		return hash
	}

	public static func sha256(bytes: UnsafeRawPointer, length: UInt32) -> [UInt8] {
		var hash = [UInt8](repeating: 0, count: Int(CC_SHA256_DIGEST_LENGTH))
		CC_SHA256(bytes, length, &hash)
		return hash
	}

	public static func sha384(bytes: UnsafeRawPointer, length: UInt32) -> [UInt8] {
		var hash = [UInt8](repeating: 0, count: Int(CC_SHA384_DIGEST_LENGTH))
		CC_SHA384(bytes, length, &hash)
		return hash
	}

	public static func sha512(bytes: UnsafeRawPointer, length: UInt32) -> [UInt8] {
		var hash = [UInt8](repeating: 0, count: Int(CC_SHA512_DIGEST_LENGTH))
		CC_SHA512(bytes, length, &hash)
		return hash
	}
}
