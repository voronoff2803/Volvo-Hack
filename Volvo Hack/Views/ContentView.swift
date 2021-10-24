//
//  ContentView.swift
//  Tab-Bar
//
//  Created by Balaji on 07/09/20.
//

import SwiftUI

struct ContentView: View {
    @State var selectedTab = "Профиль"
    var edges = UIApplication.shared.windows.first?.safeAreaInsets
    @Namespace var animation
    @StateObject var modelData = ModelView()
    
    var body: some View {
        //NavigationView{
            VStack(spacing: 0){
                GeometryReader{_ in
                    ZStack {
                        switch selectedTab {
                        case "Лента":
                            FeedView()
                        case "Рейтинг":
                            Text("Рейтинг")
                        case "Профиль":
                            ProfileView()
                        default:
                            Text("Такого экрана нет")
                        }
                    }
                }
                .onChange(of: selectedTab) { (_) in
                    
                    switch(selectedTab){
                    
                    case "Лента": if !modelData.isRestaurantLoad{modelData.loadRestaurant()}
                    case "Рейтинг": if !modelData.isOrderLoad{modelData.loadOrders()}
                    case "Профиль": if !modelData.isRewardLoad{modelData.loadReward()}
                    default: ()
                    }
                }
                
                VStack(spacing: 0) {
                    Colors.vDivider.frame(height: 1)
                    HStack(spacing: 0){
                        
                        ForEach(tabs,id: \.self){tab in
                            
                            TabButton(title: tab, selectedTab: $selectedTab,animation: animation)
                            
                            if tab != tabs.last{
                                Spacer(minLength: 0)
                            }
                        }
                    }
                    .padding(.horizontal,40)
                .padding(.bottom, 0)
                }
            }
            //.ignoresSafeArea(.all, edges: .bottom)
        //}
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

// Tab Button...

struct TabButton : View {
    
    var title : String
    @Binding var selectedTab : String
    var animation : Namespace.ID
    
    var body: some View{
        
        Button(action: {
            withAnimation{selectedTab = title}
        }) {
            
            VStack(spacing: 6){
                
                // Top Indicator....
                
                // Custom Shape...
                
                // Slide in and out animation...
                
                ZStack{
                    
                    CustomShape()
                        .fill(Color.clear)
                        .frame(width: 80, height: 2)
                    
                    if selectedTab == title{
                        
                        CustomShape()
                            .fill(Color.blue)
                            .frame(width: 80, height: 2)
                            .matchedGeometryEffect(id: "Tab_Change", in: animation)
                    }
                }
                .padding(.bottom, 6)
                
                Image(title)
                    .renderingMode(.template)
                    .resizable()
                    .foregroundColor(selectedTab == title ? Color.blue : Color.black)
                    .frame(width: 24, height: 24)
                
                Text(title)
                    .font(.system(size: 11, weight: .medium))
                    .foregroundColor(selectedTab == title ? Color.blue : Color.black)
            }
        }
    }
}


struct CustomShape: Shape {
    
    func path(in rect: CGRect) -> Path {
        
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [.bottomLeft,.bottomRight], cornerRadii: CGSize(width: 10, height: 10))
        
        return Path(path.cgPath)
    }
}

var tabs = ["Лента","Рейтинг","Профиль"]

class ModelView : ObservableObject{
    
    @Published var isOrderLoad = false
    @Published var isRestaurantLoad = false
    @Published var isRewardLoad = false
    
    init() {
        
        // load initial data
        print("Home Data Loaded")
    }
    
    func loadOrders(){
        
        print("order Loaded")
        isOrderLoad = true
    }
    
    func loadRestaurant(){
        
        print("Restaurant Loaded")
        isRestaurantLoad = true
    }
    
    func loadReward(){
        
        print("reward Loaded")
        isRewardLoad = true
    }
}
