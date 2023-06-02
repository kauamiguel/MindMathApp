//
//  ConteudosAngulosNoTriangulo.swift
//  aplicativoMacroChallenged
//
//  Created by Kaua Miguel on 22/05/23.
//

import SwiftUI

struct ConteudosAngulosNoTriangulo: View {
    @Binding var moduleSelected:geometricModules
    @Binding var rootIsActive : Bool
//    @State var isAnimated:Bool = false
    
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
                VStack {
                    
                    //Iterate to each image and respected text
                    ForEach(0..<moduleSelected.textExplanation.count){index in
                        
                        Image(moduleSelected.explanationsImage[index])
                        
                        Text(LocalizedStringKey(moduleSelected.textExplanation[index]))
                            .font(.system(size: 15))
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding()
                    }

                    NavigationLink(destination: AplicationAngle(aplication: $moduleSelected, shouldPopToRootView: self.$rootIsActive)) {
                        HStack {
                            Spacer()
                            endPageButton()
                                .overlay(content: {
                                    Text("Continue")
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
                            Text(LocalizedStringKey(moduleSelected.title))
                                .bold()
                                .font(.title2)
                                .foregroundColor(Color("fontColor"))
                        }
                    }
                }
                .padding()
            }
        }
        .navigationBarBackButtonHidden()
        .navigationBarItems(leading: backButton)
    }
}


struct ConteudosAngulosNoTriangulo_Previews: PreviewProvider {
    static var previews: some View {
        ConteudosAngulosNoTriangulo(moduleSelected: .constant(geometricModules(trophyIcon: "", trophyExplanation: "", unblockedImage: "", trophyImage: "", trophyPhrase: "", tips: "", exerciseImage: "", modalExplanation: "", correctAnswer: "", alternatives: [], exercise: "", title: "", icon: "", nameOfModule: "", explanationsImage: [], aplicationsImage: [], textExplanation: [], textAplication: [])), rootIsActive: .constant(false))
    }
}
