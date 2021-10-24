//
//  RatingView.swift
//  Volvo Hack
//
//  Created by Alexey Voronov on 24.10.2021.
//

import SwiftUI

struct RatingView: View {
    var body: some View {
        VStack {
            Image("ratingTop")
                .resizable()
                .scaledToFit()
            Spacer()
            
            ScrollView() {
                VStack(alignment: .leading) {
                    HStack() {
                        VStack(alignment: .leading, spacing: 4) {
                            Text("Ваш рейтинг")
                            HStack {
                                Text("379")
                                    .font(.system(size: 14, weight: .medium))
                                Image("award")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 16, height: 16)
                            }
                            .foregroundColor(Colors.myRatingTextBalance)
                        }
                        Spacer()
                        Text("1281")
                        Image("myRatingUp")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 30, height: 30)
                    }
                    .foregroundColor(Colors.myRatingText)
                    .padding(14)
                    .background(Colors.myRatingBG)
                    .cornerRadius(12)
                    Spacer(minLength: 20)
                    VStack(spacing: 20) {
                        RatingItemView(number: "1", title: "Алексей А.", balance: "4859", isUser: false)
                        RatingItemView(number: "2", title: "Ольга В.", balance: "4859", isUser: false)
                        RatingItemView(number: "3", title: "Даниил М.   ", balance: "4859", isUser: false)
                        RatingItemView(number: "4", title: "Владимир Г.", balance: "4120", isUser: false)
                        RatingItemView(number: "1858", title: "Даниил М.", balance: "456", isUser: false)
                        RatingItemView(number: "1859", title: "Вы", balance: "379", isUser: true)
                        RatingItemView(number: "1860", title: "Владимир Г.", balance: "265", isUser: false)
                    }
                    .padding()
                }
            }
        }
        .padding()
    }
}

struct RatingView_Previews: PreviewProvider {
    static var previews: some View {
        RatingView()
    }
}


struct RatingItemView: View {
    let number: String
    let title: String
    let balance: String
    let isUser: Bool
    
    var body: some View {
        HStack {
            Text("#\(number)")
                .frame(width: 80, alignment: .leading)
                .foregroundColor(!isUser ? Colors.cBlue : Color.green)
            Text(title)
                .foregroundColor(!isUser ? Colors.cBlue : Color.green)
            Spacer()
            Text(balance)
                .foregroundColor(Colors.cBlue)
            Image("award")
                .foregroundColor(Colors.cBlue)
        }
        .font(.system(size: 17, weight: .medium))
    }
}
