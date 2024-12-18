//
//  BottomSheetContentView.swift
//  C3_Beyod
//
//  Created by Luis Mario Recinos Hernández  on 18/12/24.
//

import SwiftUI

struct BottomSheetContentView: View {
    var body: some View {
        VStack{
            Spacer()
            Text("What people have been listening to around you")
                .foregroundColor(.white)
                .fontWeight(.bold)
                .font(.system(size: 26))
                .padding(.vertical, 10)
            ScrollView(.horizontal, showsIndicators: false){
                HStack(spacing: 20){
                    PeopleCommonCardView(albumArt: "verano", albumName: "Un Verano Sin Ti", albumArtist: "Bad Bunny")
                    PeopleCommonCardView(albumArt: "hitMe", albumName: "HIT ME HARD AND SOFT", albumArtist: "Billie Eilish")
                    PeopleCommonCardView(albumArt: "tyler", albumName: "CHROMAKOPIA", albumArtist: "Tyler, The Creator")
                    PeopleCommonCardView(albumArt: "sabrina", albumName: "Short n' Sweet", albumArtist: "Sabrina Carpenter")
                    
                }
            }
            Text("Your")
                .foregroundColor(.white)
                .fontWeight(.bold)
                .font(.system(size: 26)) +
            Text(" musical")
                .foregroundStyle(.red.gradient)
                .fontWeight(.bold)
                .font(.system(size: 36)) +
            Text(" matches with other people")
                .foregroundColor(.white)
                .fontWeight(.bold)
                .font(.system(size: 26))
            MusicalMatchView()
                .padding(.top, 30)
            Spacer()
        }
    }
}

#Preview {
    ZStack{
        Color("BackgroundGray")
            .ignoresSafeArea()
        BottomSheetContentView()
    }
}
