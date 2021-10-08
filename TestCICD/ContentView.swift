//
//  ContentView.swift
//  TestCICD
//
//  Created by Nikola Popovic on 8.10.21..
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var viewModel: ContentViewModel
    
    var body: some View {
        VStack {
            Spacer()
            HStack {
                Spacer()
                TextField("First Number", text: $viewModel.firstNumber)
                TextField("Second number", text: $viewModel.secontNumber)
                Spacer()
            }
            Text(viewModel.resultNumber)
                .padding()
            Button(action: {
                viewModel.addNumbers()
            }, label: {
                Text("Add numbers")
            })
            Spacer()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let viewModel = ContentViewModel()
        ContentView(viewModel: viewModel)
    }
}
