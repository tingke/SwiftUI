//
//  ContentView.swift
//  UIText
//
//  Created by dosn-001 on 2024/7/4.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .fontWeight(.bold) // 字重
            .font(.title)
            .font(.system(size: 18)) // 字体大小
            .foregroundStyle(.blue) // 前景颜色
            .shadow(color: .black, radius: 10) // 文字阴影
            .background(.orange) // 背景颜色
            .border(.red, width: 3) // 边框
            .blur(radius:  0.3) // 模糊度
            .truncationMode(.head) // 截断
            .lineSpacing(5) // 行间距
            .multilineTextAlignment(.center) // 对齐方式
            .padding()
    }
}

#Preview {
    ContentView()
}
