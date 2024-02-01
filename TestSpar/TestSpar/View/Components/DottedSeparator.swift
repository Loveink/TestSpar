//
//  DottedSeparator.swift
//  TestSpar
//
//  Created by Александра Савчук on 01.02.2024.
//

import SwiftUI

struct DottedSeparator: View {
  var body: some View {
    DotterShape()
      .stroke(style: StrokeStyle(lineWidth: 1, dash: [2]))
      .foregroundColor(.black)
      .frame(height: 1)
  }
}

private struct DotterShape: Shape {
  func path(in rect: CGRect) -> Path {
    Path { path in
      path.move(to: CGPoint(x: rect.minX, y: rect.maxY))
      path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
    }
  }
}

#Preview {
  DottedSeparator()
}

