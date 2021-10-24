//
//  Profile.swift
//  Volvo Hack
//
//  Created by Alexey Voronov on 24.10.2021.
//

import SwiftUI

struct ProfileView: View {
    @State var fuelProgress: CGFloat = 0.82
    @State var carProgress: CGFloat = 0.35
    
    @State var isAchievmentsShowing: Bool = false
    
    var body: some View {
        NavigationView {
            ScrollView {
                Spacer()
                HStack(spacing: 20) {
                    Image("volvoCar")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 180, height: 140)
                    VStack(alignment: .leading, spacing: 20) {
                        HStack {
                            ZStack {
                                Image("fuel")
                                    .foregroundColor(Colors.vDivider)
                                CircleChartView(tintColot: Colors.vGreen, pointHidden: false, progress: $fuelProgress)
                            }
                            .offset(x: -8, y: 0)
                            
                            VStack(alignment: .leading) {
                                HStack(alignment: .bottom) {
                                    Text("7.1")
                                        .font(.system(size: 22, weight: .medium))
                                    Text("л/100км")
                                        .font(.system(size: 12, weight: .regular))
                                        .offset(x: 0, y: -2)
                                }
                                
                                Text("Меньше чем 74%\nпользователей")
                                    .font(.system(size: 11, weight: .regular))
                                    .foregroundColor(Colors.vGray)
                            }
                        }
                        HStack {
                            ZStack {
                                Image("car")
                                    .foregroundColor(Colors.vDivider)
                                CircleChartView(tintColot: Colors.cBlue, pointHidden: true, progress: $carProgress)
                            }
                            .offset(x: -8, y: 0)
                            
                            VStack(alignment: .leading) {
                                HStack(alignment: .bottom) {
                                    Text("4.2")
                                        .font(.system(size: 22, weight: .medium))
                                }
                                
                                Text("Аккуратность вождения")
                                    .font(.system(size: 11, weight: .regular))
                                    .foregroundColor(Colors.vGray)
                            }
                        }
                    }
                    .padding()
                }
                VStack(alignment: .leading, spacing: 5) {
                    Text("Александр Филимонов")
                        .font(.system(size: 28, weight: .medium))
                    
                    HStack {
                        Text("Я езжу на")
                            .font(.system(size: 15, weight: .regular))
                        Text("Volvo XC90")
                            .font(.system(size: 15, weight: .bold))
                        Spacer()
                    }
                    .foregroundColor(Colors.vGray)
                    
                    Spacer(minLength: 20)
                    NavigationLink(destination: ShopView()) {
                    HStack {
                            HStack {
                                Image("award")
                                    .frame(width: 24, height: 24)
                                    .padding(6)
                                    .foregroundColor(Colors.cBlue)
                                VStack(alignment: .leading) {
                                    Text("379")
                                        .foregroundColor(.black)
                                        .font(.system(size: 38, weight: .semibold))
                                    Text("Баллы")
                                        .font(.system(size: 15, weight: .regular))
                                        .foregroundColor(Colors.vGray)
                                }
                            }
                            Spacer()
                            HStack {
                                Image("ranking")
                                    .frame(width: 24, height: 24)
                                    .padding(6)
                                    .foregroundColor(Colors.cBlue)
                                VStack(alignment: .leading) {
                                    Text("1859")
                                        .foregroundColor(.black)
                                        .font(.system(size: 38, weight: .semibold))
                                    Text("Место в рейтинге")
                                        .font(.system(size: 15, weight: .regular))
                                        .foregroundColor(Colors.vGray)
                                }
                            }
                    }
                    }
                    .frame(height: 80)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(12)
                    .shadow(color: .black.opacity(0.15), radius: 18, x: 0, y: 6)
                    Spacer(minLength: 25)
                    Divider()
                        .padding(.horizontal, -20)
                    Spacer(minLength: 30)
                    HStack {
                        Text("Достижения")
                            .font(.system(size: 20, weight: .semibold))
                        Spacer()
                        Image("chevron")
                            .frame(width: 16, height: 16)
                            .foregroundColor(.black)
                    }
                    .onTapGesture {
                        isAchievmentsShowing.toggle()
                    }
                    
                    Spacer()
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(alignment: .top, spacing: 20) {
                            AchivementView(color: Color.green, imageName: "ach1", title: "В гармонии с природой")
                            AchivementView(color: Color.blue, imageName: "ach2", title: "Вокруг света")
                            AchivementView(color: Color.red, imageName: "ach3", title: "Прямиком к Луне")
                            AchivementView(color: Color.gray, imageName: "ach4", title: "Покоритель дорог")
                        }
                        .padding(16)
                        .onTapGesture {
                            isAchievmentsShowing.toggle()
                        }
                    }.padding(-16)
                    //Spacer()
                }
                .padding()
            }
            .navigationBarTitle("")
            .navigationBarHidden(true)
        }
        .sheet(isPresented: $isAchievmentsShowing) {
            AchievmentsView()
        }
    }
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

	
struct AchivementView: View {
    let color: Color
    let imageName: String
    let title: String
    
    var body: some View {
        HStack {
            VStack {
                ZStack {
                    Image(imageName)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 85, height: 85)
                        .offset(x: 3, y: 6)
                    color
                        .frame(width: 85, height: 85)
                        .cornerRadius(12)
                    .opacity(0.1)
                }
                Text(title)
                    .font(.system(size: 13, weight: .medium))
                    .frame(width: 80)
                    .multilineTextAlignment(.center)
            }
        }
    }
}
