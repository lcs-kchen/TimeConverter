//
//  HourConversionItemView.swift
//  TimeConverter
//
//  Created by Russell Gordon on 2025-02-24.
//

import SwiftUI

struct HourConversionItemView: View {
    //Stored properties
    let conversionResult: HourConversion
    
    //Computed properties
    var body: some View {
        HStack(spacing: 0) {
            Text("\(conversionResult.timeInHours.formatted()) minutes, ")
            
            Text("\(conversionResult.timeInMinutes.formatted()) seconds")
        }
        .font(.largeTitle)
    }
}
