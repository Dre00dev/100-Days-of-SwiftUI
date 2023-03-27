//
//  AstronautView.swift
//  MoonShot
//
//  Created by Andres Pulgarin on 4/19/23.
//

import SwiftUI

struct AstronautView: View {
    let astronaut: Astronaut
    var body: some View {
        ScrollView{
            VStack{
                Image(astronaut.id)
                    .resizable()
                    .scaledToFit()
                
                Text(astronaut.description)
                    .padding()
            }
        }
        .background(.darkBackground)
        .navigationTitle(astronaut.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct AstronautView_Previews: PreviewProvider {
    static let astronaut: [String: Astronaut] = Bundle.main.decode("Astronaut.json")
    static var previews: some View {
        AstronautView(astronaut: astronaut["armstrong"]!)
        //force unwrapped because armstrong def there chief
        
    }
}
