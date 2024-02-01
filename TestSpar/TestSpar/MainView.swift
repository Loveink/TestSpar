//
//  MainView.swift
//  TestSpar
//
//  Created by Александра Савчук on 01.02.2024.
//

import SwiftUI

struct MainView: View {
  let storageManager = StorageManager.shared
  let product: Product

    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
  MainView(product: StorageManager.shared.getAllProducts()[0])
}
