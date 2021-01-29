//___FILEHEADER___

struct SampleResponse: Codable {
    static var keyDecodingStrategy: JSONDecoder.KeyDecodingStrategy { .convertFromSnakeCase }
    enum RootKey: String, CodingKey {
        case data
    }
    enum DataKey: String, CodingKey {
        case parameter
    }
    let parameter: String
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: RootKey.self)
        let nestedContainer = try container.nestedContainer(keyedBy: DataKey.self, forKey: .data)
        parameter = try nestedContainer.decode(String.self, forKey: .parameter)
    }
}


