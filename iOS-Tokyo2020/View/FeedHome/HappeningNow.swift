//
//  HappeningNow.swift
//  iOS-Tokyo2020
//
//  Created by Hojin Ryu on 29/03/21.
//

import SwiftUI

struct HappeningNow: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators:false){
            
            
            VStack(alignment:.leading, spacing:8) {
                Text("Happening Now")
                    .font(.system(size:18))
                    .fontWeight(.semibold)//semibold ??? ou medium??
                    .foregroundColor(Color(red: 32 / 255, green: 43 / 255, blue: 90 / 255))
                
                HStack(spacing:17) {
                    ZStack {
                        RoundedRectangle(cornerRadius: 14, style: .continuous)
                            .fill(Color(red: 240 / 255, green: 238 / 255, blue: 239 / 255))
                            .frame(width: 297, height: 139)
                        VStack(alignment:.leading) {
                            HStack(spacing:147) {
                                Text("Basketball")
                                    .fontWeight(.semibold)//semibold ??? ou medium??
                                    .font(.system(size:18))
                                Text("86'")
                                    .font(.system(size:12))
                            }
                            HStack(spacing:16) {
                                VStack {
                                    Image("1280px-Flag_of_Canada.svg")
                                        .resizable()
                                        .frame(width:65, height: 47)
                                    Text("Canada")
                                        .font(.system(size:11))
                                }
                                Text("2")
                                    .font(.system(size:40))
                                Text("x")
                                    .font(.system(size:18))
                                Text("0")
                                    .font(.system(size:40))
                                
                                VStack {
                                    Image("Bandeira-dos-Estados-Unidos-2000px")
                                        .resizable()
                                        .frame(width:65, height: 47)
                                    Text("Canada")
                                        .font(.system(size:11))
                                }
                            }
                        }
                    }
                    
                    ZStack {
                        RoundedRectangle(cornerRadius: 14, style: .continuous)
                            .fill(Color(red: 240 / 255, green: 238 / 255, blue: 239 / 255))
                            .frame(width: 297, height: 139)
                        VStack(alignment:.leading) {
                            HStack(spacing:147) {
                                Text("Basketball")
                                    .fontWeight(.semibold)//semibold ??? ou medium??
                                    .font(.system(size:18))
                                Text("86'")
                                    .font(.system(size:12))
                            }
                            HStack(spacing:16) {
                                VStack {
                                    Image("1280px-Flag_of_Canada.svg")
                                        .resizable()
                                        .frame(width:65, height: 47)
                                    Text("Canada")
                                        .font(.system(size:11))
                                }
                                Text("2")
                                    .font(.system(size:40))
                                Text("x")
                                    .font(.system(size:18))
                                Text("0")
                                    .font(.system(size:40))
                                
                                VStack {
                                    Image("Bandeira-dos-Estados-Unidos-2000px")
                                        .resizable()
                                        .frame(width:65, height: 47)
                                    Text("Canada")
                                        .font(.system(size:11))
                                }
                            }
                        }
                    }
                }
            }.offset(x:30)
            
            
        }
    }
}

struct HappeningNow_Previews: PreviewProvider {
    static var previews: some View {
        HappeningNow()
    }
}
