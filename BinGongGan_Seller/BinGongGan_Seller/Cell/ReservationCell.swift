//
//  ReservationCell.swift
//  BinGongGan_Seller
//
//  Created by 박채영 on 2023/09/05.
//

import SwiftUI
import BinGongGanCore


struct ReservationCell: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                ReservationDeadlineCell()
                Spacer()
            }
            .padding(.bottom, 10)
            HStack {
                Text("ABCD키친")
                    .font(.title3)
                    .bold()
                
                Text("#132")
                    .font(.title3)
                    .bold()
            }
            .padding(.bottom, 10)
            
            HStack {
                Text("인원")
                    .font(.subheadline)
                Spacer()
                Text("오영석 외 3명")
            }
            .padding(.bottom, 5)
            
            HStack{
                Text("일정")
                    .font(.subheadline)
                Spacer()
                Text("09월 13일 11:00 - 12:00")
            }
            .padding(.bottom, 5)
            
            HStack{
                Text("번호")
                    .font(.subheadline)
                Spacer()
                Image(systemName: "phone.fill")
                Text("010-7320-9330")
            }
        }
        .padding(.horizontal, 20)
        .padding(.vertical, 15)
        .frame(maxWidth: .infinity)
        .foregroundColor(Color.myPrimary)
        .background(Color.myWhite)
        .cornerRadius(15)
    }
}

struct ReservationCell_Previews: PreviewProvider {
    static var previews: some View {
        ReservationCell()
    }
}
