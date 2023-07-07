//
//  MainSettingsVie2w.swift
//  Coordinator
//
//  Created by  Arun Singh Rathore
//
import SwiftUI
import Combine

struct MainSettingsView: View {
    let didClickPrivacy = PassthroughSubject<Bool, Never>()
    let didClickCustom = PassthroughSubject<Bool, Never>()
    
    var body: some View {
        List {
            Button(action: {
                didClickPrivacy.send(true)
            }) {
                Text("Privacy Settings")
            }
            Button(action: {
                didClickCustom.send(true)
            }) {
                Text("Custom Settings")
            }
        }
        .navigationBarTitle("Settings")
    }
}

struct MainSettingsVie2w_Previews: PreviewProvider {
    static var previews: some View {
        MainSettingsView()
    }
}
