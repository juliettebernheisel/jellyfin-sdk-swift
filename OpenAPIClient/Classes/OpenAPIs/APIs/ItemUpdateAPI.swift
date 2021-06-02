//
// ItemUpdateAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

open class ItemUpdateAPI {
    /**
     Gets metadata editor info for an item.
     
     - parameter itemId: (path) The item id. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getMetadataEditorInfo(itemId: UUID, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: MetadataEditorInfo?, _ error: Error?) -> Void)) {
        getMetadataEditorInfoWithRequestBuilder(itemId: itemId).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Gets metadata editor info for an item.
     - GET /Items/{itemId}/MetadataEditor
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - parameter itemId: (path) The item id. 
     - returns: RequestBuilder<MetadataEditorInfo> 
     */
    open class func getMetadataEditorInfoWithRequestBuilder(itemId: UUID) -> RequestBuilder<MetadataEditorInfo> {
        var path = "/Items/{itemId}/MetadataEditor"
        let itemIdPreEscape = "\(APIHelper.mapValueToPathItem(itemId))"
        let itemIdPostEscape = itemIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{itemId}", with: itemIdPostEscape, options: .literal, range: nil)
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters: [String: Any]? = nil

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<MetadataEditorInfo>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Updates an item.
     
     - parameter itemId: (path) The item id. 
     - parameter UNKNOWN_BASE_TYPE: (body) The new item properties. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateItem(itemId: UUID, UNKNOWN_BASE_TYPE: UNKNOWN_BASE_TYPE, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) {
        updateItemWithRequestBuilder(itemId: itemId, UNKNOWN_BASE_TYPE: UNKNOWN_BASE_TYPE).execute(apiResponseQueue) { result -> Void in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Updates an item.
     - POST /Items/{itemId}
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - parameter itemId: (path) The item id. 
     - parameter UNKNOWN_BASE_TYPE: (body) The new item properties. 
     - returns: RequestBuilder<Void> 
     */
    open class func updateItemWithRequestBuilder(itemId: UUID, UNKNOWN_BASE_TYPE: UNKNOWN_BASE_TYPE) -> RequestBuilder<Void> {
        var path = "/Items/{itemId}"
        let itemIdPreEscape = "\(APIHelper.mapValueToPathItem(itemId))"
        let itemIdPostEscape = itemIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{itemId}", with: itemIdPostEscape, options: .literal, range: nil)
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: UNKNOWN_BASE_TYPE)

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = OpenAPIClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Updates an item's content type.
     
     - parameter itemId: (path) The item id. 
     - parameter contentType: (query) The content type of the item. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateItemContentType(itemId: UUID, contentType: String? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) {
        updateItemContentTypeWithRequestBuilder(itemId: itemId, contentType: contentType).execute(apiResponseQueue) { result -> Void in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Updates an item's content type.
     - POST /Items/{itemId}/ContentType
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - parameter itemId: (path) The item id. 
     - parameter contentType: (query) The content type of the item. (optional)
     - returns: RequestBuilder<Void> 
     */
    open class func updateItemContentTypeWithRequestBuilder(itemId: UUID, contentType: String? = nil) -> RequestBuilder<Void> {
        var path = "/Items/{itemId}/ContentType"
        let itemIdPreEscape = "\(APIHelper.mapValueToPathItem(itemId))"
        let itemIdPostEscape = itemIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{itemId}", with: itemIdPostEscape, options: .literal, range: nil)
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters: [String: Any]? = nil

        var urlComponents = URLComponents(string: URLString)
        urlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "contentType": contentType?.encodeToJSON(),
        ])

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = OpenAPIClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

}