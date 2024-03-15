import SwiftUI

struct UserTypeSelectionView: View {
    var body: some View {
        VStack {
            Spacer()
            Text("アカウントタイプを選択してください")
                .font(.title)
                .padding()

            Button(action: {
                // 一般ユーザーを選択した場合の処理
                print("一般ユーザーを選択しました")
            }) {
                Text("一般ユーザー")
                    .font(.title)
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.customBaseOrangeColor)
                    .cornerRadius(10)
            }

            Button(action: {
                // 企業ユーザーを選択した場合の処理
                print("企業ユーザーを選択しました")
            }) {
                Text("企業ユーザー")
                    .font(.title)
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.customBaseOrangeColor)
                    .cornerRadius(10)
            }
            .padding()

            Spacer()
        }
    }
}

struct UserTypeSelectionView_Previews: PreviewProvider {
    static var previews: some View {
        UserTypeSelectionView()
    }
}

