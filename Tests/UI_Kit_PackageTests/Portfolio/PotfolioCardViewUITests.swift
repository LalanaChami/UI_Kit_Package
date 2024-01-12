//
//  PotfolioCardViewUITests.swift
//  
//
//  Created by Lalana Chamika on 2023-12-12.
//

import SwiftUI
import XCTest
import UI_Kit_Package

@available(iOS 14.0, *)
final class PotfolioCardViewUITests: XCTestCase {
    
    func testPotfolioCardViewRendering() {
            let view = PotfolioCardView(
                headingTitile: "Portfolio Value",
                icon: "holding-icon",
                holdingAmount: "120,000",
                netChangeAmount: "+23.44",
                netChangePercentage: "23%",
                currency: "AED",
                lang: "EN"
            )

            let hostingController = UIHostingController(rootView: view)

            XCTAssertNotNil(hostingController.view, "View should be rendered")
    }

}
