// @generated
//  This file was automatically generated and should not be edited.

import Apollo
import Foundation

public final class LoadUsedCategoriesQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query loadUsedCategories {
      usedCategories(orderBy: name_asc) {
        __typename
        ...CategoryDetails
      }
    }
    """

  public let operationName: String = "loadUsedCategories"

  public var queryDocument: String { return operationDefinition.appending("\n" + CategoryDetails.fragmentDefinition) }

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("usedCategories", arguments: ["orderBy": "name_asc"], type: .list(.object(UsedCategory.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(usedCategories: [UsedCategory?]? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "usedCategories": usedCategories.flatMap { (value: [UsedCategory?]) -> [ResultMap?] in value.map { (value: UsedCategory?) -> ResultMap? in value.flatMap { (value: UsedCategory) -> ResultMap in value.resultMap } } }])
    }

    public var usedCategories: [UsedCategory?]? {
      get {
        return (resultMap["usedCategories"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [UsedCategory?] in value.map { (value: ResultMap?) -> UsedCategory? in value.flatMap { (value: ResultMap) -> UsedCategory in UsedCategory(unsafeResultMap: value) } } }
      }
      set {
        resultMap.updateValue(newValue.flatMap { (value: [UsedCategory?]) -> [ResultMap?] in value.map { (value: UsedCategory?) -> ResultMap? in value.flatMap { (value: UsedCategory) -> ResultMap in value.resultMap } } }, forKey: "usedCategories")
      }
    }

    public struct UsedCategory: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["ServiceCategory"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLFragmentSpread(CategoryDetails.self),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init() {
        self.init(unsafeResultMap: ["__typename": "ServiceCategory"])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var fragments: Fragments {
        get {
          return Fragments(unsafeResultMap: resultMap)
        }
        set {
          resultMap += newValue.resultMap
        }
      }

      public struct Fragments {
        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public var categoryDetails: CategoryDetails? {
          get {
            if !CategoryDetails.possibleTypes.contains(resultMap["__typename"]! as! String) { return nil }
            return CategoryDetails(unsafeResultMap: resultMap)
          }
          set {
            guard let newValue = newValue else { return }
            resultMap += newValue.resultMap
          }
        }
      }
    }
  }
}

public struct CategoryDetails: GraphQLFragment {
  /// The raw GraphQL definition of this fragment.
  public static let fragmentDefinition: String =
    """
    fragment CategoryDetails on Category {
      __typename
      id
      name
      icon
    }
    """

  public static let possibleTypes: [String] = ["Category"]

  public static var selections: [GraphQLSelection] {
    return [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
      GraphQLField("name", type: .nonNull(.scalar(String.self))),
      GraphQLField("icon", type: .nonNull(.scalar(String.self))),
    ]
  }

  public private(set) var resultMap: ResultMap

  public init(unsafeResultMap: ResultMap) {
    self.resultMap = unsafeResultMap
  }

  public init(id: GraphQLID, name: String, icon: String) {
    self.init(unsafeResultMap: ["__typename": "Category", "id": id, "name": name, "icon": icon])
  }

  public var __typename: String {
    get {
      return resultMap["__typename"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "__typename")
    }
  }

  public var id: GraphQLID {
    get {
      return resultMap["id"]! as! GraphQLID
    }
    set {
      resultMap.updateValue(newValue, forKey: "id")
    }
  }

  public var name: String {
    get {
      return resultMap["name"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "name")
    }
  }

  public var icon: String {
    get {
      return resultMap["icon"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "icon")
    }
  }
}
