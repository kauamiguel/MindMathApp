//
//  graphicsArea.swift
//  aplicativoMacroChallenged
//
//  Created by Kaua Miguel on 29/05/23.
//

import SwiftUI
import Charts

struct graphicsArea: View {
    @Binding var modules:[geometricModules]
    
    var body: some View {
        VStack{
            VStack{
                Text(LocalizedStringKey("In this graph there is a statistic related to the number of errors in each module, so the lower the value of the bar, the more efficient you were in the module."))
                    .font(.system(size: 15))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                
                Spacer()
                Chart {
                    ForEach(modules){index in
                        BarMark(x: .value("a", index.nameOfModule),
                                y: .value("b", index.attemps)
                        )
                        .foregroundStyle(Color.blue.gradient)
                    }
                }
                .frame(height: 400)
                .padding()
                Spacer()
            }
            .padding()
        }
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .principal) {
                VStack {
                    Text(LocalizedStringKey("Chart Area"))
                        .bold()
                        .font(.title2)
                        .foregroundColor(Color("fontColor"))
                }
            }
        }
    }
}

struct answersStatistcs: Identifiable{
    var id = UUID()
    var attempts:Int
    var moduleName:String
}

struct graphicsArea_Previews: PreviewProvider {
    static var previews: some View {
        graphicsArea(modules: .constant([geometricModules(trophyIcon: "", trophyExplanation: "", unblockedImage: "", trophyImage: "", trophyPhrase: "", tips: "", exerciseImage: "", modalExplanation: "", correctAnswer: "", alternatives: [], exercise: "", title: "", icon: "", nameOfModule: "", explanationsImage: [], aplicationsImage: [], textExplanation: [], textAplication: [])]))
    }
}
