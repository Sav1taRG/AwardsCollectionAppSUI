import SwiftUI

struct CloverLeafView: View {
    var color1: Color
    var color2: Color
    var rotation: Double
    var strokeColor: Color
    var strokeWidth: Double
    var shadowColor: Color
    var shadowRadius: CGFloat
    
    var body: some View {
        
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            let size = min(width, height)
            let middle = size / 2
            let farLine = size * 0.9
            let nearLine = size * 0.1
            
            ZStack {
                Path { path in
                    path.move(to: CGPoint(x: middle, y: nearLine / 0.5 ))
                    path.addQuadCurve(
                        to: CGPoint(x: middle, y: middle),
                        control: CGPoint(x: nearLine, y: nearLine)
                    )
                    path.addQuadCurve(
                        to: CGPoint(x: middle, y: nearLine / 0.5),
                        control: CGPoint(x: farLine, y: nearLine)
                    )
                }
                .fill(
                    RadialGradient(
                        colors: [color1, color2],
                        center: .center,
                        startRadius: size * 0.05,
                        endRadius: size * 0.5
                    )
                )
                .shadow(color: shadowColor, radius: shadowRadius)
                
                Path { path in
                    path.move(to: CGPoint(x: middle, y: nearLine / 0.4 ))
                    path.addLine(to: CGPoint(x: middle, y: middle / 1.1))
                }
                .stroke(strokeColor, style: StrokeStyle(lineWidth: strokeWidth))
            }
            .rotationEffect(.degrees(rotation))
        }
    }
}

struct CustomAwardView_Previews: PreviewProvider {
    static var previews: some View {
        CloverLeafView(color1: .green, color2: .gray, rotation: 0, strokeColor: .white, strokeWidth: 0.5, shadowColor: .green, shadowRadius: 30)
            .frame(width: 300, height: 300)
    }
}
