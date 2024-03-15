import SwiftUI

struct UserRegistrationView: View {
    @State private var username = ""
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        VStack {
            HStack {
                Text("ユーザーID")
                Spacer()
            }
            TextField("Username", text: $username)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            HStack {
                Text("メールアドレス")
                Spacer()
            }
            TextField("Email", text: $email)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            HStack {
                Text("パスワード")
                Spacer()
            }
            SecureField("Password", text: $password)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Button("新規会員登録") {
                // Perform registration logic
            }
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color.customBaseOrangeColor)
            .foregroundColor(.white)
            .cornerRadius(8)
        }
        .padding()
    }
}

struct UserRegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        UserRegistrationView()
    }
}

