//
//  ShopView.swift
//  Volvo Hack
//
//  Created by Alexey Voronov on 24.10.2021.
//

import SwiftUI

struct ShopView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    ZStack {
                        Image("shopBG")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 250)
                        VStack() {
                            Text("379")
                                .font(.system(size: 60, weight: .bold))
                            Text("Баллов на счету")
                                .font(.system(size: 17, weight: .medium))
                                .foregroundColor(Colors.vGray)
                            Image("award")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 32, height: 32)
                                .foregroundColor(Colors.cBlue)
                        }
                    }
                    .padding(.horizontal, -18)
                    
                    Spacer(minLength: 28)
                    
                    HStack {
                        Text("Потратить баллы")
                            .font(.system(size: 20, weight: .semibold))
                        Spacer()
                    }
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(alignment: .top, spacing: 15) {
                            VStack(alignment: .leading, spacing: 6) {
                                ZStack(alignment: .bottomTrailing) {
                                    Image("shop1")
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 204, height: 108)
                                        .clipped()
                                    HStack {
                                        Text("4000")
                                            .font(.system(size: 17, weight: .medium))
                                            .foregroundColor(Color.white)
                                        Image("award")
                                            .foregroundColor(Color.white)
                                    }
                                    .padding(4)
                                }
                                .cornerRadius(12)
                                .shadow(color: .black.opacity(0.15), radius: 25, x: 0, y: 8)
                                
                                Text("Скидка на ТО 15%")
                                    .font(.system(size: 17, weight: .medium))
                                Text("Volvo Car Favorit, Москва")
                                    .font(.system(size: 15, weight: .regular))
                                    .foregroundColor(Colors.vGray)
                            }
                            VStack(alignment: .leading, spacing: 6) {
                                ZStack(alignment: .bottomTrailing) {
                                    Image("shop2")
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 204, height: 108)
                                        .clipped()
                                    HStack {
                                        Text("5000")
                                            .font(.system(size: 17, weight: .medium))
                                            .foregroundColor(Color.white)
                                        Image("award")
                                            .foregroundColor(Color.white)
                                    }
                                    .padding(4)
                                }
                                .cornerRadius(12)
                                .shadow(color: .black.opacity(0.15), radius: 25, x: 0, y: 8)
                                
                                Text("Набор аксессуаров \nTypography")
                                    .font(.system(size: 17, weight: .medium))
                                Text("Volvo Car Favorit, Москва")
                                    .font(.system(size: 15, weight: .regular))
                                    .foregroundColor(Colors.vGray)
                            }
                            Spacer()
                        }.padding(.horizontal)
                    }.padding(.horizontal, -18)
                    
                    Spacer(minLength: 30)
                    
                    HStack {
                        Text("Партнеры")
                            .font(.system(size: 20, weight: .semibold))
                        Spacer()
                    }
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(alignment: .top, spacing: 15) {
                            VStack(alignment: .leading, spacing: 6) {
                                ZStack(alignment: .topLeading) {
                                    Image("shop3")
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 204, height: 118)
                                        .clipped()
                                    VStack(alignment: .leading, spacing: 4) {
                                        Text("Иль Дэ Ботэ")
                                            .font(.system(size: 17, weight: .medium))
                                        Text("Скидка 10% на покупку \nот 1500₽")
                                            .font(.system(size: 15, weight: .regular))
                                        Spacer(minLength: 0)
                                        HStack {
                                            Spacer()
                                            Text("1000")
                                                .font(.system(size: 17, weight: .medium))
                                                .foregroundColor(Color.white)
                                            Image("award")
                                                .foregroundColor(Color.white)
                                        }
                                    }
                                    .foregroundColor(.white)
                                    .padding(8)
                                }
                                .cornerRadius(12)
                                .shadow(color: .black.opacity(0.15), radius: 25, x: 0, y: 8)
                                .frame(width: 204, height: 118)
                            }
                            VStack(alignment: .leading, spacing: 6) {
                                ZStack(alignment: .topLeading) {
                                    Image("shop4")
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 204, height: 118)
                                        .clipped()
                                    VStack(alignment: .leading, spacing: 4) {
                                        Text("OneTwoTrip")
                                            .font(.system(size: 17, weight: .medium))
                                        Text("Скидка 10% на бронирование")
                                            .font(.system(size: 15, weight: .regular))
                                        Spacer(minLength: 0)
                                        HStack {
                                            Spacer()
                                            Text("500")
                                                .font(.system(size: 17, weight: .medium))
                                                .foregroundColor(Color.white)
                                            Image("award")
                                                .foregroundColor(Color.white)
                                        }
                                    }
                                    .foregroundColor(.white)
                                    .padding(8)
                                }
                                .cornerRadius(12)
                                .shadow(color: .black.opacity(0.15), radius: 25, x: 0, y: 8)
                                .frame(width: 204, height: 118)
                            }
                            Spacer()
                        }.padding(.horizontal)
                    }.padding(.horizontal, -18)
                    
                    Spacer()
                }
                .padding(.horizontal)
                
            }
            .ignoresSafeArea(.all, edges: .top)
            .navigationTitle("")
            .navigationBarHidden(true)
        }
    }
}

struct ShopView_Previews: PreviewProvider {
    static var previews: some View {
        ShopView()
    }
}
