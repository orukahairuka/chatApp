import SwiftUI

struct CorporateRegistrationView: View {
    @State private var companyName = ""
    @State private var companyID = ""
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        VStack {
            HStack {
                Text("会社名")
                Spacer()
            }
            TextField("Company Name", text: $companyName)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            HStack {
                Text("企業ID")
                Spacer()
            }
            TextField("Company ID", text: $companyID)
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

struct CorporateRegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        CorporateRegistrationView()
    }
}

