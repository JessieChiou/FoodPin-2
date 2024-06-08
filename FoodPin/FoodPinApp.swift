//
//  FoodPinApp.swift
//  FoodPin
//
//  Created by Simon Ng on 26/9/2023.
//

import SwiftUI

@available(iOS 16.0, *)
@main
struct FoodPinApp: App {
    var body: some Scene {
        WindowGroup {
            RestaurantListView()
        }
    }
}
