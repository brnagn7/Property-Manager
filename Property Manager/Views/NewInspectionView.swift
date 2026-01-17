
import SwiftUI

struct NewInspectionView: View {

    var body: some View {
        VStack {
            Text("New Inspection Screen")
                .font(.title)
                .padding()

            Text("We’ll put your real form here next.")
                .foregroundColor(.secondary)

            Spacer()
        }
        .navigationTitle("New Inspection")
        .navigationBarTitleDisplayMode(.inline)
    }
}
