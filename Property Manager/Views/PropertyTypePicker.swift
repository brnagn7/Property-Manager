
import SwiftUI

struct PropertyTypePicker: View {

    @Binding var selected: PropertyType

    var body: some View {
        HStack(spacing: 8) {
            ForEach(PropertyType.allCases, id: \.self) { type in
                Button {
                    selected = type
                } label: {
                    Text(type.rawValue)
                        .frame(maxWidth: .infinity)
                        .padding(.vertical, 8)
                        .background(
                            selected == type
                            ? Color.blue
                            : Color(.systemBackground)
                        )
                        .foregroundColor(
                            selected == type
                            ? .white
                            : .primary
                        )
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.gray.opacity(0.2), lineWidth: 1)
                        )
                        .cornerRadius(10)
                }
            }
        }
    }
}
