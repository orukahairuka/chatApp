//
//  ArticleListView.swift
//  Chatapp1345
//
//  Created by 櫻井絵理香 on 2024/03/14.
//

import SwiftUI

struct ArticleListView: View {
    var body: some View {
        ZStack {
            NavigationView {
                VStack {
                    EventButton()
                    ScrollView {
                        CardView()
                        CardView()
                        CardView()
                    }
                }
                    .toolbar {
                        ToolbarItem(placement: .principal){
                            Text("記事一覧")
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
            //ハーフモーダルへとぶ
            EditButton()
                .offset(x: 130, y:350)
        }
    }
}

struct EventButton: View {
    var body: some View {
        Button {
            print("イベント一覧のページへ")
        } label: {
            Label("編集する",systemImage: "heart.fill")
        }
        .frame(width: 120,height: 60)
        .background(Color.orange)
        .cornerRadius(30)
        .shadow(color: .gray, radius: 3, x: 3, y: 3)
        .border(.black)
    }
}


struct EditButton: View {
    var body: some View {
        Button {

        } label: {
            Image(systemName: "heart.fill")
        }
        .frame(width: 60,height: 60)
        .background(Color.orange)
        .cornerRadius(30)
        .shadow(color: .gray, radius: 3, x: 3, y: 3)
        .border(.black)
    }
}


#Preview {
     ArticleListView()
}
