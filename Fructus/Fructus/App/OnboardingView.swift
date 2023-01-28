import SwiftUI

struct OnboardingView: View {
    @State private var fruits = Fruit.sampleData
    
    var body: some View {
        TabView {
            ForEach(fruits){ fruit in
                FruitCardView(fruit: fruit)
            }
        }
        .tabViewStyle(.page)
        .padding(.vertical, 20)
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
