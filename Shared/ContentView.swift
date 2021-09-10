//
//  ContentView.swift
//  Shared
//
//  Created by Michele Manniello on 10/09/21.
//

import SwiftUI
import Firebase
struct ContentView: View {
    @AppStorage("log_Status")var log_Status = false
    @State var skip = false
    var body: some View {
        if log_Status || skip{
            NavigationView{
                Button {
                    withAnimation {
                        log_Status = false
                    }
                    try! Auth.auth().signOut()
                } label: {
                    Text("Signout")
                }
                .navigationTitle("Home")
            }
        }else{
            Login(skip: $skip)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
