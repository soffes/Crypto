//
//  HMACTests.swift
//  Crypto
//
//  Created by Sam Soffes on 12/5/15.
//  Copyright © 2015 Sam Soffes. All rights reserved.
//

import XCTest
import Crypto

class HMACTests: XCTestCase {

	let key = "secret"
	let message = "sam"

	func testMD5() {
		let signature = HMAC.sign(message: message, algorithm: .md5, key: key)
		XCTAssertEqual("0266f2e4980a1540f128da1d32166391", signature)
	}

	func testSHA1() {
		let signature = HMAC.sign(message: message, algorithm: .sha1, key: key)
		XCTAssertEqual("1a90fa4e73686dfca75f5411d9fb81951edf1292", signature)
	}

	func testSHA224() {
		let signature = HMAC.sign(message: message, algorithm: .sha224, key: key)
		XCTAssertEqual("e9c2dc5a9fbd278db52e37a7cbfb9f2897774287daaa0bb33a4f98f5", signature)
	}

	func testSHA256() {
		let signature = HMAC.sign(message: message, algorithm: .sha256, key: key)
		XCTAssertEqual("6d2f3199a75036d1bd819961a149641ebe540aae0b10bbb821f0cb98039b1a7b", signature)
	}

	func testSHA384() {
		let signature = HMAC.sign(message: message, algorithm: .sha384, key: key)
		XCTAssertEqual("2fad06c8d32e66d33c3b24e290e37f59cd4470207d7749cbabbe8ea7d751077badc1e6d18b863b968c81ff92cbeccecd", signature)
	}

	func testSHA512() {
		let signature = HMAC.sign(message: message, algorithm: .sha512, key: key)
		XCTAssertEqual("4b49d3f9dfa51eaf638b85c2887875144ad5dafeacefdcc72bd73f19f2ae2a7ae182ee2e3f6684b7f042d8d122c4558b64be8b072ce9a69a1ceb96aa688cadfd", signature)
	}

	static var allTests = [
		("testMD5", testMD5),
		("testSHA1", testSHA1),
		("testSHA224", testSHA224),
		("testSHA256", testSHA256),
		("testSHA384", testSHA384),
		("testSHA512", testSHA512),
    ]
}
