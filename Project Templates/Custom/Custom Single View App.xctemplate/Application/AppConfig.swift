//___FILEHEADER___


import Foundation

final class AppConfig {

    static var isDebug: Bool {
        #if DEBUG
        return false
        #else
        return true
        #endif
    }

}

