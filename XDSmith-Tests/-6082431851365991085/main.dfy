//
//
//
//
//
//

// Seed: -6082431851365991085
// This is a RANDOMLY GENERATED PROGRAM.
// Fuzzer: dafny
// Version: dafny, xsmith 2.0.5 (38f1d83), in Racket 8.9 (vm-type chez-scheme)
// Options: --with-print-constrained true --dafny-syntax true --seed -6082431851365991085
// Seed: -6082431851365991085
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
function lift_80 (
  arg_82 : int,
  arg_83 : bool,
  arg_84 : set<(int, (char, char), bool)>,
  arg_85 : multiset<char>,
  arg_86 : bool
) : int
{
  var lift_87 := -851252315;
  lift_87
}

function lift_46 (arg_48 : seq<char>, arg_49 : multiset<int>) : seq<int>
{
  var lift_51 := -816763372;
  var lift_50 := 286580987;
  [lift_50, lift_50, lift_50, lift_50, lift_51]
}

method lift_19 (arg_23 : int, arg_24 : int)
  returns (arg_25 : int, arg_26 : int)
  requires (true)
  ensures (true)
{
  arg_25 := 1551609650;
  arg_26 := 470416602;
  {
    var lift_34 := ();
    var lift_33 := 'D';
    var lift_32 := 's';
    var lift_31 := 886597017;
    var lift_30 := [arg_25, arg_25, arg_24, arg_25, arg_25];
    var lift_29 := [arg_25];
    var lift_28 := lift_29;
    var lift_27 := ();
    lift_27 := lift_27;
    lift_28 := lift_30;
    print lift_31, "\n";
    lift_32 := lift_33;
    lift_34 := ();
  }
}

method lift_1 ()
  returns (arg_5 : int, arg_6 : int)
  requires (true)
  ensures (true)
{
  arg_5 := -823404190;
  arg_6 := 291165940;
  {
    var lift_18 := (var tmpData : multiset<(seq<char>, int, (bool, char, bool))> := multiset{}; tmpData);
    var lift_17 := (var tmpData : multiset<(seq<char>, int, (bool, char, bool))> := multiset{}; tmpData);
    var lift_16 := false;
    var lift_15 := (lift_16, arg_6, true);
    var lift_14 := lift_15;
    var lift_13 := 'S';
    var lift_12 := 'D';
    var lift_11 := (lift_12, arg_6, lift_13);
    var lift_10 := true;
    var lift_9 := (lift_10, arg_5, lift_10);
    var lift_8 := (lift_9, lift_11);
    var lift_7 := lift_8;
    lift_7 := (lift_14, lift_11);
    lift_17 := lift_18;
    print arg_5, "\n";
  }
}

method Main () {
  var lift_129 := 'Z';
  var lift_128 := true;
  var lift_127 := (lift_128, lift_129);
  var lift_126 := 's';
  var lift_125 := true;
  var lift_124 := (lift_125, lift_126);
  var lift_123 := multiset{lift_124, lift_127, lift_127, lift_124, lift_127};
  var lift_122 := 'm';
  var lift_121 := true;
  var lift_120 := 'F';
  var lift_119 := true;
  var lift_118 := (lift_119, 'z');
  var lift_117 := multiset{
    lift_118,
    lift_118,
    (lift_119, lift_120),
    (lift_121, lift_122)
  };
  var lift_116 := false;
  var lift_115 := 's';
  var lift_114 := (false, lift_115);
  var lift_113 := lift_114;
  var lift_112 := [
    lift_113,
    lift_113,
    lift_114,
    (lift_116, lift_115),
    lift_114
  ];
  var lift_111 := 'z';
  var lift_110 := false;
  var lift_109 := (lift_110, lift_111);
  var lift_108 := '!';
  var lift_107 := lift_108;
  var lift_106 := lift_107;
  var lift_105 := lift_106;
  var lift_104 := false;
  var lift_103 := (lift_104, lift_105);
  var lift_102 := [lift_103, lift_109];
  var lift_101 := lift_102;
  var lift_100 := lift_101;
  var lift_99 := 'J';
  var lift_98 := lift_99;
  var lift_97 := multiset{lift_98, 'w', lift_99};
  var lift_96 := lift_97;
  var lift_95 := true;
  var lift_94 := '_';
  var lift_93 := lift_94;
  var lift_92 := lift_93;
  var lift_91 := -1611806524;
  var lift_90 := lift_91;
  var lift_89 := (lift_90, (lift_92, '*'), lift_95);
  var lift_88 := {lift_89};
  var lift_79 := '=';
  var lift_78 := false;
  var lift_77 := (lift_78, lift_79);
  var lift_76 := 'I';
  var lift_75 := false;
  var lift_74 := (lift_75, lift_76);
  var lift_73 := true;
  var lift_72 := (lift_73, ';');
  var lift_71 := ':';
  var lift_70 := true;
  var lift_69 := -991621835;
  var lift_68 := [lift_69, -15166465, lift_69, -1752273883];
  var lift_67 := lift_68;
  var lift_66 := lift_67;
  var lift_65 := (var tmpData : multiset<multiset<(bool, char)>> := multiset{}; tmpData);
  var lift_64 := 'E';
  var lift_63 := lift_64;
  var lift_62 := 'I';
  var lift_61 := [lift_62, lift_63];
  var lift_60 := (lift_61, lift_65, lift_66);
  var lift_59 := lift_60;
  var lift_58 := 1900040372;
  var lift_57 := 111856948;
  var lift_56 := 1519682104;
  var lift_55 := multiset{lift_56, lift_56, lift_57, lift_58, lift_56};
  var lift_54 := 'D';
  var lift_53 := ':';
  var lift_52 := [lift_53, lift_54];
  var lift_45 := 1422038370;
  var lift_44 := 1715091035;
  var lift_43 := [lift_44, -385710759, lift_44, lift_44, lift_45];
  var lift_42 := multiset{
    lift_43,
    lift_43,
    (var tmpData : seq<int> := []; tmpData),
    lift_43,
    lift_43
  };
  var lift_41 := ((lift_42, "J:j\"d@B", ()).0[lift_46(
    lift_52,
    lift_55
  )] as int);
  var lift_40 := "S*g\"lo!bG&Lln'@bKzY^NpZzNy/$O'g@";
  var lift_39 := 'E';
  var lift_38 := '\'';
  var lift_37 := {lift_38, lift_39};
  var lift_36 := (lift_37, lift_40);
  var lift_35 := lift_36;
  var methoddefvar_3, methoddefvar_4 := lift_1();
  {
    print ('l' as int), "\n";
    var methoddefvar_21, methoddefvar_22 := lift_19(
      methoddefvar_4,
      methoddefvar_3
    );
    {
      lift_35 := lift_35;
    }
  }
  lift_41 := ((lift_59.1[(multiset{
    (lift_70, lift_71),
    lift_72,
    lift_72,
    lift_74
  }[lift_77 := lengthNormalize(lift_44)]) := lengthNormalize(
    lift_80(lift_41, lift_75, lift_88, lift_96, lift_75)
  )])[(multiset(lift_100) + multiset(
    lift_112
  ) + (lift_117 - lift_123 - lift_117))] as int);
}


