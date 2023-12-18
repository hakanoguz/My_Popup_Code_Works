//
//  MapDataModel.swift
//  PopupExampleView
//
//  Created by HaKaN OGUZ on 12/18/23.
//

import ArcGIS
import Combine

/// A very basic data model class containing a Map. Since a `Map` is not an observable object,
/// clients can use `MapDataModel` as an example of how you would store a map in a data model
/// class. The class inherits from `ObservableObject` and the `Map` is defined as a @Published
/// property. This allows SwiftUI views to be updated automatically when a new map is set on the model.
/// Being stored in the model also prevents the map from continually being created during redraws.
/// The data model class would be expanded upon in client code to contain other properties required
/// for the model.
class MapDataModel: ObservableObject {
    /// The `Map` used for display in a `MapView`.
    @Published var map: Map
    
    /// Creates a `MapDataModel`.
    /// - Parameter map: The `Map` used for display.
    init(map: Map) {
        self.map = map
    }
}
