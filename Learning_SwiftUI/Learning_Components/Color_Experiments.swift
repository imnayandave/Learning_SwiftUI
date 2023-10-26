//
//  Color_Experiments.swift
//  Learning_SwiftUI
//
//  Created by Nayan Dave on 25/10/23.
//

import SwiftUI

struct Color_Experiments: View {
    let myCol = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
    var body: some View {
        RoundedRectangle(cornerRadius:30)
            .fill(
//                Color.indigo
//                Color(uiColor: UIColor.secondarySystemBackground).gradient
//                Color(myCol)
                Color("customColor")
                
//                LinearGradient(
//                    gradient: Gradient(colors: [Color.red, Color.blue]),
//                    startPoint: .topLeading,
//                    endPoint: .bottomTrailing)
                
//                RadialGradient(colors: [Color.red, Color.blue],
//                               center: .center,
//                               startRadius: 20, endRadius: 190)
                
//                AngularGradient(colors: [Color.red, Color.blue],
//                                center: .center, angle: .degrees(90))
            )
            .shadow(color: Color("customColor").opacity(0.25), radius: 5, x: 0, y: 20)
            .frame(width: 300, height: 200)
    }
}

struct Color_Experiments_Previews: PreviewProvider {
    static var previews: some View {
        Color_Experiments()
    }
}
