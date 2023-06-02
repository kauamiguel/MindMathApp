//
//  trophyArea.swift
//  aplicativoMacroChallenged
//
//  Created by Kaua Miguel on 25/05/23.
//

import SwiftUI

struct trophyArea: View {
    @Binding var moduleTrophys:[geometricModules]
    @State var isPresented:[Bool] =  [false,false,false,false]
    
    var body: some View {
        
        ZStack {
                Color("backGroundColor")
                    .ignoresSafeArea()
            VStack{
                Spacer()
                ForEach(0..<moduleTrophys.count){index in
                    
                    if moduleTrophys[index].isCompleted{
                        Button {
                            isPresented[index] = true
                        } label: {
                            RoundedRectangle(cornerRadius: 13)
                                .frame(width: 350, height: 80)
                                .foregroundColor(Color("buttonColor"))
                                .overlay {
                                    HStack{
                                        Image(moduleTrophys[index].trophyIcon)
                                            .padding()
                                        Spacer()
                                        Text(LocalizedStringKey(moduleTrophys[index].trophyPhrase))
                                            .font(Font.custom("SF-pro", size: 20))
                                            .italic()
                                            .foregroundColor(Color("fontColor"))
                                            .bold()
                                            .frame(maxWidth: .infinity, alignment: .center)
                                        Spacer()
                                        
                                    }
                                }
                        }
                        .sheet(isPresented: $isPresented[index]) {
                            modalTrophy(trophy: $moduleTrophys[index])}
                        }else{
                        RoundedRectangle(cornerRadius: 13)
                            .frame(width: 350, height: 80)
                            .foregroundColor(Color("buttonColor"))
                            .overlay {
                                HStack{
                                    Image(moduleTrophys[index].trophyImage)
                                        .padding()
                                    Spacer()
                                    Text(LocalizedStringKey(moduleTrophys[index].trophyPhrase))
                                        .font(Font.custom("SF-pro", size: 20))
                                        .italic()
                                        .foregroundColor(Color("fontColor"))
                                        .bold()
                                    Spacer()
                                    Text("      ")
                                }
                            }
                    }
                    
                }
                ForEach(0..<13) { _ in
                    Spacer()
                }
            }
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    VStack {
                        Text(LocalizedStringKey("Trophy area"))
                            .bold()
                            .font(.title2)
                            .foregroundColor(Color("fontColor"))
                    }
                }
            }
            .padding()
        }
    }
}

struct modalTrophy:View{
    @Binding var trophy:geometricModules
    var body: some View{
        VStack{
            Image(trophy.unblockedImage)
                .padding()
            
            Text(LocalizedStringKey(trophy.trophyPhrase))
                .font(.title)
                .bold()
                .foregroundColor(Color("fontColor"))
            
            Text(LocalizedStringKey(trophy.trophyExplanation))
                .font(.system(size: 15))
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
        }
        .padding()
    }
}

struct trophyArea_Previews: PreviewProvider {
    static var previews: some View {
        trophyArea(moduleTrophys: .constant([geometricModules(trophyIcon: "", trophyExplanation: "", unblockedImage: "", trophyImage: "", trophyPhrase: "", tips: "", exerciseImage: "", modalExplanation: "", correctAnswer: "", alternatives: [], exercise: "", title: "", icon: "", nameOfModule: "", explanationsImage: [], aplicationsImage: [], textExplanation: [], textAplication: [])]))
    }
}
