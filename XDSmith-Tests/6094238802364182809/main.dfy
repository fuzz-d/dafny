//
//
//
//
//
//

// Seed: 6094238802364182809
// This is a RANDOMLY GENERATED PROGRAM.
// Fuzzer: dafny
// Version: dafny, xsmith 2.0.5 (38f1d83), in Racket 8.9 (vm-type chez-scheme)
// Options: --with-print-constrained true --dafny-syntax true --seed 6094238802364182809
// Seed: 6094238802364182809
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
method lift_82 (arg_86 : int)
  returns (arg_87 : int, arg_88 : int)
  requires (true)
  ensures (true)
{
  arg_87 := -945021345;
  arg_88 := 1069977923;
  {
    var lift_114 := true;
    var lift_113 := multiset{lift_114, lift_114};
    var lift_112 := false;
    var lift_111 := lift_112;
    var lift_110 := multiset{lift_111, lift_111};
    var lift_109 := false;
    var lift_108 := lift_109;
    var lift_107 := true;
    var lift_106 := false;
    var lift_105 := multiset{
      multiset{true, lift_106, lift_107, lift_108},
      lift_110,
      lift_110,
      lift_113
    };
    var lift_104 := ();
    var lift_103 := lift_104;
    var lift_102 := 'W';
    var lift_101 := ();
    var lift_100 := '"';
    var lift_99 := true;
    var lift_98 := (lift_99, arg_88, lift_99);
    var lift_97 := (lift_98, lift_100, lift_101);
    var lift_96 := lift_97;
    var lift_95 := {
      lift_96,
      lift_96,
      lift_97,
      lift_97,
      (lift_98, lift_102, lift_103)
    };
    var lift_94 := ();
    var lift_93 := false;
    var lift_92 := true;
    var lift_91 := (lift_92, arg_87, lift_93);
    var lift_90 := (lift_91, 'n', lift_94);
    var lift_89 := {lift_90, lift_90, lift_90, lift_90};
    lift_89 := lift_95;
    lift_105 := lift_105;
  }
}

function lift_62 (
  arg_64 : bool,
  arg_65 : bool,
  arg_66 : int,
  arg_67 : bool
) : int
{
  var lift_68 := 1707703373;
  lift_68
}

method lift_46 (arg_49 : int, arg_50 : int, arg_51 : int)
  returns (arg_52 : int)
  requires (true)
  ensures (true)
{
  arg_52 := -1894559126;
  {
    print arg_51, "\n";
  }
}

function lift_13 (
  arg_15 : bool,
  arg_16 : char,
  arg_17 : bool,
  arg_18 : char,
  arg_19 : int
) : seq<char>
{
  var lift_23 := 'B';
  var lift_22 := 'B';
  var lift_21 := 't';
  var lift_20 := [lift_21, lift_22, lift_22, lift_21, lift_23];
  lift_20
}

method Main () {
  var lift_117 := ();
  var lift_81 := true;
  var lift_80 := lift_81;
  var lift_79 := lift_80;
  var lift_78 := -1922310872;
  var lift_77 := lift_78;
  var lift_76 := (lift_77, lift_77, false);
  var lift_75 := 1687365430;
  var lift_74 := [
    (-1412378492, lift_75, false),
    lift_76,
    (lift_77, lift_75, lift_79)
  ];
  var lift_73 := lift_74;
  var lift_72 := true;
  var lift_71 := true;
  var lift_70 := {lift_71, lift_71, lift_71, lift_71, lift_72};
  var lift_69 := lift_70;
  var lift_61 := 'N';
  var lift_60 := true;
  var lift_59 := ((false, lift_60, lift_61), lift_62, lift_60);
  var lift_58 := 222088461;
  var lift_57 := 808628025;
  var lift_56 := {lift_57, lift_58, lift_58};
  var lift_55 := true;
  var lift_54 := multiset{lift_55};
  var lift_53 := (lift_54, lift_55, lift_56);
  var lift_45 := false;
  var lift_42 := 'b';
  var lift_41 := lift_42;
  var lift_40 := 'k';
  var lift_39 := (lift_40, lift_41, lift_41);
  var lift_38 := -1192621423;
  var lift_37 := true;
  var lift_36 := [lift_37, true, lift_37, false];
  var lift_35 := (lift_36, 'b', lift_38);
  var lift_34 := 'J';
  var lift_33 := lift_34;
  var lift_32 := lift_33;
  var lift_31 := 'K';
  var lift_30 := ([lift_31, lift_32, lift_32, lift_31], lift_35, lift_39);
  var lift_29 := false;
  var lift_28 := lift_29;
  var lift_27 := (var tmpData : seq<bool> := []; tmpData);
  var lift_12 := 'y';
  var lift_10 := -493440460;
  var lift_9 := lift_10;
  var lift_8 := 'H';
  var lift_7 := (lift_8, lift_9);
  var lift_6 := lift_7;
  var lift_5 := -1790910085;
  var lift_4 := 'k';
  var lift_3 := (lift_4, lift_5);
  {
    var lift_44 := (lift_37, lift_45, 'Z');
    var lift_43 := (
      1207046720,
      lift_44,
      (var tmpData : set<()> := {}; tmpData)
    );
    var lift_26 := safeSeqSet(lift_27, 899251294, lift_28);
    var lift_25 := 'H';
    var lift_24 := false;
    var lift_11 := (var tmpData : seq<(char, int)> := []; tmpData);
    var lift_2 := [lift_3, lift_6];
    var lift_1 := lift_2;
    print 
      (
        {
          lift_1,
          lift_2,
          lift_1,
          lift_11,
          (var tmpData : seq<(char, int)> := []; tmpData)
        },
        "&JdYIc?C=f*e/fOFVG%TDaypw:uWKlWS*ff~gu",
        lift_6
      ).2.1,
      "\n";
    lift_12 := safeSeqRef(
      lift_13(true, lift_8, lift_24, lift_4, -2039531906),
      (lift_4 as int),
      (
        lift_25,
        (var tmpData : multiset<int> := multiset{}; tmpData),
        (multiset{lift_25}, (), false)
      ).0
    );
    lift_26 := lift_30.1.0;
    print |lift_43.2|, "\n";
  }
  var methoddefvar_48 := lift_46(
    |lift_53.2|,
    lift_59.1(
      (true <==> lift_29 <==> true),
      (false in lift_69),
      lift_9,
      lift_55
    ),
    safeSeqRef(lift_73, -997826703, lift_76).0
  );
  {
    var lift_116 := (lift_117, lift_117);
    var lift_115 := lift_116;
    var methoddefvar_84, methoddefvar_85 := lift_82(130583084);
    {
      lift_115 := lift_116;
    }
  }
}


