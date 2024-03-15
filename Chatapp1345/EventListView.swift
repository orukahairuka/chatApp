//
//  ArticleListView.swift
//  Chatapp1345
//
//  Created by 櫻井絵理香 on 2024/03/14.
//

import SwiftUI

struct EventListView: View {
    var body: some View {

        NavigationView {
            VStack {
                EventButton()
                ScrollView {
                    EventCellView()
                    EventCellView()
                    EventCellView()
                }
                .toolbar {
                    ToolbarItem(placement: .principal){
                        Text("イベント一覧")
                    }
                    ToolbarItem {
                        Menu {
                            Button {

                            } label: {
                                Label("ユーザー編集", systemImage: "heart.fill")
                            }
                            Button {

                            } label: {
                                Label("クーポン使用", systemImage: "heart.fill")
                            }
                            Button {

                            } label: {
                                Label("ログアウト", systemImage: "heart.fill")
                            }
                        } label: {
                            Label("メニュー", systemImage: "ellipsis.circle")
                        }
                    }
                }
            }
        }
    }
}

struct ArticleButton: View {
    var body: some View {
        Button {
            print("記事一覧のページへ")
        } label: {
            Label("記事へ",systemImage: "heart.fill")
        }
        .frame(width: 120,height: 60)
        .background(Color.orange)
        .cornerRadius(30)
        .shadow(color: .gray, radius: 3, x: 3, y: 3)
        .border(.black)
    }
}

    #Preview {
        EventListView()
    }

