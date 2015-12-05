//
//  HMAC.swift
//  Crypto
//
//  Created by Sam Soffes on 12/5/15.
//  Copyright © 2015 Sam Soffes. All rights reserved.
//

import CommonCrypto
import Foundation

public struct HMAC {

	// MARK: - Types

	public enum Algorithm {
		case SHA1
		case MD5
		case SHA256
		case SHA384
		case SHA512
		case SHA224

		public var algorithm: CCHmacAlgorithm {
			switch self {
			case .MD5: return CCHmacAlgorithm(kCCHmacAlgMD5)
			case .SHA1: return CCHmacAlgorithm(kCCHmacAlgSHA1)
			case .SHA224: return CCHmacAlgorithm(kCCHmacAlgSHA224)
			case .SHA256: return CCHmacAlgorithm(kCCHmacAlgSHA256)
			case .SHA384: return CCHmacAlgorithm(kCCHmacAlgSHA384)
			case .SHA512: return CCHmacAlgorithm(kCCHmacAlgSHA512)
			}
		}

		public var digestLength: Int {
			switch self {
			case .MD5: return Int(CC_MD5_DIGEST_LENGTH)
			case .SHA1: return Int(CC_SHA1_DIGEST_LENGTH)
			case .SHA224: return Int(CC_SHA224_DIGEST_LENGTH)
			case .SHA256: return Int(CC_SHA256_DIGEST_LENGTH)
			case .SHA384: return Int(CC_SHA384_DIGEST_LENGTH)
			case .SHA512: return Int(CC_SHA512_DIGEST_LENGTH)
			}
		}
	}


	// MARK: - Signing

	public static func sign(data data: NSData, algorithm: Algorithm, key: NSData) -> NSData {
		let signature = UnsafeMutablePointer<CUnsignedChar>.alloc(algorithm.digestLength)
		CCHmac(algorithm.algorithm, key.bytes, key.length, data.bytes, data.length, signature)

		return NSData(bytes: signature, length: algorithm.digestLength)
	}

	public static func sign(message message: String, algorithm: Algorithm, key: String) -> String? {
		guard let messageData = message.dataUsingEncoding(NSUTF8StringEncoding),
			keyData = key.dataUsingEncoding(NSUTF8StringEncoding)
		else { return nil }

		let data = sign(data: messageData, algorithm: algorithm, key: keyData)

		var hash = ""
		data.enumerateByteRangesUsingBlock { bytes, range, _ in
			let pointer = UnsafeMutablePointer<CUnsignedChar>(bytes)
			for i in range.location..<(range.location + range.length) {
				hash += NSString(format: "%02x", pointer[i]) as String
			}
		}
		return hash

	}
}
