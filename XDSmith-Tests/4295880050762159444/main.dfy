//
//
//
//
//
//

// Seed: 4295880050762159444
// This is a RANDOMLY GENERATED PROGRAM.
// Fuzzer: dafny
// Version: dafny, xsmith 2.0.5 (38f1d83), in Racket 8.9 (vm-type chez-scheme)
// Options: --with-print-constrained true --dafny-syntax true --seed 4295880050762159444
// Seed: 4295880050762159444
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
method lift_278 (arg_282 : int, arg_283 : int, arg_284 : int)
  returns (arg_285 : int, arg_286 : int)
  requires (true)
  ensures (true)
{
  arg_285 := -1504383022;
  arg_286 := 2037507590;
  {
    print -679527105, "\n";
    print arg_282, "\n";
    print arg_284, "\n";
  }
}

method lift_263 ()
  returns (arg_266 : int)
  requires (true)
  ensures (true)
{
  arg_266 := 803031292;
  {
    var lift_277 := [arg_266];
    var lift_276 := false;
    var lift_275 := '?';
    var lift_274 := (lift_275, arg_266, lift_276);
    var lift_273 := false;
    var lift_272 := ((lift_273, arg_266), lift_274, lift_277);
    var lift_271 := lift_272;
    var lift_270 := {lift_271, lift_272};
    var lift_269 := (var tmpData : set<((bool, int), (char, int, bool), seq<int>)> := {}; tmpData);
    var lift_268 := 'u';
    var lift_267 := ';';
    lift_267 := lift_268;
    lift_269 := lift_270;
    print arg_266, "\n";
  }
}

function lift_181 (
  arg_183 : set<((char, bool), (int, bool), int)>,
  arg_184 : bool
) : (char, int)
{
  var lift_186 := -170447615;
  var lift_185 := ('Y', lift_186);
  lift_185
}

method lift_173 (arg_176 : int, arg_177 : int)
  returns (arg_178 : int)
  requires (true)
  ensures (true)
{
  arg_178 := 2068013048;
  {
    var lift_180 := ();
    var lift_179 := [lift_180, lift_180];
    lift_179 := lift_179;
  }
}

method lift_159 (arg_163 : int, arg_164 : int, arg_165 : int)
  returns (arg_166 : int, arg_167 : int)
  requires (true)
  ensures (true)
{
  arg_166 := 141014934;
  arg_167 := 1492758227;
  {
    var lift_172 := '=';
    var lift_171 := ();
    var lift_170 := {arg_163, arg_164, arg_164, arg_163};
    var lift_169 := -421095145;
    var lift_168 := {lift_169, arg_164, arg_165, arg_163, lift_169};
    lift_168 := lift_170;
    lift_171 := lift_171;
    lift_172 := lift_172;
    print arg_165, "\n";
    print arg_163, "\n";
  }
}

function lift_147 () : multiset<()>
{
  var lift_150 := ();
  var lift_149 := multiset{lift_150};
  lift_149
}

function lift_126 (
  arg_128 : multiset<bool>,
  arg_129 : int,
  arg_130 : multiset<()>,
  arg_131 : char,
  arg_132 : seq<int>
) : multiset<()>
{
  var lift_139 := ();
  var lift_138 := ();
  var lift_137 := ();
  var lift_136 := multiset{(), lift_137, lift_138, lift_137, lift_139};
  var lift_135 := lift_136;
  var lift_134 := lift_135;
  var lift_133 := lift_134;
  lift_133
}

method lift_112 (arg_115 : int)
  returns (arg_116 : int)
  requires (true)
  ensures (true)
{
  arg_116 := -1047994760;
  {
    var lift_118 := "goAHv$BFnPsBd|Wejt-M%+'~NQ/U/ic'T;";
    var lift_117 := "Aju|HckuJ%nJY_-_Pv:@ZNYfEPcaGXWCWv";
    lift_117 := lift_118;
  }
}

method lift_60 (arg_63 : int, arg_64 : int, arg_65 : int)
  returns (arg_66 : int)
  requires (true)
  ensures (true)
{
  arg_66 := -605893894;
  {
    print 209477314, "\n";
  }
}

method lift_54 ()
  returns (arg_57 : int)
  requires (true)
  ensures (true)
{
  arg_57 := 27119669;
  {
    var lift_59 := '|';
    var lift_58 := 186448128;
    print lift_58, "\n";
    print lift_58, "\n";
    print lift_58, "\n";
    lift_59 := lift_59;
    print lift_58, "\n";
  }
}

method lift_26 (arg_30 : int)
  returns (arg_31 : int, arg_32 : int)
  requires (true)
  ensures (true)
{
  arg_31 := 1094420465;
  arg_32 := -1758568925;
  {
    var lift_35 := ();
    var lift_34 := arg_31;
    var lift_33 := ();
    lift_33 := lift_33;
    lift_34 := arg_30;
    print -1862259226, "\n";
    lift_35 := lift_35;
  }
}

method lift_10 ()
  returns (arg_13 : int)
  requires (true)
  ensures (true)
{
  arg_13 := 1352188837;
  {
    var lift_23 := 'p';
    var lift_22 := 'r';
    var lift_21 := -1360085838;
    var lift_20 := (lift_21, lift_22, lift_23);
    var lift_19 := lift_20;
    var lift_18 := lift_19;
    var lift_17 := (-1328418380, lift_18);
    var lift_16 := false;
    var lift_15 := lift_16;
    var lift_14 := false;
    print 118121675, "\n";
    lift_14 := lift_15;
    print arg_13, "\n";
    lift_17 := lift_17;
  }
}

method lift_1 ()
  returns (arg_5 : int, arg_6 : int)
  requires (true)
  ensures (true)
{
  arg_5 := -1086184067;
  arg_6 := -1234207184;
  {
    var lift_9 := (var tmpData : set<int> := {}; tmpData);
    var lift_8 := 'z';
    var lift_7 := 'q';
    lift_7 := lift_8;
    print 1949134373, "\n";
    print arg_5, "\n";
    lift_9 := lift_9;
  }
}

method Main () {
  var lift_262 := (var tmpData : multiset<bool> := multiset{}; tmpData);
  var lift_258 := -1432396504;
  var lift_253 := ();
  var lift_252 := ();
  var lift_251 := lift_252;
  var lift_250 := lift_251;
  var lift_249 := {lift_250, (), lift_253, lift_251};
  var lift_248 := false;
  var lift_247 := 305010377;
  var lift_246 := lift_247;
  var lift_245 := lift_246;
  var lift_244 := (
    multiset{lift_245, lift_246, -440298849, lift_245},
    (lift_248, lift_246),
    lift_249
  );
  var lift_242 := 'd';
  var lift_241 := '+';
  var lift_240 := (lift_241, lift_242, 1540929558);
  var lift_239 := -81326050;
  var lift_238 := 'v';
  var lift_237 := (lift_238, 'F', lift_239);
  var lift_236 := [lift_237, lift_240];
  var lift_235 := 'c';
  var lift_234 := lift_235;
  var lift_233 := 'j';
  var lift_232 := {lift_233, lift_234};
  var lift_230 := 't';
  var lift_229 := '%';
  var lift_228 := '@';
  var lift_227 := [{lift_228, lift_229, lift_229, lift_230, lift_230}];
  var lift_224 := ();
  var lift_223 := lift_224;
  var lift_222 := lift_223;
  var lift_221 := 1475491616;
  var lift_220 := -1709951136;
  var lift_219 := ([lift_220, lift_221], lift_222);
  var lift_218 := lift_219;
  var lift_217 := 1735761380;
  var lift_216 := -2091812296;
  var lift_215 := ([lift_216, lift_216, lift_217, lift_217, lift_217], ());
  var lift_212 := ();
  var lift_211 := lift_212;
  var lift_207 := true;
  var lift_206 := -2085305481;
  var lift_205 := (lift_206, lift_207);
  var lift_204 := 'X';
  var lift_203 := (lift_204, false);
  var lift_202 := (lift_203, lift_205, lift_206);
  var lift_201 := true;
  var lift_200 := lift_201;
  var lift_199 := lift_200;
  var lift_198 := 994611034;
  var lift_197 := 'U';
  var lift_196 := ((lift_197, true), (lift_198, lift_199), lift_198);
  var lift_195 := lift_196;
  var lift_194 := -21666943;
  var lift_193 := (lift_194, true);
  var lift_192 := true;
  var lift_191 := 'S';
  var lift_190 := lift_191;
  var lift_189 := lift_190;
  var lift_188 := ((lift_189, lift_192), lift_193, lift_194);
  var lift_187 := {lift_188, lift_195, lift_202};
  var lift_156 := false;
  var lift_155 := false;
  var lift_154 := lift_155;
  var lift_153 := lift_154;
  var lift_152 := [lift_153, lift_156, lift_154];
  var lift_151 := (false !in lift_152);
  var lift_146 := 'u';
  var lift_145 := (
    lift_146,
    lift_146,
    (var tmpData : multiset<()> := multiset{}; tmpData)
  );
  var lift_144 := true;
  var lift_143 := -925737660;
  var lift_142 := (lift_143, lift_144, lift_145);
  var lift_141 := ();
  var lift_140 := multiset{lift_141, lift_141};
  var lift_125 := -2098173310;
  var lift_124 := lift_125;
  var lift_123 := lift_124;
  var lift_122 := lift_123;
  var lift_121 := multiset{lift_122, lift_124};
  var lift_120 := lift_121;
  var lift_111 := false;
  var lift_110 := true;
  var lift_109 := multiset{lift_110, lift_110, lift_111};
  var lift_108 := lift_109;
  var lift_106 := true;
  var lift_105 := true;
  var lift_104 := multiset{lift_105, lift_105, false, lift_106, lift_105};
  var lift_102 := '-';
  var lift_101 := 670635729;
  var lift_100 := lift_101;
  var lift_99 := (lift_100, lift_102);
  var lift_98 := {lift_99, lift_99, lift_99, (lift_100, lift_102)};
  var lift_97 := 2025564679;
  var lift_96 := (lift_97, 'k');
  var lift_95 := '&';
  var lift_94 := lift_95;
  var lift_93 := 672739387;
  var lift_92 := (lift_93, lift_94);
  var lift_91 := {lift_92, lift_96, (lift_93, lift_95)};
  var lift_90 := lift_91;
  var lift_89 := '$';
  var lift_88 := 'p';
  var lift_87 := 259298001;
  var lift_86 := (lift_87, lift_88);
  var lift_85 := lift_86;
  var lift_84 := {lift_85, lift_86, (lift_87, lift_89)};
  var lift_83 := 'W';
  var lift_82 := lift_83;
  var lift_81 := 1555950649;
  var lift_80 := (lift_81, lift_82);
  var lift_79 := 'q';
  var lift_78 := (1080502071, lift_79);
  var lift_77 := multiset{
    {lift_78, lift_80, lift_80, lift_80},
    lift_84,
    lift_90,
    lift_90,
    lift_98
  };
  var lift_76 := lift_77;
  var lift_75 := 1028259410;
  var lift_74 := lift_75;
  var lift_73 := [lift_74, -766516515, lift_74];
  var lift_72 := true;
  var lift_71 := lift_72;
  var lift_70 := lift_71;
  var lift_69 := multiset{lift_70, lift_70};
  var lift_53 := ();
  var lift_52 := lift_53;
  var lift_51 := (var tmpData : multiset<()> := multiset{}; tmpData);
  var lift_50 := 310741667;
  var lift_49 := (lift_50, lift_51);
  var lift_48 := lift_49;
  var lift_47 := lift_48;
  var lift_46 := lift_47;
  var lift_45 := lift_46;
  var lift_44 := (lift_45.1, lift_52);
  var lift_38 := true;
  var lift_24 := ();
  {
    var lift_42 := (var tmpData : set<set<char>> := {}; tmpData);
    var lift_37 := false;
    var methoddefvar_3, methoddefvar_4 := lift_1();
    {
      var lift_43 := methoddefvar_3;
      var lift_39 := true;
      var lift_25 := methoddefvar_4;
      var methoddefvar_12 := lift_10();
      {
        lift_24 := lift_24;
        lift_25 := methoddefvar_4;
      }
      var methoddefvar_28, methoddefvar_29 := lift_26(methoddefvar_3);
      {
        var lift_36 := [lift_37, lift_38, lift_39, lift_38, lift_37];
        print methoddefvar_3, "\n";
        print lift_25, "\n";
        print lift_25, "\n";
        lift_36 := [lift_37];
        print -1831862680, "\n";
      }
      if (lift_39) {
        var lift_40 := lift_37;
        lift_40 := lift_38;
      } else {
        var lift_41 := [lift_39];
        print methoddefvar_4, "\n";
        lift_41 := lift_41;
        lift_42 := lift_42;
        print lift_43, "\n";
      }
    }
  }
  lift_44 := lift_44;
  var methoddefvar_56 := lift_54();
  {
    var lift_107 := lift_104;
    var lift_103 := [lift_104, lift_107, lift_104];
    var lift_68 := (lift_69, lift_73, lift_76);
    var lift_67 := 781922754;
    var methoddefvar_62 := lift_60(4101319, lift_67, methoddefvar_56);
    {
      print lift_50, "\n";
      lift_68 := lift_68;
      print lift_101, "\n";
      lift_103 := [
        lift_107,
        lift_107,
        lift_69,
        multiset{lift_72, lift_38},
        lift_108
      ];
    }
    var methoddefvar_114 := lift_112(lift_93);
    {
      var lift_119 := multiset{lift_100, methoddefvar_114, lift_93, 266593312};
      lift_119 := lift_120;
      print -938440592, "\n";
      print -1539743376, "\n";
    }
  }
  if ((((lift_51[lift_52 := lengthNormalize(lift_75)]) + lift_48.1 + lift_126(
    lift_104,
    lift_124,
    lift_140,
    lift_82,
    [lift_101, lift_74]
  )) <= lift_142.2.2 < lift_147())) {
    lift_151 := (safeDivide(98709782, lift_74) < |lift_152|);
  } else {
    var methoddefvar_157, methoddefvar_158 := lift_26(lift_100);
    {
      var methoddefvar_161, methoddefvar_162 := lift_159(
        lift_50,
        lift_123,
        lift_93
      );
      {
        print 1209416920, "\n";
        print methoddefvar_158, "\n";
      }
    }
  }
  var methoddefvar_175 := lift_173(lift_181(lift_187, lift_156).1, lift_143);
  {
    var lift_288 := 'f';
    var lift_287 := {1000148476, lift_221, lift_246, lift_74, lift_245};
    var lift_259 := (var tmpData : multiset<int> := multiset{}; tmpData);
    var lift_255 := multiset{lift_253, lift_251, (), lift_53, lift_252};
    var lift_231 := {lift_94};
    {
      var lift_256 := 'H';
      var lift_254 := '-';
      var lift_243 := lift_192;
      var lift_210 := lift_70;
      var methoddefvar_208, methoddefvar_209 := lift_1();
      {
        print methoddefvar_208, "\n";
        print -1719404382, "\n";
        lift_210 := lift_105;
      }
      if (lift_106) {
        var lift_213 := {lift_97};
        lift_211 := ();
        print -266171007, "\n";
        lift_213 := lift_213;
        print lift_122, "\n";
      } else {
        print lift_87, "\n";
      }
      var methoddefvar_214 := lift_112(744890227);
      {
        lift_215 := lift_218;
      }
      var methoddefvar_225, methoddefvar_226 := lift_159(
        lift_125,
        lift_198,
        methoddefvar_175
      );
      {
        print lift_74, "\n";
        lift_227 := [lift_231, lift_232];
        lift_236 := lift_236;
      }
      if (lift_243) {
        lift_244 := lift_244;
        lift_254 := '/';
        print lift_246, "\n";
        lift_255 := lift_255;
        lift_256 := lift_94;
      } else {
        var lift_257 := (-216838337, lift_38);
        lift_257 := (lift_101, lift_153);
        lift_258 := lift_239;
        lift_259 := lift_259;
        print lift_87, "\n";
      }
    }
    {
      var lift_261 := lift_69;
      {
        var lift_260 := (var tmpData : set<multiset<bool>> := {}; tmpData);
        print lift_81, "\n";
        lift_260 := lift_260;
        print -2000985764, "\n";
      }
      {
        print lift_74, "\n";
        print lift_81, "\n";
        lift_261 := lift_262;
        print lift_122, "\n";
      }
    }
    var methoddefvar_265 := lift_263();
    {
      print lift_216, "\n";
      print lift_217, "\n";
      print lift_122, "\n";
      print lift_258, "\n";
    }
    var methoddefvar_280, methoddefvar_281 := lift_278(
      lift_81,
      lift_101,
      lift_206
    );
    {
      lift_287 := {lift_206, lift_81, lift_221, lift_81, lift_258};
      lift_288 := lift_229;
    }
  }
}


