//
//  ioOriGQWrZ.swift
//  App246
//
//  Created by Вячеслав on 11/7/23.
//

import SwiftUI

struct ioOriGQWrZ: View {
    
    @Binding var xSYhTkbQOS: Tab
    
    var body: some View {
        
        HStack {
            
            ForEach(Tab.allCases, id: \.self) { index in
                
                Button(action: {
                    
                    xSYhTkbQOS = index
                    
                }, label: {
                    
                    VStack(alignment: .center, spacing: 6, content: {
                        
                        Image(index.rawValue)
                            .renderingMode(.template)
                            .foregroundColor(xSYhTkbQOS == index ? Color.black : Color.gray)
                            .frame(width: 22, height: 22)
                    })
                    .frame(maxWidth: .infinity)
                })
            }
        }
        .frame(maxWidth: .infinity)
        .padding(.horizontal)
        .padding(.top, 20)
        .padding(.bottom, 45)
        .background(Color.white)
    }
}

enum Tab: String, CaseIterable {
    
    case Projects = "Projects"
    
    case Missions = "Missions"
    
    case Income = "Income"
    
    case Calendar = "Calendar"
    
}

#Preview {
    EMLkCiZdGd()
}


