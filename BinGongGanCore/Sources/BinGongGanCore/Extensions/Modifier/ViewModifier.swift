//
//  File.swift
//  
//
//  Created by 방유빈 on 2023/09/07.
//

import Foundation
import SwiftUI

//커스텀 백버튼
@available(iOS 15.0, *)
public struct CustomBackButton: ViewModifier {
    @Environment(\.dismiss) private var dismiss
    public typealias Action = () -> ()
    
    var action : Action?
    
    public func body(content: Content) -> some View {
        content
            .navigationBarBackButtonHidden(true)
            .toolbar {
                ToolbarItem(placement:.navigationBarLeading) {
                    Button {
                        action?()
                        dismiss()
                    } label: {
                        Image(systemName: "chevron.left")
                            .foregroundColor(.myPrimary)
                    }
                }
            }
    }
}
