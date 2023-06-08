//
//
//
//
//
//

// Seed: -2382752086000958166
// This is a RANDOMLY GENERATED PROGRAM.
// Fuzzer: dafny
// Version: dafny, xsmith 2.0.5 (38f1d83), in Racket 8.9 (vm-type chez-scheme)
// Options: --with-print-constrained true --dafny-syntax true --seed -2382752086000958166
// Seed: -2382752086000958166
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
function lift_144 (
  arg_146 : (char, bool, char),
  arg_147 : multiset<((char, char, bool), int, bool)>,
  arg_148 : set<char>
) : int
{
  var lift_149 := -740221405;
  lift_149
}

method lift_110 (arg_113 : int)
  returns (arg_114 : int)
  requires (true)
  ensures (true)
{
  arg_114 := -818228713;
  {
    var lift_118 := ();
    var lift_117 := lift_118;
    var lift_116 := ();
    var lift_115 := ();
    lift_115 := lift_115;
    print arg_114, "\n";
    lift_116 := lift_117;
    print arg_114, "\n";
    print arg_114, "\n";
  }
}

method lift_90 (arg_94 : int, arg_95 : int)
  returns (arg_96 : int, arg_97 : int)
  requires (true)
  ensures (true)
{
  arg_96 := 113169808;
  arg_97 := 696805576;
  {
    var lift_99 := ';';
    var lift_98 := lift_99;
    lift_98 := 'E';
    print arg_94, "\n";
  }
}

function lift_68 (
  arg_70 : int,
  arg_71 : char,
  arg_72 : (bool, char)
) : (bool, int, char)
{
  var lift_75 := -36794791;
  var lift_74 := true;
  var lift_73 := (lift_74, lift_75, 'u');
  lift_73
}

function lift_48 (
  arg_50 : int,
  arg_51 : seq<bool>,
  arg_52 : int,
  arg_53 : (bool, int)
) : multiset<((), bool)>
{
  var lift_59 := true;
  var lift_58 := lift_59;
  var lift_57 := lift_58;
  var lift_56 := true;
  var lift_55 := ();
  var lift_54 := (lift_55, lift_56);
  multiset{lift_54, (lift_55, lift_57), lift_54}
}

function lift_20 (
  arg_22 : multiset<((), bool)>,
  arg_23 : (bool, int, char)
) : ()
{
  
  ()
}

function lift_10 () : int
{
  var lift_13 := -807098118;
  var lift_12 := lift_13;
  lift_12
}

function lift_7 () : int
{
  var lift_9 := -699756391;
  lift_9
}

method Main () {
  var lift_170 := false;
  var lift_169 := 1206484634;
  var lift_168 := false;
  var lift_167 := 'x';
  var lift_166 := lift_167;
  var lift_165 := '&';
  var lift_164 := (lift_165, lift_166, lift_168);
  var lift_163 := (lift_164, lift_169, lift_170);
  var lift_162 := -1427106431;
  var lift_161 := lift_162;
  var lift_160 := lift_161;
  var lift_159 := false;
  var lift_158 := 'O';
  var lift_157 := lift_158;
  var lift_156 := (lift_157, '^', lift_159);
  var lift_155 := (lift_156, lift_160, lift_159);
  var lift_154 := lift_155;
  var lift_153 := lift_154;
  var lift_152 := multiset{lift_153, lift_163, lift_153};
  var lift_143 := -319876640;
  var lift_142 := '*';
  var lift_141 := false;
  var lift_140 := (lift_141, lift_142, lift_143);
  var lift_139 := (var tmpData : set<(int, (int, bool))> := {}; tmpData);
  var lift_138 := (var tmpData : multiset<int> := multiset{}; tmpData);
  var lift_137 := (lift_138, lift_139, lift_140);
  var lift_135 := 1987894187;
  var lift_134 := lift_135;
  var lift_131 := ();
  var lift_130 := [lift_131, (), (), lift_131, lift_131];
  var lift_129 := lift_130;
  var lift_125 := 'D';
  var lift_124 := 'h';
  var lift_123 := '/';
  var lift_122 := multiset{lift_123, lift_123, lift_124, lift_125, lift_123};
  var lift_121 := lift_122;
  var lift_120 := 1746222976;
  var lift_119 := lift_120;
  var lift_109 := -945865903;
  var lift_108 := multiset{lift_109};
  var lift_107 := lift_108;
  var lift_106 := lift_107;
  var lift_105 := lift_106;
  var lift_104 := 997082919;
  var lift_103 := lift_104;
  var lift_102 := lift_103;
  var lift_101 := lift_102;
  var lift_100 := multiset{lift_101, lift_102, lift_102, lift_102, lift_104};
  var lift_89 := 'a';
  var lift_88 := true;
  var lift_87 := (lift_88, lift_89);
  var lift_86 := 'E';
  var lift_85 := 816777445;
  var lift_84 := lift_85;
  var lift_83 := (487331520, lift_84);
  var lift_82 := -1085511893;
  var lift_81 := lift_82;
  var lift_80 := 78217711;
  var lift_79 := {
    (lift_80, lift_81),
    (lift_82, lift_82),
    lift_83,
    (lift_84, lift_85),
    lift_83
  };
  var lift_78 := 1821050518;
  var lift_77 := (lift_78, -1268372527);
  var lift_76 := lift_77;
  var lift_67 := -942391600;
  var lift_66 := false;
  var lift_65 := lift_66;
  var lift_64 := (lift_65, lift_67);
  var lift_63 := true;
  var lift_62 := true;
  var lift_61 := [lift_62, lift_63];
  var lift_60 := lift_61;
  var lift_47 := false;
  var lift_46 := ();
  var lift_45 := (lift_46, lift_47);
  var lift_44 := lift_45;
  var lift_43 := lift_44;
  var lift_42 := lift_43;
  var lift_41 := ();
  var lift_40 := (lift_41, true);
  var lift_39 := true;
  var lift_38 := ();
  var lift_37 := lift_38;
  var lift_36 := (lift_37, lift_39);
  var lift_35 := multiset{lift_36, lift_40, lift_42, lift_44, lift_36};
  var lift_34 := [lift_35];
  var lift_33 := lift_34;
  var lift_32 := true;
  var lift_31 := ();
  var lift_30 := lift_31;
  var lift_29 := (lift_30, lift_32);
  var lift_28 := lift_29;
  var lift_27 := false;
  var lift_26 := ();
  var lift_25 := lift_26;
  var lift_24 := (lift_25, lift_27);
  var lift_19 := "=iNw?xF*WWY_g|hOe^'oNi;HWQp";
  var lift_18 := 946593205;
  var lift_17 := lift_18;
  var lift_16 := -401599544;
  var lift_15 := multiset{lift_16, lift_17, lift_17};
  var lift_14 := -854058534;
  var lift_6 := true;
  var lift_5 := lift_6;
  var lift_4 := 2117123955;
  var lift_3 := -598808047;
  var lift_2 := ();
  var lift_1 := lift_2;
  lift_1 := safeSeqRef(
    (var tmpData : seq<(multiset<multiset<()>>, (seq<set<int>>, seq<bool>, (char, (char, seq<(() -> int)>, (string, multiset<multiset<int>>)), multiset<seq<char>>)), ((multiset<((), bool)>, (bool, int, char)) -> ()))> := []; tmpData),
    lift_3,
    (
      (var tmpData : multiset<multiset<()>> := multiset{}; tmpData),
      (
        [{lift_4, lift_3, lift_4}],
        [false, lift_5, lift_6, lift_6, lift_6],
        (
          '^',
          (
            '-',
            [(() => -1010772720), lift_7, lift_10, lift_7],
            (
              ">n;Sr<?RxPu%U:UMAUL",
              multiset{
                multiset{lift_3, lift_3, lift_3, lift_3},
                multiset{lift_4, -105092203, lift_14, lift_3},
                lift_15,
                multiset{lift_17, lift_17, lift_18}
              }
            )
          ),
          multiset{"Dw_U%@sWjU*r@", lift_19}
        )
      ),
      lift_20
    )
  ).2(
    (multiset{(lift_2, true), lift_24, lift_24, lift_24, lift_28} - safeSeqRef(
      lift_33,
      lift_16,
      lift_35
    ) - lift_48(1942147260, lift_60, lift_16, lift_64)),
    lift_68(
      |{lift_4, lift_3}|,
      (
        (
          '!',
          {
            {(lift_16, -1173603612), lift_76, lift_76, lift_76},
            lift_79,
            lift_79,
            lift_79,
            lift_79
          }
        ),
        lift_86
      ).1,
      lift_87
    )
  );
  var methoddefvar_92, methoddefvar_93 := lift_90(
    |(lift_15 - lift_100 - lift_105)|,
    |safeSeqSlice3(lift_34, lift_101, lift_80, lift_84)|
  );
  {
    var lift_171 := {lift_167, lift_123};
    var lift_151 := lift_152;
    var lift_150 := (lift_86, lift_62, lift_142);
    var methoddefvar_112 := lift_110(lift_3);
    {
      var lift_128 := lift_129;
      var lift_127 := lift_128;
      var lift_126 := [(), lift_1];
      lift_119 := lift_80;
      lift_121 := lift_122;
      lift_126 := lift_127;
      print lift_84, "\n";
    }
    var methoddefvar_132, methoddefvar_133 := lift_90(lift_67, -569668777);
    {
      print lift_101, "\n";
      print lift_84, "\n";
      print lift_16, "\n";
      lift_134 := lift_135;
    }
    var methoddefvar_136 := lift_110(lift_78);
    {
      print lift_80, "\n";
      lift_137 := lift_137;
    }
    print lift_144(lift_150, lift_151, lift_171), "\n";
  }
  print lift_76.0, "\n";
}


