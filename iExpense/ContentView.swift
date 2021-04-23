//
//  ContentView.swift
//  iExpense
//
//  Created by Leotis buchanan on 2021-04-23.
//
/*
 
 SwiftUI gives us the onDelete() modifier for us to use to control
 how objects should be deleted from a collection.
 In practice, this is almost exclusively used with List and ForEach: we
 create a list of rows that are shown using ForEach, then attach onDelete()
 to that ForEach so the user can remove rows they don’t want.
 
 This is another place where SwiftUI does a heck of a lot of work on our behalf,
 but it does have a few interesting quirks as you’ll see.
 
 First, let’s construct an example we can work with: a list that shows numbers,
 and every time we tap the button a new number appears. Here’s the code for that:
 
 
 */

import SwiftUI

struct ContentView: View {
    
    @State private var numbers = [Int]()
    @State private var currentNumber = 1
    
    
    func removeRows(at offsets: IndexSet){
        numbers.remove(atOffsets: offsets)
    }
 
    var body: some View {
        NavigationView{
            VStack {
                List {
                    ForEach(numbers, id:\.self ) {
                        Text("\($0)")
                    }
                    .onDelete(perform: removeRows)
                }
                
                Button("Add Number"){
                    self.numbers.append(self.currentNumber)
                    self.currentNumber += 1
                    
                }
            }.navigationBarItems(leading: EditButton())
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
