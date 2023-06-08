//
//
//
//
//
//

// Seed: -3157927736023012709
// This is a RANDOMLY GENERATED PROGRAM.
// Fuzzer: dafny
// Version: dafny, xsmith 2.0.5 (38f1d83), in Racket 8.9 (vm-type chez-scheme)
// Options: --with-print-constrained true --dafny-syntax true --seed -3157927736023012709
// Seed: -3157927736023012709
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
function lift_102 (
  arg_104 : int,
  arg_105 : bool,
  arg_106 : char
) : (int, int, int)
{
  var lift_111 := 138181815;
  var lift_110 := lift_111;
  var lift_109 := lift_110;
  var lift_108 := 671638942;
  var lift_107 := (lift_108, lift_109, lift_110);
  lift_107
}

function lift_47 (
  arg_49 : bool,
  arg_50 : seq<bool>
) : ((bool, bool, char) -> (char, set<bool>, char))
{
  var lift_60 := 'V';
  var lift_59 := false;
  var lift_58 := lift_59;
  var lift_57 := lift_58;
  var lift_56 := {true, lift_57, lift_58};
  var lift_55 := lift_56;
  var lift_54 := ('U', lift_55, lift_60);
  ((arg_51 : bool, arg_52 : bool, arg_53 : char) => lift_54)
}

function lift_29 (arg_31 : bool, arg_32 : (int, bool)) : set<bool>
{
  var lift_37 := false;
  var lift_36 := true;
  var lift_35 := {true, true, lift_36, lift_36, lift_37};
  var lift_34 := lift_35;
  var lift_33 := lift_34;
  lift_33
}

function lift_1 (
  arg_3 : int,
  arg_4 : bool,
  arg_5 : int,
  arg_6 : bool,
  arg_7 : int
) : ((int, bool, int), char, char)
{
  var lift_15 := '=';
  var lift_14 := lift_15;
  var lift_13 := false;
  var lift_12 := lift_13;
  var lift_11 := lift_12;
  var lift_10 := 1199790704;
  var lift_9 := (lift_10, lift_11, lift_10);
  var lift_8 := (lift_9, lift_14, lift_15);
  lift_8
}

method Main () {
  var lift_149 := true;
  var lift_148 := 1237232337;
  var lift_147 := lift_148;
  var lift_146 := lift_147;
  var lift_145 := (lift_146, lift_149, lift_148);
  var lift_144 := 83691558;
  var lift_143 := lift_144;
  var lift_142 := -959721887;
  var lift_141 := ();
  var lift_140 := ':';
  var lift_139 := lift_140;
  var lift_138 := (lift_139, lift_140);
  var lift_137 := (lift_138, lift_141, multiset{lift_142, lift_143});
  var lift_136 := 417402709;
  var lift_135 := lift_136;
  var lift_134 := -1645417496;
  var lift_133 := multiset{
    lift_134,
    2005062185,
    lift_134,
    1245158069,
    lift_135
  };
  var lift_132 := '^';
  var lift_131 := lift_132;
  var lift_130 := 'J';
  var lift_129 := (lift_130, lift_131);
  var lift_128 := 1169215632;
  var lift_127 := -315203293;
  var lift_126 := lift_127;
  var lift_125 := lift_126;
  var lift_124 := lift_125;
  var lift_123 := lift_124;
  var lift_122 := 1447246633;
  var lift_121 := multiset{lift_122, lift_123, lift_128, lift_128};
  var lift_120 := ();
  var lift_119 := '*';
  var lift_118 := multiset{
    ((lift_119, lift_119), lift_120, lift_121),
    (lift_129, lift_120, lift_133),
    lift_137
  };
  var lift_117 := lift_118;
  var lift_116 := 'K';
  var lift_115 := (lift_116, lift_117, lift_145);
  var lift_114 := lift_115;
  var lift_113 := lift_114;
  var lift_112 := 'c';
  var lift_101 := true;
  var lift_100 := true;
  var lift_99 := [lift_100, lift_101];
  var lift_98 := true;
  var lift_97 := 2083841211;
  var lift_96 := (lift_97, lift_97, lift_98);
  var lift_95 := ();
  var lift_94 := lift_95;
  var lift_93 := lift_94;
  var lift_92 := (lift_93, lift_96, lift_99);
  var lift_91 := false;
  var lift_90 := [lift_91, lift_91, true];
  var lift_89 := true;
  var lift_88 := -563217948;
  var lift_87 := lift_88;
  var lift_86 := ();
  var lift_85 := (lift_86, (lift_87, lift_88, lift_89), lift_90);
  var lift_84 := lift_85;
  var lift_83 := (var tmpData : seq<bool> := []; tmpData);
  var lift_82 := lift_83;
  var lift_81 := false;
  var lift_80 := 22340688;
  var lift_79 := lift_80;
  var lift_78 := (lift_79, lift_80, lift_81);
  var lift_77 := lift_78;
  var lift_76 := ();
  var lift_75 := {(lift_76, lift_77, lift_82), lift_84, lift_92, lift_84};
  var lift_74 := lift_75;
  var lift_73 := (lift_74, lift_102, lift_112);
  var lift_72 := lift_73;
  var lift_71 := '$';
  var lift_70 := "=RbY*XOUez_t'I!YnJ&/w?yhq<YlN@wy<VlCt";
  var lift_69 := 'L';
  var lift_68 := 'H';
  var lift_67 := (var tmpData : multiset<seq<char>> := multiset{}; tmpData);
  var lift_66 := lift_67;
  var lift_65 := true;
  var lift_64 := lift_65;
  var lift_63 := true;
  var lift_62 := false;
  var lift_61 := [true, false, lift_62, lift_63, lift_64];
  var lift_46 := false;
  var lift_45 := 1551899806;
  var lift_44 := lift_45;
  var lift_43 := (lift_44, lift_46);
  var lift_42 := lift_43;
  var lift_41 := lift_42;
  var lift_40 := (lift_41, lift_46);
  var lift_39 := 1366128319;
  var lift_38 := 1055142938;
  var lift_28 := lift_29((lift_38 == lift_39 > lift_38), lift_40.0);
  var lift_27 := ();
  var lift_26 := lift_27;
  var lift_25 := {()};
  var lift_24 := 1783731164;
  var lift_23 := (lift_24, lift_25, lift_26);
  var lift_22 := 110726901;
  var lift_21 := true;
  var lift_20 := lift_21;
  var lift_19 := lift_20;
  var lift_18 := -2083773477;
  var lift_17 := true;
  var lift_16 := lift_17;
  print lift_1(1744945254, lift_16, lift_18, lift_19, lift_22).0.0, "\n";
  print lift_23.0, "\n";
  lift_28 := lift_47(false, lift_61)(
    ("ArLkQooWf" !in lift_66),
    (lift_68 >= lift_69),
    safeSeqRef(lift_70, lift_38, lift_71)
  ).1;
  print lift_72.1(lift_96.1, (662847711 > lift_44), lift_113.0).0, "\n";
}


