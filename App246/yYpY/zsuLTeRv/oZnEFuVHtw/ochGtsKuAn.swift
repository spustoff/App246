//
//  YoVHrsyeel.swift
//  App246
//
//  Created by Вячеслав on 11/7/23.
//

import SwiftUI

struct YoVHrsyeel: View {
    
    @StateObject var ZwpFhsvTpS: boXwaQAHDG
    
    @Environment(\.presentationMode) var router
    
    var body: some View {
        
        ZStack {
            
            Color("bg")
                .ignoresSafeArea()
            
            VStack {
                
                ZStack {
                    
                    Text("New Mission")
                        .foregroundColor(.black)
                        .font(.system(size: 16, weight: .medium))
                    
                    HStack {
                        
                        Button(action: {
                            
                            router.wrappedValue.dismiss()
                            
                        }, label: {
                            
                            HStack {
                                
                                Image(systemName: "chevron.left")
                                    .foregroundColor(.orange)
                                    .font(.system(size: 16, weight: .regular))
                                
                                Text("Back")
                                    .foregroundColor(.orange)
                                    .font(.system(size: 16, weight: .regular))
                            }
                        })
                        
                        Spacer()
                    }
                }
                .padding([.horizontal, .top])
                
                ScrollView(.vertical, showsIndicators: true) {
                    
                    LazyVStack {
                        
                        ZStack(alignment: .leading, content: {
                            
                            Text("Mission Name")
                                .foregroundColor(.gray)
                                .font(.system(size: 15, weight: .regular))
                                .opacity(ZwpFhsvTpS.name.isEmpty ? 1 : 0)
                            
                            TextField("", text: $ZwpFhsvTpS.name)
                                .foregroundColor(.black)
                                .font(.system(size: 15, weight: .regular))
                        })
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 15).fill(.white))
                        
                        ZStack(alignment: .leading, content: {
                            
                            Text("Comment")
                                .foregroundColor(.gray)
                                .font(.system(size: 15, weight: .regular))
                                .opacity(ZwpFhsvTpS.tqGOorDdPh.isEmpty ? 1 : 0)
                            
                            TextField("", text: $ZwpFhsvTpS.tqGOorDdPh)
                                .foregroundColor(.black)
                                .font(.system(size: 15, weight: .regular))
                        })
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 15).fill(.white))
                        
                        HStack {
                            
                            Text("Starts")
                                .foregroundColor(.black)
                                .font(.system(size: 15, weight: .regular))
                            
                            Spacer()
                            
                            DatePicker(selection: $ZwpFhsvTpS.qFqatObCAP, displayedComponents: .date, label: {})
                                .labelsHidden()
                        }
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 15).fill(.white))
                        
                        HStack {
                            
                            Text("Ends")
                                .foregroundColor(.black)
                                .font(.system(size: 15, weight: .regular))
                            
                            Spacer()
                            
                            DatePicker(selection: $ZwpFhsvTpS.tBEzOWeSZP, displayedComponents: .date, label: {})
                                .labelsHidden()
                        }
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 15).fill(.white))
                    }
                    .padding()
                }
                
                Spacer()
                
                Button(action: {
                    
                    ZwpFhsvTpS.gXQGahzkcw(completion: {
                        
                        ZwpFhsvTpS.name = ""
                        ZwpFhsvTpS.tqGOorDdPh = ""
                        
                        ZwpFhsvTpS.uOazmRTRfY()
                        
                        router.wrappedValue.dismiss()
                    })
                    
                }, label: {
                    
                    Text("Save")
                        .foregroundColor(.black)
                        .font(.system(size: 15, weight: .medium))
                        .frame(maxWidth: .infinity)
                        .frame(height: 50)
                        .background(RoundedRectangle(cornerRadius: 10).fill(Color("primary")))
                        .padding()
                })
                .opacity(ZwpFhsvTpS.name.isEmpty || ZwpFhsvTpS.tqGOorDdPh.isEmpty ? 0.5 : 1)
                .disabled(ZwpFhsvTpS.name.isEmpty || ZwpFhsvTpS.tqGOorDdPh.isEmpty ? true : false)
            }
        }
    }
}

#Preview {
    YoVHrsyeel(ZwpFhsvTpS: boXwaQAHDG())
}
