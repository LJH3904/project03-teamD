
//
//  DetailAnnouncementView.swift
//  BinGongGan_User
//
//  Created by 임대진 on 2023/09/12.
//

import SwiftUI

import BinGongGanCore
struct Announcement1: Identifiable {
    let id: UUID = UUID()
    let title: String
    let content: String
    let announcementType: AnnouncementType1
    let createdAt: String
}

extension Announcement1 {
    static let sampleAnnouncement: [Announcement1] = [
        Announcement1(title: "구형 룸 업데이트", content: "오래되었던 룸이 새롭게 재오픈 하였습니다.", announcementType: .update, createdAt: "2023-09-05"),
        Announcement1(title: "강남 지점 오픈!", content: "드디어 오픈 됐습니다.", announcementType: .notice, createdAt: "2023-09-05"),
        Announcement1(title: "강동 지점 키오스크 장애", content: "키오스크 고장으로 모바일 예약만 가능합니다.", announcementType: .error, createdAt: "2023-09-04"),
    ]
}
enum AnnouncementType1: String {
    case notice = "[공지]"
    case update = "[업데이트]"
    case error = "[장애]"
}
struct DetailAnnouncementView: View {
    @Environment(\.dismiss) private var dismiss
    @State var isShowingSheet: Bool = false
    @State var sheetText: String = ""
    private let screenWidth = UIScreen.main.bounds.width
    private let screenheight = UIScreen.main.bounds.height
    var body: some View {
        VStack {
            ForEach(Announcement1.sampleAnnouncement) { announcement in
                Button {
                    isShowingSheet.toggle()
                    sheetText = announcement.content
                } label: {
                    VStack {
                        HStack {
                            Text("\(announcement.announcementType.rawValue)")
                                .font(.captionBold)
                            Text("\(announcement.title)")
                                .padding(.leading, -5)
                            Spacer()
                            Text("\(announcement.createdAt)")
                                .foregroundColor(.myMediumGray)
                        }
                        .font(.captionRegular)
                    }
                    .padding(.vertical, 10)
                }
            }
            .background(Color.myBackground)
        }
        .frame(width: screenWidth * 0.95)
        .sheet(isPresented: $isShowingSheet) {
            Text(sheetText)
        }
    }
    
}

struct DetailAnnouncementView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            DetailAnnouncementView()
        }
    }
}
