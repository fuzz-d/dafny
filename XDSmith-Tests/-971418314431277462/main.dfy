//
//
//
//
//
//

// Seed: -971418314431277462
// This is a RANDOMLY GENERATED PROGRAM.
// Fuzzer: dafny
// Version: dafny, xsmith 2.0.5 (38f1d83), in Racket 8.9 (vm-type chez-scheme)
// Options: --with-print-constrained true --dafny-syntax true --seed -971418314431277462
// Seed: -971418314431277462
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
method lift_173 ()
  returns (arg_176 : int)
  requires (true)
  ensures (true)
{
  arg_176 := 1400582862;
  {
    var lift_182 := false;
    var lift_181 := lift_182;
    var lift_180 := 'l';
    var lift_179 := 270072130;
    var lift_178 := lift_179;
    var lift_177 := lift_178;
    print lift_177, "\n";
    lift_180 := '^';
    lift_181 := false;
  }
}

method lift_114 (arg_118 : int, arg_119 : int, arg_120 : int)
  returns (arg_121 : int, arg_122 : int)
  requires (true)
  ensures (true)
{
  arg_121 := -1899768707;
  arg_122 := -1179185404;
  {
    var lift_125 := ();
    var lift_124 := lift_125;
    var lift_123 := arg_119;
    print 1008406688, "\n";
    print arg_120, "\n";
    lift_123 := arg_120;
    print -2014457232, "\n";
    lift_124 := lift_125;
  }
}

function lift_97 (
  arg_99 : char,
  arg_100 : bool,
  arg_101 : (int, int),
  arg_102 : (char, char)
) : (int, char, int)
{
  var lift_105 := 'W';
  var lift_104 := -102632227;
  var lift_103 := lift_104;
  (lift_103, lift_105, lift_104)
}

method lift_64 (arg_67 : int, arg_68 : int)
  returns (arg_69 : int)
  requires (true)
  ensures (true)
{
  arg_69 := -339878864;
  {
    var lift_96 := 'X';
    var lift_95 := lift_96;
    var lift_94 := lift_95;
    var lift_93 := (arg_67, lift_94, lift_95);
    var lift_92 := {false};
    var lift_91 := lift_92;
    var lift_90 := lift_91;
    var lift_89 := false;
    var lift_88 := lift_89;
    var lift_87 := true;
    var lift_86 := false;
    var lift_85 := {lift_86, true, lift_87, lift_88};
    var lift_84 := 'F';
    var lift_83 := (lift_84, false);
    var lift_82 := (lift_83, arg_67, lift_85);
    var lift_81 := true;
    var lift_80 := lift_81;
    var lift_79 := lift_80;
    var lift_78 := lift_79;
    var lift_77 := true;
    var lift_76 := {lift_77, lift_78};
    var lift_75 := true;
    var lift_74 := lift_75;
    var lift_73 := 'K';
    var lift_72 := (lift_73, lift_74);
    var lift_71 := (lift_72, -749867681, lift_76);
    var lift_70 := multiset{
      lift_71,
      lift_82,
      lift_71,
      (lift_83, arg_67, {true, lift_79, lift_78}),
      (lift_83, arg_69, lift_90)
    };
    lift_70 := multiset{lift_71, lift_71};
    print arg_68, "\n";
    print arg_68, "\n";
    lift_93 := lift_93;
  }
}

method lift_47 (arg_51 : int, arg_52 : int)
  returns (arg_53 : int, arg_54 : int)
  requires (true)
  ensures (true)
{
  arg_53 := -1156990245;
  arg_54 := -1701090512;
  {
    var lift_62 := (var tmpData : set<bool> := {}; tmpData);
    var lift_61 := ('F', arg_51);
    var lift_60 := (lift_61, lift_62);
    var lift_59 := lift_60;
    var lift_58 := lift_59;
    var lift_57 := -494563755;
    var lift_56 := '\'';
    var lift_55 := lift_56;
    lift_55 := 'K';
    lift_57 := arg_51;
    print arg_54, "\n";
    lift_58 := lift_58;
  }
}

method lift_18 (arg_22 : int)
  returns (arg_23 : int, arg_24 : int)
  requires (true)
  ensures (true)
{
  arg_23 := 1275626403;
  arg_24 := -1329350046;
  {
    print arg_24, "\n";
  }
}

method lift_9 ()
  returns (arg_12 : int)
  requires (true)
  ensures (true)
{
  arg_12 := -1570634492;
  {
    var lift_13 := -1601951813;
    print lift_13, "\n";
  }
}

method lift_1 (arg_4 : int)
  returns (arg_5 : int)
  requires (true)
  ensures (true)
{
  arg_5 := -651358775;
  {
    print arg_4, "\n";
    print arg_4, "\n";
  }
}

method Main () {
  var lift_227 := {()};
  var lift_226 := lift_227;
  var lift_225 := ();
  var lift_224 := lift_225;
  var lift_223 := ();
  var lift_222 := ();
  var lift_221 := {(), lift_222, lift_222, lift_223, lift_224};
  var lift_211 := ();
  var lift_210 := lift_211;
  var lift_209 := lift_210;
  var lift_208 := {lift_209, lift_210, (), ()};
  var lift_207 := 'v';
  var lift_206 := [lift_207];
  var lift_205 := ':';
  var lift_204 := 886324534;
  var lift_203 := (lift_204, lift_205);
  var lift_202 := 'F';
  var lift_201 := lift_202;
  var lift_200 := true;
  var lift_199 := lift_200;
  var lift_198 := (1210699811, lift_199, lift_201);
  var lift_197 := (lift_198, lift_203, lift_206);
  var lift_196 := lift_197;
  var lift_195 := 'u';
  var lift_194 := 'f';
  var lift_193 := '!';
  var lift_192 := (-45809938, lift_193);
  var lift_191 := 'o';
  var lift_190 := false;
  var lift_189 := -1552548527;
  var lift_188 := (lift_189, lift_190, lift_191);
  var lift_187 := (lift_188, lift_192, [lift_194, lift_193, lift_195]);
  var lift_186 := {lift_187};
  var lift_185 := lift_186;
  var lift_184 := [
    lift_185,
    (var tmpData : set<((int, bool, char), (int, char), string)> := {}; tmpData)
  ];
  var lift_171 := true;
  var lift_170 := true;
  var lift_169 := false;
  var lift_168 := false;
  var lift_167 := multiset{lift_168, lift_168, lift_169, lift_170, lift_171};
  var lift_166 := 1491468310;
  var lift_165 := lift_166;
  var lift_164 := 242585058;
  var lift_163 := multiset{lift_164, lift_165, lift_164};
  var lift_162 := 959615146;
  var lift_161 := -219496779;
  var lift_160 := [multiset{lift_161, lift_162, lift_161}, lift_163];
  var lift_155 := (var tmpData : multiset<seq<multiset<int>>> := multiset{}; tmpData);
  var lift_153 := 731322652;
  var lift_152 := multiset{lift_153};
  var lift_151 := (var tmpData : multiset<int> := multiset{}; tmpData);
  var lift_150 := [lift_151, lift_151, lift_152];
  var lift_149 := lift_150;
  var lift_145 := -1930459570;
  var lift_144 := ();
  var lift_143 := lift_144;
  var lift_142 := true;
  var lift_141 := (lift_142, lift_142, lift_143);
  var lift_140 := (lift_141, lift_145);
  var lift_139 := ();
  var lift_138 := true;
  var lift_137 := true;
  var lift_136 := (lift_137, lift_138, lift_139);
  var lift_135 := lift_136;
  var lift_134 := ();
  var lift_133 := lift_134;
  var lift_132 := true;
  var lift_131 := lift_132;
  var lift_130 := lift_131;
  var lift_129 := (false, lift_130, lift_133);
  var lift_128 := [lift_129, lift_135, lift_135];
  var lift_127 := lift_128;
  var lift_126 := 16756303;
  var lift_113 := '\'';
  var lift_112 := '|';
  var lift_111 := (lift_112, lift_112);
  var lift_110 := lift_111;
  var lift_109 := -1101805159;
  var lift_108 := (-184216806, lift_109);
  var lift_107 := false;
  var lift_106 := lift_107;
  var lift_63 := ();
  var lift_45 := ();
  var lift_44 := -602374611;
  var lift_43 := (lift_44, lift_45);
  var lift_42 := lift_43;
  var lift_41 := lift_42;
  var lift_40 := ();
  var lift_39 := -351147106;
  var lift_38 := (lift_39, lift_40);
  var lift_37 := multiset{lift_38, lift_38, lift_41};
  var lift_36 := '\'';
  var lift_35 := lift_36;
  var lift_34 := (var tmpData : set<bool> := {}; tmpData);
  var lift_33 := (lift_34, lift_35, lift_37);
  var lift_32 := ();
  var lift_31 := lift_32;
  var lift_30 := 739645107;
  var lift_25 := -1192812032;
  var lift_17 := (var tmpData : multiset<bool> := multiset{}; tmpData);
  var lift_16 := lift_17;
  var lift_15 := 'g';
  var lift_8 := (var tmpData : set<char> := {}; tmpData);
  var lift_7 := -829489324;
  var lift_6 := (lift_7, lift_8);
  var methoddefvar_3 := lift_1(lift_6.0);
  {
    var lift_46 := (lift_36, lift_8);
    var lift_29 := (lift_30, lift_31);
    var lift_28 := multiset{lift_29, (lift_30, ())};
    var lift_26 := '=';
    var methoddefvar_11 := lift_9();
    {
      var lift_14 := {lift_15};
      lift_14 := lift_8;
      lift_16 := lift_17;
      print lift_7, "\n";
      print methoddefvar_11, "\n";
    }
    var methoddefvar_20, methoddefvar_21 := lift_18(lift_25);
    {
      var lift_27 := 591813640;
      lift_26 := lift_26;
      print methoddefvar_3, "\n";
      lift_27 := methoddefvar_3;
      print lift_27, "\n";
      print methoddefvar_21, "\n";
    }
    lift_28 := lift_33.2;
    {
      {
        lift_46 := lift_46;
        print methoddefvar_3, "\n";
      }
      print lift_44, "\n";
      var methoddefvar_49, methoddefvar_50 := lift_47(lift_7, lift_44);
      {
        print methoddefvar_3, "\n";
        lift_63 := lift_63;
      }
      print 856134759, "\n";
    }
  }
  var methoddefvar_66 := lift_64(
    lift_30,
    lift_97(lift_36, lift_106, lift_108, lift_110).2
  );
  {
    lift_113 := (
      "mujToLu_n/tPu",
      ['d', lift_113, lift_113, lift_36],
      lift_113
    ).2;
  }
  var methoddefvar_116, methoddefvar_117 := lift_114(
    lift_126,
    (multiset(lift_127)[lift_140.0] as int),
    lift_30
  );
  {
    var lift_228 := lift_191;
    var lift_216 := ();
    var lift_212 := {lift_45};
    var lift_172 := [lift_16];
    var lift_159 := multiset{lift_126};
    var lift_158 := lift_151;
    var lift_157 := [
      lift_152,
      lift_158,
      multiset{lift_44, -1660612492, 1057560609, lift_39, lift_30},
      lift_159
    ];
    var lift_156 := multiset{
      lift_149,
      lift_157,
      [lift_158],
      lift_160,
      lift_157
    };
    var lift_154 := [
      lift_155,
      lift_156,
      lift_155,
      multiset{
        lift_150,
        lift_160,
        [lift_151, lift_151, lift_158, lift_151],
        lift_149,
        lift_150
      }
    ];
    var lift_148 := multiset{lift_149};
    var lift_147 := lift_148;
    var lift_146 := [lift_147, lift_148];
    lift_146 := lift_154;
    lift_167 := safeSeqRef(lift_172, lift_162, lift_167);
    var methoddefvar_175 := lift_173();
    {
      var lift_183 := ();
      print -1148360081, "\n";
      lift_183 := lift_45;
      lift_184 := [{lift_196, lift_196}];
      print lift_109, "\n";
      print lift_126, "\n";
    }
    if (lift_198.1) {
      var lift_215 := 'D';
      lift_208 := lift_212;
      print lift_166, "\n";
      print lift_189, "\n";
      var methoddefvar_213, methoddefvar_214 := lift_47(
        lift_145,
        methoddefvar_116
      );
      {
        lift_215 := 'Y';
        lift_216 := lift_144;
      }
    } else {
      print 1784097126, "\n";
    }
    if ((true <== lift_132)) {
      var lift_218 := 'P';
      var methoddefvar_217 := lift_9();
      {
        print -466566606, "\n";
        print lift_162, "\n";
        lift_218 := lift_15;
      }
      {
        print methoddefvar_116, "\n";
      }
      var methoddefvar_219, methoddefvar_220 := lift_18(lift_153);
      {
        print methoddefvar_219, "\n";
        print lift_153, "\n";
        lift_221 := {()};
        lift_226 := lift_212;
        print lift_162, "\n";
      }
    } else {
      var lift_230 := ();
      print lift_7, "\n";
      if (false) {
        lift_228 := '%';
        print methoddefvar_116, "\n";
        print lift_44, "\n";
        print lift_44, "\n";
      } else {
        var lift_229 := false;
        lift_229 := false;
      }
      if (true) {
        print lift_162, "\n";
      } else {
        print lift_161, "\n";
        lift_230 := lift_133;
      }
    }
  }
}


