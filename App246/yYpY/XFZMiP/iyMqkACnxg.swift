//
//  eCUpekmfbY.swift
//  App246
//
//  Created by Вячеслав on 11/7/23.
//

import SwiftUI

struct eCUpekmfbY: View {
    
    @StateObject var ZwpFhsvTpS = qegcINwKKF()
    
    var body: some View {
        
        ZStack {
            
            Color("bg")
                .ignoresSafeArea()
            
            VStack {
                
                Text("Income")
                    .foregroundColor(.black)
                    .font(.system(size: 16, weight: .medium))
                    .padding()
                
                NavigationLink(destination: {
                    
                    uaKRSASzCe()
                        .navigationBarBackButtonHidden()
                    
                }, label: {
                    
                    Image("graph")
                        .background(Color.black)
                        .cornerRadius(20)
                        .overlay (
                        
                            Text("Analyze the profit on the chart")
                                .foregroundColor(.white)
                                .font(.system(size: 13, weight: .medium))
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .frame(maxHeight: .infinity, alignment: .top)
                                .padding()
                        )
                })
                
                if ZwpFhsvTpS.IyowIEriNE.isEmpty {
                    
                    VStack(alignment: .center, spacing: 5, content: {
                        
                        Text("No income yet.")
                            .foregroundColor(.black)
                            .font(.system(size: 16, weight: .semibold))
                            .multilineTextAlignment(.center)
                        
                        Text("There will be income on your projects here")
                            .foregroundColor(.gray)
                            .font(.system(size: 15, weight: .regular))
                            .multilineTextAlignment(.center)
                    })
                    .frame(maxHeight: .infinity, alignment: .center)
                    
                } else {
                    
                    ScrollView(.vertical, showsIndicators: true) {
                        
                        LazyVStack {
                            
                            ForEach(ZwpFhsvTpS.IyowIEriNE, id: \.self) { index in
                            
                                VStack(alignment: .center, spacing: 15, content: {
                                    
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

                                    Button(action: {
                                        
                                        ZwpFhsvTpS.ieOmsoSrHA = index
                                        
                                        withAnimation(.spring()) {
                                            
                                            ZwpFhsvTpS.XLrBbcQGwo = true
                                        }
                                        
                                    }, label: {
                                        
                                        if index.income == 0 {
                                            
                                            Text("Add income")
                                                .foregroundColor(.black)
                                                .font(.system(size: 15, weight: .medium))
                                                .frame(maxWidth: .infinity)
                                                .frame(height: 45)
                                                .background(RoundedRectangle(cornerRadius: 15).fill(.white))
                                            
                                        } else {
                                            
                                            HStack {
                                                
                                                Text("Income")
                                                    .foregroundColor(.gray)
                                                    .font(.system(size: 16, weight: .regular))
                                                
                                                Spacer()
                                                
                                                Text("$\(index.income)")
                                                    .foregroundColor(.orange)
                                                    .font(.system(size: 18, weight: .semibold))
                                            }
                                            .frame(maxWidth: .infinity)
                                            .frame(height: 45)
                                            .padding(.horizontal)
                                            .background(RoundedRectangle(cornerRadius: 15).fill(.white))
                                        }
                                    })
                                })
                                .padding()
                            }
                        }
                    }
                }
            }
        }
        .overlay (
        
            ZStack {
                
                Color.black.opacity(ZwpFhsvTpS.XLrBbcQGwo ? 0.5 : 0)
                    .ignoresSafeArea()
                    .onTapGesture() {
                        
                        withAnimation(.spring()) {
                            
                            ZwpFhsvTpS.XLrBbcQGwo = false
                        }
                        
                        ZwpFhsvTpS.hKRqjuEoaO = ""
                    }
                
                VStack {
                    
                    Text(ZwpFhsvTpS.ieOmsoSrHA?.name ?? "nil name")
                        .foregroundColor(.black)
                        .font(.system(size: 19, weight: .semibold))
                        .multilineTextAlignment(.center)
                    
                    ZStack(alignment: .leading, content: {
                        
                        Text("Income")
                            .foregroundColor(.gray)
                            .font(.system(size: 15, weight: .regular))
                            .opacity(ZwpFhsvTpS.hKRqjuEoaO.isEmpty ? 1 : 0)
                        
                        TextField("", text: $ZwpFhsvTpS.hKRqjuEoaO)
                            .foregroundColor(.black)
                            .font(.system(size: 15, weight: .regular))
                            .keyboardType(.decimalPad)
                    })
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 15).fill(.white))
                    
                    HStack {
                        
                        Button(action: {
                            
                            withAnimation(.spring()) {
                                
                                ZwpFhsvTpS.XLrBbcQGwo = false
                            }
                            
                            ZwpFhsvTpS.hKRqjuEoaO = ""
                            
                        }, label: {
                            
                            Text("Cancel")
                                .foregroundColor(.black)
                                .font(.system(size: 15, weight: .medium))
                                .frame(maxWidth: .infinity)
                                .frame(height: 45)
                                .background(RoundedRectangle(cornerRadius: 15).fill(Color.white))
                        })
                        
                        Spacer()
                        
                        Button(action: {
                            
                            CoreDataStack.shared.uYQLzhsEiE(forName: ZwpFhsvTpS.ieOmsoSrHA?.name ?? "", withIncome: Int16(ZwpFhsvTpS.hKRqjuEoaO) ?? 0)
                            
                            ZwpFhsvTpS.ODVRKgfzgp()
                            
                            withAnimation(.spring()) {
                                
                                ZwpFhsvTpS.XLrBbcQGwo = false
                            }
                            
                            ZwpFhsvTpS.hKRqjuEoaO = ""
                            
                        }, label: {
                            
                            Text("Save")
                                .foregroundColor(.black)
                                .font(.system(size: 15, weight: .medium))
                                .frame(maxWidth: .infinity)
                                .frame(height: 45)
                                .background(RoundedRectangle(cornerRadius: 15).fill(Color("primary")))
                        })
                        .opacity(ZwpFhsvTpS.hKRqjuEoaO.isEmpty ? 0.5 : 1)
                        .disabled(ZwpFhsvTpS.hKRqjuEoaO.isEmpty ? true : false)
                    }
                }
                .padding()
                .frame(maxWidth: .infinity)
                .background(RoundedRectangle(cornerRadius: 15).fill(Color("bg")))
                .padding(.horizontal)
                .offset(y: ZwpFhsvTpS.XLrBbcQGwo ? 0 : UIScreen.main.bounds.height)
            }
        )
        .onAppear {
            
            ZwpFhsvTpS.ODVRKgfzgp()
        }
    }
}

#Preview {
    eCUpekmfbY()
}
