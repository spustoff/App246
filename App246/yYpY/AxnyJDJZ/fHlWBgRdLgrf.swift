//
//  GGTfspgVly.swift
//  App246
//
//  Created by Вячеслав on 11/7/23.
//

import SwiftUI

struct GGTfspgVly: View {
    
    @StateObject var ZwpFhsvTpS = boXwaQAHDG()
    
    var body: some View {
        
        ZStack {
            
            Color("bg")
                .ignoresSafeArea()
            
            VStack {
                
                DatePicker(selection: .constant(Date()), displayedComponents: .date, label: {})
                    .labelsHidden()
                    .datePickerStyle(GraphicalDatePickerStyle())
                    .padding()
                
                if ZwpFhsvTpS.DPLmnkUppc.isEmpty {
                    
                    VStack(alignment: .center, spacing: 5, content: {
                        
                        Text("No data yet.")
                            .foregroundColor(.gray)
                            .font(.system(size: 15, weight: .regular))
                    })
                    .frame(maxHeight: .infinity, alignment: .center)
                    
                } else {
                    
                    ScrollView(.vertical, showsIndicators: true) {
                        
                        LazyVStack {
                            
                            ForEach(ZwpFhsvTpS.DPLmnkUppc, id: \.self) { index in
                            
                                Button(action: {
                                    
                                    if ZwpFhsvTpS.completed_missions.contains(index.name ?? "") {
                                        
                                        if let indexer = ZwpFhsvTpS.completed_missions.firstIndex(of: index.name ?? "") {
                                            
                                            ZwpFhsvTpS.completed_missions.remove(at: indexer)
                                        }
                                        
                                    } else {
                                        
                                        ZwpFhsvTpS.completed_missions.append(index.name ?? "")
                                    }
                                    
                                }, label: {
                                    
                                    HStack(alignment: .top, spacing: 10) {
                                        
                                        Circle()
                                            .stroke(.gray.opacity(0.25))
                                            .frame(width: 27, height: 27)
                                            .overlay (
                                            
                                                ZStack {
                                                    
                                                    Circle()
                                                        .fill(Color("primary"))
                                                        .frame(width: 27, height: 27)
                                                    
                                                    Image(systemName: "checkmark")
                                                        .foregroundColor(.black)
                                                        .font(.system(size: 12, weight: .semibold))
                                                }
                                                    .opacity(ZwpFhsvTpS.completed_missions.contains(index.name ?? "") ? 1 : 0)
                                            )
                                        
                                        VStack(alignment: .leading, spacing: 5, content: {
                                            
                                            Text((index.qFqatObCAP ?? Date()).wYIAhNuCxu(format: "MMM dd - "))
                                                .foregroundColor(.gray)
                                                .font(.system(size: 13, weight:. regular)) +
                                            
                                            Text((index.tBEzOWeSZP ?? Date()).wYIAhNuCxu(format: "MMM dd"))
                                                .foregroundColor(.gray)
                                                .font(.system(size: 13, weight:. regular))
                                            
                                            Text(index.name ?? "")
                                                .foregroundColor(.black)
                                                .font(.system(size: 16, weight: .semibold))
                                                .multilineTextAlignment(.leading)
                                            
                                            Text(index.tqGOorDdPh ?? "")
                                                .foregroundColor(.gray)
                                                .font(.system(size: 14, weight: .regular))
                                                .multilineTextAlignment(.leading)
                                                .lineLimit(2)
                                        })
                                        
                                        Spacer()
                                    }
                                    .padding()
                                })
                            }
                        }
                    }
                }
            }
        }
        .onAppear {
            
            ZwpFhsvTpS.uOazmRTRfY()
        }
    }
}

#Preview {
    GGTfspgVly()
}
