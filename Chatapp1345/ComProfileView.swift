//
//  ComProfileView.swift
//  Chatapp1345
//
//  Created by 櫻井絵理香 on 2024/03/15.
//

import SwiftUI

struct ComProfileView: View {
    var body: some View {
        ScrollView {
            VStack {
                Text("株式会社sky")
                    .font(.title)
                    .padding(.top)
                    .fontWeight(.bold)
                VStack {
                    Label("会社紹介", systemImage: "heart.fill")
                        .font(.headline)
                        .fontWeight(.semibold)
                    Text("電話の会社電話の会社電話の会社電話の会社。電話の会社電話の会社電話の会社電話の会社電話の会社電話の会社電話の会社電話の会社電話の会社電話の会社電話の会社電話の会社電話の会社電話の会社電話の会社電話の会社電話の会社電話の会社電話の会社電話の会社電話の会社電話の会社電話の会社電話の会社電話の会社電話の会社電話の会社電話の会社電話の会社")
                        .frame(width: 360, height: 210)
                    Label("SNS", systemImage: "heart.fill")
                        .fontWeight(.semibold)
                    Text("090-0000-0000")
                    Text("@aggggdddddd")
                }
                .frame(width: 400, height: 340)
                .border(.gray)
                Text("イベント一覧")
                    .font(.headline)
                    .padding(.all)
                EventCellView()
                EventCellView()
                EventCellView()
            }
        }
    }
}

#Preview {
    ComProfileView()
}
