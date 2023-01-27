//
//  AstronautsView.swift
//  Moonshot
//
//  Created by Putut Yusri Bahtiar on 27/01/23.
//

import SwiftUI

struct AstronautsView: View {
    let astronauts: Astronauts
    
    var body: some View {
        ScrollView {
            VStack {
                Image(astronauts.id)
                    .resizable()
                    .scaledToFit()
                
                Text(astronauts.description)
                    .padding()
            }
        }
        .background(.darkBackground)
        .navigationTitle(astronauts.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct AstronautsView_Previews: PreviewProvider {
    static let astronauts: [String: Astronauts] = Bundle.main.decode("astronauts.json")
    
    static var previews: some View {
        AstronautsView(astronauts: astronauts["armstrong"]!)
    }
}
