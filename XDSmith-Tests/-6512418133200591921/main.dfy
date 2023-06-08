// RUN: %dafny /noVerify /compile:4 /compileTarget:cs "%s" > "%t"
// RUN: %dafny /noVerify /compile:4 /compileTarget:java "%s" >> "%t"
// RUN: %dafny /noVerify /compile:4 /compileTarget:py "%s" >> "%t"
// RUN: %dafny /noVerify /compile:4 /compileTarget:js "%s" >> "%t"
// RUN: %dafny /noVerify /compile:4 /compileTarget:go "%s" >> "%t"
// RUN: %diff "%s.expect" "%t"

// Seed: -6512418133200591921
// This is a RANDOMLY GENERATED PROGRAM.
// Fuzzer: dafny
// Version: dafny, xsmith 2.0.5 (38f1d83), in Racket 8.9 (vm-type chez-scheme)
// Options: --with-print-constrained true --dafny-syntax true --seed -6512418133200591921
// Seed: -6512418133200591921
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
method lift_84 ()
  returns (arg_88 : int, arg_89 : int)
  requires (true)
  ensures (true)
{
  arg_88 := -625274516;
  arg_89 := 1783443299;
  {
    var lift_92 := ();
    var lift_91 := ();
    var lift_90 := -1016242934;
    print -481845718, "\n";
    print lift_90, "\n";
    print arg_89, "\n";
    lift_91 := lift_92;
  }
}

method lift_60 (arg_64 : int, arg_65 : int, arg_66 : int)
  returns (arg_67 : int, arg_68 : int)
  requires (true)
  ensures (true)
{
  arg_67 := -668152343;
  arg_68 := -61262756;
  {
    var lift_71 := 1823262718;
    var lift_70 := ();
    var lift_69 := lift_70;
    lift_69 := lift_69;
    lift_71 := arg_66;
  }
}

method lift_37 ()
  returns (arg_40 : int)
  requires (true)
  ensures (true)
{
  arg_40 := 1457798733;
  {
    var lift_46 := ();
    var lift_45 := [lift_46];
    var lift_44 := false;
    var lift_43 := 'V';
    var lift_42 := 'T';
    var lift_41 := 'z';
    lift_41 := lift_42;
    print -1396416846, "\n";
    lift_43 := lift_43;
    lift_44 := lift_44;
    lift_45 := lift_45;
  }
}

function lift_5 (
  arg_7 : (char, bool, char),
  arg_8 : seq<int>,
  arg_9 : int,
  arg_10 : string
) : set<char>
{
  var lift_12 := 'Y';
  var lift_11 := {lift_12, lift_12, lift_12, lift_12, '!'};
  lift_11
}

method Main () {
  var lift_83 := 'l';
  var lift_59 := (var tmpData : set<(char, bool, char)> := {}; tmpData);
  var lift_58 := (var tmpData : multiset<()> := multiset{}; tmpData);
  var lift_57 := lift_58;
  var lift_56 := lift_57;
  var lift_55 := ();
  var lift_36 := (var tmpData : set<char> := {}; tmpData);
  var lift_35 := -601842746;
  var lift_34 := (lift_35, lift_35, -71744541);
  var lift_33 := (var tmpData : seq<char> := []; tmpData);
  var lift_32 := (lift_33, (false, 'W'));
  var lift_31 := 'R';
  var lift_30 := lift_31;
  var lift_29 := false;
  var lift_28 := lift_29;
  var lift_27 := (lift_28, lift_30);
  var lift_26 := lift_27;
  var lift_25 := "Sh+IQHnO/IF?GAy";
  var lift_24 := (lift_25, lift_26);
  var lift_23 := {lift_24, lift_32, lift_24, lift_24, lift_32};
  var lift_22 := (lift_23, lift_34, lift_36);
  var lift_21 := '"';
  var lift_20 := -790804208;
  var lift_19 := -782185938;
  var lift_18 := [lift_19, lift_19, lift_20, lift_20, lift_20];
  var lift_17 := false;
  var lift_16 := lift_17;
  var lift_15 := lift_16;
  var lift_14 := 'b';
  var lift_13 := (lift_14, lift_15, lift_14);
  var lift_4 := 'G';
  var lift_3 := 'w';
  var lift_2 := {lift_3, lift_4, lift_4, lift_4, lift_3};
  var lift_1 := ((lift_2 - lift_2) + lift_5(
    lift_13,
    lift_18,
    lift_19,
    [lift_14, lift_4, lift_4, lift_4, lift_21]
  ));
  lift_1 := lift_22.2;
  var methoddefvar_39 := lift_37();
  {
    var lift_82 := '>';
    var lift_81 := (var tmpData : multiset<char> := multiset{}; tmpData);
    var lift_75 := ((), [lift_29, true, lift_15, true], lift_35);
    var lift_49 := ('I', 'l');
    var lift_48 := [lift_49, lift_49, lift_49];
    var lift_47 := lift_48;
    lift_47 := ((
      arg_50 : bool,
      arg_51 : bool,
      arg_52 : (),
      arg_53 : multiset<()>,
      arg_54 : bool
    ) => lift_47)(lift_15, lift_17, lift_55, lift_56, lift_29);
    if ((lift_13 in lift_59)) {
      var lift_76 := 'm';
      var lift_73 := {methoddefvar_39};
      var lift_72 := methoddefvar_39;
      var methoddefvar_62, methoddefvar_63 := lift_60(
        lift_20,
        lift_72,
        methoddefvar_39
      );
      {
        var lift_77 := 'O';
        var lift_74 := (var tmpData : set<int> := {}; tmpData);
        lift_73 := lift_74;
        print methoddefvar_39, "\n";
        print lift_20, "\n";
        lift_75 := lift_75;
        lift_76 := lift_77;
      }
    } else {
      {
        var lift_80 := multiset{lift_29, lift_15, lift_16, lift_29};
        var lift_79 := lift_80;
        var lift_78 := multiset{lift_15, true};
        print lift_35, "\n";
        lift_78 := lift_79;
        lift_81 := multiset{lift_31, lift_4, lift_82, lift_30, lift_83};
      }
    }
    var methoddefvar_86, methoddefvar_87 := lift_84();
    {
      print lift_20, "\n";
    }
  }
}


