contract C {
  struct S { function() returns (S storage)[] x; }
  S s;
  function f() internal pure returns (uint, uint, uint, S storage) {
    (,,,s.x[2]()) = f();
  }
} 
// ----
// TypeError: (148-156): Expression has to be an lvalue.
