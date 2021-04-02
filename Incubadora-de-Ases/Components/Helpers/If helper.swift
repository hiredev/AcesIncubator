//
//  If helper.swift
//  Incubadora-de-Ases
//
//

import SwiftUI

//Helper to add properties to items easier
extension View {
    @ViewBuilder
    func `if`<Content: View>(_ condition: Bool, content: (Self) -> Content) -> some View {
        if condition {
            content(self)
        }
        else {
            self
        }
    }
}
