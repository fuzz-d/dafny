//
//
//
//
//
//

// Seed: -5514477154158653635
// This is a RANDOMLY GENERATED PROGRAM.
// Fuzzer: dafny
// Version: dafny, xsmith 2.0.5 (38f1d83), in Racket 8.9 (vm-type chez-scheme)
// Options: --with-print-constrained true --dafny-syntax true --seed -5514477154158653635
// Seed: -5514477154158653635
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
function lift_12 (arg_14 : bool) : (bool, int, (multiset<()>, string))
{
  var lift_19 := "tkLzZelNXduo:ycoHBPITVJithuf|:?o%";
  var lift_18 := lift_19;
  var lift_17 := (var tmpData : multiset<()> := multiset{}; tmpData);
  var lift_16 := (lift_17, lift_18);
  var lift_15 := -1148324374;
  (arg_14, lift_15, lift_16)
}

method Main () {
  var lift_30 := 1934737489;
  var lift_29 := false;
  var lift_28 := false;
  var lift_27 := -270954741;
  var lift_26 := (lift_27, lift_28, lift_29);
  var lift_25 := lift_26;
  var lift_24 := lift_25;
  var lift_23 := 'J';
  var lift_22 := 'y';
  var lift_21 := [lift_22, lift_22, lift_22, lift_22, lift_23];
  var lift_20 := lift_21;
  var lift_11 := (lift_12, lift_20, lift_24);
  var lift_10 := "A\";ptXFAe*Lo@WO-h%Frv@prOw>w>A&~+";
  var lift_9 := ();
  var lift_8 := lift_9;
  var lift_7 := multiset{(), lift_8, lift_8};
  var lift_6 := (lift_7, lift_10);
  var lift_5 := (var tmpData : seq<bool> := []; tmpData);
  var lift_4 := (lift_5, lift_6);
  var lift_3 := lift_4;
  var lift_2 := lift_3;
  var lift_1 := ('n', 'y', lift_2).2.1;
  lift_1 := lift_11.0((lift_27 == -1514905610 <= lift_30)).2;
  print lift_27, "\n";
}


