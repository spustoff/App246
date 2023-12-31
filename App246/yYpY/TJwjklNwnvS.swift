//
//  KxVipGqVZK.swift
//  App246
//
//  Created by Вячеслав on 11/7/23.
//

import SwiftUI

struct KxVipGqVZK: View {
    
    var body: some View {
        
        ZStack {
            
            Color("bg")
                .ignoresSafeArea()
            
            Image("logo_big")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 150, height: 150)
            
            ProgressView()
                .frame(maxHeight: .infinity, alignment: .bottom)
                .padding()
        }
    }
}

#Preview {
    KxVipGqVZK()
}
