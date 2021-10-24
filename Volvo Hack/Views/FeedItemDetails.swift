//
//  FeedItemDetails.swift
//  Volvo Hack
//
//  Created by Alexey Voronov on 24.10.2021.
//

import SwiftUI

struct FeedItemDetails: View {
    var body: some View {
        NavigationView {
            ScrollView {
                ZStack(alignment: .bottomLeading) {
                    Image("feed1")
                        .resizable()
                        .scaledToFill()
                    VStack(alignment: .leading, spacing: 10) {
                        Text("Пересекая земли")
                            .font(.system(size: 28, weight: .semibold))
                            .foregroundColor(.white)
                        
                        Text("Настало время совместить приятное с полезным. Мы исследуем красоты нашей безграничной страны и ближнего зарубежья на безупречных автомобилях Volvo.")
                            .font(.system(size: 14, weight: .regular))
                            .foregroundColor(.white)
                    }
                    .padding()
                }
                VStack {
                    Text("В любом путешествии, пожалуй, самый яркий, самый эмоциональный момент — это старт. Когда берёшь свои вещи и делаешь первый шаг, зная, что впереди неизведанное. В конце весны, совместно с Volvo, мы запустили вдохновляющий тревел-проект «Пересекая земли». Мы спланировали и начали серию автомобильных экспедиций по России и ближнему зарубежью, чтобы понять, как далеко можно зайти, имея в арсенале надежный автомобиль и огромное желание путешествовать. Для этих поездок мы выбрали места не только популярные и живописные, но и интересные с точки зрения культурологии и биоразнообразия. Это будет серия осознанных, интеллектуальных путешествий на стильных скандинавских автомобилях. Разные природные зоны, разная флора и фауна, разные люди, разные акценты, наречия и обычаи — всё это можно увидеть, не покупая визы и не стоя в очереди к рамке металлоискателя. Мы заберемся в горы, оседлаем коней, помчимся на велосипедах и сплавимся на байдарках — обещаем, будет интересно.")
                    
                    Button(action: {}) {
                        Spacer()
                        Text("Перейти на сайт")
                            .font(.system(size: 17, weight: .medium))
                            .foregroundColor(.white)
                            .padding(16)
                        Spacer()
                    }
                    .background(Colors.cBlue)
                    .cornerRadius(12)
                }
                .padding()
            }
            .ignoresSafeArea(.all, edges: .top)
            .navigationTitle("")
            .navigationBarHidden(true)
        }
    }
}

struct FeedItemDetails_Previews: PreviewProvider {
    static var previews: some View {
        FeedItemDetails()
    }
}
