//
//  FBAnnotationCluster.swift
//  FBAnnotationClusteringSwift
//
//  Created by Robert Chen on 4/2/15.
//  Copyright (c) 2015 Robert Chen. All rights reserved.
//

import Foundation
import MapKit

public class FBAnnotationCluster : NSObject, MKAnnotation {
    
    public var coordinate = CLLocationCoordinate2D(latitude: 0, longitude: 0)
    
    public var title:String? = "cluster"
    public var subtitle:String? = nil
    
    public var annotations:[MKAnnotation] = []
    
    public override var hash: Int {
        return "\(self.coordinate.latitude),\(self.coordinate.longitude)".hashValue
    }
    
    public override func isEqual(object: AnyObject?) -> Bool {
        return self.hash == object?.hash
    }
}