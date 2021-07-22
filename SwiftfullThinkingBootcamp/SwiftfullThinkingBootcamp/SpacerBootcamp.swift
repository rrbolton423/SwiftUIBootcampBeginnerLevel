//
//  SpacerBootcamp.swift
//  SwiftfullThinkingBootcamp
//
//  Created by Romell Bolton on 7/13/21.
//

import SwiftUI

struct SpacerBootcamp: View {
    var body: some View {
        VStack {
            HStack(spacing: 0) {
                Image(systemName: "xmark")
                Spacer()
                Image(systemName: "gear")
            }
            
            .font(.title)
//            .background(Color.yellow)
            .padding(.horizontal)
//            .background(Color.blue)
            
            Spacer()
            
            Rectangle()
                .frame(height: 55)
        }
//                .background(Color.yellow)
    }
}

struct SpacerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SpacerBootcamp()
    }
}
