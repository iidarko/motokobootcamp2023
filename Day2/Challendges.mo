import Char "mo:base/Char";
import Debug "mo:base/Debug";
import Iter "mo:base/Iter";
import Text "mo:base/Text";
import Nat "mo:base/Nat";
import Buffer "mo:base/Buffer";

# Coding challenges
actor {  

  // Challendge 1 
  // Write a function **average_array** that takes an array of integers and returns the average value of the elements in the array.
 
 public func average_array(array : [Int]) : async Int {
    var sum :Int = 0;
    for(num in array.vals()){
      sum += num;
    };
    return sum / array.size();

  };

  // Challendge 2
  //Character count**: Write a function that takes in a string and a character, and returns the number of occurrences of that character in the string.

    public func count_character(t : Text, c : Char) : async Nat {
    var counter :Nat = 0;
    type Pattern = Text.Pattern;
    let p : Pattern = #char(c);
    for(letter in t.chars()) {
        if(Text.contains(Char.toText(letter), p)){
          counter := counter+1;
        }
    };    
    return counter; 
  };


    // Challendge 3
    //Write a function **factorial** that takes a natural number n and returns the [factorial](https://www.britannica.com/science/factorial) of n.

    public func factorial(n : Nat) :async Nat {
      var counter = 1;
      let iter = Iter.range(1, n);
      for(number in iter){
        counter *= number
      };
      return counter;
    };


    // Challendge 4
    //Write a function **number_of_words** that takes a sentence and returns the number of words in the sentence.

    public func number_of_words(t : Text) : async Nat {
      var counter = 0;
      type Pattern = Text.Pattern;
      let p: Pattern = #char(' ');
      
      var i = Text.split(t, p);

      for(words in i){
        counter += 1;
      };

      return counter;
    };
    

    }


    // Challendge 5
    //Write a function **find_duplicates** that takes an array of natural numbers and returns a new array containing all duplicate numbers. The order of the elements in the returned array should be the same as the order of the first occurrence in the input array.
    
    public query func find_duplicates(a : [Nat]) : async [Nat] {

    var buffer = Buffer.Buffer<Nat>(1);    

    for(i in Iter.range(0, a.size()-1 )) {

        for(j in Iter.range(i+1, a.size()-1)){

          if(a[i] == a[j] and not Buffer.contains(buffer, a[i], Nat.equal)){          
              buffer.add(a[j]);         
          };

        };
      };   
    
    return Buffer.toArray(buffer);

    };
    // Challendge 6
    //Write a function **convert_to_binary** that takes a natural number n and returns a string representing the binary representation of n.

    public query func convert_to_binary(n : Nat) : async Text {
   
      var result = "";
      var quotient = n;
      while (quotient > 0) {
          var remainder = quotient % 2;
          result := Nat.toText(remainder) # result;
          quotient := quotient / 2;
      };
      return result;
    };
 

