//
// AuthenticateUserByName.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** The authenticate user by name request body. */
public struct AuthenticateUserByName: Codable, Hashable {

    /** Gets or sets the username. */
    public var username: String?
    /** Gets or sets the plain text password. */
    public var pw: String?
    /** Gets or sets the sha1-hashed password. */
    public var password: String?

    public init(username: String? = nil, pw: String? = nil, password: String? = nil) {
        self.username = username
        self.pw = pw
        self.password = password
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case username = "Username"
        case pw = "Pw"
        case password = "Password"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: CodingKeys.self)
        try encoderContainer.encodeIfPresent(username, forKey: .username)
        try encoderContainer.encodeIfPresent(pw, forKey: .pw)
        try encoderContainer.encodeIfPresent(password, forKey: .password)
    }
}