//
//  Helper_SwiftUI.swift
//  Learning_SwiftUI
//
//  Created by Nayan Dave on 21/10/23.
//

import SwiftUI

/// `Fetches Current Screen Size`
///  - We can use `Height` and `Width` by dot notation of this variable.
var screenSize: CGSize {
    guard let window = UIApplication.shared.connectedScenes.first as? UIWindowScene else {
        return .zero
    }
    return window.screen.bounds.size
}
