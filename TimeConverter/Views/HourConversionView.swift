//
//  HourConversionView.swift
//  TimeConverter
//
//  Created by Russell Gordon on 2025-02-24.
//

import SwiftUI

struct HourConversionView: View {
    
    //Stored properties
    @State var viewModel = HourConversionViewModel()
    
    //Computed properties
    var body: some View {
        VStack {
            //Output
            if let conversionResult = viewModel.conversionResult {
                
                VStack(spacing: 0) {
                    
                    HourConversionItemView(conversionResult: conversionResult)
                        .padding(.bottom, 30)
                    
                    
                    Button {
                        viewModel.saveResult()
                        
                        print("There are \(viewModel.resultHistory.count) elements in the resultHistory array. ")
                    } label: {
                        Text("Save")
                    }
                    .buttonStyle(.borderedProminent)
                    .padding(.bottom)
                    
                }
                .frame(height: 250)
                
                
            } else {
                ContentUnavailableView("Unable to perform conversion", systemImage: "gear.badge.questionmark", description: Text(viewModel.recoverySuggestion))
                    .frame(height: 250)
            }
            
            //Input
            TextField(
                "Enter a value for time in hours",
                text: $viewModel
                    .providedHours)
            .textFieldStyle(.roundedBorder)
            
            HStack {
                Text("History")
                    .font(.title2)
                    .bold()
                Spacer()
            }
            .padding(.top)
            
            List(viewModel.resultHistory) {
                currentResult in
                
                HourConversionItemView(conversionResult: currentResult)
            }
            .listStyle(.plain)
        }
        navigationTitle("Temperature Converter")
    }
}

#Preview {
    NavigationStack {
        HourConversionView()
    }
}
