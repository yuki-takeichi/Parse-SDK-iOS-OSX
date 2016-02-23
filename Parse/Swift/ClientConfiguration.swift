//
//  ClientConfiguration.swift
//  Parse
//
//  Created by Nikita Lutsenko on 2/23/16.
//  Copyright © 2016 Parse Inc. All rights reserved.
//

import Foundation
import Parse

extension Client {
    public struct Configuration {
        public var applicationId: String
        public var clientKey: String?

        public var server: String

        public var isLocalDatastoreEnabled: Bool = true

        public var applicationGroupIdentifier: String?
        public var containingApplicationBundleIdentifier: String?

        public var networkRetryAttempts: UInt = 5

        init(applicationId: String, server: String = "https://api.parse.com/1") {
            self.applicationId = applicationId
            self.server = server
        }

        internal var parseClientConfiguration: ParseClientConfiguration {
            return ParseClientConfiguration {
                $0.applicationId = self.applicationId
                $0.clientKey = self.clientKey

                $0.server = self.server

                $0.localDatastoreEnabled = self.isLocalDatastoreEnabled

                $0.applicationGroupIdentifier = self.applicationGroupIdentifier
                $0.containingApplicationBundleIdentifier = self.containingApplicationBundleIdentifier
                
                $0.networkRetryAttempts = self.networkRetryAttempts
            }
        }
    }
}
