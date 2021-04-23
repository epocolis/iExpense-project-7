//
//  ContentView.swift
//  iExpense
//
//  Created by Leotis buchanan on 2021-04-23.
//
/*
 
 There are several ways of showing views in SwiftUI, and one of the most basic is a sheet:
 a new view presented on top of our existing one. On iOS this automatically gives us a card-like
 presentation where the current view slides away into the distance a little and the new view animates in on top.

 Sheets work much like alerts, in that we don’t present them directly with code such as mySheet.present() or similar.
 Instead, we define the conditions under which a sheet should be shown, and when those conditions become true or
 false the sheet will either be presented or dismissed respectively.

 Let’s start with a simple example, which will be showing one view from another using a sheet.
 First, we create the view we want to show inside a sheet, like this:
 
 
 */

import SwiftUI



struct SecondView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var name: String
    
    var body : some View {
        
        VStack {
            
            Text("Second View")
            
            Button("Dismiss") {
                self.presentationMode.wrappedValue.dismiss()
            }
            
        }
        
       
    }
}




struct ContentView: View {
    
  @State private var showingSheet = false
    
    var body: some View {
    
        Button("Show Sheet"){
            // show the sheet
            self.showingSheet.toggle()
        }
        .sheet(isPresented: $showingSheet){
            SecondView(name: "@twostraws")
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
