// RUN: %dafny /noVerify /compile:4 /compileTarget:cs "%s" > "%t"
// RUN: %dafny /noVerify /compile:4 /compileTarget:java "%s" >> "%t"
// RUN: %dafny /noVerify /compile:4 /compileTarget:py "%s" >> "%t"
// RUN: %dafny /noVerify /compile:4 /compileTarget:js "%s" >> "%t"
// RUN: %dafny /noVerify /compile:4 /compileTarget:go "%s" >> "%t"
// RUN: %diff "%s.expect" "%t"

// Seed: -6972819665640528648
// This is a RANDOMLY GENERATED PROGRAM.
// Fuzzer: dafny
// Version: dafny, xsmith 2.0.5 (38f1d83), in Racket 8.9 (vm-type chez-scheme)
// Options: --with-print-constrained true --dafny-syntax true --seed -6972819665640528648
// Seed: -6972819665640528648
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
function lift_11 (
  arg_13 : multiset<(bool, (char, int, bool))>,
  arg_14 : multiset<(char, (int, bool), (char, char))>,
  arg_15 : set<(int, (char, bool), ())>,
  arg_16 : (),
  arg_17 : (char, bool, char)
) : seq<int>
{
  var lift_19 := 101174185;
  var lift_18 := [lift_19, lift_19];
  lift_18
}

method Main () {
  var lift_51 := (var tmpData : seq<int> := []; tmpData);
  var lift_50 := lift_51;
  var lift_49 := ();
  var lift_48 := true;
  var lift_47 := '>';
  var lift_46 := (lift_47, lift_48);
  var lift_45 := lift_46;
  var lift_44 := -1073597838;
  var lift_43 := (lift_44, lift_45, ());
  var lift_42 := {lift_43, lift_43, (lift_44, lift_45, ()), lift_43};
  var lift_41 := lift_42;
  var lift_40 := true;
  var lift_39 := -1868796922;
  var lift_38 := lift_39;
  var lift_37 := (lift_38, lift_40);
  var lift_36 := '^';
  var lift_35 := lift_36;
  var lift_34 := lift_35;
  var lift_33 := lift_34;
  var lift_32 := (lift_33, lift_37, (lift_34, lift_34));
  var lift_31 := 'T';
  var lift_30 := (lift_31, lift_31);
  var lift_29 := false;
  var lift_28 := lift_29;
  var lift_27 := -869524137;
  var lift_26 := (lift_27, lift_28);
  var lift_25 := 'Z';
  var lift_24 := (lift_25, lift_26, lift_30);
  var lift_23 := lift_24;
  var lift_22 := multiset{lift_23, lift_32, lift_23};
  var lift_21 := lift_22;
  var lift_20 := (var tmpData : multiset<(bool, (char, int, bool))> := multiset{}; tmpData);
  var lift_10 := 361039591;
  var lift_9 := lift_10;
  var lift_8 := -671517500;
  var lift_7 := false;
  var lift_6 := (-1718090931, lift_7, lift_8);
  var lift_5 := 'S';
  var lift_4 := (lift_5, lift_5, lift_5);
  var lift_3 := -1786337356;
  var lift_2 := (
    [-1363216215, -1335402521, -1279174695, lift_3, lift_3],
    lift_4,
    lift_6
  );
  var lift_1 := safeSeqSlice1Colon(lift_2.0, lift_9);
  lift_1 := safeSeqSlice2(
    (lift_2.0 + lift_11(
      lift_20,
      lift_21,
      lift_41,
      lift_49,
      (lift_34, false, lift_25)
    )),
    safeSeqRef(
      (
        lift_50,
        "Z\"XZO=MdLqe:NG^%CHO",
        "M*sul\"cY==cYa!qdYZ=>dH+>Z/no*OjK&?"
      ).0,
      (true, lift_44).1,
      |lift_41|
    ),
    lift_39
  );
}


