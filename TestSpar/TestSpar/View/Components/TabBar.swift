//
//  TabBar.swift
//  TestSpar
//
//  Created by Александра Савчук on 01.02.2024.
//

import SwiftUI

enum Tab: String, CaseIterable {
  case main
  case catalog
  case cart
  case profile
  
  var title: String {
    switch self {
    case .main: return "Главная"
    case .catalog: return "Каталог"
    case .cart: return "Корзина"
    case .profile: return "Профиль"
    }
  }
  
  var image: String {
    switch self {
    case .main: return "arrow.up.circle"
    case .catalog: return "rectangle.grid.2x2"
    case .cart: return "cart"
    case .profile: return "person"
    }
  }
}

struct TabBar: View {
  @Binding var selectedTab: Tab
  
  var body: some View {
    HStack {
      ForEach(Tab.allCases, id: \.rawValue) { tab in
        Spacer()
        VStack {
          Image(systemName: "\(tab.image)")
            .font(.title2.weight(.bold))
            .foregroundColor(selectedTab == tab ? .green : .black)
            .onTapGesture {
              withAnimation {
                selectedTab = tab
              }
            }
          
          Text(tab.title)
            .font(.caption)
            .foregroundColor(selectedTab == tab ? .green : .black)
        }
        Spacer()
      }
    }
  }
}

struct TabBarItem<Content: View>: View {
  @Binding var selectedTab: Tab
  let tab: Tab
  let content: () -> Content
  
  var body: some View {
    content()
      .tabItem {
        Image(systemName: tab.image)
        Text(tab.title)
      }
      .tag(tab)
  }
}

#Preview {
  TabBar(selectedTab: .constant(.main))
}
