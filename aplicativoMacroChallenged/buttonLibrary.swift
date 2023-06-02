//
//  buttonLibrary.swift
//  aplicativoMacroChallenged
//
//  Created by Kaua Miguel on 12/05/23.
//

import SwiftUI

struct buttonLibrary: View {
    var body: some View {
        Text("")
    }
}

// Pattern to create a button with size and color specific to the first screen
struct patternButtonFirstScreen: View{
    var body: some View{
        RoundedRectangle(cornerRadius: 13)
            .frame(width: 350, height: 80)
            .foregroundColor(Color("buttonColor"))
    }
}

//Pattern icon to each button in first screen
struct patternButtonIcon: View{
    var body: some View{
        RoundedRectangle(cornerRadius: 10)
            .foregroundColor(Color("iconBackground"))
            .frame(width: 60, height: 60)
    }
}

//End of page button to continue the module
struct endPageButton:View{
    var body: some View{
        RoundedRectangle(cornerRadius: 14)
            .frame(width: 119, height: 50)
            .foregroundColor(.accentColor)
    }
}

struct exercisesBackground:View{
    var body: some View{
        RoundedRectangle(cornerRadius: 14)
            .foregroundColor(Color("buttonColor"))
            .frame(width: 332, height: 205.45)
    }
}

struct backgroundAlernatives:View{
    var body: some View{
        RoundedRectangle(cornerRadius: 10)
            .frame(width: 160, height: 100)
    }
}
             
struct buttonLibrary_Previews: PreviewProvider {
    static var previews: some View {
        buttonLibrary()
    }
}
