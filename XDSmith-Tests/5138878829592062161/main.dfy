// RUN: %dafny /noVerify /compile:4 /compileTarget:cs "%s" > "%t"
// RUN: %exits-with 3 %dafny /noVerify /compile:4 /compileTarget:java "%s" >> "%t"
// RUN: %dafny /noVerify /compile:4 /compileTarget:py "%s" >> "%t"
// RUN: %dafny /noVerify /compile:4 /compileTarget:js "%s" >> "%t"
// RUN: %dafny /noVerify /compile:4 /compileTarget:go "%s" >> "%t"
// RUN: %diff "%s.expect" "%t"

// Seed: 5138878829592062161
// This is a RANDOMLY GENERATED PROGRAM.
// Fuzzer: dafny
// Version: dafny, xsmith 2.0.5 (38f1d83), in Racket 8.9 (vm-type chez-scheme)
// Options: --with-print-constrained true --dafny-syntax true --seed 5138878829592062161
// Seed: 5138878829592062161
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
function lift_147 () : (multiset<(int, char)>, bool)
{
  var lift_150 := true;
  var lift_149 := (var tmpData : multiset<(int, char)> := multiset{}; tmpData);
  (lift_149, lift_150)
}

method lift_139 (arg_143 : int)
  returns (arg_144 : int, arg_145 : int)
  requires (true)
  ensures (true)
{
  arg_144 := 738995670;
  arg_145 := 294065308;
  {
    print arg_144, "\n";
  }
}

method lift_127 (arg_131 : int)
  returns (arg_132 : int, arg_133 : int)
  requires (true)
  ensures (true)
{
  arg_132 := -796395387;
  arg_133 := 492982884;
  {
    var lift_135 := '*';
    var lift_134 := 'R';
    print arg_133, "\n";
    print arg_131, "\n";
    lift_134 := lift_135;
    print arg_132, "\n";
  }
}

method lift_89 ()
  returns (arg_93 : int, arg_94 : int)
  requires (true)
  ensures (true)
{
  arg_93 := -1582899837;
  arg_94 := -578140975;
  {
    var lift_95 := 1276573313;
    print arg_93, "\n";
    lift_95 := -930053349;
  }
}

function lift_37 (arg_39 : (), arg_40 : char) : (bool, char, char)
{
  var lift_44 := 'S';
  var lift_43 := true;
  var lift_42 := lift_43;
  var lift_41 := (lift_42, lift_44, lift_44);
  lift_41
}

method Main () {
  var lift_161 := -1158541018;
  var lift_160 := lift_161;
  var lift_159 := multiset{lift_160};
  var lift_158 := ();
  var lift_157 := lift_158;
  var lift_156 := true;
  var lift_155 := 'V';
  var lift_154 := 634533902;
  var lift_153 := (lift_154, lift_155);
  var lift_152 := multiset{lift_153};
  var lift_151 := ((lift_152, lift_156), lift_157, lift_159);
  var lift_146 := lift_147();
  var lift_126 := 'R';
  var lift_125 := lift_126;
  var lift_124 := '%';
  var lift_123 := lift_124;
  var lift_122 := multiset{lift_123, lift_124, 'O', lift_125, lift_123};
  var lift_117 := -2063738306;
  var lift_112 := false;
  var lift_111 := lift_112;
  var lift_106 := true;
  var lift_105 := false;
  var lift_104 := {lift_105, lift_105, lift_106};
  var lift_103 := ('J', lift_104);
  var lift_102 := (var tmpData : set<(char, set<bool>)> := {}; tmpData);
  var lift_101 := lift_102;
  var lift_100 := [lift_101, lift_102, {lift_103}, lift_102];
  var lift_99 := lift_100;
  var lift_88 := ();
  var lift_87 := 'g';
  var lift_86 := -1172934444;
  var lift_85 := lift_86;
  var lift_84 := ((lift_85, lift_87), lift_87, lift_88);
  var lift_76 := 'F';
  var lift_73 := -1495311272;
  var lift_72 := (lift_73, lift_73, 617415418);
  var lift_69 := true;
  var lift_68 := {false, lift_69};
  var lift_67 := true;
  var lift_66 := lift_67;
  var lift_60 := false;
  var lift_57 := '\'';
  var lift_56 := -2054163094;
  var lift_55 := (lift_56, true, lift_57);
  var lift_48 := ();
  var lift_46 := ();
  var lift_33 := ();
  var lift_31 := 1659844770;
  var lift_30 := lift_31;
  var lift_29 := lift_30;
  var lift_28 := (lift_29, 'h');
  var lift_27 := [true];
  var lift_26 := '~';
  var lift_25 := lift_26;
  var lift_24 := true;
  var lift_23 := (lift_24, lift_25);
  var lift_22 := 811204795;
  var lift_21 := -2091476108;
  var lift_20 := (lift_21, lift_22, lift_23);
  var lift_19 := multiset{lift_20, lift_20};
  var lift_18 := (lift_19, lift_27, lift_28);
  var lift_17 := 'J';
  var lift_16 := lift_17;
  var lift_15 := true;
  var lift_14 := (lift_15, lift_16);
  var lift_13 := 1685554714;
  var lift_12 := -479533543;
  var lift_11 := (lift_12, lift_13, lift_14);
  var lift_10 := 'K';
  var lift_9 := (false, lift_10);
  var lift_8 := 1061377538;
  var lift_7 := 1070432921;
  var lift_6 := multiset{(lift_7, lift_8, lift_9), lift_11};
  var lift_5 := "m\"Ytw*$lfq\"H:NjvGcEL\"tlEQ'^DX?a^Khy";
  var lift_4 := {lift_5, lift_5};
  var lift_3 := '+';
  var lift_2 := 'U';
  var lift_1 := false;
  if (((lift_1 || ([
    'O',
    lift_2,
    lift_3,
    lift_2
  ] !in lift_4)) <==> (lift_6 < lift_18.0))) {
    var lift_121 := lift_122;
    var lift_118 := {lift_112, lift_15, lift_60, lift_60, lift_24};
    var lift_113 := true;
    var lift_110 := lift_68;
    var lift_83 := lift_84;
    var lift_81 := [lift_22, lift_30];
    var lift_80 := (lift_15, lift_26, lift_10);
    var lift_79 := lift_80;
    var lift_78 := (lift_79, lift_81, lift_27);
    var lift_74 := (lift_30, lift_29, lift_22);
    var lift_71 := (lift_72, "w+qkjmw");
    var lift_65 := {lift_1, lift_1, lift_15, lift_66};
    var lift_64 := (lift_22, lift_24);
    var lift_63 := (lift_64, lift_17, lift_46);
    var lift_62 := lift_63;
    var lift_61 := (var tmpData : seq<(int, bool, char)> := []; tmpData);
    var lift_59 := (901808235, lift_60, lift_10);
    var lift_53 := (var tmpData : seq<seq<int>> := []; tmpData);
    var lift_45 := ();
    var lift_36 := false;
    var lift_35 := (lift_2, 'G', (lift_12, lift_36, lift_15));
    var lift_34 := lift_35.0;
    var lift_32 := (var tmpData : seq<char> := []; tmpData);
    print 
      (
        lift_29,
        (
          false,
          (
            true,
            (
              (
                ('k', "omt\"c~JLpxb*"),
                {"zn|?e>c~!\"", lift_5, lift_5, lift_32},
                (
                  [
                    (
                      multiset{(), lift_33},
                      (
                        (
                          {lift_30, lift_22},
                          105854465,
                          (var tmpData : seq<int> := []; tmpData)
                        ),
                        false
                      ),
                      "Xw"
                    )
                  ],
                  358242086,
                  {lift_31}
                )
              ),
              's'
            )
          )
        ),
        'e'
      ).0,
      "\n";
    lift_34 := lift_37(lift_45, lift_3).1;
    {
      var lift_119 := true;
      var lift_109 := ('y', lift_15, lift_67);
      var lift_108 := lift_109;
      var lift_98 := (lift_76, lift_65);
      var lift_97 := (var tmpData : set<(char, set<bool>)> := {}; tmpData);
      var lift_96 := [lift_97, {lift_98, (lift_17, lift_65)}, lift_97, lift_97];
      var lift_82 := {
        lift_83,
        lift_84,
        (lift_28, lift_3, lift_33),
        lift_84,
        lift_84
      };
      var lift_77 := lift_78;
      var lift_75 := multiset{lift_8, lift_12, lift_31};
      var lift_58 := lift_55;
      var lift_54 := [lift_55, lift_58, lift_59, lift_59];
      var lift_51 := [lift_22, lift_13, -15491353, lift_12];
      var lift_50 := lift_51;
      var lift_47 := (lift_45, lift_48, lift_46);
      lift_46 := lift_47.0;
      {
        {
          var lift_52 := [lift_8, lift_31, lift_29];
          var lift_49 := [lift_50, lift_50, lift_52, lift_51, lift_52];
          print lift_22, "\n";
          print lift_12, "\n";
          lift_49 := lift_53;
        }
        lift_54 := lift_61;
      }
      {
        var lift_70 := lift_71;
        if (lift_1) {
          lift_62 := lift_62;
        } else {
          print lift_8, "\n";
          lift_65 := lift_68;
          lift_70 := (lift_74, lift_32);
          print lift_30, "\n";
        }
      }
      print |lift_75|, "\n";
      if ((lift_66 ==> lift_24)) {
        print lift_30, "\n";
        lift_76 := lift_16;
        {
          lift_77 := lift_77;
          lift_82 := lift_82;
        }
        print 1226704692, "\n";
      } else {
        var lift_115 := {lift_57, lift_16, lift_16};
        var methoddefvar_91, methoddefvar_92 := lift_89();
        {
          var lift_107 := (lift_26, lift_1, lift_15);
          lift_96 := lift_99;
          lift_107 := lift_108;
        }
        {
          var lift_114 := lift_33;
          print lift_30, "\n";
          lift_110 := lift_68;
          lift_111 := false;
          lift_113 := lift_113;
          lift_114 := lift_33;
        }
        if (lift_106) {
          var lift_116 := {lift_17, lift_57};
          lift_115 := lift_116;
          print -1297354750, "\n";
          lift_117 := lift_31;
          lift_118 := lift_104;
          print -1684584781, "\n";
        } else {
          var lift_120 := multiset{lift_26, lift_3, lift_26, lift_17};
          print lift_12, "\n";
          lift_119 := lift_66;
          lift_120 := lift_121;
        }
      }
    }
    var methoddefvar_129, methoddefvar_130 := lift_127(
      safeSeqRef(lift_81, lift_117, lift_85)
    );
    {
      var lift_136 := [lift_31, 490266750, lift_73, lift_31];
      {
        print 1925106433, "\n";
        lift_136 := lift_81;
      }
    }
    var methoddefvar_137, methoddefvar_138 := lift_127((lift_121['e'] as int));
    {
      var methoddefvar_141, methoddefvar_142 := lift_139(136675659);
      {
        print lift_12, "\n";
        print lift_13, "\n";
      }
    }
  } else {
    lift_146 := lift_151.0;
    print |lift_6|, "\n";
  }
}


