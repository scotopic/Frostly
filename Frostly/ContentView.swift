//
//  ContentView.swift
//  Frostly
//
//  Created by alexseven on 7/20/20.
//

import SwiftUI

struct ContentView: View {
    
    
    let frostRectSize: CGFloat = 80.0
        
    let data = (1...1000).map { "Item \($0)" }
    
    let columns = [
        GridItem(.adaptive(minimum: 70))
    ]
    
    @State var sliderValue : Double = 0

    private var radians: Double {
        Double.pi*sliderValue
    }

    var body: some View {
        VStack {
            
            ZStack {
                VStack {
                    HStack(spacing: 0) {
                        Color.red
                            .rotationEffect(Angle(radians: radians))
                            .scaleEffect(x: CGFloat((1.0+sliderValue)), y: CGFloat((1.0+sliderValue)), anchor: .center)
                        Color.orange
                            .rotationEffect(Angle(radians: radians))
                            .scaleEffect(x: CGFloat((1.0+sliderValue)), y: CGFloat((1.0+sliderValue)), anchor: .center)
                        Color.yellow
                            .rotationEffect(Angle(radians: radians))
                            .scaleEffect(x: CGFloat((1.0+sliderValue)), y: CGFloat((1.0+sliderValue)), anchor: .center)
                        Color.green
                            .rotationEffect(Angle(radians: radians))
                            .scaleEffect(x: CGFloat((1.0+sliderValue)), y: CGFloat((1.0+sliderValue)), anchor: .center)
                        Color.blue
                            .rotationEffect(Angle(radians: radians))
                            .scaleEffect(x: CGFloat((1.0+sliderValue)), y: CGFloat((1.0+sliderValue)), anchor: .center)
                        Color.purple
                            .rotationEffect(Angle(radians: radians))
                            .scaleEffect(x: CGFloat((1.0+sliderValue)), y: CGFloat((1.0+sliderValue)), anchor: .center)
                        Color.red
                            .rotationEffect(Angle(radians: radians))
                            .scaleEffect(x: CGFloat((1.0+sliderValue)), y: CGFloat((1.0+sliderValue)), anchor: .center)
                    }
                }
                .edgesIgnoringSafeArea(.all)
                
                
                ScrollView {
                    LazyVGrid(columns: columns, spacing: 10) {
                        Frost.chrome
                            .frame(width: frostRectSize, height: frostRectSize, alignment: .center)
                            .cornerRadius(25)
                        Frost.ultraThin
                            .frame(width: frostRectSize, height: frostRectSize, alignment: .center)
                            .cornerRadius(25)
                        Frost.thin
                            .frame(width: frostRectSize, height: frostRectSize, alignment: .center)
                            .cornerRadius(25)
                        Frost.normal
                            .frame(width: frostRectSize, height: frostRectSize, alignment: .center)
                            .cornerRadius(25)
                        Frost.thick
                            .frame(width: frostRectSize, height: frostRectSize, alignment: .center)
                            .cornerRadius(25)
                        Frost.lighter
                            .frame(width: frostRectSize, height: frostRectSize, alignment: .center)
                            .cornerRadius(25)
                        Frost.neutral
                            .frame(width: frostRectSize, height: frostRectSize, alignment: .center)
                            .cornerRadius(25)
                        Frost.darker
                            .frame(width: frostRectSize, height: frostRectSize, alignment: .center)
                            .cornerRadius(25)
                    }
                    .padding(.horizontal)
                }
            }
            
            Slider(value: $sliderValue, in: 0...1, step: 0.01)
        }
        
//        VStack {
//                    Rectangle()
//                        .fill(Color.black)
//                        .frame(width: 200, height: 200)
//
//                    RoundedRectangle(cornerRadius: 25, style: .continuous)
//                        .fill(Color.red)
//                        .frame(width: 200, height: 200)
//                        .opacity(0.8)
//
//                    Capsule()
//                        .fill(Color.green)
//                        .frame(width: 100, height: 50)
//
//                    Ellipse()
//                        .fill(Color.blue)
//                        .frame(width: 100, height: 50)
//
//                    Circle()
//                        .fill(Color.white)
//                        .frame(width: 100, height: 50)
//                }


    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
