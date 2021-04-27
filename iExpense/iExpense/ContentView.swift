//
//  ContentView.swift
//  iExpense
//
//  Created by Leotis buchanan on 2021-04-27.
//
/*
 SwiftUI gives us the onDelete() modifier for us to use to control how
 objects should be deleted from a collection. In practice, this is
 almost exclusively used with List and ForEach: we create a list of
 rows that are shown using ForEach, then attach onDelete() to that
 ForEach so the user can remove rows they don’t want.

 This is another place where SwiftUI does a heck of a lot of work on
 our behalf, but it does have a few interesting quirks as you’ll see.
 
 */

import SwiftUI


struct SecondView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var name:String
    
    var body: some View {
       
        VStack {
            Text("Second Sheet, hello from \(name)")
            Button("Dismiss") {
                self.presentationMode.wrappedValue.dismiss()
            }
        }
    
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
