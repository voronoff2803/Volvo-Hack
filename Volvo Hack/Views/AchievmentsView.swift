//
//  AchievmentsView.swift
//  Volvo Hack
//
//  Created by Alexey Voronov on 24.10.2021.
//

import SwiftUI

struct AchievmentsView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text("Достижения")
                .font(.system(size: 34, weight: .semibold))
            Text("Выполняйте достижения и получайте бонусы")
                .font(.system(size: 14, weight: .regular))
                .foregroundColor(Colors.vGray)
            Spacer()
            Divider()
                .padding(.horizontal, -18)
            ScrollView {
                VStack {
                    ForEach(DemoData.achievments, id: \.title) { achievment in
                        AchivementViewItem(achievment: achievment)
                    }
                }
                .padding()
            }
            .padding(.horizontal, -18)
        }
        .padding()
    }
}

struct AchievmentsView_Previews: PreviewProvider {
    static var previews: some View {
        AchievmentsView()
    }
}

struct AchivementViewItem: View {
    let achievment: AchievmentModel
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            HStack {
                VStack {
                    ZStack {
                        Image(achievment.imageName)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 65, height: 65)
                            .offset(x: 3, y: 6)
                        achievment.color
                            .frame(width: 65, height: 65)
                            .cornerRadius(12)
                            .opacity(0.1)
                    }
                }
                VStack(alignment: .leading, spacing: 6) {
                    HStack(spacing: 4) {
                        if achievment.isComplited {
                            Image(systemName: "checkmark.seal.fill")
                                .foregroundColor(Color.green)
                        }
                        Text(achievment.title)
                            .fixedSize(horizontal: false, vertical: true)
                            .font(.system(size: 16, weight: .medium))
                    }
                    //.multilineTextAlignment(.leading)
                    Text(achievment.description)
                        .font(.system(size: 14, weight: .medium))
                    //.multilineTextAlignment(.leading)
                        .foregroundColor(Colors.vGray)
                }
                Spacer()
                
                Text("+100 баллов")
                    .foregroundColor(Colors.bonusesColorText)
                    .font(.system(size: 14, weight: .medium))
                    .padding(5)
                    .frame(width: 98, height: 35)
                    .background(Colors.bonusesColor)
                    .cornerRadius(5)
            }
            .padding()
            .background(Color.white)
            .cornerRadius(12)
            .shadow(color: .black.opacity(0.15), radius: 25, x: 0, y: 8)
            
        }
    }
}


struct AchievmentModel {
    let imageName: String
    let title: String
    let description: String
    let isComplited: Bool
    let color: Color
}
