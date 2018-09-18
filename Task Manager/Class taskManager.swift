//
//  Class taskManager.swift
//  Task Manager
//
//  Created by Miranda Jessie on 9/17/18.
//  Copyright © 2018 Miranda Jessie. All rights reserved.
//

import Foundation

class taskManager {
    let title: String
    let details: String
    var completionStatus: Bool
    var completionBy: Date?
    
    
    init(title: String, details: String, completionStatus: Bool) {
        self.title = title
        self.details = details
        self.completionStatus = completionStatus
    }
}
