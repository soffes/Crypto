//
//  Data+Crypto.swift
//  Crypto
//
//  Created by Sam Soffes on 4/21/15.
//  Copyright (c) 2015 Sam Soffes. All rights reserved.
//

import Foundation
import CommonCrypto

extension Data {

	// MARK: - Digest

	public var md2: Data {
		return digest(Digest.md2)
	}

	public var md4: Data {
		return digest(Digest.md4)
	}

	public var md5: Data {
		return digest(Digest.md5)
	}

	public var sha1: Data {
		return digest(Digest.sha1)
	}

	public var sha224: Data {
		return digest(Digest.sha224)
	}

	public var sha256: Data {
		return digest(Digest.sha256)
	}

	public var sha384: Data {
		return digest(Digest.sha384)
	}

	public var sha512: Data {
		return digest(Digest.sha512)
	}

	private func digest(_ function: ((UnsafeRawPointer, UInt32) -> [UInt8])) -> Data {
		var hash: [UInt8] = []
		withUnsafeBytes { hash = function($0, UInt32(count)) }
		return Data(bytes: hash, count: hash.count)
	}


	// MARK: - HMAC

	public func hmac(key: Data, algorithm: Crypto.HMAC.Algorithm) -> Data {
		return HMAC.sign(data: self, algorithm: algorithm, key: key)
	}


	// MARK: - Internal

	var hex: String {
		var string = ""

		#if swift(>=3.1)
			enumerateBytes { pointer, index, _ in
				for i in index..<pointer.count {
					string += String(format: "%02x", pointer[i])
				}
			}
		#else
			enumerateBytes { pointer, count, _ in
				for i in 0..<count {
					string += String(format: "%02x", pointer[i])
				}
			}
		#endif

		return string
	}
}
