//
//  PeopleCommonCardView.swift
//  C3_Beyod
//
//  Created by Luis Mario Recinos Hernández  on 18/12/24.
//

import SwiftUI


//Apple music component that displays almbums that have been heard by others in your surroundings
struct PeopleCommonCardView: View {
    
    let albumArt: String
    let albumName: String
    let albumArtist: String
    
    var body: some View {
        VStack {
            VStack {
                Image(albumArt)
                    .resizable()
                    .frame(width: 300, height: 300)
                    .cornerRadius(40)
                    .padding(.bottom, -77)
                ZStack{
                    Rectangle()
                        .frame(width: 300, height: 70)
                        .background(.ultraThinMaterial)
                        .cornerRadius(30)
                    VStack{
                        Text(albumName)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .font(.system(size: 20))
                        Text(albumArtist)
                            .font(.system(size: 15))
                            .foregroundColor(.white)
                    }
                }
            }
        }
    }
}

#Preview {
    ZStack{
        Color("BackgroundGray")
            .ignoresSafeArea()
        PeopleCommonCardView(albumArt: "verano", albumName: "Un Verano Sin Ti", albumArtist: "Bad Bunny")
    }
}
