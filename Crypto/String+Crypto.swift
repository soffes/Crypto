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

	// MARK: - Hashing

	public var MD2: String? {
		return String(digestData: hashData?.MD2, length: CC_MD2_DIGEST_LENGTH)
	}

	public var MD4: String? {
		return String(digestData: hashData?.MD4, length: CC_MD4_DIGEST_LENGTH)
	}

	public var MD5: String? {
		return String(digestData: hashData?.MD5, length: CC_MD5_DIGEST_LENGTH)
	}
	
	public var SHA1: String? {
		return String(digestData: hashData?.SHA1, length: CC_SHA1_DIGEST_LENGTH)
	}

	public var SHA224: String? {
		return String(digestData: hashData?.SHA224, length: CC_SHA224_DIGEST_LENGTH)
	}

	public var SHA256: String? {
		return String(digestData: hashData?.SHA256, length: CC_SHA256_DIGEST_LENGTH)
	}

	public var SHA384: String? {
		return String(digestData: hashData?.SHA384, length: CC_SHA384_DIGEST_LENGTH)
	}

	public var SHA512: String? {
		return String(digestData: hashData?.SHA512, length: CC_SHA512_DIGEST_LENGTH)
	}


	// MARK: - Private

	private var hashData: NSData? {
		return dataUsingEncoding(NSUTF8StringEncoding)
	}

	private init?(digestData: NSData?, length: Int32) {
		guard let digestData = digestData else { return nil }
		var digest = [UInt8](count: Int(length), repeatedValue: 0)
		digestData.getBytes(&digest, length: Int(length) * sizeof(UInt8))

		var string = ""
		for i in 0..<length {
			string += String(format: "%02x", digest[Int(i)])
		}
		self.init(string)
	}
}
