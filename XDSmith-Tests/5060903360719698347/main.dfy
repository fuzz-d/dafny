//
//
//
//
//
//

// Seed: 5060903360719698347
// This is a RANDOMLY GENERATED PROGRAM.
// Fuzzer: dafny
// Version: dafny, xsmith 2.0.5 (38f1d83), in Racket 8.9 (vm-type chez-scheme)
// Options: --with-print-constrained true --dafny-syntax true --seed 5060903360719698347
// Seed: 5060903360719698347
// 

function safeDivide (a : int, b : int) : int {
  if b == 0 then 0 else a / b
}

function safeSeqRef<T> (s : seq<T>, i : int, default : T) : T {
  if 0 <= i < |s| then s[i] else default
}

function safeSeqSet<T> (s : seq<T>, i : int, val : T) : seq<T> {
  if 0 <= i < |s| then s[i := val] else s
}

function safeSeqTake<T> (s : seq<T>, x : int) : seq<T> {
  if 0 <= x <= |s| then s[..x] else s
}

function safeSeqDrop<T> (s : seq<T>, x : int) : seq<T> {
  if 0 <= x <= |s| then s[x..] else s
}

function safeSeqSubseq<T> (s : seq<T>, x : int, y : int) : seq<T> {
  if 0 <= x <= y <= |s| then s[x..y] else s
}

function safeSeqSlice1Colon<T> (s : seq<T>, x : int) : seq<seq<T>> {
  if 0 <= x <= |s| then s[x:] else [s]
}

function safeSeqSlice2<T> (s : seq<T>, x : int, y: int) : seq<seq<T>> {
  if 0 <= x && 0 <= y && x + y <= |s| then s[x:y] else [s]
}

function safeSeqSlice3<T> (s : seq<T>, x : int, y : int, z : int) : seq<seq<T>> {
  if 0 <= x && 0 <= y && 0 <= z && x + y + z <= |s| then s[x:y:z] else [s]
}

function safeSeqSlice3Colon<T> (s : seq<T>, x : int, y : int, z : int) : seq<seq<T>> {
  if 0 <= x && 0 <= y && 0 <= z && x + y + z <= |s| then s[x:y:z:] else [s]
}

function lengthNormalize (x : int) : nat {
  (if x < 0 then -x else x) % 50
}
method lift_26 ()
  returns (arg_29 : int)
  requires (true)
  ensures (true)
{
  arg_29 := 6264615;
  {
    var lift_30 := false;
    lift_30 := lift_30;
  }
}

method lift_1 (arg_5 : int, arg_6 : int, arg_7 : int)
  returns (arg_8 : int, arg_9 : int)
  requires (true)
  ensures (true)
{
  arg_8 := 57069282;
  arg_9 := -694196831;
  {
    var lift_10 := true;
    print arg_8, "\n";
    print arg_6, "\n";
    lift_10 := lift_10;
    print -394562411, "\n";
  }
}

method Main () {
  var lift_42 := (var tmpData : set<multiset<()>> := {}; tmpData);
  var lift_41 := true;
  var lift_40 := [lift_41];
  var lift_39 := 'g';
  var lift_38 := 's';
  var lift_37 := (lift_38, lift_39, lift_40);
  var lift_25 := (var tmpData : seq<int> := []; tmpData);
  var lift_24 := lift_25;
  var lift_23 := (lift_24, false);
  var lift_22 := 267475272;
  var lift_21 := 'm';
  var lift_20 := true;
  var lift_19 := [(lift_20, lift_21, lift_22)];
  var lift_18 := -1846607736;
  var lift_17 := -909886674;
  var lift_16 := (lift_17, (), ('O', lift_18));
  var lift_15 := lift_16;
  var lift_14 := lift_15;
  var lift_13 := {lift_14, lift_16, lift_15};
  var lift_12 := true;
  var lift_11 := lift_12;
  var methoddefvar_3, methoddefvar_4 := lift_1(
    |({false, false, lift_11, lift_11}, false, lift_13).2|,
    |safeSeqDrop(lift_19, -1489488981)|,
    |lift_23.0|
  );
  {
    var lift_36 := {lift_37};
    var lift_35 := (lift_36, lift_42);
    var lift_33 := [lift_17, lift_17];
    var lift_31 := ();
    var methoddefvar_28 := lift_26();
    {
      var lift_34 := 758866815;
      var lift_32 := ();
      lift_31 := lift_32;
      lift_33 := lift_24;
      print 942245557, "\n";
      lift_34 := lift_22;
      print lift_34, "\n";
    }
    lift_35 := (lift_36, lift_42);
  }
}


