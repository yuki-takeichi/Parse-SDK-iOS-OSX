//
//  ParseSwift.swift
//  Parse
//
//  Created by Nikita Lutsenko on 2/23/16.
//  Copyright © 2016 Parse Inc. All rights reserved.
//

import Foundation
import Parse

public class Client {
    let configuration: Configuration

    init(configuration: Configuration) {
        self.configuration = configuration
        Parse.initializeWithConfiguration(configuration.parseClientConfiguration)
    }
}

