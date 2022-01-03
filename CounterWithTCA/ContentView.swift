import ComposableArchitecture
import SwiftUI

struct ContentView: View {
    var body: some View {
        AppView(
            store: .init(
                initialState: AppState(),
                reducer: appReducer,
                environment: .init(
                    mainQueue: .main,
                    numberFact: { number in
                        Effect(value: "\(number) is a good number Brent")
                    }
                )
            )
        )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
