//
//  Shape_Experiments.swift
//  Learning_SwiftUI
//
//  Created by Nayan Dave on 23/10/23.
//

import SwiftUI

struct Shape_Experiments: View {
    var body: some View {
        //Circle()
        //Rectangle()
        //Ellipse()
        //Capsule(style: RoundedCornerStyle.continuous)
        RoundedRectangle(cornerRadius: 25)
            /// `Fill` and `ForegroundColor` works same except `Fill` supports `.gradient` while foregroundColor does not support that
            .trim(from: 0.4, to: 0.85)
            .fill(Color.indigo.gradient)
            //.foregroundColor(Color.indigo)
        
            //.stroke()   /// with default `lineWidth` value 1
            //.stroke(style: StrokeStyle(lineWidth: 10, lineCap: .butt, lineJoin: .round, dash: [30]))
            //.stroke(Color.red)
            //.trim(from: 0, to: 0.5)
            .frame(width: 300, height: 100)
    }
}

struct Shape_Experiments_Previews: PreviewProvider {
    static var previews: some View {
        Shape_Experiments()
    }
}
