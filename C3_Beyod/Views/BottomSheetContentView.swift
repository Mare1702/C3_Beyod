//
//  BottomSheetContentView.swift
//  C3_Beyod
//
//  Created by Luis Mario Recinos Hernández  on 18/12/24.
//

import SwiftUI

struct BottomSheetContentView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    ZStack{
        Color("BackgroundGray")
            .ignoresSafeArea()
        BottomSheetContentView()
    }
}
