// RUN: %dafny /noVerify /compile:4 /compileTarget:cs "%s" > "%t"
// RUN: %dafny /noVerify /compile:4 /compileTarget:java "%s" >> "%t"
// RUN: %dafny /noVerify /compile:4 /compileTarget:py "%s" >> "%t"
// RUN: %dafny /noVerify /compile:4 /compileTarget:js "%s" >> "%t"
// RUN: %dafny /noVerify /compile:4 /compileTarget:go "%s" >> "%t"
// RUN: %diff "%s.expect" "%t"

// Seed: 8721994174133086263
// This is a RANDOMLY GENERATED PROGRAM.
// Fuzzer: dafny
// Version: dafny, xsmith 2.0.5 (38f1d83), in Racket 8.9 (vm-type chez-scheme)
// Options: --with-print-constrained true --dafny-syntax true --seed 8721994174133086263
// Seed: 8721994174133086263
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
method lift_406 (arg_409 : int, arg_410 : int, arg_411 : int)
  returns (arg_412 : int)
  requires (true)
  ensures (true)
{
  arg_412 := 783427937;
  {
    var lift_426 := '>';
    var lift_425 := multiset{'C', lift_426, 'J', lift_426};
    var lift_424 := lift_425;
    var lift_423 := 'Y';
    var lift_422 := lift_423;
    var lift_421 := multiset{lift_422, lift_422, lift_423, lift_422};
    var lift_420 := true;
    var lift_419 := lift_420;
    var lift_418 := 'E';
    var lift_417 := (lift_418, false, arg_412);
    var lift_416 := lift_417;
    var lift_415 := false;
    var lift_414 := (lift_415, arg_411, lift_416);
    var lift_413 := -1024761300;
    print lift_413, "\n";
    lift_414 := (lift_419, 1468099717, lift_417);
    lift_421 := lift_424;
  }
}

function lift_397 (arg_399 : (int, bool), arg_400 : bool) : int
{
  var lift_401 := 2020240168;
  lift_401
}

method lift_385 (arg_389 : int, arg_390 : int, arg_391 : int)
  returns (arg_392 : int, arg_393 : int)
  requires (true)
  ensures (true)
{
  arg_392 := -697175210;
  arg_393 := 1620438607;
  {
    var lift_396 := -274997475;
    var lift_395 := 1309706086;
    var lift_394 := ();
    lift_394 := ();
    print arg_389, "\n";
    lift_395 := arg_391;
    print arg_391, "\n";
    lift_396 := arg_390;
  }
}

method lift_321 (arg_324 : int)
  returns (arg_325 : int)
  requires (true)
  ensures (true)
{
  arg_325 := 697154245;
  {
    var lift_330 := 886440413;
    var lift_329 := false;
    var lift_328 := 'h';
    var lift_327 := (lift_328, lift_329);
    var lift_326 := (true, lift_327);
    lift_326 := lift_326;
    print arg_325, "\n";
    lift_330 := 1577702657;
  }
}

method lift_294 (arg_298 : int)
  returns (arg_299 : int, arg_300 : int)
  requires (true)
  ensures (true)
{
  arg_299 := -769522379;
  arg_300 := 1613912161;
  {
    var lift_310 := 'b';
    var lift_309 := arg_299;
    var lift_308 := 'r';
    var lift_307 := (lift_308, lift_309, lift_310);
    var lift_306 := lift_307;
    var lift_305 := lift_306;
    var lift_304 := lift_305;
    var lift_303 := (arg_298, lift_304, arg_300);
    var lift_302 := -512704843;
    var lift_301 := lift_302;
    print 1770825667, "\n";
    print lift_301, "\n";
    lift_303 := lift_303;
    print lift_301, "\n";
    print lift_309, "\n";
  }
}

method lift_274 (arg_277 : int, arg_278 : int)
  returns (arg_279 : int)
  requires (true)
  ensures (true)
{
  arg_279 := -716987826;
  {
    var lift_289 := 'C';
    var lift_288 := lift_289;
    var lift_287 := true;
    var lift_286 := 'T';
    var lift_285 := true;
    var lift_284 := (lift_285, lift_286);
    var lift_283 := 'g';
    var lift_282 := true;
    var lift_281 := multiset{
      (lift_282, lift_283),
      lift_284,
      (lift_287, lift_288),
      (lift_285, 'q')
    };
    var lift_280 := lift_281;
    print arg_278, "\n";
    lift_280 := lift_281;
  }
}

method lift_232 (arg_236 : int, arg_237 : int)
  returns (arg_238 : int, arg_239 : int)
  requires (true)
  ensures (true)
{
  arg_238 := -1333800633;
  arg_239 := -133298787;
  {
    var lift_247 := [arg_237, arg_236, arg_237, -419497858];
    var lift_246 := [-689140266, arg_236, arg_238];
    var lift_245 := [lift_246, lift_247];
    var lift_244 := [arg_239, 2001609055];
    var lift_243 := [arg_238, arg_237];
    var lift_242 := 1446602719;
    var lift_241 := [lift_242, arg_237, -1044391025, arg_239];
    var lift_240 := [lift_241, lift_243, lift_241, lift_244];
    print arg_238, "\n";
    lift_240 := lift_245;
    print arg_236, "\n";
  }
}

method lift_182 (arg_185 : int, arg_186 : int, arg_187 : int)
  returns (arg_188 : int)
  requires (true)
  ensures (true)
{
  arg_188 := -860277251;
  {
    var lift_206 := '!';
    var lift_205 := {lift_206, lift_206};
    var lift_204 := lift_205;
    var lift_203 := lift_204;
    var lift_202 := true;
    var lift_201 := lift_202;
    var lift_200 := false;
    var lift_199 := (lift_200, lift_201);
    var lift_198 := lift_199;
    var lift_197 := false;
    var lift_196 := (lift_197, lift_197);
    var lift_195 := [lift_196, lift_196, lift_196, lift_198];
    var lift_194 := true;
    var lift_193 := lift_194;
    var lift_192 := lift_193;
    var lift_191 := true;
    var lift_190 := (lift_191, lift_191);
    var lift_189 := [lift_190, lift_190, (lift_192, lift_192)];
    lift_189 := lift_195;
    lift_203 := lift_204;
  }
}

method lift_167 (arg_171 : int, arg_172 : int, arg_173 : int)
  returns (arg_174 : int, arg_175 : int)
  requires (true)
  ensures (true)
{
  arg_174 := 2005107734;
  arg_175 := 148081424;
  {
    var lift_180 := false;
    var lift_179 := true;
    var lift_178 := -1737135816;
    var lift_177 := (lift_178, false);
    var lift_176 := (lift_177, arg_172);
    lift_176 := (lift_177, arg_171);
    lift_179 := lift_180;
  }
}

method lift_119 ()
  returns (arg_122 : int)
  requires (true)
  ensures (true)
{
  arg_122 := 534448736;
  {
    var lift_126 := arg_122;
    var lift_125 := -779122939;
    var lift_124 := 397083938;
    var lift_123 := ();
    lift_123 := ();
    print lift_124, "\n";
    print -1061671974, "\n";
    lift_125 := lift_125;
    print lift_126, "\n";
  }
}

method lift_79 ()
  returns (arg_82 : int)
  requires (true)
  ensures (true)
{
  arg_82 := -1385208858;
  {
    var lift_102 := (var tmpData : multiset<((), (bool, bool))> := multiset{}; tmpData);
    var lift_101 := lift_102;
    var lift_100 := lift_101;
    var lift_99 := true;
    var lift_98 := lift_99;
    var lift_97 := (lift_98, lift_99);
    var lift_96 := lift_97;
    var lift_95 := ':';
    var lift_94 := false;
    var lift_93 := -1931522330;
    var lift_92 := lift_93;
    var lift_91 := ((lift_92, lift_94, lift_95), lift_96);
    var lift_90 := lift_91;
    var lift_89 := false;
    var lift_88 := 'b';
    var lift_87 := lift_88;
    var lift_86 := lift_87;
    var lift_85 := arg_82;
    var lift_84 := (lift_85, false, lift_86);
    var lift_83 := (lift_84, (lift_89, lift_89));
    lift_83 := lift_90;
    print arg_82, "\n";
    lift_100 := lift_100;
  }
}

function lift_2 (
  arg_4 : (),
  arg_5 : int,
  arg_6 : multiset<(multiset<bool>, (), char)>,
  arg_7 : ()
) : set<char>
{
  var lift_9 := 'f';
  var lift_8 := {lift_9};
  lift_8
}

method Main () {
  var lift_428 := (true, 'W', ());
  var lift_427 := lift_428;
  var lift_381 := -2019752306;
  var lift_380 := '_';
  var lift_379 := lift_380;
  var lift_378 := true;
  var lift_377 := (lift_378, -1436549854);
  var lift_376 := (lift_377, lift_379);
  var lift_375 := 'V';
  var lift_374 := -549080838;
  var lift_373 := false;
  var lift_372 := (lift_373, lift_374);
  var lift_371 := (lift_372, lift_375);
  var lift_370 := {lift_371, lift_376, lift_371};
  var lift_367 := -1084145885;
  var lift_366 := lift_367;
  var lift_365 := lift_366;
  var lift_364 := lift_365;
  var lift_354 := -751432317;
  var lift_353 := true;
  var lift_352 := ';';
  var lift_351 := (lift_352, lift_353);
  var lift_350 := (lift_351, lift_354);
  var lift_346 := true;
  var lift_343 := -1472076026;
  var lift_342 := [lift_343, lift_343];
  var lift_341 := lift_342;
  var lift_339 := 'v';
  var lift_338 := (lift_339, lift_339, lift_339);
  var lift_337 := lift_338;
  var lift_336 := lift_337;
  var lift_335 := lift_336;
  var lift_331 := (var tmpData : set<((bool, bool, int), char, ())> := {}; tmpData);
  var lift_318 := true;
  var lift_317 := '>';
  var lift_316 := (lift_317, lift_318);
  var lift_315 := lift_316;
  var lift_313 := ('&', true);
  var lift_312 := [lift_313, lift_313];
  var lift_273 := false;
  var lift_270 := -720943072;
  var lift_269 := -2000207932;
  var lift_268 := (lift_269, lift_270);
  var lift_267 := -1769460470;
  var lift_266 := lift_267;
  var lift_265 := false;
  var lift_264 := lift_265;
  var lift_263 := ((lift_264, lift_266), lift_268);
  var lift_262 := -1911323469;
  var lift_261 := (lift_262, 1102604144);
  var lift_260 := lift_261;
  var lift_259 := 1211896845;
  var lift_258 := false;
  var lift_257 := lift_258;
  var lift_256 := lift_257;
  var lift_255 := lift_256;
  var lift_254 := (lift_255, lift_259);
  var lift_253 := lift_254;
  var lift_231 := false;
  var lift_230 := -2106320560;
  var lift_229 := (lift_230, lift_231);
  var lift_228 := '~';
  var lift_227 := (false, lift_228, lift_228);
  var lift_226 := true;
  var lift_225 := '*';
  var lift_224 := (lift_225, lift_226, 'Q');
  var lift_223 := (lift_224, lift_227, lift_229);
  var lift_222 := {lift_223};
  var lift_221 := lift_222;
  var lift_220 := -661171521;
  var lift_219 := lift_220;
  var lift_218 := (lift_219, lift_221);
  var lift_215 := ();
  var lift_214 := lift_215;
  var lift_213 := true;
  var lift_212 := lift_213;
  var lift_211 := multiset{lift_212, false};
  var lift_210 := ();
  var lift_209 := lift_210;
  var lift_208 := lift_209;
  var lift_207 := lift_208;
  var lift_164 := 'G';
  var lift_163 := -559770785;
  var lift_162 := (false, lift_163, lift_164);
  var lift_161 := -2059951573;
  var lift_160 := 'R';
  var lift_159 := (lift_160, lift_161);
  var lift_158 := (var tmpData : set<int> := {}; tmpData);
  var lift_157 := lift_158;
  var lift_156 := (lift_157, lift_159, lift_162);
  var lift_154 := '=';
  var lift_153 := -1658616273;
  var lift_152 := true;
  var lift_151 := (lift_152, lift_153, lift_154);
  var lift_150 := lift_151;
  var lift_149 := 1077418422;
  var lift_148 := 'a';
  var lift_147 := (lift_148, lift_149);
  var lift_146 := (var tmpData : set<int> := {}; tmpData);
  var lift_145 := lift_146;
  var lift_144 := (lift_145, lift_147, lift_150);
  var lift_142 := 644293496;
  var lift_141 := 'H';
  var lift_140 := (lift_141, lift_142);
  var lift_139 := lift_140;
  var lift_138 := lift_139;
  var lift_136 := 905864493;
  var lift_135 := lift_136;
  var lift_134 := lift_135;
  var lift_133 := lift_134;
  var lift_132 := 'e';
  var lift_131 := (lift_132, lift_133);
  var lift_116 := 2145288464;
  var lift_115 := lift_116;
  var lift_114 := lift_115;
  var lift_113 := false;
  var lift_112 := lift_113;
  var lift_111 := (lift_112, lift_114, lift_115);
  var lift_110 := 33803203;
  var lift_109 := 340834250;
  var lift_108 := lift_109;
  var lift_107 := true;
  var lift_106 := (lift_107, lift_108, lift_110);
  var lift_105 := [lift_106, lift_106, lift_106, lift_111];
  var lift_104 := lift_105;
  var lift_78 := '>';
  var lift_77 := lift_78;
  var lift_76 := -1925409321;
  var lift_75 := (lift_76, lift_77);
  var lift_74 := '!';
  var lift_73 := -1541818329;
  var lift_72 := lift_73;
  var lift_71 := (lift_72, lift_74);
  var lift_70 := {lift_71, lift_75, lift_71, lift_75, lift_75};
  var lift_69 := lift_70;
  var lift_68 := {lift_69, lift_69};
  var lift_66 := 'd';
  var lift_65 := (1006219742, lift_66);
  var lift_64 := 'h';
  var lift_63 := 7601618;
  var lift_62 := lift_63;
  var lift_61 := (lift_62, lift_64);
  var lift_60 := lift_61;
  var lift_59 := 'g';
  var lift_58 := -1291441971;
  var lift_57 := {(lift_58, lift_59), lift_60, lift_65};
  var lift_56 := {lift_57};
  var lift_55 := 'h';
  var lift_54 := (false, lift_55);
  var lift_53 := 'B';
  var lift_52 := 1954915780;
  var lift_51 := lift_52;
  var lift_50 := ((false, lift_51, lift_53), lift_54, lift_56);
  var lift_49 := lift_50;
  var lift_48 := lift_49.2;
  var lift_47 := false;
  var lift_46 := true;
  var lift_45 := true;
  var lift_44 := [lift_45, lift_46, false, lift_45, lift_47];
  var lift_43 := 'K';
  var lift_42 := true;
  var lift_41 := 1793423913;
  var lift_40 := 1426145051;
  var lift_39 := (lift_40, lift_41, lift_42);
  var lift_38 := -1286349618;
  var lift_37 := (lift_38, lift_39);
  var lift_36 := (lift_37, lift_43, lift_44);
  var lift_35 := false;
  var lift_34 := lift_35;
  var lift_33 := lift_34;
  var lift_32 := [lift_33, lift_35, lift_34, lift_34, lift_33];
  var lift_31 := 'X';
  var lift_30 := lift_31;
  var lift_29 := {lift_30};
  var lift_28 := -195632535;
  var lift_27 := (lift_28, lift_29);
  var lift_26 := (lift_27, true);
  var lift_25 := 'G';
  var lift_24 := lift_25;
  var lift_23 := [lift_24];
  var lift_22 := (lift_23, lift_26, lift_32);
  var lift_21 := lift_22;
  var lift_20 := '|';
  var lift_19 := {lift_20, lift_20};
  var lift_18 := (lift_19, 'y', 'U');
  var lift_17 := ();
  var lift_16 := lift_17;
  var lift_15 := false;
  var lift_14 := lift_15;
  var lift_13 := lift_14;
  var lift_12 := multiset{lift_13};
  var lift_11 := lift_12;
  var lift_10 := (lift_11, lift_16, 'r');
  var lift_1 := (lift_2(
    (),
    589225395,
    multiset{lift_10, lift_10},
    lift_17
  ) * lift_18.0);
  lift_1 := lift_21.1.0.1;
  print lift_36.0.1.1, "\n";
  {
    var lift_67 := [lift_68];
    lift_48 := safeSeqRef(
      safeSeqSet(lift_67, -1712077606, lift_68),
      |lift_11|,
      (lift_48 * lift_48)
    );
  }
  var methoddefvar_81 := lift_79();
  {
    var lift_320 := 'z';
    var lift_314 := [lift_315, (lift_148, false), (lift_132, lift_226)];
    var lift_311 := {lift_312, lift_314, lift_312};
    var lift_290 := -1203231658;
    var lift_272 := (lift_254, lift_268);
    var lift_271 := lift_272;
    var lift_252 := (lift_149, lift_136);
    var lift_251 := (lift_15, lift_114);
    var lift_250 := (lift_251, lift_252);
    var lift_249 := multiset{
      lift_250,
      lift_250,
      (lift_253, lift_260),
      lift_263,
      lift_271
    };
    var lift_165 := lift_144;
    var lift_143 := (lift_13, lift_62, lift_20);
    var lift_137 := (lift_35, lift_62, lift_66);
    var lift_130 := lift_131;
    var lift_129 := {lift_28};
    var lift_128 := (lift_129, lift_130, lift_137);
    var lift_118 := (var tmpData : set<bool> := {}; tmpData);
    var lift_103 := (lift_52, 'a');
    if ((lift_74 >= lift_64)) {
      var lift_166 := true;
      var lift_155 := multiset{
        lift_144,
        lift_156,
        lift_165,
        lift_165,
        (lift_157, lift_147, lift_151)
      };
      var lift_127 := multiset{
        lift_128,
        ((var tmpData : set<int> := {}; tmpData), lift_138, lift_143),
        lift_128,
        lift_144
      };
      var lift_117 := lift_105;
      {
        lift_103 := lift_65;
        lift_104 := lift_117;
      }
      {
        lift_118 := {lift_13, lift_13};
        print -1173079599, "\n";
      }
      var methoddefvar_121 := lift_119();
      {
        lift_127 := lift_155;
        lift_166 := lift_113;
      }
      var methoddefvar_169, methoddefvar_170 := lift_167(
        lift_72,
        lift_62,
        lift_114
      );
      {
        print lift_114, "\n";
        print lift_63, "\n";
      }
      print lift_115, "\n";
    } else {
      var lift_181 := lift_32;
      {
        print lift_52, "\n";
        print lift_110, "\n";
        print -2090339874, "\n";
        lift_181 := lift_181;
        print lift_63, "\n";
      }
      print lift_51, "\n";
    }
    {
      print lift_58, "\n";
    }
    var methoddefvar_184 := lift_182(lift_73, lift_153, 408517321);
    {
      lift_207 := lift_209;
    }
    if ((lift_211 !! lift_12)) {
      var lift_217 := lift_218;
      var lift_216 := {lift_214, lift_210, ()};
      lift_214 := lift_214;
      {
        lift_216 := lift_216;
        print lift_115, "\n";
        print methoddefvar_81, "\n";
        lift_217 := lift_217;
      }
      if (lift_42) {
        print lift_114, "\n";
      } else {
        print lift_153, "\n";
      }
      var methoddefvar_234, methoddefvar_235 := lift_232(lift_230, lift_220);
      {
        print lift_149, "\n";
      }
    } else {
      var lift_293 := ();
      var lift_291 := {lift_164};
      print lift_134, "\n";
      var methoddefvar_248 := lift_119();
      {
        lift_249 := lift_249;
        lift_273 := lift_46;
        print lift_109, "\n";
        print lift_62, "\n";
        print lift_136, "\n";
      }
      var methoddefvar_276 := lift_274(lift_110, lift_52);
      {
        print lift_262, "\n";
        lift_290 := lift_51;
      }
      {
        print lift_41, "\n";
      }
      if (lift_264) {
        print lift_72, "\n";
      } else {
        var lift_292 := lift_293;
        print methoddefvar_81, "\n";
        lift_291 := lift_29;
        lift_292 := lift_214;
      }
    }
    if ((lift_74 >= lift_132 > lift_43)) {
      print lift_220, "\n";
      var methoddefvar_296, methoddefvar_297 := lift_294(2023800382);
      {
        var lift_319 := lift_311;
        lift_311 := lift_319;
        print 1064750311, "\n";
        lift_320 := lift_66;
      }
    } else {
      var methoddefvar_323 := lift_321(lift_52);
      {
        print lift_63, "\n";
        print lift_270, "\n";
        lift_331 := lift_331;
      }
    }
  }
  {
    var lift_429 := (lift_54, lift_38, -2073591813);
    var lift_402 := (lift_230, lift_112);
    var lift_368 := false;
    var lift_361 := {lift_34};
    var lift_360 := (
      lift_44,
      lift_361,
      (var tmpData : seq<int> := []; tmpData)
    );
    var lift_357 := {lift_318};
    var lift_356 := (lift_44, lift_357, [-505787079, lift_63, -1167622178]);
    var lift_355 := {lift_356};
    var lift_348 := true;
    var lift_344 := multiset{lift_214, lift_209, lift_215};
    if (!((lift_11 < lift_211))) {
      {
        var lift_340 := (lift_341, lift_64, lift_229);
        var methoddefvar_332, methoddefvar_333 := lift_167(
          lift_262,
          lift_108,
          lift_262
        );
        {
          var lift_334 := (lift_264, lift_44, lift_335);
          print lift_116, "\n";
          lift_334 := lift_334;
          lift_340 := (lift_341, 'E', lift_229);
          print lift_134, "\n";
          lift_344 := lift_344;
        }
        print lift_266, "\n";
      }
    } else {
      var lift_362 := '*';
      var lift_359 := lift_356;
      var lift_358 := {
        lift_359,
        lift_360,
        (lift_44, {lift_15, lift_353, false, lift_112, lift_35}, lift_341)
      };
      var lift_345 := -1088368606;
      if ((lift_152 <==> false <==> lift_257)) {
        lift_345 := -2013212640;
      } else {
        var lift_347 := lift_269;
        lift_346 := lift_34;
        lift_347 := lift_115;
        {
          print lift_109, "\n";
          print lift_73, "\n";
          print lift_72, "\n";
          print lift_135, "\n";
          lift_348 := lift_33;
        }
        var methoddefvar_349 := lift_274(lift_161, lift_114);
        {
          lift_350 := lift_350;
          lift_355 := lift_358;
        }
        {
          lift_362 := lift_317;
        }
      }
      var methoddefvar_363 := lift_182(lift_269, lift_133, lift_28);
      {
        print lift_73, "\n";
        lift_364 := lift_72;
        lift_368 := true;
      }
      var methoddefvar_369 := lift_182(lift_163, lift_266, lift_135);
      {
        lift_370 := lift_370;
        lift_381 := lift_40;
        print lift_28, "\n";
      }
    }
    {
      var lift_384 := 134138009;
      var methoddefvar_382, methoddefvar_383 := lift_167(
        -379086226,
        lift_62,
        lift_270
      );
      {
        print lift_381, "\n";
        print lift_161, "\n";
        lift_384 := lift_116;
      }
    }
    var methoddefvar_387, methoddefvar_388 := lift_385(
      lift_397(lift_402, lift_255),
      ('!', lift_63).1,
      lift_27.0
    );
    {
      var lift_405 := [lift_210];
      var lift_404 := lift_405;
      var lift_403 := lift_404;
      lift_403 := lift_404;
      print 1893995449, "\n";
      var methoddefvar_408 := lift_406(lift_365, lift_374, 2028149857);
      {
        lift_427 := lift_428;
      }
      {
        var lift_431 := ();
        var lift_430 := (lift_54, methoddefvar_387, -1830031524);
        print methoddefvar_388, "\n";
        lift_429 := lift_430;
        lift_431 := lift_16;
        print lift_267, "\n";
      }
      print -800208587, "\n";
    }
  }
}


