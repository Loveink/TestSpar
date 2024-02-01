//
//  CustomNavigationView.swift
//  TestSpar
//
//  Created by Александра Савчук on 01.02.2024.
//

import SwiftUI

struct CustomNavigationView: View {
  
  private let storageManager = StorageManager.shared
  @State private var selectedTab: Tab = .main
  
  var body: some View {
    NavigationView {
      ZStack(alignment: .bottom) {
        TabView(selection: $selectedTab) {
          MainView(product: storageManager.getAllProducts()[0])
            .tag(Tab.main)
          Text("Каталог")
            .tag(Tab.catalog)
          Text("Корзина")
            .tag(Tab.cart)
          Text("Профиль")
            .tag(Tab.profile)
        }
        
        TabBar(selectedTab: $selectedTab)
      }
      .toolbar {
        ToolbarItem(placement: .navigationBarLeading) {
          Button(action: {}, label: {
            Image(systemName: "arrow.left")
              .foregroundColor(.green)
              .font(.headline.weight(.bold))
          })
        }
        
        ToolbarItemGroup(placement: .primaryAction) {
          Button(action: {}, label: {
            Image(systemName: "doc.plaintext")
              .foregroundColor(.green)
              .font(.callout.weight(.semibold))
          })
          
          Button(action: {}, label: {
            Image(systemName: "square.and.arrow.up")
              .foregroundColor(.green)
              .font(.callout.weight(.semibold))
          })
          
          Button(action: {}, label: {
            Image(systemName: "heart")
              .foregroundColor(.green)
              .font(.callout.weight(.semibold))
          })
        }
      }
    }
  }
}

#Preview {
  CustomNavigationView()
}
