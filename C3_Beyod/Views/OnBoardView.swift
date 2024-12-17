//
//  OnBoardView.swift
//  C3_Beyo
//
//  Created by Luis Mario Recinos Hernández  on 16/12/24.
//

import SwiftUI

struct OnBoardView: View {
    
    @Binding var isExpanded: Bool
    
    var body: some View {
        ZStack{
            Color.white
            VStack{
                
                Text("Connect with music")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .padding(.top, 70)
                GifImage("AppDemo")
                    .frame(width: 370, height: 250)
                    .cornerRadius(20)
                HStack{
                    Text("1 Spark")
                        .font(.system(size: 30))
                        .fontWeight(.medium)
                        .multilineTextAlignment(.center)
                    Image(systemName: "equal")
                        .font(.system(size: 20))
                        .padding(.bottom, 1)
                    Text("Someone listening to the same track as you")
                        .font(.system(size: 20))
                        .multilineTextAlignment(.center)
                        .padding(.top, 1)
                        .fontWeight(.bold)
                }
                Button{
                    isExpanded = false
                } label: {
                    ZStack{
                        Color.black
                            .frame(width: 370, height: 70)
                            .cornerRadius(20)
                        Text("Got it")
                            .foregroundColor(.white)
                            .font(.system(size: 30))
                    }
                }
                    
            }
        }
    }
}

#Preview {
    OnBoardView(isExpanded: .constant(true))
}
