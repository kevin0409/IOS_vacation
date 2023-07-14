//
//  CountryuDetailView.swift
//  Flags
//
//  Created by 박승호 on 2023/07/11.
//

import SwiftUI

struct CountryDetailView: View {
    let country : Country
    var body: some View {
        List{
            Image(country.file)
            Text(country.name)
            Text("\(country.name.count) milion people")
        }
        .navigationTitle(country.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct CountryDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            CountryDetailView(country: Country(name: "대한민국🇰🇷", file: "south_korea"))
        }
    }
}
