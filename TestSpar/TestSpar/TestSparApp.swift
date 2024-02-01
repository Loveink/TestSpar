//
//  TestSparApp.swift
//  TestSpar
//
//  Created by Александра Савчук on 01.02.2024.
//

import SwiftUI

@main
struct TestSparApp: App {
  @State private var selectedTab: Tab = .main

  var body: some Scene {
      WindowGroup {
        CustomNavigationView()
      }
  }
}
