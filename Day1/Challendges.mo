import Bool "mo:base/Bool";
import Nat "mo:base/Nat";
actor {  
  
  // Challendge 1 
  public func multiply(n : Nat, m : Nat) : async Nat {
    return(n*m)
  };

  // Challendge 2 
  public func volume(n : Nat) : async Nat {
    return(n*n*n)
  };

  // Challendge 3
  public func hours_to_minutes(n : Nat) : async Nat {
    return(n*60)
  };


  //Challendge 4
    //set_counter sets the value of counter to n.
  var counter : Nat = 0;
  
  public func set_counter (n : Nat) : async Nat {
      counter := 0 + n;
      return(counter);
    };
    // get_counter returns the current value of counter.
  public func get_counter () : async Nat {
      return(counter);
    };

  //Challendge 5

    // Module operator % - gives remainder of the whole number example 
    //8 % 5 = 3 ; if remainder is 0 than its a whole number 

    public func test_divide(n : Nat, m : Nat) : async Bool {
    let decimal = n % m;
    if (decimal == 0) {
      return (true);
    } else {
      return (false);
    };
  
 };
    //Challendge 6

    public func is_even(n : Nat, m : Nat) : async Bool {
      if (n == m) {
      return (true);
      } else {
        return (false);
      }
    };

};