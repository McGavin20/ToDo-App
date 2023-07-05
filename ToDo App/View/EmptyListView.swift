//
//  EmptyListView.swift
//  ToDo App
//
//  Created by Sharma on 29/06/2023.
//

import SwiftUI



struct EmptyListView: View {
    //MARK: PROPERTIES
    @State private var isAnimated: Bool = false
    
    let images: [String] = [
    "illustration-no1",
    "illustration-no2",
    "illustration-no3"
    ]
    
    let tips: [String] = [
        "Life isn’t about getting and having, it’s about giving and being.",
        "Whatever the mind of man can conceive and believe, it can achieve.",
        "Strive not to be a success, but rather to be of value.",
        "You miss 100% of the shots you don’t take.",
        "Every strike brings me closer to the next home run.",
        "We become what we think about.",
        "Life shrinks or expands in proportion to one’s courage.",
        "Use your time wisely."
    ]

    //MARK: BODY
    var body: some View {
        ZStack {
            VStack(alignment: .center, spacing: 20) {
                
                Image("\(images.randomElement() ?? self.images[0])")
                    .resizable()
                    .scaledToFit()
                    .frame(minWidth: 256, idealWidth: 280, maxWidth: 360, minHeight: 256, idealHeight: 280, maxHeight: 360, alignment: .center)
                    .layoutPriority(1)
                Text("\(tips.randomElement() ?? self.tips[0])")
                    .layoutPriority(0.5)
                    .font(.system(.headline, design: .rounded))
            }//: VSTACK
            .padding(.horizontal)
            .opacity(isAnimated ? 1 : 0)
            .offset(y: isAnimated ? 0 : -50)
            .animation(.easeOut(duration: 1.5))
            .onAppear(perform: {
                self.isAnimated.toggle()
            })
        } //: ZSTACK
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight:  .infinity)
        .background(Color("ColorBase"))
        .edgesIgnoringSafeArea(.all)
    }
}

//MARK: PREVIEW

struct EmptyListView_Previews: PreviewProvider {
    static var previews: some View {
        EmptyListView()
            .environment(\.colorScheme, .dark)
    }
}
