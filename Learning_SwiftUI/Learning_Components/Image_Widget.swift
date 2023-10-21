//
//  Image_Widget.swift
//  Learning_SwiftUI
//
//  Created by Nayan Dave on 19/10/23.
//

import SwiftUI

struct Image_Widget: View {
    @State var backDegree = 0.0
    @State var frontDegree = -90.0
    
    @State var isFlipped = false
    
    let durationAndDelay : CGFloat = 1
    
    var body: some View {
        //Image(systemName: "house")
        ZStack(alignment: .center) {
            Image("logistic")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: screenSize.width-30, height: screenSize.width-30)
                .rotation3DEffect(Angle(degrees: frontDegree), axis: (x: 0, y: 1, z: 0))
            Image("image1")
                .resizable()
                .frame(width: screenSize.width-30, height: screenSize.width-30)
                .clipShape(Circle())
                .overlay {
                    Circle()
                        .stroke(.white, lineWidth: 15)
                        .shadow(radius: 5)
                }
                .rotation3DEffect(Angle(degrees: backDegree), axis: (x: 0, y: 1, z: 0))
        }
        .onTapGesture {
            isFlipped.toggle()
            withAnimation(.easeInOut(duration: durationAndDelay).delay(isFlipped ? 0 : durationAndDelay)) {
                backDegree = isFlipped ? 90 : 0
            }
            withAnimation(.easeInOut(duration: durationAndDelay).delay(isFlipped ? durationAndDelay : 0)) {
                frontDegree = isFlipped ? 0 : -90
            }
        }
    }
}

struct Image_Widget_Previews: PreviewProvider {
    static var previews: some View {
        Image_Widget()
    }
}
