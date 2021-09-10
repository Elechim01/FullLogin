//
//  CustomTextField.swift
//  CustomTextField
//
//  Created by Michele Manniello on 10/09/21.
//

import SwiftUI

struct CustomTextField: View {
    @State var isTapped = false
//    Hinit...
    var hinit : String
    @Binding var text : String
    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            HStack(spacing: 15) {
//                    where going to limit texfield
                TextField("",text: $text){(status) in
                    //                   it will fore when textfield is clicked...
                    if status{
                        withAnimation(.easeInOut.speed(1.5)){
                            //                            moving hint to top...
                            isTapped = true
                        }
                    }
                }onCommit: {
                    //                    it will fire when return button is pressed...
                    if text == ""{
                        withAnimation(.easeInOut.speed(1.5)){
                            isTapped = false
                        }
                    }
                }
//                    Trailing Icon Or Button...
//           Instaead of Button showing green Checkmark...
                if text != ""{
                    Image(systemName: "checkmark.circle.fill")
                        .font(.title2)
                        .foregroundColor(.green)
                }

            }
            .background(
                    Text(hinit)
                        .padding(.horizontal,isTapped ? 8 : 0)
                        .background(Color.white)
                        .scaleEffect(isTapped ? 0.7 : 1,anchor: .leading)
                        .offset(y: isTapped ? -26 : 0)
                        .foregroundColor(.gray)
                    ,alignment: .leading
                )
                .padding(.horizontal)
        }
        .frame(height: 55)
        .background(
            RoundedRectangle(cornerRadius: 10)
                .strokeBorder(.black,lineWidth: 1.8)
        )
    }
}


