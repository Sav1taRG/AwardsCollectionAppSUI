import SwiftUI

struct AwardsView: View {
    var body: some View {
        NavigationView {
            VStack {
                ScrollView {
                    GradientRectangles()
                        .frame(width: 200, height: 200)
                    PathView()
                        .frame(width: 200, height: 200)
                    CurvesView()
                        .frame(width: 200, height: 200)
                    CloverView(
                        cloverIsExpanded: .constant(true),
                        color1: .green,
                        color2: .gray,
                        strokeColor: .white,
                        strokeWidth: 0.5,
                        shadowColor: .green,
                        shadowRadius: 20)
                        .frame(width: 200, height: 200)
                }
            }
            .navigationBarTitle("Awards")
        }
    }
}

struct AwardsView_Previews: PreviewProvider {
    static var previews: some View {
        AwardsView()
    }
}
