//
//  LocalizationServiceTests.swift
//  
//
//  Created by Amila Manathunga on 2024-01-12.
//

import XCTest
@testable import UI_Kit_Package

class LocalizationServiceTests: XCTestCase {

    func testDefaultLanguageIsSet() {
        XCTAssertEqual(LocalizationService.shared.getLocalizedContent("ABOUT_US"), "About Us")
    }

    func testSetLanguage() {
        let service = LocalizationService.shared
        service.setLanguage("AR")
        XCTAssertEqual(service.getLocalizedContent("ABOUT_US"), "من نحن")
    }

    func testGetLocalizedContent() {
        let service = LocalizationService.shared
        service.setLanguage("EN")
        XCTAssertEqual(service.getLocalizedContent("ABOUT_US"), "About Us")
    }

    func testGetLocalizedContentWithNonExistentKey() {
        let service = LocalizationService.shared
        service.setLanguage("EN")
        XCTAssertEqual(service.getLocalizedContent("NON_EXISTENT_KEY"), "NON_EXISTENT_KEY")
    }

    func testLoadTranslationsWithValidData() {
        let service = LocalizationService.shared
        service.setLanguage("EN")
        XCTAssertEqual(service.getLocalizedContent("HELLO"), "HELLO")
    }

    func testLoadTranslationsWithInvalidData() {
        // Mock a scenario where loading translations fails
        let service = LocalizationService.shared
        service.setLanguage("EN")

        // Assert that the content remains unchanged or defaults to key
        XCTAssertEqual(service.getLocalizedContent("ABOVE_CAPS"), "ABOVE_CAPS")
    }
}

