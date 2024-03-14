//
//  CardView.swift
//  Chatapp1345
//
//  Created by 櫻井絵理香 on 2024/03/14.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        VStack {
            Spacer()
            VStack {
                VStack {
                    Text("ハッカソンで得られた知見まとめ")
                        .font(.system(size: 23))
                        .fontWeight(.bold)
                        .padding(.vertical)
                    Text("マンチカンは大変陽気で好奇心が強く、遊び好きです。人や同居のほかのペットとも上手に接します。マンチカンは大変陽気で好奇心が強く、遊び好きです。人や同居のほかのペットとも上手に接します。マンチカンは大変陽気で好奇心が強く、遊び好きです。人や同居のほかのペットとも上手に接します。")
                        .padding(2.0)
                        .frame(width: 325,height: 140)
                    Spacer()
                    HStack {
                        Text("2024/2/2 14:00")
                        Text("マンチカンマンチカンマンチカン")
                            .font(.system(size: 22))
                            .fontWeight(.semibold)
                            .frame(width: 200, height: 50)
                    }
                }
            }
            .frame(width: 330, height: 290)
            .padding()
            .background(.white)
            .cornerRadius(8)
            .clipped()
            .shadow(color: .gray.opacity(0.7), radius: 5)
            Spacer()
            
        }
        .padding()
        .background(Color(white: 0.9))
    }
}

#Preview {
    CardView()
}
