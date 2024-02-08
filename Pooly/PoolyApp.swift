//
//  PoolyApp.swift
//  Pooly
//
//  Created by Jack on 28/12/23.
//

import SwiftUI
import Firebase

@main
struct PoolyApp: App {
    
    init(){
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
           RootView()
        }
    }
}
