// SiteReference.swift
// 12/26/20

public enum SiteReference: Hashable {
    case authority(_ siteAuthority: String, useHTTPS: Bool = true) // ex. "reddit.com" or "veganfoody.tumblr.com"
    case pageURL(_ urlString: String) // ex. "https://www.youtube.com/user/HumbleMechanic"
    
}

public extension SiteReference {
    var siteAuthority: String? {
        guard case let .authority(siteAuthority, _) = self else { return nil }
        return siteAuthority
    }
    
    var useHTTPS: Bool {
        switch self {
        case .authority(_, let useHTTPS):
            return useHTTPS
            
        case .pageURL(let urlString):
            return urlString.hasPrefix("https")
        }
    }
    
    var pageURL: String {
        switch self {
        case let .authority(siteAuthority, useHTTPS):
            let schemePrefix = "http\(useHTTPS ? "s" : "")://"
            return schemePrefix + siteAuthority
            
        case .pageURL(let urlString):
            return urlString
        }
    }
    
}
