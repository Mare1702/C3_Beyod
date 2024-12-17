//
//  ExpandingButtonView.swift
//  C3_Beyo
//
//  Created by Luis Mario Recinos Hernández  on 16/12/24.
//

import SwiftUI

struct ExpandingButtonView: View {
    
    @State private var isExpanded = false
    
    var body: some View {
        ZStack {
            
            //If the view is not expanded this view is shown in the background
                //This should be replaced by the HomeView
            HomeView()
                .transition(.opacity)
            
            //When we expland the button, then we summon a new view
                //This should be the onBoarding screen
                    //The BottomSheetView should also appear on this instant
            if isExpanded {
                    OnBoardView()
                    
                        .cornerRadius(40)
                        .ignoresSafeArea()
                        .frame(width: UIScreen.main.bounds.width,
                               height: UIScreen.main.bounds.height)
                    
                    //In order to have the view be summoned from the center
                        .transition(.scale(scale: 0.1, anchor: .center))

            }
            
            
            //Button to activate new view
            Button {
                //Action empty
                withAnimation(.spring(response: 0.6, dampingFraction: 0.8)) {
                    isExpanded.toggle()
                }
            } label: {
                RoundedRectangle(cornerRadius: 10)
                    .frame(width: 40, height: 40)
                    .foregroundColor(.white)
            }
            .animation(.spring(response: 0.6, dampingFraction: 0.8), value: isExpanded)
                // Long press gesture
            
//            .onLongPressGesture(minimumDuration: 0.8) { // Cambia el tiempo según prefieras
//                withAnimation(.spring(response: 0.6, dampingFraction: 0.8)) {
//                    isExpanded.toggle()
//                }
            }
        }
    }


#Preview {
    ExpandingButtonView()
}
