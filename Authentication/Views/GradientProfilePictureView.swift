//
//  GradientProfilePictureView.swift
//  Authorization(iOS)
//
//  Created by MSVI on 20.09.21.
//

import SwiftUI

struct GradientProfilePictureView: View {
    @State private var angle = 0.0
    var  gradient1:[Color] = [
        Color.init(red:101/255, green:64/255,blue: 1),
        Color.init(red:1, green:1,blue: 80/255),
        Color.init(red:109/255, green: 1,blue: 185/255),
        Color.init(red:39/255, green:232/255,blue: 1)
    ]
    var profilePicture: UIImage
    var body: some View {
        ZStack {
           AngularGradient(gradient: Gradient(colors: gradient1), center: .center, angle: .degrees(angle))
            .mask(
                Circle()
                    .frame(width: 70, height: 70, alignment: .center)
                    .blur(radius: 8.0)
            )
            .blur(radius: 8.0)
            .onAppear(){
                withAnimation(.linear(duration: 7)){
                    self.angle += 360
                }
            }
            Image(uiImage: profilePicture)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 66, height: 66, alignment: .center)
                .mask(Circle())
        }
    }
}

struct GradientProfilePictureView_Previews: PreviewProvider {
    static var previews: some View {
        GradientProfilePictureView(profilePicture: UIImage(named: "Profile")!)
    }
}
