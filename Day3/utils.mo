import Array "mo:base/Array";
import Buffer "mo:base/Buffer";
import Int "mo:base/Int";
import List "mo:base/List";
import Nat "mo:base/Nat";
import Text "mo:base/Text";



module {

    public func second_maximum(a : [Int]) : async Int {
        let aMu = Array.thaw<Int>(a);        
        Array.sortInPlace(aMu, Int.compare);
        Array.reverse<Int>(Array.freeze(aMu))[1];

    };

    public func remove_even(n : [Nat]) : async [Nat] {
        Array.filter<Nat>(n, func x = x % 2 != 0);
    };

    public func drop(a : [Text], n : Nat) : async [Text] {

        var localList = List.fromArray<Text>(a);
        var cleansedList = List.drop<Text>(localList, n);
        List.toArray(cleansedList);

    };
};