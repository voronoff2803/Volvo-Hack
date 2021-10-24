//
//  ContentView.swift
//  CircularProgressView
//
//  Created by Mahdi
//

import SwiftUI

struct CircleChartView: View {
    /// The radius of the bigger circle everything is drawn on.
    let radius: CGFloat = 26
    
    let tintColot: Color
    let backgroundColor: Color = Colors.vDivider
    let screenBackgroundColor: Color = .white
    let pointHidden: Bool
    /// The Progress.
    @Binding var progress: CGFloat /* 0 <= progress <= 1 */
    /// Angle number 1.
    @State private var angle1: Angle = .zero
    /// Angle number 2.
    @State private var angle2: Angle = .radians(3 * .pi / 2)
    /// The stroke's width.
    @State private var lineWidth: CGFloat = 3
    /// Right to left or left to right progressing.
    @State private var rightToLeft: Bool = false
    /// The angle to offset `angle.start` and `angles.end` with.
    /// This will just turn the circle to make creating some arcs possible.
    @State private var offsetAngle: Angle = .radians(.pi / 4)
    /// The geometry used to draw shapes.
    @State private var geo: ProgressGeometry = .zero
    
    var body: some View {
        populateProgressGeometry()
        return    CircleArc(startAngle: geo.angles.start, endAngle: geo.angles.end, lineWidth: lineWidth)
            .frame(width: radius * 2, height: radius * 2)
            .foregroundColor(backgroundColor)
            .overlay(
                CircleArc(
                    startAngle: geo.progressAngles.start,
                    endAngle: geo.progressAngles.end,
                    lineWidth: lineWidth
                )
                    .foregroundColor(tintColot)
            )
            .if(!pointHidden) {
                $0.overlay(
                    Circle()
                        .frame(width: geo.indicatorRadius * 2, height: geo.indicatorRadius * 2)
                        .foregroundColor(screenBackgroundColor)
                        .offset(x: radius)
                        .rotationEffect(-geo.circleAngle)
                )}
        
            .if(!pointHidden) {
                $0.overlay(
                    Circle()
                        .frame(maxWidth: geo.indicatorRadius, maxHeight: geo.indicatorRadius)
                        .foregroundColor(tintColot)
                        .offset(x: radius)
                        .rotationEffect(-geo.circleAngle)
                )}
        
        
        
        /// Controllers
        
        
            .animation(.easeInOut.speed(0.5))
            .onChange(of: progress) { newValue in
                /// Progress == 0 might result in animation errors.
                if newValue == 0 { progress = 0.001 }
            }
    }
    
    private func populateProgressGeometry() {
        DispatchQueue.main.async {
            self.geo = .init(
                progress: self.progress,
                radius: self.radius,
                angle1: self.angle1,
                angle2: self.angle2,
                lineWidth: self.lineWidth,
                rightToLeft: self.rightToLeft,
                offsetAngle: self.offsetAngle
            )
        }
    }
    
}

// Preview Provider
struct CircleChartView_Previews: PreviewProvider {
    static var previews: some View {
        CircleChartView(tintColot: .blue, pointHidden: false, progress: .constant(0.3))
    }
}
