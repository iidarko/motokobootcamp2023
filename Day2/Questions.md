1. Who controls the ledger canister?

## Answer: Root canister: The root canister is the controller of all other NNS canisters and responsible for upgrading them. NNS is the governance structure of everything ICP.


2. What is the subnet of the canister with the id: **mwrha-maaaa-aaaab-qabqq-cai**? How much nodes are running this subnet?

## Answer: Subnet id : pae4o-o6dxf-xki7q-ezclx-znyd6-fnk6w-vkv5z-5lfwh-xym2i-otrrw-fqe ; This subnet are running 16 nodes. 


3. I have a neuron with 1O ICPs locked with a dissolve delay of 4 years - my neuron has been locked for 2 years. What is my expected voting power?
(copied by ICP documentation)

## Answer:  2years lock = 1.125 X  
## 4 years Disolve delay = 1.5 X  
## 10 x 1.6875 = 16.875 Voting power 

4. What is wrong with the following code?

```
actor {
 let n : Nat = 50;
 let t : Text = "Hello";

 public func convert_to_text(m : Nat) : async Text {
 Nat.toText(m);
 };

}

## Answer: Nat module should be imported above actor: import Nat "mo:base/Nat"

1. What is wrong with the following code?

```
actor {
 var languages : [var Text] = ["English", "German", "Chinese", "Japanese", "French"];

 public func show_languages(language : Text) : async [var Text] {
 return (languages);
 };

}

## Answer:  Canister public functions can not share immutable function type var Text! Canister should be considered private
  Array to be mutable should go : let languages : [var Text] = ["English", "German", "Chinese", "Japanese", "French"];

1. What is wrong with the following code?
actor {
 var languages : [Text] = ["English", "German", "Chinese", "Japanese", "French"];

 public func add_language(new_language: Text) : async [Text] {
 languages := Array.append<Text>(languages, [new_language]);
 return (languages);
 };
 
}

## Answer: arrays are immutable by default; Array to be mutable should go: let languages : [ var Text] = ["English", "German", "Chinese", "Japanese", "French"];  Canister public functions can not share immutable function type var Text.
 
