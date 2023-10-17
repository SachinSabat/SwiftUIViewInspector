//
//  SwiftUIViewInspectorTests.swift
//  SwiftUIViewInspectorTests
//
//  Created by Sachin Sabat on 2023-10-17.
//

import XCTest
import ViewInspector
@testable import SwiftUIViewInspector

final class SwiftUIViewInspectorTests: XCTestCase {

    private var screenWidth: CGFloat {
        return UIScreen.main.bounds.size.width
    }

    private var screenHieght: CGFloat {
        return UIScreen.main.bounds.size.height
    }

    func test_SwiftUIViewInspector_Header_Text() throws {
        /// Given
        let view = SwiftUIViewInspector()

        /// When
        let detailHeader = try view
            .inspect()
            .find(text: Strings.detailHeader.rawValue)

        let fontStyle = try detailHeader.attributes().font()

        /// Then
        XCTAssertEqual(fontStyle, .custom(FontName.helveticaBold.rawValue,
                                          size: ConstraintConstants.number20.rawValue))
        XCTAssertEqual(Strings.detailHeader.rawValue, try detailHeader.string())
        XCTAssertEqual(try detailHeader.multilineTextAlignment(), .center)
    }

    func test_SwiftUIViewInspector_StocksName_Text() throws {
        /// Given
        let view = SwiftUIViewInspector()

        /// When
        let stockName = try view
            .inspect()
            .find(text: Strings.stockName.rawValue)
            .string()

        let stockNameData = try view
            .inspect()
            .find(text: "IRFC")
            .string()

        /// Then
        XCTAssertEqual(Strings.stockName.rawValue, stockName)
        XCTAssertEqual("IRFC", stockNameData)
    }

    func test_SwiftUIViewInspector_StocksQuantity_Text() throws {
        /// Given
        let view = SwiftUIViewInspector()

        /// When
        let stockQuantity = try view
            .inspect()
            .find(text: Strings.stockQuantity.rawValue)
            .string()

        let stockQuantityData = try view
            .inspect()
            .find(text: "575.0")
            .string()

        /// Then
        XCTAssertEqual(Strings.stockQuantity.rawValue, stockQuantity)
        XCTAssertEqual("575.0", stockQuantityData)
    }

    func test_SwiftUIViewInspector_StocksLtp_Text() throws {
        /// Given
        let view = SwiftUIViewInspector()

        /// When
        let ltpRupees = try view
            .inspect()
            .find(text: Strings.ltpRupees.rawValue)
            .string()

        let ltpRupeesData = try view
            .inspect()
            .find(text: "100.5")
            .string()

        /// Then
        XCTAssertEqual(Strings.ltpRupees.rawValue, ltpRupees)
        XCTAssertEqual("100.5", ltpRupeesData)
    }

    func test_SwiftUIViewInspector_StocksPL_Text() throws {
        /// Given
        let view = SwiftUIViewInspector()

        /// When
        let plRupees = try view
            .inspect()
            .find(text: Strings.plRupees.rawValue)
            .string()

        let plRupeesData = try view
            .inspect()
            .find(text: "58336.5")
            .string()

        /// Then
        XCTAssertEqual(Strings.plRupees.rawValue, plRupees)
        XCTAssertEqual("58336.5", plRupeesData)
    }

    func test_SwiftUIViewInspector_StocksFav_UnSelected_Button() throws {
        /// Given
        let view = SwiftUIViewInspector()

        /// When
        let favButton = try view
            .inspect()
            .find(viewWithId: 1)

        /// Then
        XCTAssertEqual(try favButton.accessibilityHint().string(), Strings.markItAsFavCopyText.rawValue)
        XCTAssertEqual(try favButton.image().actualImage().name(), APP_IMAGES.fav.rawValue)
        XCTAssertEqual(try favButton.fixedFrame().width, ConstraintConstants.number40.rawValue)
        XCTAssertEqual(try favButton.fixedFrame().height, ConstraintConstants.number40.rawValue)
    }
}
