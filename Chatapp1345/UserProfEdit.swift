//
//  SwiftUIView.swift
//  Chatapp1345
//
//  Created by 櫻井絵理香 on 2024/03/16.
//

import SwiftUI

//モーダルのテスト用View
struct ThirdModalTestView: View {
    @State var isShowSheet = false
    var body: some View {
        Button("シートを表示") {
            isShowSheet.toggle()
        }
        .sheet(isPresented: $isShowSheet){
            UserProfEditView()
        }
    }
}

struct UserProfEditView: View {
    @State var inputTitle = ""
    @State var inputDetail = ""
    var body: some View {
        VStack {
            Button {

            } label: {
                Text("変更する")
            }
            .frame(width: 120,height: 70)
            .background(Color.orange)
            .cornerRadius(30)
            .shadow(color: .gray, radius: 3, x: 3, y: 3)
            .border(.black)
            .padding(.bottom)
            HStack {
                Text("自己紹介記入欄")
                Spacer()
            }
            TextEditor(text: $inputDetail)
                .frame(width: 355,height: 380)
                .overlay(
                    RoundedRectangle(cornerRadius: 5) // 角が丸い四角形をオーバーレイとして追加
                        .stroke(.gray, lineWidth: 1) // このオーバーレイに枠線を適用
                )        }
    }
}

#Preview {
    SecondModalTestView()
}

