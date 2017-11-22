//
//  NSString+Crypto.swift
//  Crypto
//
//  Created by Sam Soffes on 4/21/15.
//  Copyright (c) 2015 Sam Soffes. All rights reserved.
//

import Foundation
import CommonCrypto

extension String {

	// MARK: - Digest

	public var md2: String? {
		return hashData?.md2.hex
	}

	public var md4: String? {
		return hashData?.md4.hex
	}

	public var md5: String? {
		return hashData?.md5.hex
	}
	
	public var sha1: String? {
		return hashData?.sha1.hex
	}

	public var sha224: String? {
		return hashData?.sha224.hex
	}

	public var sha256: String? {
		return hashData?.sha256.hex
	}

	public var sha384: String? {
		return hashData?.sha384.hex
	}

	public var sha512: String? {
		return hashData?.sha512.hex
	}


	// MARK: - HMAC

	public func hmac(key: String, algorithm: Crypto.HMAC.Algorithm) -> String? {
		return Crypto.HMAC.sign(message: self, algorithm: algorithm, key: key)
	}


	// MARK: - Private

	private var hashData: Data? {
		return data(using: .utf8)
	}
}
