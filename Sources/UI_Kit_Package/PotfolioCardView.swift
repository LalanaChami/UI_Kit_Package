//
//  SwiftUIView 2.swift
//  
//
//  Created by Lalana Chamika on 2023-11-30.
//

import SwiftUI

@available(iOS 14.0, *)
public struct PotfolioCardView: View {
    
    public var headingTitile : String
    public var icon : String
    public var holdingAmount : String
    public var netChangeAmount : String
    public var netChangePercentage : String
    public var currency : String
    public var lang : String
    
    public init(headingTitile: String, icon: String, holdingAmount: String, netChangeAmount: String, netChangePercentage: String, currency: String, lang: String) {
        
        LocalizationService.shared.setLanguage(lang)
        self.headingTitile = LocalizationService.shared.getLocalizedContent("ABOUT")
        self.icon = icon
        self.holdingAmount = holdingAmount
        self.netChangeAmount = netChangeAmount
        self.netChangePercentage = netChangePercentage
        self.currency = currency
        self.lang = lang
      }
    
    public var body: some View {
        
        ZStack {
            VStack(alignment: .leading, spacing: 20) {
                Text("\(headingTitile)")
                    .font(
                        Font.custom("Inter", size: 20)
                            .weight(.semibold)
                    )
                    .foregroundColor(Color(red: 0.3176, green: 0.102, blue: 0.349))
//                    .border(Color.red)
                
                HStack {
                    ZStack {
                        Image(systemName: "dollarsign.square.fill")
                            .resizable()
                            .foregroundColor(Color(red: 0.6039, green: 0.4314, blue: 0.6275))
                            .frame(width: 20, height: 20)
                    }
                    .frame(width: 50, height: 50)
                    .background(Color(red: 0.9137, green: 0.8275, blue: 0.9294))
                    .cornerRadius(12)
                    .overlay(
                    RoundedRectangle(cornerRadius: 12)
                    .stroke(Color(red: 0.9, green: 0.9, blue: 0.9), lineWidth: 0)
                    )
                    
                    Text("\(holdingAmount)")
                        .font(
                            Font.custom("Inter", size: 30)
                                .weight(.heavy)
                        )
                        .foregroundColor(Color(red: 0.6039, green: 0.4314, blue: 0.6275))
                    Text( " " + "\(currency)")
                        .font(
                            Font.custom("Inter", size: 20)
                                .weight(.heavy)
                        )
                        .frame(alignment: .center)
                        .foregroundColor(Color(red: 0.6039, green: 0.4314, blue: 0.6275))
                }
//                .border(Color.red)
                
                HStack(alignment: .center, spacing: 10) {
                    Image(systemName: "chart.line.uptrend.xyaxis")
                        .resizable()
                        .foregroundColor(Color(red: 0.6039, green: 0.4314, blue: 0.6275))
                        .frame(width: 16, height: 15)
                    
                    Text("\(netChangeAmount)")
                        .font(
                            Font.custom("Inter", size: 15)
                                .weight(.heavy)
                        )
                        .foregroundColor(Color(red: 0.6039, green: 0.4314, blue: 0.6275))
                    
                    Text("(" + "\(netChangePercentage)" + ")")
                        .font(
                            Font.custom("Inter", size: 15)
                                .weight(.heavy)
                        )
                        .foregroundColor(Color(red: 0.6039, green: 0.4314, blue: 0.6275))
                }
                .frame(width: .infinity, height: 20)
                .padding(.top, 20)
                .padding(.leading, 10)
//                .border(Color.red)
                
                
            }
            .frame(minWidth: 0, maxWidth: 260, minHeight: 0, maxHeight: 150, alignment: .topLeading)
//            .border(Color.red)

        }
        .frame(width: 300, height: 200)
        .background(Color(red: 0.9608, green: 0.9294, blue: 0.9686))
        .cornerRadius(24)
        .overlay(
        RoundedRectangle(cornerRadius: 24)
        .stroke(Color(red: 0.9, green: 0.9, blue: 0.9), lineWidth: 0)

        )
        
    }
}


@available(iOS 14.0, *)
struct PotfolioCardView_Previews: PreviewProvider {
    static var previews: some View{
        Group {
            PotfolioCardView(headingTitile: "Portfolio Value", icon: "holding-icon", holdingAmount: "120,000" , netChangeAmount: "+23.44", netChangePercentage: "23%", currency: "AED", lang: "EN")
                .previewLayout(.sizeThatFits)
            
        }
    }
}
