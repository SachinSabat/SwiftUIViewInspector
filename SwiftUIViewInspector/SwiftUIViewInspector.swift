//
//  ContentView.swift
//  SwiftUIViewInspector
//
//  Created by Sachin Sabat on 2023-10-17.
//

import SwiftUI

struct SwiftUIViewInspector: View {
    /// - Returns: A SwiftUI view hierarchy representing the body of the SwiftUIViewInspector.
    var body: some View {
        VStack(spacing: ConstraintConstants.number20.rawValue) {
            CustomHeaderView()
            StockNameView()
            StockQuantityView()
            LastTradedPriceView()
            ProfitAndLossView()
            FavouriteButton()
                .id(1)
            Spacer()
        }
        .padding(.top, .zero)
    }

    ///
    /// - Returns: A SwiftUI view representing the button for marking the favourite stocks.
    @ViewBuilder
    private func FavouriteButton() -> some View {
        Image(APP_IMAGES.fav.rawValue)
        .resizable()
        .scaledToFit()
        .frame(width: ConstraintConstants.number40.rawValue,
               height: ConstraintConstants.number40.rawValue)
        .accessibilityHint(Strings.markItAsFavCopyText.rawValue)
        .accessibilityAddTraits(.isButton)
    }

    ///
    /// - Returns: A SwiftUI view representing the copy text for Profit and loss view.
    @ViewBuilder
    private func ProfitAndLossView() -> some View {
        HStack() {
            Text(Strings.plRupees.rawValue)
                .modifier(TitleFieldModifier())
            Text(String("58336.5"))
                .modifier(ValueFieldModifier())
            Spacer()
        }
        .padding(.leading, ConstraintConstants.number10.rawValue)
    }

    ///
    /// - Returns: A SwiftUI view representing the copy text for last traded price.
    @ViewBuilder
    private func LastTradedPriceView() -> some View {
        HStack() {
            Text(Strings.ltpRupees.rawValue)
                .modifier(TitleFieldModifier())
            Text(String("100.5"))
                .modifier(ValueFieldModifier())
            Spacer()
        }
        .padding(.leading, ConstraintConstants.number10.rawValue)
    }

    ///
    /// - Returns: A SwiftUI view representing the copy text for stock quantity view.
    @ViewBuilder
    private func StockQuantityView() -> some View {
        HStack() {
            Text(Strings.stockQuantity.rawValue)
                .modifier(TitleFieldModifier())
            Text(String("575.0"))
                .modifier(ValueFieldModifier())
            Spacer()
        }
        .padding(.leading, ConstraintConstants.number10.rawValue)
    }

    ///
    /// - Returns: A SwiftUI view representing the copy text for stock name.
    @ViewBuilder
    private func StockNameView() -> some View {
        HStack() {
            Text(Strings.stockName.rawValue)
                .modifier(TitleFieldModifier())
            Text("IRFC")
                .modifier(ValueFieldModifier())
            Spacer()
        }
        .padding(.leading, ConstraintConstants.number10.rawValue)
    }

    ///
    /// - Returns: A SwiftUI view representing the header view with title and close button.
    @ViewBuilder
    private func CustomHeaderView() -> some View {
        HStack( content: {
            HeaderCopyText()
            Spacer()
        })
        .padding(.top, ConstraintConstants.number10.rawValue)
        .background(Color(UIColor.systemPurple))
        .frame(height: ConstraintConstants.number60.rawValue, alignment: .center)
    }

    ///
    /// - Returns: A SwiftUI view representing the header Copy text view.
    @ViewBuilder
    private func HeaderCopyText() -> some View {
        Text(Strings.detailHeader.rawValue)
            .multilineTextAlignment(.center)
            .padding()
            .foregroundStyle(.white)
            .font(.custom(FontName.helveticaBold.rawValue,
                          size: ConstraintConstants.number20.rawValue))
            .accessibilityAddTraits(.isHeader)
    }
}

/// A SwiftUI modifier representing the title text of the detail view.
struct TitleFieldModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.custom(FontName.helveticaBold.rawValue,
                          size: ConstraintConstants.number18.rawValue))
    }
}
/// A SwiftUI modifier representing the values of corresponding title text of the detail view.
struct ValueFieldModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.custom(FontName.helvetica.rawValue,
                          size: ConstraintConstants.number18.rawValue))
    }
}


#Preview {
    SwiftUIViewInspector()
}
