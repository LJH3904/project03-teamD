//
//  AdminReview.swift
//  BinGongGan_Admin
//
//  Created by 방유빈 on 2023/09/13.
//

import Foundation
import BinGongGanCore

class AdminReview: Identifiable, Codable {
    let review: Review
    let writer: User
}
