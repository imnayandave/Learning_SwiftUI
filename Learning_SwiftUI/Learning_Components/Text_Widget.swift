//
//  Text_Widget.swift
//  Learning_SwiftUI
//
//  Created by Nayan Dave on 18/10/23.
//

import SwiftUI

struct Text_Widget: View {
    
    @State private var rotationDegree: Angle = Angle(degrees: -20)
    
    var body: some View {
        Text("This is Nayan Dave\nI am learning SwiftUI")
            .strikethrough(pattern: .dot)
            .multilineTextAlignment(.center)
            .font(.title2)
            .fontWeight(.bold)
            .fontWidth(.condensed)
            .fontDesign(.monospaced)
            .foregroundColor(Color.indigo)
            .padding(20)    /// All Sides Same Padding
            /// Below can be either `vertical` or `horizontal` sided padding
            //.padding(.vertical, 10)
        
            /// Below is `customisable padding` for each side
            //.padding(EdgeInsets(top: 1, leading: 2, bottom: 3, trailing: 4))
            .background(content: {
                Capsule(style: .continuous)
                    .fill(Color.mint)
                    .shadow(radius: 3)
            })
            .offset()       /// offset by  1. (x: CGFloat and y: CGFloat) 2. Size wise (CGSize)
            .lineLimit(2)
            .scaleEffect()  /// Scales whole View in CGFloat Manner
            .rotation3DEffect(rotationDegree, axis: (x: 1, y: 0, z: 0))    /// 3D Rotation Effect
            .truncationMode(Text.TruncationMode.middle)
            .onAppear {
                continuousAnimate()
            }
        
            /// - Below modifier adds space between characters and cancel outs ``.fontWeight`` property
            //.kerning(3)
    }
    
    func continuousAnimate() {
        withAnimation(Animation.easeInOut(duration: 1.5).repeatForever(), {
            rotationDegree = Angle(degrees: 20)
        })
    }
}

struct Text_Widget_Previews: PreviewProvider {
    static var previews: some View {
        Text_Widget()
    }
}
