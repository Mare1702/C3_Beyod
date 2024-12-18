//
//  MusicalMatchView.swift
//  C3_Beyod
//
//  Created by Luis Mario Recinos Hernández  on 18/12/24.
//

import SwiftUI

struct MusicalMatchView: View {
    
    var body: some View {
        ZStack {
            //Even though these views are not inside of a ZStack, they are rendered in the order they are being declared in the IDE, in this regard, the text will go on the top of the image here
            Image("WierdoMode")
                .resizable()
                .frame(width: 350, height: 220)
                .cornerRadius(40)
            ZStack{
                Rectangle()
                    .frame(width: 350, height: 70)
                    .background(.ultraThinMaterial)
                Text("12 Matches So Far")
                    .fontWeight(.bold)
                    .foregroundColor(.accentGreen)
                    .font(.system(size: 35))
                    .frame(width: 300, height: 120)
            }
            .padding(.bottom, 200)
        }
        .frame(width: 250, height: 200)
    }
}

#Preview {
    MusicalMatchView()
}
