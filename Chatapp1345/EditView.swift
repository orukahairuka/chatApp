//
//  EditView.swift
//  Chatapp1345
//
//  Created by 櫻井絵理香 on 2024/03/14.
//

import SwiftUI

struct EditView: View {
    var body: some View {
        NavigationView {
            Text("aaa")
            .toolbar{
                HStack {
                    Text("テキスト")
                    Button("ボタン"){}
                    NavigationLink("ナビゲーションリンク") {}
                }
            }
        }
    }
}

#Preview {
    EditView()
}
