//
// GenresAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

open class GenresAPI {
    /**
     Gets a genre, by name.
     
     - parameter genreName: (path) The genre name. 
     - parameter userId: (query) The user id. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getGenre(genreName: String, userId: UUID? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: BaseItemDto?, _ error: Error?) -> Void)) {
        getGenreWithRequestBuilder(genreName: genreName, userId: userId).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Gets a genre, by name.
     - GET /Genres/{genreName}
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - parameter genreName: (path) The genre name. 
     - parameter userId: (query) The user id. (optional)
     - returns: RequestBuilder<BaseItemDto> 
     */
    open class func getGenreWithRequestBuilder(genreName: String, userId: UUID? = nil) -> RequestBuilder<BaseItemDto> {
        var path = "/Genres/{genreName}"
        let genreNamePreEscape = "\(APIHelper.mapValueToPathItem(genreName))"
        let genreNamePostEscape = genreNamePreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{genreName}", with: genreNamePostEscape, options: .literal, range: nil)
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters: [String: Any]? = nil

        var urlComponents = URLComponents(string: URLString)
        urlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "userId": userId?.encodeToJSON(),
        ])

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<BaseItemDto>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Gets all genres from a given item, folder, or the entire library.
     
     - parameter startIndex: (query) Optional. The record index to start at. All items with a lower index will be dropped from the results. (optional)
     - parameter limit: (query) Optional. The maximum number of records to return. (optional)
     - parameter searchTerm: (query) The search term. (optional)
     - parameter parentId: (query) Specify this to localize the search to a specific item or folder. Omit to use the root. (optional)
     - parameter fields: (query) Optional. Specify additional fields of information to return in the output. (optional)
     - parameter excludeItemTypes: (query) Optional. If specified, results will be filtered out based on item type. This allows multiple, comma delimited. (optional)
     - parameter includeItemTypes: (query) Optional. If specified, results will be filtered in based on item type. This allows multiple, comma delimited. (optional)
     - parameter isFavorite: (query) Optional filter by items that are marked as favorite, or not. (optional)
     - parameter imageTypeLimit: (query) Optional, the max number of images to return, per image type. (optional)
     - parameter enableImageTypes: (query) Optional. The image types to include in the output. (optional)
     - parameter userId: (query) User id. (optional)
     - parameter nameStartsWithOrGreater: (query) Optional filter by items whose name is sorted equally or greater than a given input string. (optional)
     - parameter nameStartsWith: (query) Optional filter by items whose name is sorted equally than a given input string. (optional)
     - parameter nameLessThan: (query) Optional filter by items whose name is equally or lesser than a given input string. (optional)
     - parameter enableImages: (query) Optional, include image information in output. (optional, default to true)
     - parameter enableTotalRecordCount: (query) Optional. Include total record count. (optional, default to true)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getGenres(startIndex: Int? = nil, limit: Int? = nil, searchTerm: String? = nil, parentId: UUID? = nil, fields: [ItemFields]? = nil, excludeItemTypes: [String]? = nil, includeItemTypes: [String]? = nil, isFavorite: Bool? = nil, imageTypeLimit: Int? = nil, enableImageTypes: [ImageType]? = nil, userId: UUID? = nil, nameStartsWithOrGreater: String? = nil, nameStartsWith: String? = nil, nameLessThan: String? = nil, enableImages: Bool? = nil, enableTotalRecordCount: Bool? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: BaseItemDtoQueryResult?, _ error: Error?) -> Void)) {
        getGenresWithRequestBuilder(startIndex: startIndex, limit: limit, searchTerm: searchTerm, parentId: parentId, fields: fields, excludeItemTypes: excludeItemTypes, includeItemTypes: includeItemTypes, isFavorite: isFavorite, imageTypeLimit: imageTypeLimit, enableImageTypes: enableImageTypes, userId: userId, nameStartsWithOrGreater: nameStartsWithOrGreater, nameStartsWith: nameStartsWith, nameLessThan: nameLessThan, enableImages: enableImages, enableTotalRecordCount: enableTotalRecordCount).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Gets all genres from a given item, folder, or the entire library.
     - GET /Genres
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - parameter startIndex: (query) Optional. The record index to start at. All items with a lower index will be dropped from the results. (optional)
     - parameter limit: (query) Optional. The maximum number of records to return. (optional)
     - parameter searchTerm: (query) The search term. (optional)
     - parameter parentId: (query) Specify this to localize the search to a specific item or folder. Omit to use the root. (optional)
     - parameter fields: (query) Optional. Specify additional fields of information to return in the output. (optional)
     - parameter excludeItemTypes: (query) Optional. If specified, results will be filtered out based on item type. This allows multiple, comma delimited. (optional)
     - parameter includeItemTypes: (query) Optional. If specified, results will be filtered in based on item type. This allows multiple, comma delimited. (optional)
     - parameter isFavorite: (query) Optional filter by items that are marked as favorite, or not. (optional)
     - parameter imageTypeLimit: (query) Optional, the max number of images to return, per image type. (optional)
     - parameter enableImageTypes: (query) Optional. The image types to include in the output. (optional)
     - parameter userId: (query) User id. (optional)
     - parameter nameStartsWithOrGreater: (query) Optional filter by items whose name is sorted equally or greater than a given input string. (optional)
     - parameter nameStartsWith: (query) Optional filter by items whose name is sorted equally than a given input string. (optional)
     - parameter nameLessThan: (query) Optional filter by items whose name is equally or lesser than a given input string. (optional)
     - parameter enableImages: (query) Optional, include image information in output. (optional, default to true)
     - parameter enableTotalRecordCount: (query) Optional. Include total record count. (optional, default to true)
     - returns: RequestBuilder<BaseItemDtoQueryResult> 
     */
    open class func getGenresWithRequestBuilder(startIndex: Int? = nil, limit: Int? = nil, searchTerm: String? = nil, parentId: UUID? = nil, fields: [ItemFields]? = nil, excludeItemTypes: [String]? = nil, includeItemTypes: [String]? = nil, isFavorite: Bool? = nil, imageTypeLimit: Int? = nil, enableImageTypes: [ImageType]? = nil, userId: UUID? = nil, nameStartsWithOrGreater: String? = nil, nameStartsWith: String? = nil, nameLessThan: String? = nil, enableImages: Bool? = nil, enableTotalRecordCount: Bool? = nil) -> RequestBuilder<BaseItemDtoQueryResult> {
        let path = "/Genres"
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters: [String: Any]? = nil

        var urlComponents = URLComponents(string: URLString)
        urlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "startIndex": startIndex?.encodeToJSON(),
            "limit": limit?.encodeToJSON(),
            "searchTerm": searchTerm?.encodeToJSON(),
            "parentId": parentId?.encodeToJSON(),
            "fields": fields?.encodeToJSON(),
            "excludeItemTypes": excludeItemTypes?.encodeToJSON(),
            "includeItemTypes": includeItemTypes?.encodeToJSON(),
            "isFavorite": isFavorite?.encodeToJSON(),
            "imageTypeLimit": imageTypeLimit?.encodeToJSON(),
            "enableImageTypes": enableImageTypes?.encodeToJSON(),
            "userId": userId?.encodeToJSON(),
            "nameStartsWithOrGreater": nameStartsWithOrGreater?.encodeToJSON(),
            "nameStartsWith": nameStartsWith?.encodeToJSON(),
            "nameLessThan": nameLessThan?.encodeToJSON(),
            "enableImages": enableImages?.encodeToJSON(),
            "enableTotalRecordCount": enableTotalRecordCount?.encodeToJSON(),
        ])

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<BaseItemDtoQueryResult>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

}