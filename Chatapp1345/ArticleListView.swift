//
//  ArticleListView.swift
//  Chatapp1345
//
//  Created by 櫻井絵理香 on 2024/03/14.
//

import SwiftUI

struct ArticleListView: View {
    @State var isEditSheet = false
    var body: some View {

        NavigationView {
            ZStack {
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
                                isEditSheet.toggle()
                            } label: {
                                Label("ユーザー編集", systemImage: "heart.fill")
                            }
                            Button {
                                //クーポンのトグルで、下に.sheetする
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
                //ハーフモーダルへとぶ
                EditButton()
                    .offset(x: 130, y:300)
            }
        }
        .sheet(isPresented: $isEditSheet) {
            ProfEditView() // EditViewをモーダルとして表示
        }
    }
}

struct EventButton: View {
    var body: some View {
        NavigationLink(destination: EventListView()) {
            Label("イベントへ", systemImage: "heart.fill")
                .frame(width: 120, height: 60)
                .background(Color.orange)
                .cornerRadius(30)
                .shadow(color: .gray, radius: 3, x: 3, y: 3)
                .border(Color.black)
        }
    }
}


struct EditButton: View {
    @State var isShowSheet = false
    var body: some View {
        Button {
            isShowSheet.toggle()
        } label: {
            Image(systemName: "heart.fill")
        }
        .sheet(isPresented: $isShowSheet){
            EditView()
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
