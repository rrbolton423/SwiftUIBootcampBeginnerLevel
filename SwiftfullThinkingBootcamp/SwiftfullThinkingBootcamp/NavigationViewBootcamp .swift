//
//  NavigationViewBootcamp .swift
//  SwiftfullThinkingBootcamp
//
//  Created by Romell Bolton on 7/15/21.
//

import SwiftUI

struct NavigationViewBootcamp_: View {
    var body: some View {
        NavigationView {
            ScrollView {
                NavigationLink("Hello, World!",
                               destination: MyOtherScreen())
                
                Text("Hello, World!")
                Text("Hello, World!")
                Text("Hello, World!")
            }
            .navigationTitle("All Inboxes")
//            .navigationBarTitleDisplayMode(.inline)
//            .navigationBarHidden(true)
            .navigationBarItems(
                
                leading:
                    HStack {
                        Image(systemName: "person.fill")
                        Image(systemName: "flame.fill")
                    }
                ,
                
                trailing: NavigationLink(
                    destination: MyOtherScreen(),
                    label: {
                        Image(systemName: "gear")
                    })
                    .accentColor(.red)
            )
        }
    }
}

struct MyOtherScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack {
            Color.green.edgesIgnoringSafeArea(.all)
                .navigationTitle("Green Screen!")
                .navigationBarHidden(true)
            
            VStack {
                Button("BACK BUTTON") {
                    presentationMode.wrappedValue.dismiss()
                }
                
                NavigationLink("Click here!",
                               destination: Text("3rd Screen!"))
            }
        }
    }
}

struct NavigationViewBootcamp__Previews: PreviewProvider {
    static var previews: some View {
        NavigationViewBootcamp_()
    }
}
