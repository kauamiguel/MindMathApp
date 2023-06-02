//
//  AplicationAngle.swift
//  aplicativoMacroChallenged
//
//  Created by Kaua Miguel on 22/05/23.
//

import SwiftUI

struct AplicationAngle: View {
    @Binding var aplication:geometricModules
    @Binding var shouldPopToRootView : Bool
    
    //Creating a back button alternative to adapt to current language
    @Environment(\.presentationMode) var presentationMode
    
    var backButton: some View {
        Button(action: {
            self.presentationMode.wrappedValue.dismiss()
        }) {
            HStack {
                Image(systemName: "chevron.backward")
                    .frame(width: 4)
                Text("Back")
            }
        }
    }
    
    var body: some View{
        ZStack{
            Color("backGroundColor")
                .ignoresSafeArea()
            ScrollView(showsIndicators: false){
                Spacer()
                
                VStack{
                    
                    //Iterate to each image and respected explication
                    ForEach(0..<aplication.aplicationsImage.count){index in
                        
                        Image(aplication.aplicationsImage[index])
                        
                        Text(LocalizedStringKey(aplication.textAplication[index]))
                            .font(.system(size: 15))
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding()
                    }
                }
                
                NavigationLink(destination: ExerciseAnglesTrianglses(exerciseModule: $aplication, shouldPopToRootView: self.$shouldPopToRootView)) {
                    HStack {
                        Spacer()
                        endPageButton()
                            .overlay(content: {
                                Text("Exercise")
                                    .foregroundColor(.white)
                            })
                            .padding()
                    }
                }
            }
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    VStack {
                        Text("What's aplication?")
                            .bold()
                            .font(.title2)
                            .padding()
                            .foregroundColor(Color("fontColor"))
                    }
                    
                }
            }
            .padding()
        }
        .navigationBarBackButtonHidden()
        .navigationBarItems(leading: backButton)
    }
}

struct AplicationAngle_Previews: PreviewProvider {
    static var previews: some View {
        AplicationAngle(aplication: .constant(geometricModules(trophyIcon: "", trophyExplanation: "", unblockedImage: "", trophyImage: "", trophyPhrase: "", tips: "", exerciseImage: "", modalExplanation: "", correctAnswer: "", alternatives: [], exercise: "", title: "", icon: "", nameOfModule: "", explanationsImage: [], aplicationsImage: [], textExplanation: [], textAplication: [])), shouldPopToRootView: .constant(false))
    }
}
