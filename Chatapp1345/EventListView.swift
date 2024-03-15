//
//  EventListView.swift
//  Chatapp1345
//
//  Created by 櫻井絵理香 on 2024/03/14.
//

import SwiftUI

struct EventListView: View {
    var body: some View {
        NavigationView {
            Text("aaa")
                .toolbar{
                    ToolbarItem(placement: .principal){
                        Text("記事一覧")
                    }
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Menu {
                            Button(action: {
                                print("ユーザー編集")
                            }) {
                                Text("ユーザー編集")
                            }
                            Button(action: {
                                print("クーポン使用")
                            }) {
                                Text("クーポン使用")
                            }
                            Button(action: {
                                print("ログアウト")
                            }) {
                                Text("ログアウト")
                            }
                        } label: {
                            Label("メニュー", systemImage: "ellipsis.circle")
                        }
                    }
                }
        }
    }
}

//編集ボタン
struct EditButton: View {
    var body: some View {
        Button {
            print("編集する")
        } label: {
            Image(systemName: "heart.fill")
                .foregroundColor(.black)
                .font(.system(size: 24))
        }
        .frame(width: 60,height: 60)
        .background(Color.orange)
        .cornerRadius(30.0)
        .shadow(color: .gray, radius: 3, x: 3, y: 3)
        .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
        .border(.black)
    }
}

struct EventButton: View {
    var body: some View {
        Button {
            print("イベントページに飛ぶ")
        } label: {
            HStack{
                Image(systemName: "heart.fill")
                    .foregroundColor(.black)
                    .font(.system(size: 24))
                Text("イベントへ")
            }
        }
        .frame(width: 160,height: 60)
        .background(Color.orange)
        .cornerRadius(15.0)
        .shadow(color: .gray, radius: 3, x: 3, y: 3)
        .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
        .border(.black)
    }
}


#Preview {
    EventButton()
}
