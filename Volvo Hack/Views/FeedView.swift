//
//  FeedView.swift
//  Volvo Hack
//
//  Created by Alexey Voronov on 24.10.2021.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        NavigationView {
            VStack(alignment: .leading, spacing: 0) {
                Text("Рекомендации")
                    .font(.system(size: 34, weight: .semibold))
                Text("Персональные рекомендаци на основе информации о поездках, автомобиле и стиля вождения")
                    .font(.system(size: 14, weight: .regular))
                    .foregroundColor(Colors.vGray)
                Spacer()
                Divider()
                    .padding(.horizontal, -18)
                ScrollView {
                    VStack(alignment: .leading, spacing: 20) {
                        Spacer()
                        
                        FeedItemSmallView(imageName: "feed2", title: "Мгновенное обновление")
                        
                        Image("banner")
                            .resizable()
                            .scaledToFill()
                            .cornerRadius(12)
                            .shadow(color: .black.opacity(0.15), radius: 25, x: 0, y: 8)
                        
                        NavigationLink(destination: FeedItemDetails()) {
                            FeedItemView(imageName: "feed1",
                                         title: "Пересекая земли",
                                         description: "Настало время совместить приятное с полезным. Мы исследуем красоты нашей безграничной страны и ближнего зарубежья на безупречных автомобилях Volvo.")
                        }
                        
                        Spacer()
                    }.padding(.horizontal)
                }.padding(.horizontal, -18)
            }
            .padding([.top, .leading, .trailing])
            .navigationTitle("")
            .navigationBarHidden(true)
        }

    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}

struct FeedItemView: View {
    let imageName: String
    let title: String
    let description: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Image(imageName)
                .resizable()
                .scaledToFill()
            VStack(alignment: .leading, spacing: 10) {
                Text(title)
                    .font(.system(size: 28, weight: .semibold))
                    .foregroundColor(.black)
                Text(description)
                    .font(.system(size: 14, weight: .regular))
                    .foregroundColor(Colors.vGray)
                    .multilineTextAlignment(.leading)
            }.padding([.leading, .bottom, .trailing])
        }
        .background(Color.white)
        .cornerRadius(12)
        .shadow(color: .black.opacity(0.15), radius: 25, x: 0, y: 8)
    }
}

struct FeedItemSmallView: View {
    let imageName: String
    let title: String
    
    var body: some View {
        VStack() {
            ZStack(alignment: .bottomLeading) {
                Image(imageName)
                    .resizable()
                    .scaledToFill()
                Text(title)
                    .font(.system(size: 28, weight: .semibold))
                    .padding()
                    .foregroundColor(.white)
            }
        }
        .background(Color.white)
        .cornerRadius(12)
        .shadow(color: .black.opacity(0.15), radius: 25, x: 0, y: 8)
    }
}
