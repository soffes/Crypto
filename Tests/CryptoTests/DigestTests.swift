//
//  DigestTests.swift
//  CryptoTests
//
//  Created by Sam Soffes on 4/21/15.
//  Copyright (c) 2015 Sam Soffes. All rights reserved.
//

import XCTest
import Crypto

class DigestTests: XCTestCase {
	func testMD2() {
		XCTAssertEqual("3b68484d8f4aa7471d4d7a4f3a3650f9", "sam".md2)
	}

	func testMD4() {
		XCTAssertEqual("cd7d17e2d1b18fe34e1a7cc26c1afdf1", "sam".md4)
	}

	func testMD5() {
		XCTAssertEqual("332532dcfaa1cbf61e2a266bd723612c", "sam".md5)
	}

    func testSHA1() {
        XCTAssertEqual("f16bed56189e249fe4ca8ed10a1ecae60e8ceac0", "sam".sha1)
    }

	func testSHA224() {
		XCTAssertEqual("3e158867fde8c88755ad7d28ac2525c612df7957efb527783ca41328", "sam".sha224)
	}

	func testSHA256() {
		XCTAssertEqual("e96e02d8e47f2a7c03be5117b3ed175c52aa30fb22028cf9c96f261563577605", "sam".sha256)
	}

	func testSHA384() {
		XCTAssertEqual("f43211f34235f416ed799126e46ff3b77155acff484eec2bbe93e081082a30e3dd7462217470747fdc8bc4fb9facf205", "sam".sha384)
	}

	func testSHA512() {
		XCTAssertEqual("aa9a88785afb81fcb66da5b86d0aaf543dd883c8cf1e74f2f42c62195006606c69613170d56d2ecb8db6fb03f5acb6bdd0ffaf54bdf788854ddafc6becfdf3c7", "sam".sha512)
	}

	static var allTests = [
		("testMD2", testMD2),
		("testMD4", testMD4),
		("testMD5", testMD5),
		("testSHA1", testSHA1),
		("testSHA224", testSHA224),
		("testSHA256", testSHA256),
		("testSHA384", testSHA384),
		("testSHA512", testSHA512),
    ]
}
