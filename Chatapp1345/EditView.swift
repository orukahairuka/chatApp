//
//  EditView.swift
//  Chatapp1345
//
//  Created by 櫻井絵理香 on 2024/03/14.
//

import SwiftUI

//モーダルのテスト用View
struct ModalTestView: View {
    @State var isShowSheet = false
    var body: some View {
        Button("シートを表示") {
            isShowSheet.toggle()
        }
        .sheet(isPresented: $isShowSheet){
            EditView()
        }
    }
}

struct EditView: View {
    @State var inputTitle = ""
    @State var inputDetail = ""
    var body: some View {
        VStack {
            Button {

            } label: {
                Text("投稿する")
            }
            TextField("タイトル", text: $inputTitle)
                .textFieldStyle(.roundedBorder)
                .frame(width: 355,height: 40)
                .padding(.all)
            TextEditor(text: $inputDetail)
                .frame(width: 355,height: 380)
                .overlay(
                    RoundedRectangle(cornerRadius: 5) // 角が丸い四角形をオーバーレイとして追加
                        .stroke(.gray, lineWidth: 1) // このオーバーレイに枠線を適用
                )        }
    }
}

#Preview {
    ModalTestView()
}
