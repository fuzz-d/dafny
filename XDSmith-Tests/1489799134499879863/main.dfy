//
//
//
//
//
//

// Seed: 1489799134499879863
// This is a RANDOMLY GENERATED PROGRAM.
// Fuzzer: dafny
// Version: dafny, xsmith 2.0.5 (38f1d83), in Racket 8.9 (vm-type chez-scheme)
// Options: --with-print-constrained true --dafny-syntax true --seed 1489799134499879863
// Seed: 1489799134499879863
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
method lift_292 (arg_296 : int, arg_297 : int)
  returns (arg_298 : int, arg_299 : int)
  requires (true)
  ensures (true)
{
  arg_298 := -1386144010;
  arg_299 := -1214447102;
  {
    var lift_301 := false;
    var lift_300 := 's';
    print arg_297, "\n";
    print arg_299, "\n";
    lift_300 := lift_300;
    lift_301 := false;
    print arg_296, "\n";
  }
}

method lift_275 (arg_279 : int, arg_280 : int)
  returns (arg_281 : int, arg_282 : int)
  requires (true)
  ensures (true)
{
  arg_281 := -1272504853;
  arg_282 := 938207238;
  {
    print arg_280, "\n";
    print -1315716784, "\n";
  }
}

method lift_245 (arg_249 : int)
  returns (arg_250 : int, arg_251 : int)
  requires (true)
  ensures (true)
{
  arg_250 := 1620536652;
  arg_251 := 1737175578;
  {
    var lift_268 := ();
    var lift_267 := lift_268;
    var lift_266 := ();
    var lift_265 := multiset{lift_266, (), lift_267, lift_267, lift_268};
    var lift_264 := ();
    var lift_263 := ();
    var lift_262 := lift_263;
    var lift_261 := lift_262;
    var lift_260 := multiset{lift_261, lift_261, lift_264, lift_262};
    var lift_259 := [lift_260, lift_265, lift_265];
    var lift_258 := (var tmpData : multiset<()> := multiset{}; tmpData);
    var lift_257 := ();
    var lift_256 := lift_257;
    var lift_255 := multiset{lift_256, lift_256, lift_257, lift_256, lift_256};
    var lift_254 := [lift_255, lift_258];
    var lift_253 := lift_254;
    var lift_252 := ();
    lift_252 := lift_252;
    lift_253 := lift_259;
  }
}

function lift_218 (arg_220 : set<bool>, arg_221 : seq<char>) : char
{
  var lift_222 := 'f';
  lift_222
}

method lift_169 (arg_172 : int, arg_173 : int, arg_174 : int)
  returns (arg_175 : int)
  requires (true)
  ensures (true)
{
  arg_175 := -1997973178;
  {
    var lift_180 := ();
    var lift_179 := ();
    var lift_178 := lift_179;
    var lift_177 := {lift_178, lift_180};
    var lift_176 := lift_177;
    print arg_172, "\n";
    lift_176 := lift_177;
  }
}

method lift_132 (arg_135 : int, arg_136 : int)
  returns (arg_137 : int)
  requires (true)
  ensures (true)
{
  arg_137 := 148582442;
  {
    var lift_155 := 'h';
    var lift_154 := lift_155;
    var lift_153 := lift_154;
    var lift_152 := ('@', lift_153);
    var lift_151 := '-';
    var lift_150 := (lift_151, false);
    var lift_149 := (arg_135, lift_150, lift_152);
    var lift_148 := 'U';
    var lift_147 := (lift_148, lift_148);
    var lift_146 := true;
    var lift_145 := lift_146;
    var lift_144 := 'N';
    var lift_143 := (lift_144, lift_145);
    var lift_142 := lift_143;
    var lift_141 := (arg_135, lift_142, lift_147);
    var lift_140 := (arg_135, 'U');
    var lift_139 := lift_140;
    var lift_138 := true;
    print arg_137, "\n";
    lift_138 := lift_138;
    lift_139 := lift_139;
    lift_141 := lift_149;
    print arg_135, "\n";
  }
}

method lift_112 (arg_116 : int)
  returns (arg_117 : int, arg_118 : int)
  requires (true)
  ensures (true)
{
  arg_117 := 1801677187;
  arg_118 := -1113198319;
  {
    var lift_124 := false;
    var lift_123 := -2093841421;
    var lift_122 := true;
    var lift_121 := -1223491420;
    var lift_120 := (lift_121, arg_118, lift_122);
    var lift_119 := [
      lift_120,
      lift_120,
      (lift_123, arg_116, lift_124),
      (589824843, lift_123, lift_124)
    ];
    lift_119 := lift_119;
  }
}

method lift_106 ()
  returns (arg_109 : int)
  requires (true)
  ensures (true)
{
  arg_109 := 295460673;
  {
    var lift_110 := ();
    print arg_109, "\n";
    lift_110 := lift_110;
  }
}

method lift_78 (arg_81 : int, arg_82 : int)
  returns (arg_83 : int)
  requires (true)
  ensures (true)
{
  arg_83 := 1471019068;
  {
    var lift_85 := '?';
    var lift_84 := -2105845894;
    print arg_81, "\n";
    lift_84 := lift_84;
    lift_85 := 'K';
    print 1458278134, "\n";
    print arg_82, "\n";
  }
}

method lift_44 (arg_48 : int, arg_49 : int, arg_50 : int)
  returns (arg_51 : int, arg_52 : int)
  requires (true)
  ensures (true)
{
  arg_51 := 1332058036;
  arg_52 := 742862558;
  {
    var lift_73 := false;
    var lift_72 := lift_73;
    var lift_71 := ();
    var lift_70 := (lift_71, lift_72, arg_48);
    var lift_69 := true;
    var lift_68 := lift_69;
    var lift_67 := ();
    var lift_66 := lift_67;
    var lift_65 := lift_66;
    var lift_64 := (lift_65, lift_68, arg_49);
    var lift_63 := ();
    var lift_62 := lift_63;
    var lift_61 := (lift_62, false, arg_51);
    var lift_60 := multiset{lift_61, lift_61, lift_61, lift_64, lift_70};
    var lift_59 := 'J';
    var lift_58 := (lift_59, lift_60, 'c');
    var lift_57 := "j-h=ORrO$YpAqyvszqps/J_qv>*HThcm";
    var lift_56 := (false, arg_49, lift_57);
    var lift_55 := false;
    var lift_54 := lift_55;
    var lift_53 := (lift_54, arg_48, "Xs\"H!%/SffO<_cGbN?BuL-BgFTVqsqFB=P");
    lift_53 := lift_56;
    lift_58 := lift_58;
    print arg_49, "\n";
    print arg_50, "\n";
    print 889861075, "\n";
  }
}

method lift_1 (arg_4 : int, arg_5 : int, arg_6 : int)
  returns (arg_7 : int)
  requires (true)
  ensures (true)
{
  arg_7 := 145016183;
  {
    var lift_19 := false;
    var lift_18 := false;
    var lift_17 := false;
    var lift_16 := multiset{lift_17, lift_18, false, lift_17, lift_17};
    var lift_15 := false;
    var lift_14 := true;
    var lift_13 := false;
    var lift_12 := lift_13;
    var lift_11 := multiset{lift_12, lift_13, lift_14};
    var lift_10 := lift_11;
    var lift_9 := lift_10;
    var lift_8 := {
      lift_9,
      multiset{lift_14, lift_15},
      lift_11,
      lift_16,
      lift_10
    };
    lift_8 := {lift_11, lift_9, multiset{true, lift_19}, lift_9};
  }
}

method Main () {
  var lift_328 := -1997884502;
  var lift_327 := 1884793303;
  var lift_326 := lift_327;
  var lift_325 := (lift_326, lift_328, lift_326);
  var lift_324 := lift_325;
  var lift_323 := 1394913971;
  var lift_322 := (lift_323, (var tmpData : seq<int> := []; tmpData), lift_324);
  var lift_321 := lift_322;
  var lift_320 := (var tmpData : seq<bool> := []; tmpData);
  var lift_319 := true;
  var lift_318 := -1475641427;
  var lift_317 := (lift_318, lift_319);
  var lift_316 := (lift_317, lift_320);
  var lift_304 := ();
  var lift_303 := lift_304;
  var lift_302 := lift_303;
  var lift_290 := false;
  var lift_289 := lift_290;
  var lift_288 := {lift_289, true};
  var lift_287 := lift_288;
  var lift_286 := lift_287;
  var lift_285 := true;
  var lift_284 := false;
  var lift_283 := [{lift_284, lift_284, lift_285}, lift_286];
  var lift_274 := false;
  var lift_273 := 'F';
  var lift_272 := lift_273;
  var lift_271 := (lift_272, lift_274);
  var lift_244 := ();
  var lift_243 := 'K';
  var lift_242 := lift_243;
  var lift_241 := (lift_242, 'X');
  var lift_240 := (lift_241, lift_244, 'e');
  var lift_239 := 184892688;
  var lift_238 := 1875029502;
  var lift_237 := lift_238;
  var lift_236 := {lift_237, lift_237, lift_237, lift_239, lift_238};
  var lift_235 := -52690742;
  var lift_234 := -39238048;
  var lift_233 := lift_234;
  var lift_232 := 1931146462;
  var lift_231 := lift_232;
  var lift_230 := {lift_231, lift_232, lift_233, lift_235};
  var lift_229 := [lift_230, lift_230, lift_236, lift_236];
  var lift_228 := -423772993;
  var lift_227 := 777817331;
  var lift_226 := 1550455967;
  var lift_225 := {lift_226, lift_227, lift_227, lift_228};
  var lift_224 := [lift_225];
  var lift_216 := 1086629286;
  var lift_215 := lift_216;
  var lift_214 := [1913732742, lift_215, lift_215, 294943701];
  var lift_212 := 'K';
  var lift_211 := multiset{lift_212};
  var lift_209 := -1407012472;
  var lift_208 := (lift_209, lift_209);
  var lift_207 := 940857117;
  var lift_206 := lift_207;
  var lift_205 := (lift_206, lift_206);
  var lift_204 := [
    lift_205,
    (lift_207, 1570473510),
    lift_205,
    lift_208,
    lift_205
  ];
  var lift_203 := 325422320;
  var lift_202 := (-1122179520, lift_203);
  var lift_198 := 'S';
  var lift_194 := 'K';
  var lift_193 := lift_194;
  var lift_192 := lift_193;
  var lift_191 := 'k';
  var lift_190 := lift_191;
  var lift_189 := [lift_190, lift_192];
  var lift_188 := (lift_189, lift_190);
  var lift_187 := lift_188;
  var lift_186 := {lift_187, lift_188, lift_187};
  var lift_184 := ();
  var lift_183 := multiset{lift_184};
  var lift_168 := (var tmpData : set<int> := {}; tmpData);
  var lift_167 := lift_168;
  var lift_166 := false;
  var lift_165 := (lift_166, lift_167);
  var lift_164 := 1940151717;
  var lift_163 := false;
  var lift_162 := ('*', lift_163, lift_164);
  var lift_160 := true;
  var lift_159 := lift_160;
  var lift_130 := -1643051989;
  var lift_129 := false;
  var lift_128 := [lift_129, lift_129];
  var lift_111 := ();
  var lift_105 := "~Wv@!L'HykMi@L*WtsuiSDK'AbgDOpT";
  var lift_104 := ':';
  var lift_103 := true;
  var lift_102 := (lift_103, lift_103, lift_104);
  var lift_101 := '\'';
  var lift_100 := '*';
  var lift_99 := lift_100;
  var lift_98 := multiset{lift_99, lift_101, lift_101};
  var lift_97 := (lift_98, lift_102, true);
  var lift_96 := '"';
  var lift_95 := -322954865;
  var lift_94 := lift_95;
  var lift_93 := lift_94;
  var lift_92 := (lift_93, lift_96);
  var lift_91 := lift_92;
  var lift_86 := false;
  var lift_74 := ();
  var lift_43 := 445342646;
  var lift_42 := (lift_43, lift_43);
  var lift_41 := ();
  var lift_40 := 'd';
  var lift_39 := {lift_40};
  var lift_35 := 1304274389;
  var lift_34 := multiset{988797703, lift_35, lift_35, lift_35, -852307048};
  var lift_32 := (var tmpData : multiset<int> := multiset{}; tmpData);
  var lift_31 := lift_32;
  var lift_30 := (lift_31, 67936048, lift_32);
  var lift_28 := 'C';
  var lift_27 := true;
  var lift_26 := lift_27;
  var lift_25 := lift_26;
  var lift_24 := 1048857401;
  var lift_23 := (lift_24, lift_25);
  var lift_22 := lift_23;
  var lift_21 := (lift_22, lift_25, (lift_28, lift_25));
  var lift_20 := -1871068193;
  var methoddefvar_3 := lift_1(lift_20, lift_21.0.0, lift_20);
  {
    var lift_161 := (false, lift_162, lift_130);
    var lift_158 := (lift_104, lift_159, lift_94);
    var lift_157 := (lift_129, lift_158, lift_95);
    var lift_156 := {lift_157, lift_161};
    var lift_127 := [lift_25, lift_86, false];
    var lift_90 := lift_91;
    var lift_89 := [lift_90, (methoddefvar_3, lift_28)];
    var lift_87 := ();
    var lift_77 := lift_31;
    var lift_76 := true;
    var lift_75 := ();
    var lift_38 := lift_39;
    var lift_37 := (lift_38, lift_41, (lift_24, methoddefvar_3));
    var lift_36 := lift_37;
    var lift_33 := (lift_32, 1530541236, lift_32);
    var lift_29 := {
      lift_30,
      lift_33,
      lift_33,
      lift_33,
      (lift_34, methoddefvar_3, lift_31)
    };
    if ((lift_29 <= lift_29)) {
      lift_36 := (lift_38, lift_41, lift_42);
      var methoddefvar_46, methoddefvar_47 := lift_44(
        lift_43,
        -950956680,
        lift_35
      );
      {
        lift_74 := lift_75;
        print lift_20, "\n";
        print methoddefvar_3, "\n";
        lift_76 := lift_76;
        lift_77 := lift_31;
      }
    } else {
      var lift_88 := lift_89;
      var methoddefvar_80 := lift_78(917178916, lift_35);
      {
        lift_86 := lift_26;
        lift_87 := lift_41;
        lift_88 := lift_89;
        lift_97 := lift_97;
      }
      {
        print lift_24, "\n";
      }
      lift_105 := lift_105;
      print lift_35, "\n";
      var methoddefvar_108 := lift_106();
      {
        lift_111 := lift_74;
      }
    }
    var methoddefvar_114, methoddefvar_115 := lift_112(lift_20);
    {
      var lift_131 := 1672958332;
      var lift_126 := lift_127;
      var lift_125 := lift_126;
      lift_125 := lift_128;
      lift_130 := methoddefvar_115;
      lift_131 := lift_24;
      print lift_35, "\n";
    }
    var methoddefvar_134 := lift_132(lift_94, 726096829);
    {
      print lift_95, "\n";
      lift_156 := {lift_161, lift_157, lift_161};
      lift_165 := lift_165;
    }
  }
  {
    var lift_314 := (lift_23, lift_128);
    var lift_312 := [lift_25, true, lift_25];
    var lift_311 := {lift_312};
    var lift_305 := 1347402301;
    var lift_270 := lift_271;
    var lift_269 := (lift_35, lift_270, lift_24);
    var lift_223 := {lift_163, lift_163, lift_103, true};
    var lift_217 := lift_218(lift_223, lift_105);
    var lift_213 := lift_162.2;
    var lift_210 := (var tmpData : set<(bool, (int, char))> := {}; tmpData);
    var lift_201 := [lift_202, lift_42, lift_202];
    var lift_200 := multiset{lift_201, lift_201, lift_201, lift_201, lift_204};
    var lift_199 := (lift_200, lift_210, lift_211);
    var lift_197 := (lift_35, lift_94, lift_74);
    var lift_185 := lift_186;
    var methoddefvar_171 := lift_169(
      lift_164,
      lift_35,
      |(var tmpData : set<bool> := {}; tmpData)|
    );
    {
      var lift_195 := -841477503;
      print lift_93, "\n";
      if (lift_159) {
        var lift_182 := true;
        var lift_181 := [lift_166, lift_103, lift_163];
        lift_181 := lift_128;
        lift_182 := lift_159;
      } else {
        lift_183 := multiset{lift_184};
        print lift_164, "\n";
      }
      if (false) {
        lift_185 := lift_186;
        print lift_43, "\n";
        print lift_195, "\n";
      } else {
        var lift_196 := (lift_130, lift_35, ());
        lift_196 := lift_197;
        lift_198 := '!';
        lift_199 := lift_199;
      }
      print lift_95, "\n";
    }
    lift_213 := safeSeqRef(
      safeSeqSet(lift_214, lift_130, lift_95),
      |lift_31|,
      lift_209
    );
    lift_217 := (
      [[{lift_209, lift_93}, lift_168], lift_224, lift_224, lift_229],
      (-216018923, {"lgb@T$y^xn", "~^R:TW!wH*lLsXv|tm%t&b%L:e%jo"}),
      lift_240
    ).2.2;
    var methoddefvar_247, methoddefvar_248 := lift_245(lift_269.2);
    {
      var lift_310 := '=';
      var lift_308 := false;
      var lift_291 := [
        lift_288,
        lift_287,
        {lift_166},
        lift_223,
        {lift_166, false, lift_160, false}
      ];
      var methoddefvar_277, methoddefvar_278 := lift_275(-2008982259, lift_233);
      {
        lift_283 := lift_291;
        print lift_231, "\n";
      }
      var methoddefvar_294, methoddefvar_295 := lift_292(1394427428, lift_94);
      {
        print lift_35, "\n";
        print lift_95, "\n";
        print 190303724, "\n";
        print lift_237, "\n";
        lift_302 := lift_302;
      }
      if (lift_26) {
        var lift_306 := "An^^HMO+FkRfpK%aE/IXh&|gV_";
        lift_305 := methoddefvar_248;
        print -1278161695, "\n";
        print lift_227, "\n";
        lift_306 := [lift_191, lift_198, lift_212, lift_198, lift_96];
      } else {
        var lift_307 := ();
        print lift_94, "\n";
        lift_307 := lift_244;
        lift_308 := lift_289;
        print lift_235, "\n";
        print lift_232, "\n";
      }
      var methoddefvar_309 := lift_106();
      {
        var lift_315 := lift_316;
        var lift_313 := (var tmpData : set<seq<bool>> := {}; tmpData);
        lift_310 := lift_272;
        lift_311 := lift_313;
        lift_314 := lift_315;
      }
    }
  }
  print lift_321.2.0, "\n";
}


