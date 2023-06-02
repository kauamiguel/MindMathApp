//
//  ContentView.swift
//  aplicativoMacroChallenged
//
//  Created by Kaua Miguel on 09/05/23.
//

import SwiftUI

//Describing each characteristic of modules
struct geometricModules: Identifiable{
    var id = UUID()
    var attemps:Int = 0
    var trophyIcon:String
    var trophyExplanation:String
    var unblockedImage:String
    var trophyImage:String
    var trophyPhrase:String
    var isCompleted:Bool = false
    var title:String
    var icon:String
    var nameOfModule:String
    var explanationsImage:[String]
    var aplicationsImage:[String]
    var textExplanation:[String]
    var textAplication:[String]
    var exercise:String
    var alternatives:[String]
    var exerciseImage:String
    var correctAnswer:String
    var modalExplanantion:String
    var tips:String
    
    
    init(trophyIcon:String, trophyExplanation:String, unblockedImage:String, trophyImage:String ,trophyPhrase:String ,tips:String ,exerciseImage:String ,modalExplanation:String ,correctAnswer: String ,alternatives:[String],exercise:String, title: String, icon: String, nameOfModule: String, explanationsImage: [String], aplicationsImage: [String], textExplanation: [String], textAplication: [String]) {
        self.trophyIcon = trophyIcon
        self.trophyExplanation = trophyExplanation
        self.unblockedImage = unblockedImage
        self.trophyImage = trophyImage
        self.trophyPhrase = trophyPhrase
        self.tips = tips
        self.exerciseImage = exerciseImage
        self.modalExplanantion = modalExplanation
        self.explanationsImage = explanationsImage
        self.correctAnswer = correctAnswer
        self.alternatives = alternatives
        self.exercise = exercise
        self.title = title
        self.icon = icon
        self.nameOfModule = nameOfModule
        self.explanationsImage = explanationsImage
        self.aplicationsImage = aplicationsImage
        self.textExplanation = textExplanation
        self.textAplication = textAplication
    }
}

struct ContentView: View {
    
    //Creating an objetct to each module
    @State var appModules:[geometricModules] = [
        
geometricModules( trophyIcon: "piramideIcon", trophyExplanation: "Triangles Wizard is a trophy that can only be earned by completing the Triangles module. Learning about it is of paramount importance, as your knowledge applies in many areas of the real world.", unblockedImage: "piramideImage", trophyImage: "blockedTriangle", trophyPhrase: "Triangle wizard", tips: "Remember that the sum of all interior angles is 180 degrees.\n\nIf in doubt, go back to the theory page.", exerciseImage: "exerciseImage", modalExplanation: "The value you found of 7.2° was the same as Erastothenes arrived at, and with that he could prove that the earth had a radius of approximately 40,000 KM, but that is a subject for the next module...",correctAnswer: "7.2", alternatives: ["7.1", "7.2", "7.3", "7.4"], exercise: "Assuming that the blue-painted angles of the triangle above both measure 86.4 degrees, what is the value of the green angle?", title: "Why 180 degrees?",icon: "angulosTrianguloImageIcon", nameOfModule: "Angles in Triangle", explanationsImage: ["triangle", "partedTriangle", "angles"], aplicationsImage: ["flatEarth", "roundedEarth"], textExplanation: ["Let's take this pretty triangle as a base.", "Regardless of the way, we can divide the triangle into 3 parts, as long as the angles remain intact...", "If we add the angles side by side, we can see that they form half of a circle, which is 180 degrees."], textAplication: ["A fellow named Eratosthenes of ancient Greece noticed that when the light was exactly on top of a wooden stake, it cast no shadow...", "With the most advanced locomotion tools of the time (On foot), Erastóthenes went to check if the same phenomenon happened at the same time in another city, and he realized that the stakes were in shadow, which implies the curvature of the earth. 🤯 \n\nLet's see that, just using knowledge about angles in a triangle, a sage from 250 BC was able to reach extremely profound conclusions, and without the use of google."]),
        
geometricModules( trophyIcon: "chessIcon", trophyExplanation: "Chess Boy is a trophy that you can only win if you complete the rectangles module. Rectangle are in several areas of our lives, such as in buildings, in board games, in everyday calculations and etc. Learning these concepts will make you have a different worldview.", unblockedImage: "chessImage", trophyImage: "blockedRectangle", trophyPhrase: "Chess boy", tips: "Remember that the knight moves in an L, and therefore moves 3 squares. Draw the possible moves he can make to reach the path.\n\nIf in doubt, go back to the theory page.", exerciseImage: "exerciseChess", modalExplanation: "The knight always moves 3 spaces, so the number of spaces he moves is always a multiple of 3." , correctAnswer: "9", alternatives: ["7", "8", "10", "9"], exercise:
                            "What is the minimum number of squares the horse will need to walk given its standard movement to reach the marked area?", title: "What are rectangles?",icon: "retangulosIcon", nameOfModule: "Rectangles", explanationsImage: ["rectangleFirst", "square", "rectangleSecond"], aplicationsImage: ["chess", "hourseMoviments"], textExplanation: [
                                "A rectangle is a geometric figure with four equal sides and four equal angles. The bottom sides are called the base and the side the height.",
                                "Using the above definition, we can conclude that a square is a type of rectangle.",
                                "One important property we can exploit is the perimeter, which we define as the sum of all sides. In the case above, 2 times the green side + 2 times the orange side."], textAplication: [
                                    "Chess is a board game that uses logical reasoning and geometry. The board is composed of squares of the same size interspersed between black and white",
                                    "The knight always moves in an L, that is, two squares (horizontal and vertical) and the next square that makes a right angle. \n\nAnother curiosity is that the knight always ends up in a square with the opposite color to the initial one. "]),
        
geometricModules( trophyIcon: "buldingIcon", trophyExplanation: "Area Specialist is a trophy that can only be earned if you complete the Triangles module. Constructions and buildings require several area calculations in which engineers have to be sharp. Such discipline is the most commonplace in everyday life.", unblockedImage: "buldingImage", trophyImage: "blockedArea", trophyPhrase: "Area specialist", tips:
                            "The area of ​​any rectangle is base x height, so you need to find out how much the base and height are worth, which the figure tells you in a non-direct way.\n\nIf in doubt, go back to the theory page.", exerciseImage: "soccerFieldExercise", modalExplanation:
                            "Always when calculating an area, we must add all the horizontal parts and all the vertical parts, so we can multiply the base by the height.", correctAnswer: "896", alternatives: ["896", "850", "900", "890"], exercise:
                            "What is the area of ​​the figure above?", title:
                            "What is area?",icon: "areasIcon", nameOfModule: "Areas", explanationsImage: ["emptyRectangle", "firstConceptArea", "AbstractionArea", "demonstrationArea"], aplicationsImage: ["socceField"], textExplanation: [
                                "Area can be defined as the space within a figure in two dimensions.", "Assuming the green square above has 1 unit...", "So the area of ​​the larger rectangle equals 4 squares.", "Now imagine several smaller squares inside our rectangle, the area will be the sum of all of them. But how can we generalize this?\n\nRealize that a way to account for the number of squares can be by multiplying the squares horizontally and multiplying by the of the vertical.\n\nSo the area of ​​a rectangle can be defined as base*height."], textAplication: [
                                    "Football fields can be seen as two-dimensional figures, and therefore you can calculate the area.\n\nThe GPS on the players' vest uses the measurements of the field and the GPS distance to calculate how many KM the player has run."]),
        
        
        
geometricModules( trophyIcon: "hdIcon", trophyExplanation: "Rounded magic is a trophy that you only earn if you complete the triangles module. Circumferences are extremely important elements in several areas, for example astronomy. Understanding these figures allows us to understand the language with which the world communicates.", unblockedImage: "HdImage", trophyImage: "blockedCircle", trophyPhrase: "Rounded magic", tips: "The circumference has 360 degrees and its half 180, so you need to find the half of half a circle.\n\nIf you feel in doubt, go back to the theory page.", exerciseImage: "circleExercise", modalExplanation:
                            "Given that the circumference is 360°, half is 180° and half of that is 90°.", correctAnswer: "90", alternatives: ["120", "80", "90", "100"], exercise:
                            "Given the properties of the circle, what is the angle above?", title:
                            "What is circumference?",icon: "circleIcon", nameOfModule:
                            "Circumference", explanationsImage: ["circle", "radiusExplanation", "circleAngle"], aplicationsImage: ["hardDisk"], textExplanation: ["A circle is a figure where all points have the same distance from a common point.", "What do you mean? All points on the circle have the same distance from the central point, as shown in the image above", "An important property of circumference is that it has 360°.\n\nWhich allows us to reach the conclusion that half a circle has 180°, which is half of 360°."], textAplication: ["The hard drives of current computers are divided into several circles called tracks, where the mechanical arm of the disk searches for the track to store or retrieve a value that is stored. This arm uses some calculations on the circumference to find the search track ."]),
        
    ]
    
    
    //Each boolean value is used as value to activate the naviLink
    @State var isActive:[Bool] = [false,false,false,false]
    
    var body: some View {
        NavigationView{
            ZStack{
                Color("backGroundColor")
                    .ignoresSafeArea()
                VStack {
                    HStack {
                        NavigationLink {
                            graphicsArea(modules: $appModules)
                        } label: {
                            Image("chartIcon")
                        }
                        Spacer()
                        Image("appIcon")
                        Spacer()
                        NavigationLink {
                            trophyArea(moduleTrophys: $appModules)
                        } label: {
                            Image("trofeu")
                        }
                        
                    }
                    .padding()

                    Spacer()
                    Spacer()

                    //Creating a navigation only for the first module
                    ForEach(0..<appModules.count){index in
                        NavigationLink(destination: ConteudosAngulosNoTriangulo(moduleSelected: $appModules[index], rootIsActive: $isActive[index]),
                                       isActive: self.$isActive[index]
                        ) {
                            if appModules[index].isCompleted{
                                RoundedRectangle(cornerRadius: 13)
                                    .stroke(Color.green, lineWidth: 1)
                                    .frame(width: 350, height: 80)
                                    .foregroundColor(Color("buttonColor"))
                                    .overlay {
                                        HStack{
                                            patternButtonIcon()
                                                .overlay(content: {
                                                    Image(appModules[index].icon)
                                                })
                                                .padding()
                                            Spacer()
                                            Text(LocalizedStringKey(appModules[index].nameOfModule))
                                                .font(Font.custom("SF-pro", size: 20))
                                                .italic()
                                                .foregroundColor(Color("fontColor"))
                                                .bold()
                                            Spacer()
                                            Text("✅")
                                                .padding()
                                        }
                                    }
                                
                            }else{
                                RoundedRectangle(cornerRadius: 13)
                                    .frame(width: 350, height: 80)
                                    .foregroundColor(Color("buttonColor"))
                                    .overlay {
                                        HStack{
                                            patternButtonIcon()
                                                .overlay(content: {
                                                    Image(appModules[index].icon)
                                                })
                                                .padding()
                                            Spacer()
                                            Text(LocalizedStringKey(appModules[index].nameOfModule))
                                                .font(Font.custom("SF-pro", size: 20))
                                                .italic()
                                                .foregroundColor(Color("fontColor"))
                                                .bold()
                                                .frame(maxWidth: .infinity, alignment: .center)
                                            Spacer()
                                
                                        }
                                    }
                            }
                        }
                        Spacer()
                    }
                    
                    ForEach(0..<13) { _ in
                        Spacer()
                    }
                }
                .padding()
            }
        }
        .navigationBarBackButtonHidden()
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

