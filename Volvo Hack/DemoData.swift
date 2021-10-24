//
//  DemoData.swift
//  Volvo Hack
//
//  Created by Alexey Voronov on 24.10.2021.
//

import Foundation
import SwiftUI


struct DemoData {
    static let achievments: [AchievmentModel] = [AchievmentModel(imageName: "ach1", title: "В гармонии с природой", description: "Проехать 5000 км на электромоторе", isComplited: false, color: Color.green),
                                                 AchievmentModel(imageName: "ach2", title: "Вокруг света", description: "Проехать 40075 км", isComplited: true, color: Color.blue),
                                                 AchievmentModel(imageName: "ach3", title: "Прямиком к Луне", description: "Проехать 384 400 км", isComplited: false, color: Color.red),
                                                 AchievmentModel(imageName: "ach4", title: "Покоритель  дорог", description: "Проехать 100 000 км", isComplited: false, color: Color.gray),
                                                 AchievmentModel(imageName: "ach5", title: "Амбасадор", description: "Пройти 2 ТО у диллера", isComplited: true, color: Color.black)]
}
