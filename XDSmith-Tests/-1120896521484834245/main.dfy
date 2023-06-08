// RUN: %dafny /noVerify /compile:4 /compileTarget:cs "%s" > "%t"
// RUN: %exits-with 3 %dafny /noVerify /compile:4 /compileTarget:java "%s" >> "%t"
// RUN: %dafny /noVerify /compile:4 /compileTarget:py "%s" >> "%t"
// RUN: %dafny /noVerify /compile:4 /compileTarget:js "%s" >> "%t"
// RUN: %dafny /noVerify /compile:4 /compileTarget:go "%s" >> "%t"
// RUN: %diff "%s.expect" "%t"

// Seed: -1120896521484834245
// This is a RANDOMLY GENERATED PROGRAM.
// Fuzzer: dafny
// Version: dafny, xsmith 2.0.5 (38f1d83), in Racket 8.9 (vm-type chez-scheme)
// Options: --with-print-constrained true --dafny-syntax true --seed -1120896521484834245
// Seed: -1120896521484834245
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
function lift_195 (arg_197 : int) : multiset<multiset<char>>
{
  var lift_201 := (var tmpData : multiset<char> := multiset{}; tmpData);
  var lift_200 := ';';
  var lift_199 := multiset{lift_200, lift_200};
  var lift_198 := multiset{lift_199, lift_201, lift_199, lift_201, lift_199};
  lift_198
}

function lift_186 () : int
{
  var lift_188 := 53588799;
  lift_188
}

function lift_168 (
  arg_170 : bool,
  arg_171 : bool,
  arg_172 : int,
  arg_173 : bool,
  arg_174 : bool
) : multiset<multiset<char>>
{
  var lift_179 := 'K';
  var lift_178 := multiset{lift_179, ':'};
  var lift_177 := lift_178;
  var lift_176 := lift_177;
  var lift_175 := multiset{lift_176, lift_176};
  lift_175
}

method lift_120 (arg_124 : int, arg_125 : int)
  returns (arg_126 : int, arg_127 : int)
  requires (true)
  ensures (true)
{
  arg_126 := 1838041483;
  arg_127 := -1703647298;
  {
    var lift_137 := ();
    var lift_136 := ();
    var lift_135 := lift_136;
    var lift_134 := {lift_135, lift_135, lift_137};
    var lift_133 := lift_134;
    var lift_132 := ();
    var lift_131 := lift_132;
    var lift_130 := lift_131;
    var lift_129 := {(), lift_130, (), lift_131, lift_132};
    var lift_128 := arg_124;
    lift_128 := arg_125;
    lift_129 := lift_133;
    print arg_126, "\n";
  }
}

method lift_100 (arg_104 : int, arg_105 : int, arg_106 : int)
  returns (arg_107 : int, arg_108 : int)
  requires (true)
  ensures (true)
{
  arg_107 := -570144945;
  arg_108 := -957490217;
  {
    print arg_107, "\n";
  }
}

method lift_84 (arg_88 : int, arg_89 : int, arg_90 : int)
  returns (arg_91 : int, arg_92 : int)
  requires (true)
  ensures (true)
{
  arg_91 := -343146572;
  arg_92 := 457022929;
  {
    print arg_91, "\n";
    print 589303782, "\n";
  }
}

method lift_41 (arg_44 : int, arg_45 : int, arg_46 : int)
  returns (arg_47 : int)
  requires (true)
  ensures (true)
{
  arg_47 := 2139312698;
  {
    print arg_45, "\n";
    print arg_46, "\n";
    print arg_46, "\n";
  }
}

method lift_35 (arg_38 : int)
  returns (arg_39 : int)
  requires (true)
  ensures (true)
{
  arg_39 := -747064567;
  {
    var lift_40 := -288231019;
    lift_40 := lift_40;
    print arg_38, "\n";
    print 417010522, "\n";
  }
}

method Main () {
  var lift_219 := 1749951420;
  var lift_218 := 'W';
  var lift_217 := (lift_218, lift_219);
  var lift_216 := lift_217;
  var lift_215 := lift_216;
  var lift_214 := -1216938465;
  var lift_213 := 'h';
  var lift_212 := (lift_213, lift_214);
  var lift_211 := true;
  var lift_210 := true;
  var lift_209 := [false, lift_210, lift_211, lift_210, true];
  var lift_208 := (lift_209, lift_212);
  var lift_207 := lift_208;
  var lift_206 := lift_207;
  var lift_205 := multiset{lift_206, (lift_209, lift_215), lift_207, lift_208};
  var lift_204 := (lift_205, lift_213, lift_218);
  var lift_203 := '<';
  var lift_202 := multiset{lift_203, lift_203};
  var lift_194 := [lift_195, lift_195, lift_195];
  var lift_193 := false;
  var lift_192 := false;
  var lift_191 := lift_192;
  var lift_190 := {lift_191, lift_191, lift_193, false};
  var lift_189 := (var tmpData : multiset<set<int>> := multiset{}; tmpData);
  var lift_185 := -475441145;
  var lift_184 := -1697468528;
  var lift_183 := -197469665;
  var lift_182 := -1117246460;
  var lift_181 := {lift_182, lift_183};
  var lift_180 := -630856927;
  var lift_167 := (lift_168, lift_180);
  var lift_166 := lift_167.0(
    (lift_181 !! lift_181 !! {
      lift_183,
      -1890157089,
      lift_182,
      lift_183,
      lift_184
    }),
    (lift_182 <= lift_185 <= -1977825375),
    lift_186(),
    (lift_181 in lift_189),
    (lift_190 <= lift_190 <= lift_190)
  );
  var lift_164 := -1252944903;
  var lift_163 := true;
  var lift_162 := lift_163;
  var lift_161 := (true, lift_162, lift_164);
  var lift_160 := 1675320593;
  var lift_159 := false;
  var lift_158 := false;
  var lift_157 := (lift_158, lift_159, lift_160);
  var lift_156 := lift_157;
  var lift_155 := {lift_156, lift_161, (lift_159, lift_162, lift_160)};
  var lift_154 := -1835212746;
  var lift_153 := false;
  var lift_152 := (lift_153, lift_153, lift_154);
  var lift_151 := lift_152;
  var lift_150 := 1577089546;
  var lift_149 := true;
  var lift_148 := (lift_149, lift_149, lift_150);
  var lift_147 := {lift_148, lift_151};
  var lift_146 := -628622708;
  var lift_145 := false;
  var lift_144 := (lift_145, lift_145, lift_146);
  var lift_143 := -343472559;
  var lift_142 := false;
  var lift_141 := {(lift_142, false, lift_143), lift_144, lift_144};
  var lift_140 := [lift_141, lift_147, lift_155, lift_141];
  var lift_139 := lift_140;
  var lift_138 := ();
  var lift_114 := true;
  var lift_113 := lift_114;
  var lift_112 := [lift_113];
  var lift_99 := true;
  var lift_98 := 109288992;
  var lift_97 := ();
  var lift_96 := lift_97;
  var lift_95 := (lift_96, lift_98, lift_99);
  var lift_83 := 1468822561;
  var lift_82 := lift_83;
  var lift_81 := false;
  var lift_80 := lift_81;
  var lift_79 := (lift_80, lift_82);
  var lift_78 := (lift_79, lift_81);
  var lift_74 := '^';
  var lift_73 := 'W';
  var lift_72 := '+';
  var lift_71 := {lift_72, lift_73, lift_72, lift_74};
  var lift_65 := ();
  var lift_64 := -1362306766;
  var lift_63 := lift_64;
  var lift_62 := false;
  var lift_61 := false;
  var lift_60 := (lift_61, lift_62);
  var lift_59 := lift_60;
  var lift_58 := lift_59;
  var lift_57 := false;
  var lift_56 := lift_57;
  var lift_55 := lift_56;
  var lift_54 := (lift_55, lift_55);
  var lift_53 := lift_54;
  var lift_52 := lift_53;
  var lift_51 := {lift_52, lift_53, lift_58};
  var lift_50 := multiset{lift_51};
  var lift_49 := (lift_50, lift_63, lift_65);
  var lift_34 := multiset{-1241589565, -197313397};
  var lift_33 := ();
  var lift_32 := 'z';
  var lift_31 := -1290612115;
  var lift_30 := lift_31;
  var lift_29 := (lift_30, lift_32);
  var lift_28 := -294487263;
  var lift_27 := lift_28;
  var lift_26 := [lift_27, lift_27, 578772675];
  var lift_25 := 781632048;
  var lift_24 := 262944535;
  var lift_23 := 1072149246;
  var lift_22 := -792471363;
  var lift_21 := [lift_22, lift_23, lift_23, lift_24];
  var lift_20 := {
    lift_21,
    [lift_22, lift_25],
    lift_26,
    (var tmpData : seq<int> := []; tmpData),
    [-369622928, lift_22, lift_25, lift_27, 1429712501]
  };
  var lift_19 := lift_20;
  var lift_18 := false;
  var lift_17 := {lift_18};
  var lift_16 := lift_17;
  var lift_15 := (lift_16, lift_19, (lift_29, lift_33, lift_34));
  var lift_14 := lift_15;
  var lift_13 := 346497299;
  var lift_12 := -775003644;
  var lift_11 := 1104641813;
  var lift_10 := multiset{lift_11, lift_12};
  var lift_9 := lift_10;
  var lift_8 := ();
  var lift_7 := lift_8;
  var lift_6 := 'o';
  var lift_5 := ((-177774530, lift_6), lift_7, lift_9);
  var lift_4 := lift_5;
  var lift_3 := (-74751769, lift_4, lift_11);
  var lift_2 := (lift_3, lift_13);
  var lift_1 := lift_2.0.1;
  lift_1 := lift_14.2;
  var methoddefvar_37 := lift_35(lift_2.0.0);
  {
    var lift_165 := ();
    var lift_119 := ();
    var lift_118 := false;
    var lift_111 := (var tmpData : seq<bool> := []; tmpData);
    var lift_110 := lift_111;
    var lift_94 := ((), lift_24, false);
    var lift_93 := lift_10;
    var lift_76 := 'R';
    var lift_75 := 'V';
    var lift_70 := 'B';
    var lift_69 := {lift_6, lift_70, lift_6};
    {
      var lift_66 := lift_8;
      var lift_48 := lift_49;
      var methoddefvar_43 := lift_41(lift_31, lift_24, lift_28);
      {
        lift_48 := lift_49;
        lift_66 := lift_66;
      }
    }
    var methoddefvar_67 := lift_35(methoddefvar_37);
    {
      print -1137209690, "\n";
      print lift_31, "\n";
    }
    {
      var lift_77 := 'V';
      var lift_68 := ();
      print lift_12, "\n";
      if (lift_61) {
        print lift_30, "\n";
        print lift_23, "\n";
        print -1234350054, "\n";
        lift_68 := ();
        lift_69 := lift_71;
      } else {
        lift_75 := 'l';
      }
      if (lift_62) {
        print lift_24, "\n";
        lift_76 := lift_6;
        print 2117871933, "\n";
        lift_77 := lift_6;
      } else {
        lift_78 := lift_78;
      }
      var methoddefvar_86, methoddefvar_87 := lift_84(
        lift_28,
        lift_64,
        -929039102
      );
      {
        lift_93 := lift_93;
        print lift_25, "\n";
      }
      lift_94 := lift_95;
    }
    {
      var lift_116 := lift_56;
      var lift_115 := [lift_80, true, lift_62, lift_62, lift_81];
      var methoddefvar_102, methoddefvar_103 := lift_100(
        lift_30,
        lift_30,
        lift_24
      );
      {
        var lift_109 := [lift_110, lift_111, lift_112, lift_110, lift_115];
        print -12725261, "\n";
        lift_109 := lift_109;
      }
      {
        var lift_117 := 1303464301;
        lift_116 := lift_80;
        lift_117 := lift_13;
        lift_118 := lift_55;
      }
      print lift_31, "\n";
      if (lift_99) {
        print lift_23, "\n";
        lift_119 := lift_65;
        print lift_27, "\n";
        print lift_23, "\n";
      } else {
        print methoddefvar_37, "\n";
      }
    }
    var methoddefvar_122, methoddefvar_123 := lift_120(lift_82, lift_24);
    {
      lift_138 := lift_65;
      lift_139 := lift_140;
      print lift_25, "\n";
      lift_165 := lift_65;
    }
  }
  lift_166 := (safeSeqRef(lift_194, lift_160, lift_195)(
    safeSeqRef([lift_30, lift_11, lift_182], lift_180, lift_98)
  )[(((), lift_202).1[lift_204.2 := lengthNormalize(
    lift_186()
  )]) := lengthNormalize(|(lift_190 - lift_16)|)]);
}


