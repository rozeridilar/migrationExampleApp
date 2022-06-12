//
//  integrations.swift
//  Client iOS
//
//  Created by Kanstantsin Bucha on 8/1/18.
//  Copyright © 2019 Detecta Group. All rights reserved.
//

import Foundation

protocol GatesKeeper {
    func summonAll()
    var bleGate: GateKeeper & BleTransmitter { get }
    var cloudGate: DetectaCloudGate { get }
    var notificationsGate: PushNotificationsGate { get }
}

protocol GateKeeper {
    var isOpen: Bool { get }
    
    func summon()
    func open()
    func close()
}

class DefaultGatesKeeper: Service, GatesKeeper {
    let bleGate: GateKeeper & BleTransmitter = BleGate()
    let cloudGate = DetectaCloudGate()
    let notificationsGate = PushNotificationsGate()
    
    func summonAll() {
        bleGate.summon()
        cloudGate.summon()
        notificationsGate.summon()
    }
}
