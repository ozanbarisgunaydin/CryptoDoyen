//
//  SettingsView.swift
//  CryptoDoyen
//
//  Created by Ozan Barış Günaydın on 12.10.2021.
//

import SwiftUI

struct SettingsView: View {
    
    let linkedInURL = URL(string: "https://www.linkedin.com/in/ozanbg/")!
    let resumeURL = URL(string: "https://drive.google.com/file/d/1-6XVb_I8IeqcdutdmalN_6wHYU2sVXzG/view?usp=sharing")!
    let gitHubURL = URL(string: "https://github.com/ozanbarisgunaydin")!
    let youtubeURL = URL(string: "https://www.youtube/c/swiftfulthinking")!
    let defaultURL = URL(string: "https://www.google.com")!
    
    var body: some View {
        NavigationView{
            ZStack{
                Color.theme.background
                    .ignoresSafeArea()
                List{
                    sectionOfOBG
                        .listRowBackground(Color.theme.background)
                    sectionOfApp
                        .listRowBackground(Color.theme.background)
                    applicationSection
                        .listRowBackground(Color.theme.background)
                }
            }
            .font(.headline)
            .accentColor(.blue)
            .listStyle(GroupedListStyle())
            .navigationTitle("Settings")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    XMarkButton()
                }
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .preferredColorScheme(.dark)
    }
}


extension SettingsView {
//    Burası bana göre düzenlenecek:
    private var sectionOfOBG: some View {
        Section(header: Text("Developer")) {
            VStack(alignment: .leading) {
                Image("software-development")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    .shadow(color: .gray, radius: 3, x: 2, y: 2)
                    Text("This app developed by Ozan Barış GÜNAYDIN.")
                                .font(.callout)
                                .fontWeight(.medium)
                                .foregroundColor(Color.theme.accent)
            }
            .padding(.vertical)
            HStack {
                Image("linkedin")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .clipShape(RoundedRectangle(cornerRadius: 2))
                    .shadow(color: .gray, radius: 1, x: 1, y: 1)
                Link("Review my profil on LinkedIn.", destination: linkedInURL)
            }
            .padding(.vertical)
            HStack {
                Image("github")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .clipShape(RoundedRectangle(cornerRadius: 2))
                    .shadow(color: .gray, radius: 2, x: 2, y: 2)
                Link("Review my profil on GitHub.", destination: gitHubURL)
            }
            .padding(.vertical)
            HStack {
                Image("cv")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .clipShape(RoundedRectangle(cornerRadius: 2))
                    .shadow(color: .gray, radius: 1, x: 2, y: 2)
                Link("Review my resume. 🙂", destination: resumeURL)
            }
            .padding(.vertical)
        }
    }
    
    private var sectionOfApp: some View {
        Section(header: Text("Crypto Doyen")) {
            VStack(alignment: .leading) {
                Image("logo")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    .shadow(color: .gray, radius: 3, x: 2, y: 2)
                    Text("This app uses MVVM Architecture, Comine and Core Data. It uses SwiftUI. Therefore, it is written 100% in Swift. The benefits of this project are multi-threading, publishers/subscribers and data persistance. The summary function of this app; it contains currencies of cryptos according to the free API from CoinGecko. The user can add and remove coins her/his own portfolio. In addition, user can review the selected coin's 7 days history of price chance on chart and other informations of coins on the Detail View. On the other hand, user can sort all coins according to the price change percentage, current value, rank and user's holdings.")
                                .font(.callout)
                                .fontWeight(.medium)
                                .foregroundColor(Color.theme.accent)
                                .multilineTextAlignment(.leading)
            }
            .padding(.vertical)
            HStack {
                Image("youtube")
                    .resizable()
                    .frame(width: 50, height: 38)
                    .clipShape(RoundedRectangle(cornerRadius: 2))
                    .shadow(color: .gray, radius: 1, x: 2, y: 2)
                Link("Thanks for good guide for 'SwiftfulThink' channel.", destination: resumeURL)
            }
            .padding(.vertical)
        }
    }
    
    private var applicationSection: some View {
        Section(header: Text("Application")) {
            Link("Terms of Service", destination: defaultURL)
            Link("Privacy Policy", destination: defaultURL)
            Link("Company Website", destination: defaultURL)
            Link("Learn More", destination: defaultURL)
        }
    }
    
}
