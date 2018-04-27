contract C {
  function f() internal returns (uint, uint) {
    var (uint a, uint b) = f();
    a; b;
  }
} 
// ----
// ParserError: (69-69): Expected identifier, got 'uint'
