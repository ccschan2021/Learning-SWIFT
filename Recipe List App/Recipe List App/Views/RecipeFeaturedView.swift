//
//  RecipeFeaturedView.swift
//  Recipe List App
//
//  Created by Steve Chan on 26/10/2022.
//

import SwiftUI

struct RecipeFeaturedView: View {
    
    @EnvironmentObject var model:RecipeModel
    @State var isDetailViewShowing = false
    @State var tabSelectionIndex = 0
    
    var body: some View {
        
        let featuredRecipes = model.recipes.filter({ $0.featured })
       
        /*
        let tempRecipes = model.recipes.filter { r in
            // Condition in which to include a recipe in this array
            if r.featured == true {
                return
            }
         
        }
        */
        
        VStack(alignment: .leading) {
         
            Text("Featured Recipes")
                .bold()
                .padding(.leading)
                .padding(.top, 40)
                .font(.largeTitle)
            
            GeometryReader { geo in
                
                TabView (selection: $tabSelectionIndex){
                    
                    // Loop through each recipe
                    ForEach (0..<featuredRecipes.count) { index in
                        
                        // Recipe card button
                        Button(action: {
                            // Show the recipe detail sheet
                            self.isDetailViewShowing = true
                        }, label: {
                            // Recipe card
                            ZStack {
                                Rectangle()
                                    .foregroundColor(.white)
                                
                                VStack(spacing: 0){
                                    Image(featuredRecipes[index].image)
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .clipped()
                                    Text(featuredRecipes[index].name)
                                        .padding(5)
                                }
                            }
                        })
                        .tag(index)
                        .buttonStyle(PlainButtonStyle())
                        .frame(width: geo.size.width - 40, height: geo.size.height - 100, alignment: .center)
                        .cornerRadius(15)
                        .shadow(color: Color(.sRGB, red: 0, green: 0, blue: 0, opacity: 0.5), radius: 10, x: -5, y: 5)
                    }
                }
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
                .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
            }
            
            VStack (alignment: .leading, spacing: 10) {
                Text("Preparation Time:")
                    .font(.headline)
                Text(model.recipes[tabSelectionIndex].prepTime)
            
                Text("Highlights")
                    .font(.headline)
                RecipeHighlights(highlights: model.recipes[tabSelectionIndex].highlights)
            }
            .padding([.leading, . bottom])
        }
        .sheet(isPresented: $isDetailViewShowing) {
            // Show the Recipe Detail View
            RecipeDetailView(recipe: featuredRecipes[tabSelectionIndex])
        }
        /*
        .onAppear(perform: {
            setFeaturedIndex()
        })
        */
    }
    
    /*
    func setFeaturedIndex() {
        
        // Find the index of first recipe that is featured
        var index = model.recipes.firstIndex { (recipe) -> Bool in
            return recipe.featured
        }
        tabSelectionIndex = index ?? 0
    }
    */
}

struct RecipeFeaturedView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeFeaturedView()
            .environmentObject(RecipeModel())
    }
}
