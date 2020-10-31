import SwiftUI

@available(iOS 13.0, macOS 10.15, *)
public struct ZiBottomBar : View {
    @State var height: CGFloat = 35
    public var body: some View {
        BackgrounShape(height :  self.height)
    }
}

@available(iOS 13.0, macOS 10.15, *)
public struct BackgrounShape: Shape {
    var height: CGFloat? = 35
    
    public func path(in rect: CGRect) -> Path {
        return Path{ path in
            path.move(to: CGPoint(x:0, y: height ?? 35))
            path.addLine(to: CGPoint(x: 0, y: rect.height))
            path.addLine(to: CGPoint(x: rect.width, y:rect.height))
            path.addLine(to: CGPoint(x: rect.width, y: height ?? 35))
            path.addArc(
                center: CGPoint(x: (Int(rect.width)/2), y: Int(height ?? 35)),
                radius: CGFloat(height ?? 35),
                startAngle: .zero,
                endAngle: .init(degrees: 180),
                clockwise: true
            )
        }
    }
}
