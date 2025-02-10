//
//  CSVAddRowButton.swift
//  CSVEditor
//
//  Created by Daniel Koller on 07.02.25.
//

import SwiftUI

struct CSVAddRowButton: View {
    
    @ObservedObject var viewModel: CSVViewModel
    
    var body: some View {
        Button {
            withAnimation(.bouncy(duration: 0.5)) {
                viewModel.addRow()
            }
        } label: {
            Label("Add Row", systemImage: "plus")
        }
        .disabled(viewModel.headers.isEmpty)
    }
}

#Preview {
    CSVAddRowButton(viewModel: CSVViewModel.preview)
        .frame(width: 300, height: 100)
}
