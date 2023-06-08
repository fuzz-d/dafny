//
//
//
//
//
//

// Seed: 8147103410529942513
// This is a RANDOMLY GENERATED PROGRAM.
// Fuzzer: dafny
// Version: dafny, xsmith 2.0.5 (38f1d83), in Racket 8.9 (vm-type chez-scheme)
// Options: --with-print-constrained true --dafny-syntax true --seed 8147103410529942513
// Seed: 8147103410529942513
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
method lift_84 (arg_87 : int, arg_88 : int, arg_89 : int)
  returns (arg_90 : int)
  requires (true)
  ensures (true)
{
  arg_90 := 2052335153;
  {
    var lift_103 := true;
    var lift_102 := true;
    var lift_101 := 'p';
    var lift_100 := (lift_101, arg_87);
    var lift_99 := ':';
    var lift_98 := lift_99;
    var lift_97 := {arg_87, arg_87, arg_89, arg_87, arg_89};
    var lift_96 := (lift_97, lift_98, lift_100);
    var lift_95 := lift_96;
    var lift_94 := 'l';
    var lift_93 := lift_94;
    var lift_92 := {arg_87, arg_88};
    var lift_91 := (lift_92, lift_93, ('&', arg_87));
    print arg_89, "\n";
    print arg_87, "\n";
    lift_91 := lift_95;
    print arg_90, "\n";
    lift_102 := lift_103;
  }
}

function lift_70 () : int
{
  var lift_72 := -1654420112;
  lift_72
}

method lift_42 (arg_45 : int, arg_46 : int)
  returns (arg_47 : int)
  requires (true)
  ensures (true)
{
  arg_47 := 1800171569;
  {
    var lift_49 := -173444665;
    var lift_48 := 16296114;
    print lift_48, "\n";
    print lift_49, "\n";
  }
}

function lift_2 () : seq<multiset<((char, bool, int), ())>>
{
  var lift_18 := ();
  var lift_17 := 722075785;
  var lift_16 := false;
  var lift_15 := 'g';
  var lift_14 := (lift_15, lift_16, lift_17);
  var lift_13 := lift_14;
  var lift_12 := (lift_13, lift_18);
  var lift_11 := false;
  var lift_10 := '&';
  var lift_9 := (lift_10, lift_11, 1856851832);
  var lift_8 := lift_9;
  var lift_7 := multiset{(lift_8, ()), lift_12};
  var lift_6 := lift_7;
  var lift_5 := [
    lift_6,
    (var tmpData : multiset<((char, bool, int), ())> := multiset{}; tmpData)
  ];
  var lift_4 := lift_5;
  lift_4
}

method Main () {
  var lift_105 := 915300155;
  var lift_104 := '/';
  var lift_83 := -1581658684;
  var lift_82 := lift_83;
  var lift_81 := -823821425;
  var lift_80 := lift_81;
  var lift_79 := 'E';
  var lift_78 := ((lift_79, lift_80), lift_82);
  var lift_77 := multiset{lift_78};
  var lift_76 := true;
  var lift_75 := [lift_76, lift_76, lift_76];
  var lift_74 := ((), lift_75, lift_77);
  var lift_73 := ();
  var lift_69 := true;
  var lift_68 := 'D';
  var lift_67 := (lift_68, lift_69);
  var lift_66 := true;
  var lift_65 := (lift_66, lift_67);
  var lift_64 := false;
  var lift_63 := ('A', lift_64);
  var lift_62 := (true, lift_63);
  var lift_61 := ();
  var lift_60 := lift_61;
  var lift_59 := true;
  var lift_58 := lift_59;
  var lift_57 := lift_58;
  var lift_56 := false;
  var lift_55 := lift_56;
  var lift_54 := multiset{lift_55, lift_57, lift_55};
  var lift_53 := false;
  var lift_52 := true;
  var lift_51 := multiset{lift_52, lift_53};
  var lift_50 := (lift_51, lift_54, lift_60);
  var lift_41 := ();
  var lift_40 := lift_41;
  var lift_39 := 397380352;
  var lift_38 := false;
  var lift_37 := 'd';
  var lift_36 := (lift_37, lift_38, lift_39);
  var lift_35 := lift_36;
  var lift_34 := (lift_35, lift_40);
  var lift_33 := ();
  var lift_32 := 1203976414;
  var lift_31 := true;
  var lift_30 := 'R';
  var lift_29 := lift_30;
  var lift_28 := lift_29;
  var lift_27 := (lift_28, lift_31, lift_32);
  var lift_26 := (lift_27, lift_33);
  var lift_25 := -544055243;
  var lift_24 := lift_25;
  var lift_23 := true;
  var lift_22 := lift_23;
  var lift_21 := 'a';
  var lift_20 := multiset{((lift_21, lift_22, lift_24), ()), lift_26, lift_34};
  var lift_19 := 131048928;
  var lift_1 := safeSeqSet(lift_2(), lift_19, (lift_20 + lift_20 + lift_20));
  lift_1 := lift_1;
  var methoddefvar_44 := lift_42(
    (lift_50.0[((true, (lift_21, lift_55)) in [
      lift_62,
      lift_65,
      lift_65
    ])] as int),
    lift_70()
  );
  {
    lift_73 := lift_74.0;
    var methoddefvar_86 := lift_84(lift_19, lift_39, lift_83);
    {
      print lift_25, "\n";
      lift_104 := lift_104;
      print lift_105, "\n";
      print lift_81, "\n";
      print lift_83, "\n";
    }
  }
}


