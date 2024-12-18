//
//  BottomSheet.swift
//  C3_Beyo
//
//  Created by Luis Mario Recinos Hernández  on 13/12/24.
//

import SwiftUI

struct BottomSheetView: View {
    
    @State var translation: CGSize = .zero
    @State var offsetY: CGFloat = 10
    
    var body: some View {
        ZStack{
            content
            
            Image(systemName: "xmark.circle.fill")
                .fontWeight(.bold)
                .foregroundColor(.white)
                .background(Color("BackgroundGray"))
                //.clipShape(Circle())

            
        }
    }
    
    var content: some View {
            //The proxy value will give us the ability to track the size of the screen where the App is running in, regardless of the device
            GeometryReader { proxy in
                
                
                //We can display the contesnts of the BottomSheetView here intead of the Text("Card")
                Text("Card")
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color("BackgroundGray"))
                    .mask(RoundedRectangle(cornerRadius: 30, style: .continuous))
                
                
                
                //The offset is controled by the value generated by the drag gesture, if we tie it to the y axis of the offset value, then we end up with a modal we can control
                    .offset(y: translation.height + offsetY)
                    .gesture(
                        DragGesture()
                            .onChanged{ value in
                                translation = value.translation
                            }
                            .onEnded { value in//Intended for interactive animation
                                //Velocity at the beginning
                                //Smoothness at the end
                                withAnimation (.interactiveSpring(response: 0.5, dampingFraction: 0.7)){
                                    
                                    let snap = translation.height + offsetY
                                    let quarter = proxy.size.height / 4
                                    print("Quarter = \(quarter)")
                                    
                                    if snap > quarter * 2 {
                                        print("Currently at the bottom, snap = \(snap)")
                                        offsetY = quarter * 3.5
                                    } else {
                                        print("Currently at the top, snap = \(snap)")
                                        offsetY = 10
                                    }
                                    
                                    translation = .zero
                                }
                            }
                    )
                    .ignoresSafeArea(edges: .bottom)
            }
    }
}

#Preview {
    BottomSheetView()
        .background(.blue)
}
