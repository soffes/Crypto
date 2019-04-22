import CommonCrypto

public struct Digest {
	public static func md2(bytes: UnsafeRawBufferPointer, length: UInt32) -> [UInt8] {
		var hash = [UInt8](repeating: 0, count: Int(CC_MD2_DIGEST_LENGTH))
		CC_MD2(bytes.baseAddress, length, &hash)
		return hash
	}

	public static func md4(bytes: UnsafeRawBufferPointer, length: UInt32) -> [UInt8] {
		var hash = [UInt8](repeating: 0, count: Int(CC_MD4_DIGEST_LENGTH))
		CC_MD4(bytes.baseAddress, length, &hash)
		return hash
	}

	public static func md5(bytes: UnsafeRawBufferPointer, length: UInt32) -> [UInt8] {
		var hash = [UInt8](repeating: 0, count: Int(CC_MD5_DIGEST_LENGTH))
		CC_MD5(bytes.baseAddress, length, &hash)
		return hash
	}

	public static func sha1(bytes: UnsafeRawBufferPointer, length: UInt32) -> [UInt8] {
		var hash = [UInt8](repeating: 0, count: Int(CC_SHA1_DIGEST_LENGTH))
		CC_SHA1(bytes.baseAddress, length, &hash)
		return hash
	}

	public static func sha224(bytes: UnsafeRawBufferPointer, length: UInt32) -> [UInt8] {
		var hash = [UInt8](repeating: 0, count: Int(CC_SHA224_DIGEST_LENGTH))
		CC_SHA224(bytes.baseAddress, length, &hash)
		return hash
	}

	public static func sha256(bytes: UnsafeRawBufferPointer, length: UInt32) -> [UInt8] {
		var hash = [UInt8](repeating: 0, count: Int(CC_SHA256_DIGEST_LENGTH))
		CC_SHA256(bytes.baseAddress, length, &hash)
		return hash
	}

	public static func sha384(bytes: UnsafeRawBufferPointer, length: UInt32) -> [UInt8] {
		var hash = [UInt8](repeating: 0, count: Int(CC_SHA384_DIGEST_LENGTH))
		CC_SHA384(bytes.baseAddress, length, &hash)
		return hash
	}

	public static func sha512(bytes: UnsafeRawBufferPointer, length: UInt32) -> [UInt8] {
		var hash = [UInt8](repeating: 0, count: Int(CC_SHA512_DIGEST_LENGTH))
		CC_SHA512(bytes.baseAddress, length, &hash)
		return hash
	}
}
