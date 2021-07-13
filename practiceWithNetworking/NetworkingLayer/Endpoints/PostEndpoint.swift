

import Foundation

enum PostEndpoint: Endpoint {
    case getData
    case postData
    case putData
    case patchData
    case deleteData
    
    var scheme: String {
        switch self {
        default:
            return "https"
        }
    }
    
    var baseURL: String {
        switch self {
        default:
            return "jsonplaceholder.typicode.com"
        }
    }
    
    var path: String {
        switch self {
        case .getData:
            return "/posts/1/comments"
        case .postData:
            return "/posts"
        case .putData:
            return "/posts/1"
        case .patchData:
            return "/posts/1"
        case .deleteData:
            return "/posts/1"
        }
    }
    
    var method: HTTPMethods {
        switch self {
        case .getData:
            return .get
        case .postData:
            return .post
        case .putData:
            return .put
        case .patchData:
            return .patch
        case .deleteData:
            return .delete
        }
    }
    
    var urlParameters: [URLQueryItem] {
        switch self {
        case .getData:
            return []
        case .postData:
            return [URLQueryItem(name: "Foo", value: "Bar")]
        case .putData:
            return [URLQueryItem(name: "title", value: "Foo"),
                    URLQueryItem(name: "body", value: "Bar")]
        case .patchData:
            return [URLQueryItem(name: "title", value: "Foo")]
        case .deleteData:
            return []
        }
    }
    
    var bodyParameters: [String: Any] {
        switch self {
        case .getData:
            return [:]
        case .postData:
            return ["Foo": "Bar"]
        case .putData:
            return ["title": "Foo",
                    "body": "Bar"]
        case .patchData:
            return ["title": "Foo"]
        case .deleteData:
            return [:]
        }
    }
    
    var headers: [String:String] {
        switch self {
        
        case .getData:
            return [:]
        case .postData:
            return ["application/json":"Content-Type"]
        case .putData:
            return ["application/json":"Content-type"]
        case .patchData:
            return ["application/json":"Content-type"]
        case .deleteData:
            return [:]
        }
    }
}
