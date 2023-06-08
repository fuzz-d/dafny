//
//
//
//
//
//

// Seed: 7979642197419836124
// This is a RANDOMLY GENERATED PROGRAM.
// Fuzzer: dafny
// Version: dafny, xsmith 2.0.5 (38f1d83), in Racket 8.9 (vm-type chez-scheme)
// Options: --with-print-constrained true --dafny-syntax true --seed 7979642197419836124
// Seed: 7979642197419836124
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
method lift_1 (arg_5 : int, arg_6 : int, arg_7 : int)
  returns (arg_8 : int, arg_9 : int)
  requires (true)
  ensures (true)
{
  arg_8 := 1988036792;
  arg_9 := -291086082;
  {
    var lift_10 := true;
    lift_10 := lift_10;
  }
}

method Main () {
  var lift_108 := [()];
  var lift_105 := 610618625;
  var lift_104 := 'a';
  var lift_103 := (lift_104, lift_105);
  var lift_102 := lift_103;
  var lift_101 := lift_102;
  var lift_100 := 'G';
  var lift_99 := (lift_100, lift_101);
  var lift_98 := lift_99;
  var lift_96 := (var tmpData : multiset<(multiset<char>, bool, seq<bool>)> := multiset{}; tmpData);
  var lift_95 := false;
  var lift_94 := [lift_95];
  var lift_93 := false;
  var lift_92 := lift_93;
  var lift_91 := '-';
  var lift_90 := 'r';
  var lift_89 := multiset{lift_90, lift_91, lift_91, lift_91};
  var lift_88 := (lift_89, lift_92, lift_94);
  var lift_87 := true;
  var lift_86 := lift_87;
  var lift_85 := true;
  var lift_84 := [lift_85, lift_86, lift_85, lift_87, lift_86];
  var lift_83 := lift_84;
  var lift_82 := lift_83;
  var lift_81 := true;
  var lift_80 := (var tmpData : multiset<char> := multiset{}; tmpData);
  var lift_79 := lift_80;
  var lift_78 := (lift_79, lift_81, lift_82);
  var lift_77 := false;
  var lift_76 := [lift_77, lift_77, lift_77, lift_77, false];
  var lift_75 := lift_76;
  var lift_74 := lift_75;
  var lift_73 := true;
  var lift_72 := 'a';
  var lift_71 := multiset{lift_72, lift_72, lift_72};
  var lift_70 := (lift_71, lift_73, lift_74);
  var lift_69 := [
    multiset{lift_70, lift_70, lift_78, lift_88},
    lift_96,
    lift_96,
    multiset{lift_88}
  ];
  var lift_65 := true;
  var lift_64 := lift_65;
  var lift_63 := true;
  var lift_62 := true;
  var lift_61 := [lift_62, lift_62, lift_63, lift_63, lift_64];
  var lift_60 := false;
  var lift_59 := lift_60;
  var lift_58 := 'Y';
  var lift_57 := lift_58;
  var lift_56 := (multiset{lift_57}, lift_59, lift_61);
  var lift_50 := ();
  var lift_49 := lift_50;
  var lift_42 := ();
  var lift_41 := ();
  var lift_40 := [lift_41, lift_42];
  var lift_38 := 'V';
  var lift_37 := '&';
  var lift_36 := lift_37;
  var lift_35 := {lift_36, lift_37, lift_37, lift_38, lift_36};
  var lift_33 := 'U';
  var lift_32 := lift_33;
  var lift_31 := lift_32;
  var lift_30 := {lift_31};
  var lift_29 := 1634016643;
  var lift_28 := lift_29;
  var lift_27 := lift_28;
  var lift_26 := lift_27;
  var lift_25 := false;
  var lift_24 := lift_25;
  var lift_23 := (lift_24, lift_24, lift_26);
  var lift_22 := (lift_23, lift_30, 1580183302);
  var lift_21 := "XgJ?Q=u$<Pj-RT";
  var lift_20 := 358662883;
  var lift_19 := false;
  var lift_18 := true;
  var lift_17 := (lift_18, lift_19, lift_20);
  var lift_16 := lift_17;
  var lift_15 := '!';
  var lift_14 := '$';
  var lift_13 := {lift_14, lift_15, 'U'};
  var lift_12 := (lift_13, lift_16, lift_21);
  var lift_11 := lift_12;
  var methoddefvar_3, methoddefvar_4 := lift_1(
    |lift_11.0|,
    lift_22.0.2,
    lift_27
  );
  {
    var lift_106 := ('j', lift_103);
    var lift_97 := multiset{lift_98, lift_106, lift_98, lift_98, lift_98};
    var lift_46 := (var tmpData : seq<()> := []; tmpData);
    var lift_45 := lift_46;
    var lift_44 := lift_45;
    var lift_43 := [lift_42];
    var lift_34 := true;
    lift_34 := (lift_30 <= lift_13 <= lift_35);
    {
      var lift_109 := 'o';
      var lift_107 := multiset{lift_98, lift_106, lift_99};
      var lift_68 := multiset{lift_37, lift_57};
      var lift_67 := lift_68;
      var lift_66 := (lift_67, true, lift_61);
      var lift_55 := lift_56;
      var lift_54 := multiset{lift_55, lift_56, lift_66};
      var lift_53 := lift_54;
      var lift_52 := lift_53;
      var lift_48 := lift_14;
      if (lift_24) {
        var lift_47 := ();
        var lift_39 := {lift_40, lift_43, lift_44};
        print 895788190, "\n";
        print methoddefvar_4, "\n";
        lift_39 := {lift_44};
        lift_47 := lift_42;
        lift_48 := lift_33;
      } else {
        var lift_51 := [
          (var tmpData : multiset<(multiset<char>, bool, seq<bool>)> := multiset{}; tmpData),
          lift_52
        ];
        lift_49 := lift_42;
        lift_51 := lift_69;
        lift_97 := lift_107;
        lift_108 := lift_40;
        lift_109 := lift_32;
      }
    }
  }
}


