//
//
//
//
//
//

// Seed: -6739816321034694207
// This is a RANDOMLY GENERATED PROGRAM.
// Fuzzer: dafny
// Version: dafny, xsmith 2.0.5 (38f1d83), in Racket 8.9 (vm-type chez-scheme)
// Options: --with-print-constrained true --dafny-syntax true --seed -6739816321034694207
// Seed: -6739816321034694207
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

method Main () {
  var lift_21 := false;
  var lift_20 := lift_21;
  var lift_19 := {lift_20, lift_20, lift_20};
  var lift_18 := -507221736;
  var lift_17 := lift_18;
  var lift_16 := true;
  var lift_15 := (lift_16, lift_17);
  var lift_14 := 73460830;
  var lift_13 := true;
  var lift_12 := (lift_13, lift_14);
  var lift_11 := [lift_12, lift_12, lift_12, lift_12, lift_15];
  var lift_10 := true;
  var lift_9 := (lift_10, -374314388);
  var lift_8 := lift_9;
  var lift_7 := [lift_8, lift_9];
  var lift_6 := multiset{
    lift_7,
    lift_11,
    lift_11,
    lift_7,
    (var tmpData : seq<(bool, int)> := []; tmpData)
  };
  var lift_5 := 'k';
  var lift_4 := (lift_5, lift_5, lift_6);
  var lift_3 := false;
  var lift_2 := (lift_3, lift_4, lift_19);
  var lift_1 := lift_2;
  print |lift_1.1.2|, "\n";
}


