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
		case sha1
		case md5
		case sha256
		case sha384
		case sha512
		case sha224

		public var algorithm: CCHmacAlgorithm {
			switch self {
			case .md5: return CCHmacAlgorithm(kCCHmacAlgMD5)
			case .sha1: return CCHmacAlgorithm(kCCHmacAlgSHA1)
			case .sha224: return CCHmacAlgorithm(kCCHmacAlgSHA224)
			case .sha256: return CCHmacAlgorithm(kCCHmacAlgSHA256)
			case .sha384: return CCHmacAlgorithm(kCCHmacAlgSHA384)
			case .sha512: return CCHmacAlgorithm(kCCHmacAlgSHA512)
			}
		}

		public var digestLength: Int {
			switch self {
			case .md5: return Int(CC_MD5_DIGEST_LENGTH)
			case .sha1: return Int(CC_SHA1_DIGEST_LENGTH)
			case .sha224: return Int(CC_SHA224_DIGEST_LENGTH)
			case .sha256: return Int(CC_SHA256_DIGEST_LENGTH)
			case .sha384: return Int(CC_SHA384_DIGEST_LENGTH)
			case .sha512: return Int(CC_SHA512_DIGEST_LENGTH)
			}
		}
	}


	// MARK: - Signing

	public static func sign(data: Data, algorithm: Algorithm, key: Data) -> Data {
		let signature = UnsafeMutablePointer<CUnsignedChar>.allocate(capacity: algorithm.digestLength)
		defer { signature.deallocate(capacity: algorithm.digestLength) }

		data.withUnsafeBytes { dataBytes in
			key.withUnsafeBytes { keyBytes in
				CCHmac(algorithm.algorithm, keyBytes, key.count, dataBytes, data.count, signature)
			}
		}

		return Data(bytes: signature, count: algorithm.digestLength)
	}

	public static func sign(message: String, algorithm: Algorithm, key: String) -> String? {
		guard let messageData = message.data(using: .utf8),
			let keyData = key.data(using: .utf8)
		else { return nil }

		return sign(data: messageData, algorithm: algorithm, key: keyData).hex
	}
}
