//
//  NSString+Crypto.swift
//  Crypto
//
//  Created by Sam Soffes on 4/21/15.
//  Copyright (c) 2015 Sam Soffes. All rights reserved.
//

import Foundation
import CommonCrypto

extension NSString {

	// MARK: - Hashing

	public var MD2: NSString {
		return NSString(digestData: hashData.MD2, length: Int(CC_MD2_DIGEST_LENGTH))
	}

	public var MD4: NSString {
		return NSString(digestData: hashData.MD4, length: Int(CC_MD4_DIGEST_LENGTH))
	}

	public var MD5: NSString {
		return NSString(digestData: hashData.MD5, length: Int(CC_MD5_DIGEST_LENGTH))
	}
	
	public var SHA1: NSString {
		return NSString(digestData: hashData.SHA1, length: Int(CC_SHA1_DIGEST_LENGTH))
	}

	public var SHA224: NSString {
		return NSString(digestData: hashData.SHA224, length: Int(CC_SHA224_DIGEST_LENGTH))
	}

	public var SHA256: NSString {
		return NSString(digestData: hashData.SHA256, length: Int(CC_SHA256_DIGEST_LENGTH))
	}

	public var SHA384: NSString {
		return NSString(digestData: hashData.SHA384, length: Int(CC_SHA384_DIGEST_LENGTH))
	}

	public var SHA512: NSString {
		return NSString(digestData: hashData.SHA512, length: Int(CC_SHA512_DIGEST_LENGTH))
	}


	// MARK: - Private

	private var hashData: NSData {
		let cstr = cStringUsingEncoding(NSUTF8StringEncoding)
		return NSData(bytes: cstr, length: length)
	}

	private convenience init(digestData: NSData, length: Int) {
		var digest = [UInt8](count: length, repeatedValue: 0)
		digestData.getBytes(&digest, length: length * sizeof(UInt8))

		let string = NSMutableString(capacity: length * 2)
		for i in 0..<length {
			string.appendFormat("%02x", digest[i])
		}
		self.init(string: string)
	}
}
