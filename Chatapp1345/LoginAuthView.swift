import SwiftUI

struct LoginAuthView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    
    var body: some View {
        VStack(spacing: 20) {
            VStack {
                HStack {
                    Text("メールアドレス")
                    Spacer()
                }
                TextField("Email", text: $email)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
            }
            
            VStack {
                HStack {
                    Text("パスワード")
                    Spacer()
                }
                SecureField("Password", text: $password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
            }
            
            Button(action: {
                // Perform login action here
                print("Email: \(email), Password: \(password)")
            }) {
                Text("ログイン")
                    .padding()
                    .background(Color.customBaseOrangeColor)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            Text("新規会員登録はこちら")
                .foregroundColor(.blue)
                .underline()
                .onTapGesture { }
        }
        .padding()
    }
}

struct LoginAuthView_Previews: PreviewProvider {
    static var previews: some View {
        LoginAuthView()
    }
}
