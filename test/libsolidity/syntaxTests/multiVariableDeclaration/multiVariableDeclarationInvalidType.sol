contract C {
  function f() internal returns (string memory, uint) {
    (uint a, string memory b) = f();
    a; b;
  }
} 
// ----
// TypeError: (73-104): Type string memory is not implicitly convertible to expected type uint256.
// TypeError: (73-104): Type uint256 is not implicitly convertible to expected type string memory.
