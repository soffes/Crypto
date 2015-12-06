//
//  Cryptor.swift
//  Crypto
//
//  Created by Sam Soffes on 12/5/15.
//  Copyright © 2015 Sam Soffes. All rights reserved.
//

import CommonCrypto

public struct Cryptor {

	// MARK: - Types

	public enum Algorithm {
		case AES
		case AES128
		case DES
		case ThreeDES
		case CAST
		case RC4
		case RC2
		case Blowfish

		public var algorithm: CCAlgorithm {
			switch self {
			case AES: return CCAlgorithm(kCCAlgorithmAES)
			case AES128: return CCAlgorithm(kCCAlgorithmAES128)
			case DES: return CCAlgorithm(kCCAlgorithmDES)
			case ThreeDES: return CCAlgorithm(kCCAlgorithm3DES)
			case CAST: return CCAlgorithm(kCCAlgorithmCAST)
			case RC4: return CCAlgorithm(kCCAlgorithmRC4)
			case RC2: return CCAlgorithm(kCCAlgorithmRC2)
			case Blowfish: return CCAlgorithm(kCCAlgorithmBlowfish)
			}
		}
	}

	public struct Options: OptionSetType {
		public var rawValue: UInt32
		public init(rawValue: UInt32) { self.rawValue = rawValue }

		public static let PKCS7Padding = Options(rawValue: 0x0001)
		public static let ECBMode = Options(rawValue: 0x0002)
	}
}
