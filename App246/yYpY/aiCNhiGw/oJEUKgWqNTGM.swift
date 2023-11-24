//
//  GibMqYcDZv.swift
//  App246
//
//  Created by Вячеслав on 11/7/23.
//

import SwiftUI

struct GibMqYcDZv: View {
    
    @StateObject var ZwpFhsvTpS = qegcINwKKF()
    
    var body: some View {
        
        ZStack {
            
            Color("bg")
                .ignoresSafeArea()
            
            VStack {
                
                Text("Projects")
                    .foregroundColor(.black)
                    .font(.system(size: 16, weight: .medium))
                    .padding()
                
                if ZwpFhsvTpS.IyowIEriNE.isEmpty {
                    
                    VStack(alignment: .center, spacing: 5, content: {
                        
                        Text("No projects yet.")
                            .foregroundColor(.gray)
                            .font(.system(size: 15, weight: .regular))
                    })
                    .frame(maxHeight: .infinity, alignment: .center)
                    
                } else {
                    
                    ScrollView(.vertical, showsIndicators: true) {
                        
                        LazyVStack {
                            
                            ForEach(ZwpFhsvTpS.IyowIEriNE, id: \.self) { index in
                            
                                HStack(alignment: .top) {
                                    
                                    VStack(alignment: .leading, spacing: 5, content: {
                                        
                                        Text((index.qFqatObCAP ?? Date()).wYIAhNuCxu(format: "MMM dd - "))
                                            .foregroundColor(.gray)
                                            .font(.system(size: 13, weight:. regular)) +
                                        
                                        Text((index.tBEzOWeSZP ?? Date()).wYIAhNuCxu(format: "MMM dd"))
                                            .foregroundColor(.gray)
                                            .font(.system(size: 13, weight:. regular))
                                        
                                        Text(index.name ?? "")
                                            .foregroundColor(.black)
                                            .font(.system(size: 16, weight: .medium))
                                            .multilineTextAlignment(.leading)
                                        
                                        Text(index.tqGOorDdPh ?? "")
                                            .foregroundColor(.gray)
                                            .font(.system(size: 14, weight: .regular))
                                            .multilineTextAlignment(.leading)
                                            .lineLimit(2)
                                    })
                                    
                                    Spacer()
                                    
                                    VStack(alignment: .trailing, spacing: 5, content: {
                                        
                                        Text("Budget")
                                            .foregroundColor(.gray)
                                            .font(.system(size: 13, weight: .regular))
                                        
                                        Text("$\(index.gROOdOOYPv)")
                                            .foregroundColor(.black)
                                            .font(.system(size: 15, weight: .semibold))
                                    })
                                }
                                .padding()
                            }
                        }
                    }
                }
            }
            
            VStack {
                
                Spacer()
                
                HStack {
                    
                    Spacer()
                    
                    NavigationLink(destination: {
                        
                        HGLmFsnCOF(ZwpFhsvTpS: ZwpFhsvTpS)
                            .navigationBarBackButtonHidden()
                        
                    }, label: {
                        
                        HStack {
                            
                            Image(systemName: "plus")
                                .foregroundColor(.black)
                                .font(.system(size: 13, weight: .medium))
                                .frame(width: 28, height: 28)
                                .background(Circle().fill(.white))
                            
                            Text("New")
                                .foregroundColor(.black)
                                .font(.system(size: 14, weight: .medium))
                        }
                        .padding(10)
                        .background(Capsule().fill(Color("primary")))
                    })
                }
            }
            .padding()
        }
        .onAppear {
            
            ZwpFhsvTpS.ODVRKgfzgp()
        }
    }
}

#Preview {
    GibMqYcDZv()
}
