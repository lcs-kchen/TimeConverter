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
                    
                    
                    Button
                    
                }
                
                
            }
        }
    }
}
