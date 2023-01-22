
1. How much is the current memory capacity of a canister?

## Answer: The stable memory of a canister is 48 GB (used to be 4 GB);
=======

2. What is the issue with the following code sample?
  actor {
 let counter : Nat = 0;
 public func increment_counter() : async () {
 counter := counter + 1;
 };
}

## Answer: let (counter) is immutable, meaning that value cannot be changed once its assigned; it should be var 
=======

  3. What is the issue with the following code sample? 

  actor {
 var message : Text = 0;

 public query func change_message(new_message : Text) : async () {
 message := new_message;
 return;
 };

 public query func see_message() : async Text {
 return(message);
 };
}

## Answer: var message : Text = 0;  0 is not a Text;
=======

4. False or True: we can remove the keyword async for return argument of a query function since queries are faster to answer.

## Answer:  False - async is used for every call to canister which is publicly available;
=======
