//
//  ContentView.swift
//  iExpense
//
//  Created by Leotis buchanan on 2021-04-27.
//

import SwiftUI


struct SecondView: View {
    
    var name:String
    
    var body: some View {
        Text("Second View hello from \(name)")
    }
}

struct ContentView: View {
    
    @State private var showingSheet = false
    
    var body: some View {
        Button("Show Sheet") {
            self.showingSheet.toggle()
        }
        .padding()
        .sheet(isPresented: $showingSheet){
            SecondView(name: "Jackson")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
