Question 1. Is the heap memory saved when upgrading a canister? How much heap memory does a canister has?
##Answer: Canister has 4GB heap memory. It will be saved only if the variable uses the stable keyword.

Question 2. How much accounts can a unique Principal own?
##Answer: Close to unlimited number of accounts can be created by a single Principal.

Question 3. Can we safely upgrade a canister from interface A to interface B?
##Answer: Yes, it is possible to safely upgrade canister from interface A to interface B, because they are not stored variables and the return type is the same.

