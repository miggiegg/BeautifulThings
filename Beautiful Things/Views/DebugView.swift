//
//  DebugView.swift
//  Beautiful Things
//
//  Created by Miguel Garcia Gonzalez on 3/6/24.
//

import SwiftUI

struct DebugView: View {
    @Environment(AppModel.self) private var appModel

    var body: some View {
        VStack {
            Button {
                print("DEBUG: BeautifulThings: \(appModel.beautifulThings.count)")
            } label: {
                Text("Print beautifulThings Count")
            }
        }
        .onAppear {
            print("DEBUG: DebugView .onAppear")
            print("DEBUG: BeautifulThings: \(appModel.beautifulThings.count)")
        }
    }
}

#Preview {
    DebugView()
}
