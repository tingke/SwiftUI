//
//  ContentView.swift
//  FoodPicker
//
//  Created by dosn-001 on 2024/10/2.
//

import SwiftUI

struct ContentView: View {
    
    var foods = ["汉堡", "沙拉", "披萨", "义大利麵", "鸡腿便当", "刀削麵", "火锅", "牛肉麵", "关东煮"]
    
    @State private var selectedFood: String?
    
    var body: some View {
        VStack(spacing: 30) {
            Image("dinner")
                .resizable()
                .aspectRatio(contentMode: .fit)
        
            Text("你今天吃什么？").bold()
            
            if selectedFood != .none {
                Text(selectedFood ?? "")
                    .font(.largeTitle)
                    .bold()
                    .foregroundStyle(.green)
                    .id(selectedFood)
                    .transition(.asymmetric(
                        insertion: .opacity.animation(.easeInOut(duration: 0.5).delay(0.2)),
                        removal: .opacity.animation(.easeInOut(duration: 0.4))
                    ))
            }
            
            Button {
                selectedFood = foods.shuffled().filter { $0 != selectedFood }.first
            } label: {
                Text(selectedFood == .none ? "告诉我！" : "换一个")
                    .frame(width: 160)
                    .transformEffect(.identity)
            }.padding(.bottom, -15)
            
            Button {
                selectedFood = .none
            } label: {
                Text("重置").frame(width: 160)
            }.buttonStyle(.bordered)
            
        }
        .padding()
        .frame(maxHeight: .infinity)
        .background(Color(.secondarySystemBackground))
        .font(.title)
        .buttonStyle(.borderedProminent)
        .buttonBorderShape(.capsule)
        .controlSize(.large)
        .animation(.easeInOut(duration: 0.6), value: selectedFood)
    }
}

#Preview {
    ContentView()
}
