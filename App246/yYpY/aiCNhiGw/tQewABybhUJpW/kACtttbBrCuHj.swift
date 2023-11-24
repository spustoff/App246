//
//  gcVMZBOOrq.swift
//  App246
//
//  Created by Вячеслав on 11/7/23.
//

import SwiftUI

struct gcVMZBOOrq: View {
    
    @Environment(\.presentationMode) var router
    
    var body: some View {
        
        ZStack {
            
            Color("bg")
                .ignoresSafeArea()
            
            VStack {
                
                ZStack {
                    
                    Text("Project")
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
                        
                        Text("comfdskfsd fsdof ds")
                            .foregroundColor(.black)
                            .font(.system(size: 16, weight: .regular))
                            .padding()
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .background(RoundedRectangle(cornerRadius: 15).fill(.white))
                        
                        Text("423543gfd gdf gffdsfsdfsdfsdfdsfdsfsdfdsfsd")
                            .foregroundColor(.black)
                            .font(.system(size: 16, weight: .regular))
                            .padding()
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .background(RoundedRectangle(cornerRadius: 15).fill(.white))
                        
                        Text("comfdskfsd fsdof ds")
                            .foregroundColor(.black)
                            .font(.system(size: 16, weight: .regular))
                            .padding()
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .background(RoundedRectangle(cornerRadius: 15).fill(.white))
                        
                        HStack {
                            
                            Text("Starts")
                                .foregroundColor(.black)
                                .font(.system(size: 16, weight: .regular))
                            
                            Spacer()
                            
                            DatePicker(selection: .constant(Date()), displayedComponents: .date, label: {})
                                .labelsHidden()
                        }
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 15).fill(.white))
                        
                        HStack {
                            
                            Text("Ends")
                                .foregroundColor(.black)
                                .font(.system(size: 16, weight: .regular))
                            
                            Spacer()
                            
                            DatePicker(selection: .constant(Date()), displayedComponents: .date, label: {})
                                .labelsHidden()
                        }
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 15).fill(.white))
                    }
                    .padding()
                }
                
                Spacer()
                
                Button(action: {
                    
                    router.wrappedValue.dismiss()
                    
                }, label: {
                    
                    Text("Done")
                        .foregroundColor(.black)
                        .font(.system(size: 15, weight: .medium))
                        .frame(maxWidth: .infinity)
                        .frame(height: 50)
                        .background(RoundedRectangle(cornerRadius: 10).fill(Color("primary")))
                        .padding()
                })
            }
        }
    }
}

#Preview {
    gcVMZBOOrq()
}
