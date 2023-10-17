//
//  Constants.swift
//  SwiftUIViewInspector
//
//  Created by Sachin Sabat on 2023-10-17.
//

import Foundation

/// An enumeration containing string constants used in the app.
internal enum Strings: String {
    /// The "Last Traded Price" label prefix.
    case ltpRupees = "LTP: ₹"
    /// The "Profit/Loss" label prefix.
    case plRupees = "P/L: ₹"
    case noValue = "-"
    /// The Indian Rupee symbol.
    case rupeeSymbol = "₹"
    /// Stock Detail Header String
    case detailHeader = "Stock Details"
    /// Stock Name String
    case stockName = "Stock Name:"
    /// Stock Quantity String
    case stockQuantity = "Stock Quantity:"
    /// Copy text for fav button accessibility
    case markItAsFavCopyText = "Click to mark it as favourite"
}

/// An enumeration containing CGFloat constants for layout constraints.
internal enum ConstraintConstants: CGFloat {
    case number60 = 60.0
    case number40 = 40.0
    case number25 = 25.0
    case number20 = 20.0
    case number18 = 18.0
    case number15 = 15.0
    case number10 = 10.0
    case number5 = 5.0
}

/// An enumeration representing font names used in the app.
internal enum FontName: String {
    case helveticaBold = "HelveticaNeue-Bold"
    case helvetica = "HelveticaNeue"
}

/// An enumeration containing image names used in the app.
internal enum APP_IMAGES: String {
    case fav = "Favourite"
}
