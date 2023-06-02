//
//  ExerciseAnglesTrianglses.swift
//  aplicativoMacroChallenged
//
//  Created by Kaua Miguel on 22/05/23.
//

import SwiftUI

struct ExerciseAnglesTrianglses: View {
    @State var isPresented:Bool = false
    @State private var isButtonPressed: Bool = false
    @Binding var exerciseModule:geometricModules
    @State var alertController:Bool = false
    @State var buttonColorController:[Bool] = [false,false,false,false]
    @Binding var shouldPopToRootView : Bool
    @State var attempts:Int = 0
    
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
        ZStack {
            Color("backGroundColor")
                .ignoresSafeArea()
            
            ScrollView(showsIndicators: false){
                VStack{
                    
                    exercisesBackground()
                        .overlay {
                            Image(exerciseModule.exerciseImage)
                                .resizable()
                                .scaledToFit()
                        }
                        .padding()
                    
                    Text(LocalizedStringKey(exerciseModule.exercise))
                        .font(.system(size: 15))
                        .bold()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding()
                    
                    
                    LazyVGrid(columns: [GridItem(.flexible()),GridItem(.flexible())]) {
                        ForEach(0..<exerciseModule.alternatives.count){alternative in
                            
                            Button {
                                if exerciseModule.alternatives[alternative] == exerciseModule.correctAnswer{
                                    isPresented = true
                                }else{
                                    buttonColorController[alternative] = true
                                    attempts += 1
                                }
                            } label: {
                                if buttonColorController[alternative]{
                                    backgroundAlernatives()
                                        .foregroundColor(.red)
                                        .opacity(0.8)
                                        .overlay {
                                            Text(exerciseModule.alternatives[alternative])
                                                .font(.system(size: 13))
                                                .foregroundColor(Color("fontColor"))
                                                .opacity(0.8)
                                        }
                                }else{
                                    backgroundAlernatives()
                                        .foregroundColor(Color("buttonColor"))
                                        .overlay {
                                            Text(exerciseModule.alternatives[alternative])
                                                .font(.system(size: 13))
                                                .foregroundColor(Color("fontColor"))
                                        }
                                }
                                
                            }
                            .sheet(isPresented: $isPresented) {
                                Modal(isPresented: $isPresented, isButtonPressed: $isButtonPressed, modalModule: $exerciseModule)
                            }
                            .padding()
                        }
                    }
                    .padding()
                    
                    //Creating a button to back principal menu
                    if isButtonPressed{
                        Button {
                            self.shouldPopToRootView = false
                            exerciseModule.isCompleted = true
                            exerciseModule.attemps = attempts
                        } label: {
                            HStack {
                                Image(systemName: "house")
                                    .frame(width: 14, height: 14)
                                    .foregroundColor(.accentColor)
                                
                                Text(" Back to menu")
                                    .foregroundColor(.accentColor)
                                    .font(.system(size: 20))
                                
                            }
                            .padding()
                        }
                    }
                    
                }.padding()
            }
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    HStack{
                        Spacer()
                        Text("Exercise")
                            .bold()
                            .font(.title2)
                            .foregroundColor(Color("fontColor"))
                        Spacer()
                        Button {
                            alertController.toggle()
                        } label: {
                            Image("tips")
                        }
                        .padding()
                        
                        //Tips button to help on exercise
                        .alert(isPresented: $alertController) {
                            Alert(title: Text("Tips\n"), message: Text(LocalizedStringKey(exerciseModule.tips)), dismissButton: .default(Text("Got it !")))
                        }
                    }
                    
                }
            }
        }
        .navigationBarBackButtonHidden()
        .navigationBarItems(leading: backButton)
    }
}


struct Modal:View{
    
    @Binding var isPresented:Bool
    @Binding var isButtonPressed: Bool
    @Binding var modalModule:geometricModules
    
    var body: some View{
        NavigationView {
            VStack{
                Image("trofeuModal")
                    .padding()
                
                Text(LocalizedStringKey(modalModule.trophyPhrase))
                    .font(.title)
                    .foregroundColor(Color("fontColor"))
                    .bold()
                    .padding()
                
                Text("You understood the principles.")
                    .foregroundColor(Color("fontColor"))
                    .bold()
                    .padding()
                
                Text(LocalizedStringKey(modalModule.modalExplanantion))
                    .font(.system(size: 14))
                    .frame(maxWidth: .infinity, alignment: .center)
                    .padding()
                
                Spacer()
                Spacer()
                
                HStack {
                    Button {
                        self.isButtonPressed.toggle()
                        isPresented.toggle()
                    } label: {
                        endPageButton()
                            .overlay {
                                Text("Close")
                                    .foregroundColor(.white)
                            }
                    }
                }
            }
            .padding()
        }
        .padding()
    }
}


struct ExerciseAnglesTrianglses_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseAnglesTrianglses(exerciseModule: .constant(geometricModules(trophyIcon: "", trophyExplanation: "", unblockedImage: "", trophyImage: "", trophyPhrase: "", tips: "", exerciseImage: "", modalExplanation: "", correctAnswer: "", alternatives: [], exercise: "", title: "", icon: "", nameOfModule: "", explanationsImage: [], aplicationsImage: [], textExplanation: [], textAplication: [])), shouldPopToRootView: .constant(false))
    }
}
