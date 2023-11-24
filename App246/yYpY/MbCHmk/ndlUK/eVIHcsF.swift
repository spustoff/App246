//
//  euEqMzNBGC.swift
//  App246
//
//  Created by Вячеслав on 11/7/23.
//

import SwiftUI

struct euEqMzNBGC: View {
    
    let telegram: URL
    
    var body: some View {
        
        ZStack {
            
            Color("bg")
                .ignoresSafeArea()
            
            VStack {
                
                Image("users_3")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                VStack(alignment: .center, spacing: 5, content: {
                    
                    Text("Join our Telegram Channel")
                        .foregroundColor(.black)
                        .font(.system(size: 25, weight: .semibold))
                        .multilineTextAlignment(.center)
                    
                    Text("and trade with our team")
                        .foregroundColor(.black.opacity(0.6))
                        .font(.system(size: 15, weight: .regular))
                        .multilineTextAlignment(.center)
                })
                .padding()
                
                Spacer()
                
                Button(action: {
                    
                    UIApplication.shared.open(telegram)
                    
                }, label: {
                    
                    Text("Join")
                        .foregroundColor(.white)
                        .font(.system(size: 15, weight: .medium))
                        .frame(maxWidth: .infinity)
                        .frame(height: 50)
                        .background(RoundedRectangle(cornerRadius: 10).fill(Color(red: 0/255, green: 174/255, blue: 237/255)))
                        .padding()
                })
            }
            .ignoresSafeArea(.all, edges: .top)
            
            VStack {
                
                HStack {
                    
                    Spacer()
                    
                    NavigationLink(destination: {
                        
                        RSldVyAsQe()
                            .navigationBarBackButtonHidden()
                        
                    }, label: {
                        
                        Image(systemName: "xmark")
                            .foregroundColor(.white)
                            .font(.system(size: 16, weight: .medium))
                            .padding(8)
                            .background(Circle().fill(.black.opacity(0.5)))
                    })
                }
                
                Spacer()
            }
            .padding()
        }
    }
}

#Preview {
    euEqMzNBGC(telegram: URL(string: "https")!)
}
