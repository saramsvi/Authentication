//
//  ProfileView.swift
//  Authorization(iOS)
//
//  Created by MSVI on 15.09.21.
//

import SwiftUI
//import Purchases
import FirebaseAuth
struct ProfileView: View {
    
    @State private var showLoader: Bool = false
    @State private var iapButtonTitle  = "purchase lifetime pro plan"
    @Environment(\.presentationMode) var presentationMode

    @State private var showAlertView: Bool = false
    @State private var alertTitle: String =  ""
    @State private var alertMessage: String = ""
    @State private var showSettingsView: Bool = false
    
    var body: some View {
        ZStack{
            Image("background-2")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(.all)
            VStack {
                VStack(alignment: .leading, spacing: 16){
                    HStack(spacing: 16){
//                        ZStack {
//                            Circle()
//                                .foregroundColor(Color("pink-gradient-1"))
//                                .frame(width: 66, height: 66, alignment: .center)
//                            Image(systemName: "person.fill")
//                                .foregroundColor(.white)
//                                .font(.system(size: 24, weight: .medium, design: .rounded))
//                        }
                        GradientProfilePictureView(profilePicture: UIImage(named: "Profile")!)
                            .frame(width: 66, height: 66, alignment: .center)
                            
                        .frame(width: 66, height: 66, alignment: .center)
                        VStack(alignment: .leading) {
                            Text("Name")
                                .foregroundColor(.white)
                                .font(.title2)
                                .bold()
                            Text("View profile")
                                .foregroundColor(.white .opacity(0.7))
                                .font(.footnote)
                            
                        }
                        Spacer()
                        
                        Button(action: {
                            showSettingsView.toggle()
                            
                        }
                               , label: {
                            TextFieldIcon(iconName: "gearshape.fill", currentlyEditing: .constant(true), passedImage: .constant(nil))
                               })
                    }
                    Rectangle()
                        .frame(height: 1)
                        .foregroundColor(.white.opacity(0.1))
                    Text("User of this app bio ")
                        .foregroundColor(.white)
                        .font(.title2.bold())
                    Label("Awarded multiple cerftificates", systemImage: "calendar")
                        .foregroundColor(.white.opacity(0.7))
                        .font(.footnote)
                    
                    Rectangle()
                        .frame(height: 1)
                        .foregroundColor(.white.opacity(0.1))
                    
                    HStack(spacing: 16) {
                        Image("Twitter")
                            .resizable()
                            .foregroundColor(.white.opacity(0.7))
                            .frame(width: 24, height: 24, alignment: .center)
                        Image(systemName:"link")
                            .foregroundColor(.white.opacity(0.7))
                            .frame(width: 17, height: 17, alignment: .center)
                            .font(.system(size: 17, weight: .semibold, design: .rounded))
                        Text("design code.io")
                            .foregroundColor(.white.opacity(0.7))
                            .font(.footnote)
                        
                    }
                }
                .padding(16)
                GradientButton(buttonTitle: iapButtonTitle) {
                    print("IAP")
                    showLoader = true
//                    Purchases.shared.offerings{
//                        offerings,error in
//                        if let packages = offerings?.current?.availablePackages{
//                            Purchases.shared.purchasePackage(packages.first!){
//                                transaction,purchaserInfo,error,userCancelled in
//                                print("transaction \(transaction)")
//                                print("purchaserInfo \(purchaserInfo)")
//                                print("error \(error)")
//                                print("userCancelled \(userCancelled)")
//
//                                if purchaserInfo?.entitlements["pro"]?.isActive == true{
//                                    showLoader = false
//                                    iapButtonTitle = "You're a pro member"
//                    alertTitle = "Purchase successfull"
//                 alertMessage = " Your purchase has been restored  and you are not a pro member "
//                                     showAlertView.toggle()
                    
            //    }
//                                    else{
//                                        showLoader = false
//                                        iapButtonTitle = "purchase failed"
//                                    }
//                                }
//                            }
//                        else{
//                            showLoader = false
//                        }
//                    }
                }
                .padding(.horizontal,16)
                Button(
                    action: {
                        print("Restore")
                        showLoader = true
//                        Purchases.shared.restoreTransactions{
//                            purchaserInfo,error in
//                        if let info = purchaserInfo
//                        {
//                            info.allPurchasedProductIdentifiers.contains("lifetim_pro_plan")
//                            iapButtonTitle = "You are a pro member"
//                            alertTitle = "Restore success"
//                        alertMessage = " Your purchase was successfull and you are a  pro member "
                            //showAlertView.toggle()
//                            showLoader = false
//                        }
//                            else{
//                                showLoader = false
//                                iapButtonTitle = "no purchases found"
                        
//                  alertTitle = "no purchases found"
//                  alertMessage = " Your purchase has been restored  and you are not a pro member "
//                  showAlertView.toggle()
//                            }
//                            else{
//                                showLoader = false
//
                        //                  alertTitle = "failed"
                        //                  alertMessage = " Your purchase has been restored  and you are not a pro member "
                        //                  showAlertView.toggle()
//                            }
//
//                        }
                    },
                    label: {
                        GradientText(text: "Restore purchase")
                            .font(.footnote.bold())
                    })
                    .padding(.bottom)
            }
            .background(
                RoundedRectangle(cornerRadius: 30)
                    .stroke(Color.white.opacity(0.2))
                    .background(Color("secondaryBackground").opacity(0.5))
                    .background(VisualEffectBlur(blurStyle: .dark))
                    .shadow(color: Color("shadowColor").opacity(0.5), radius: 60, x: 0, y: 30)
            )
            .cornerRadius(30)
            .padding(.horizontal)
            
            VStack {
                Spacer()
                Button(action:{
                      //  print("sign out")
                    signout()
                    
                },
                       label: {
                        Image(systemName: "arrow.turn.up.forward.iphone.fill")
                            
                            
                            .foregroundColor(.white)
                            .font(.system(size: 15, weight: .medium, design: .rounded))
                            .rotation3DEffect(
                                Angle(degrees: 180),
                                axis: (x: 0.0, y: 0.0, z: 1.0)
                            )
                            .background(
                                Circle()
                                    .stroke(Color.white.opacity(0.2), lineWidth: 1)
                                    .frame(width: 42, height: 42, alignment: .center)
                                    .overlay(VisualEffectBlur(blurStyle: .dark).cornerRadius(21))
                                    .frame(width: 42, height: 42, alignment: .center)
                    )
                })
            }
            .padding(.bottom,64)
            
            if showLoader {
                progressViewStyle(CircularProgressViewStyle())
            }
            
        }
        .colorScheme(.dark)
        .alert(isPresented: $showAlertView){
            Alert(title: Text(alertTitle), message: Text(alertMessage), dismissButton: .cancel())
        }
        .sheet(isPresented: $showSettingsView, content: {
            SettingsView()
        })
    }
    func signout(){
        do {
            try Auth.auth().signOut()
            presentationMode.wrappedValue.dismiss()
        }
        catch let error{
            alertTitle =  "Uh-oh!"
            alertMessage = error.localizedDescription
            showAlertView.toggle()
            
        }
    }
    
    
    struct ProfileView_Previews: PreviewProvider {
        static var previews: some View {
            ProfileView()
        }
    }
}
