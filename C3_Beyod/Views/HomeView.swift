//
//  ContentView.swift
//  C3_Beyo
//
//  Created by Luis Mario Recinos Hernández  on 09/12/24.
//

import SwiftUI

struct HomeView: View {
    
    @State private var appear = false
    @State private var appear2 = false
    @State private var appearBright = false
    let palpitation = 7
    @State private var cuantityOfMusic: Int = 0
    
    var body: some View {
        ZStack{
            
            //Gadrient Mesh
            MeshGradient(
                width: 5,
                height: 7,
                points: [
                    [0.0, 0.0], [0.25, 0.0], [0.5, 0.0], [0.75, 0.0], [1.0, 0.0],
                    [0.0, 0.1666], [0.25, 0.1666], [0.5, 0.1666], [0.75, 0.1666], [1.0, 0.1666],
                    [0.0, 0.3333], [0.25, 0.3333], [0.5, 0.3333], [0.75, 0.3333], [1.0, 0.3333],
                    [0.0, 0.5], [0.25, 0.5], [0.5, 0.5], [0.75, 0.5], [1.0, 0.5],
                    [0.0, 0.6666], [0.25, 0.6666], [0.5, 0.6666], [0.75, 0.6666], [1.0, 0.6666],
                    [0.0, 0.8333], [0.25, 0.8333], [0.5, 0.8333], [0.75, 0.8333], [1.0, 0.8333],
                    [0.0, 1.0], [0.25, 1.0], [0.5, 1.0], [0.75, 1.0], [1.0, 1.0]
//                    [0.0, 0.0], [1.0, 0.0],
//                    [0.0, 0.5], [1.0, 0.5],
//                    [0.0, 1.0], [1.0, 1.0]
                ], colors: [
//                    .blue, .brown,
//                    .yellow, .green,
//                    .purple, .red
//                    Color(UIColor.systemBackground), Color("DeepPurple"), .black,
//                    Color(UIColor.systemBackground), Color("DeepPurple"), .black,
//                    Color(UIColor.systemBackground), Color("DeepPurple"), .black
                    .black, .black, .black, .black, .black,
                    Color("DeepPurple"), Color("DeepRose"), Color("DeepGreen"), appearBright ? Color("BrightYellow") : Color("DeepPurple"), appear ? Color("DeepPurple") : Color("OcassionalBlue"),
                    appear ? Color("DeepRose") : Color("OcassionalBlue"), appear2 ? Color("DeepRed") : Color("OcassionalBlue"), Color("DeepGreen"), appear ? Color("DeepRed") : Color("OcassionalGreen"), Color("DeepRose"),
                    Color("DeepPurple"), Color("DeepGreen"), appear ? Color("DeepPurple") : Color("OcassionalGreen"), Color("DeepRose"), Color("DeepRed"),
                    Color("DeepGreen"), Color("DeepRose"), Color("DeepRed"), Color("DeepGreen"), Color("DeepPurple"),
                    appear2 ? Color("DeepRed") : Color("OcassionalGreen"), Color("DeepPurple"), Color("DeepGreen"), appear2 ? Color("DeepGreen") : Color("OcassionalBlue"), Color("DeepRed"),
                    .black, Color("DeepRed"), .black, .black, Color("DeepRose")
                ])
            .onAppear {
                withAnimation(.easeInOut(duration: Double(palpitation)).repeatForever(autoreverses: true)) {
                    appear.toggle()
                }
                withAnimation(.easeInOut(duration: Double(palpitation - 1)).repeatForever(autoreverses: true)) {
                    appear2.toggle()
                }
                
                
            }
            .ignoresSafeArea()
            
            //CuantityOfMusic
            VStack {
                Text(cuantityOfMusic, format: .number)
                    .contentTransition(.numericText())
                    .font(.system(size: 160))
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                if cuantityOfMusic == 1{
                    Text("Current \nListener")
                        .font(.system(size: 30))
                        .offset(y: -40)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                } else {
                    Text("Current \nListeners")
                        .font(.system(size: 30))
                        .offset(y: -40)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                }
            }
            .frame(width: 170)
            .position(x: 90, y: 100)
            
            ZStack {
                //Hard Coding button
                HStack{
                    Button(){
                        withAnimation(){
                            cuantityOfMusic += 1
                            withAnimation(.easeInOut(duration: 0.5).repeatForever(autoreverses: true)){
                                appearBright.toggle()
                            }
                        }
                    } label: {
                        RoundedRectangle(cornerRadius: 10)
                            .frame(width: 40, height: 40)
                            .foregroundStyle(Color.purple)
                            .opacity(0)
                    }
                    
                    Spacer()
                    
                    Button(){
                        if cuantityOfMusic == 0 {
                            return
                        } else {
                            withAnimation(){
                                cuantityOfMusic -= 1
                                appearBright = false
                            }
                        }
                    } label: {
                        RoundedRectangle(cornerRadius: 10)
                            .frame(width: 40, height: 40)
                            .foregroundStyle(Color.purple)
                            .opacity(0)
                    }
                }
            }   
        }
    }
}

#Preview {
    HomeView()
}
