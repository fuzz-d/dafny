// RUN: %dafny /noVerify /compile:4 /compileTarget:cs "%s" > "%t"
// RUN: %dafny /noVerify /compile:4 /compileTarget:java "%s" >> "%t"
// RUN: %dafny /noVerify /compile:4 /compileTarget:py "%s" >> "%t"
// RUN: %dafny /noVerify /compile:4 /compileTarget:js "%s" >> "%t"
// RUN: %dafny /noVerify /compile:4 /compileTarget:go "%s" >> "%t"
// RUN: %diff "%s.expect" "%t"

// Seed: 2680346823837687219
// This is a RANDOMLY GENERATED PROGRAM.
// Fuzzer: dafny
// Version: dafny, xsmith 2.0.5 (38f1d83), in Racket 8.9 (vm-type chez-scheme)
// Options: --with-print-constrained true --dafny-syntax true --seed 2680346823837687219
// Seed: 2680346823837687219
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
method lift_537 (arg_541 : int, arg_542 : int)
  returns (arg_543 : int, arg_544 : int)
  requires (true)
  ensures (true)
{
  arg_543 := 592349144;
  arg_544 := 1115433613;
  {
    print arg_543, "\n";
    print arg_542, "\n";
  }
}

method lift_478 (arg_482 : int, arg_483 : int)
  returns (arg_484 : int, arg_485 : int)
  requires (true)
  ensures (true)
{
  arg_484 := 1588345171;
  arg_485 := 1415295476;
  {
    var lift_488 := '_';
    var lift_487 := '/';
    var lift_486 := [arg_483, arg_482, arg_482, arg_485, arg_482];
    lift_486 := [arg_485, -449163861, arg_485];
    lift_487 := lift_487;
    lift_488 := lift_487;
  }
}

method lift_466 ()
  returns (arg_470 : int, arg_471 : int)
  requires (true)
  ensures (true)
{
  arg_470 := 968466647;
  arg_471 := 1936058573;
  {
    print arg_471, "\n";
    print arg_471, "\n";
  }
}

method lift_456 (arg_460 : int)
  returns (arg_461 : int, arg_462 : int)
  requires (true)
  ensures (true)
{
  arg_461 := -592168206;
  arg_462 := 1889898524;
  {
    var lift_465 := 518671463;
    var lift_464 := 1623477073;
    var lift_463 := arg_460;
    lift_463 := lift_464;
    print lift_463, "\n";
    print lift_464, "\n";
    lift_465 := -1066031473;
  }
}

method lift_426 (arg_429 : int, arg_430 : int, arg_431 : int)
  returns (arg_432 : int)
  requires (true)
  ensures (true)
{
  arg_432 := -972719730;
  {
    var lift_434 := ();
    var lift_433 := ();
    lift_433 := lift_434;
    print arg_430, "\n";
  }
}

method lift_401 ()
  returns (arg_405 : int, arg_406 : int)
  requires (true)
  ensures (true)
{
  arg_405 := -1074939637;
  arg_406 := -826917766;
  {
    var lift_414 := -1724060576;
    var lift_413 := false;
    var lift_412 := lift_413;
    var lift_411 := lift_412;
    var lift_410 := lift_411;
    var lift_409 := multiset{lift_410, lift_412, lift_410};
    var lift_408 := 'M';
    var lift_407 := false;
    lift_407 := lift_407;
    lift_408 := lift_408;
    lift_409 := lift_409;
    print lift_414, "\n";
  }
}

method lift_334 ()
  returns (arg_338 : int, arg_339 : int)
  requires (true)
  ensures (true)
{
  arg_338 := -575557302;
  arg_339 := -478079042;
  {
    var lift_354 := true;
    var lift_353 := 751259694;
    var lift_352 := false;
    var lift_351 := (lift_352, lift_353, lift_354);
    var lift_350 := lift_351;
    var lift_349 := ();
    var lift_348 := ();
    var lift_347 := multiset{lift_348, (), lift_349};
    var lift_346 := 'm';
    var lift_345 := -1674294457;
    var lift_344 := true;
    var lift_343 := lift_344;
    var lift_342 := ((lift_343, lift_345, lift_343), lift_346, lift_347);
    var lift_341 := lift_342;
    var lift_340 := -77705065;
    print lift_340, "\n";
    print arg_338, "\n";
    lift_341 := (lift_350, lift_346, lift_347);
  }
}

method lift_275 (arg_279 : int, arg_280 : int, arg_281 : int)
  returns (arg_282 : int, arg_283 : int)
  requires (true)
  ensures (true)
{
  arg_282 := -718420754;
  arg_283 := -1772360002;
  {
    var lift_318 := false;
    var lift_317 := [lift_318, lift_318];
    var lift_316 := 'K';
    var lift_315 := lift_316;
    var lift_314 := (arg_281, lift_315, arg_282);
    var lift_313 := true;
    var lift_312 := lift_313;
    var lift_311 := '@';
    var lift_310 := (lift_311, lift_312, lift_311);
    var lift_309 := lift_310;
    var lift_308 := (lift_309, lift_314, lift_315);
    var lift_307 := lift_308;
    var lift_306 := 'P';
    var lift_305 := (arg_282, lift_306, arg_280);
    var lift_304 := lift_305;
    var lift_303 := false;
    var lift_302 := lift_303;
    var lift_301 := lift_302;
    var lift_300 := 't';
    var lift_299 := (lift_300, lift_301, lift_300);
    var lift_298 := lift_299;
    var lift_297 := (lift_298, lift_304, 'A');
    var lift_296 := true;
    var lift_295 := lift_296;
    var lift_294 := lift_295;
    var lift_293 := lift_294;
    var lift_292 := '&';
    var lift_291 := (lift_292, lift_293, lift_292);
    var lift_290 := multiset{
      (lift_291, (arg_282, lift_292, arg_279), 'I'),
      lift_297,
      lift_307,
      lift_308
    };
    var lift_289 := false;
    var lift_288 := (lift_289, lift_290);
    var lift_287 := lift_288;
    var lift_286 := (var tmpData : multiset<((char, bool, char), (int, char, int), char)> := multiset{}; tmpData);
    var lift_285 := false;
    var lift_284 := (lift_285, lift_286);
    lift_284 := lift_287;
    print 1480402970, "\n";
    print -1537807887, "\n";
    lift_317 := (var tmpData : seq<bool> := []; tmpData);
  }
}

method lift_237 ()
  returns (arg_240 : int)
  requires (true)
  ensures (true)
{
  arg_240 := -495671543;
  {
    var lift_273 := false;
    var lift_272 := lift_273;
    var lift_271 := (arg_240, 2024556382, lift_272);
    var lift_270 := arg_240;
    var lift_269 := 297562998;
    var lift_268 := (
      {-2000398848, arg_240, lift_269, arg_240},
      [arg_240, -701278006, lift_270, lift_269],
      lift_271
    );
    var lift_267 := false;
    var lift_266 := 1564964408;
    var lift_265 := -2097922074;
    var lift_264 := (lift_265, lift_266, lift_267);
    var lift_263 := lift_264;
    var lift_262 := [arg_240, arg_240, arg_240, arg_240];
    var lift_261 := 1176689657;
    var lift_260 := -1072224407;
    var lift_259 := {-1171044680, lift_260, -1506682659, lift_260, lift_261};
    var lift_258 := (lift_259, lift_262, lift_263);
    var lift_257 := arg_240;
    var lift_256 := false;
    var lift_255 := lift_256;
    var lift_254 := lift_255;
    var lift_253 := (lift_254, arg_240);
    var lift_252 := 'h';
    var lift_251 := lift_252;
    var lift_250 := (lift_251, lift_251);
    var lift_249 := 'a';
    var lift_248 := '|';
    var lift_247 := (lift_248, lift_249);
    var lift_246 := (lift_247, -1516100046);
    var lift_245 := 'w';
    var lift_244 := 'w';
    var lift_243 := (lift_244, lift_245);
    var lift_242 := {(lift_243, arg_240), lift_246, (lift_250, arg_240)};
    var lift_241 := (arg_240, lift_242, lift_253);
    lift_241 := lift_241;
    print lift_257, "\n";
    print arg_240, "\n";
    lift_258 := lift_268;
  }
}

method lift_205 (arg_208 : int, arg_209 : int)
  returns (arg_210 : int)
  requires (true)
  ensures (true)
{
  arg_210 := 148005340;
  {
    var lift_213 := true;
    var lift_212 := lift_213;
    var lift_211 := (
      lift_212,
      (lift_213, arg_209, arg_209),
      [lift_212, lift_213, lift_213, false]
    );
    print arg_208, "\n";
    lift_211 := lift_211;
  }
}

method lift_195 (arg_198 : int, arg_199 : int, arg_200 : int)
  returns (arg_201 : int)
  requires (true)
  ensures (true)
{
  arg_201 := -743101114;
  {
    var lift_202 := 941855832;
    print lift_202, "\n";
    print arg_200, "\n";
  }
}

method lift_168 (arg_171 : int)
  returns (arg_172 : int)
  requires (true)
  ensures (true)
{
  arg_172 := -1447068324;
  {
    var lift_180 := false;
    var lift_179 := lift_180;
    var lift_178 := ();
    var lift_177 := 1039759769;
    var lift_176 := ();
    var lift_175 := lift_176;
    var lift_174 := (
      (var tmpData : multiset<()> := multiset{}; tmpData),
      (var tmpData : multiset<bool> := multiset{}; tmpData),
      lift_175
    );
    var lift_173 := lift_174;
    lift_173 := lift_173;
    print lift_177, "\n";
    lift_178 := lift_178;
    lift_179 := lift_180;
  }
}

method lift_107 (arg_111 : int, arg_112 : int)
  returns (arg_113 : int, arg_114 : int)
  requires (true)
  ensures (true)
{
  arg_113 := -887043903;
  arg_114 := -95859097;
  {
    var lift_133 := -88691396;
    var lift_132 := (var tmpData : seq<bool> := []; tmpData);
    var lift_131 := ();
    var lift_130 := (lift_131, 'C', lift_132);
    var lift_129 := true;
    var lift_128 := [lift_129, lift_129, lift_129];
    var lift_127 := '+';
    var lift_126 := ();
    var lift_125 := (lift_126, lift_127, lift_128);
    var lift_124 := true;
    var lift_123 := false;
    var lift_122 := [lift_123, lift_124, lift_123, lift_124, lift_123];
    var lift_121 := '=';
    var lift_120 := ();
    var lift_119 := {(lift_120, lift_121, lift_122), lift_125, lift_130};
    var lift_118 := 'Q';
    var lift_117 := (var tmpData : set<((), char, seq<bool>)> := {}; tmpData);
    var lift_116 := 'K';
    var lift_115 := (lift_116, lift_117);
    print arg_113, "\n";
    lift_115 := (lift_118, lift_119);
    print lift_133, "\n";
    print arg_111, "\n";
    print arg_112, "\n";
  }
}

method lift_36 (arg_39 : int, arg_40 : int)
  returns (arg_41 : int)
  requires (true)
  ensures (true)
{
  arg_41 := 813494952;
  {
    var lift_76 := '/';
    var lift_75 := multiset{lift_76, 'G'};
    var lift_74 := true;
    var lift_73 := lift_74;
    var lift_72 := false;
    var lift_71 := [lift_72, lift_73, lift_74, true];
    var lift_70 := 'X';
    var lift_69 := ':';
    var lift_68 := (lift_69, arg_40, lift_70);
    var lift_67 := [arg_41, arg_41];
    var lift_66 := lift_67;
    var lift_65 := (lift_66, lift_68, true);
    var lift_64 := multiset{lift_65};
    var lift_63 := (var tmpData : seq<bool> := []; tmpData);
    var lift_62 := true;
    var lift_61 := lift_62;
    var lift_60 := lift_61;
    var lift_59 := 'Q';
    var lift_58 := (lift_59, arg_41, lift_59);
    var lift_57 := [arg_41];
    var lift_56 := (lift_57, lift_58, lift_60);
    var lift_55 := lift_56;
    var lift_54 := false;
    var lift_53 := 1697052392;
    var lift_52 := 'o';
    var lift_51 := [arg_39, arg_39, arg_39];
    var lift_50 := multiset{
      (lift_51, (lift_52, lift_53, ';'), lift_54),
      lift_55,
      lift_56,
      lift_56
    };
    var lift_49 := true;
    var lift_48 := (-1576193295, lift_49);
    var lift_47 := lift_48;
    var lift_46 := (lift_47, lift_50, lift_63);
    var lift_45 := 'r';
    var lift_44 := lift_45;
    var lift_43 := lift_44;
    var lift_42 := '@';
    lift_42 := lift_42;
    lift_43 := lift_45;
    lift_46 := (lift_48, lift_64, lift_71);
    lift_75 := lift_75;
  }
}

method lift_1 (arg_4 : int, arg_5 : int)
  returns (arg_6 : int)
  requires (true)
  ensures (true)
{
  arg_6 := -1146165678;
  {
    var lift_17 := 'S';
    var lift_16 := lift_17;
    var lift_15 := [lift_16, lift_16];
    var lift_14 := ('h', lift_15);
    var lift_13 := ();
    var lift_12 := lift_13;
    var lift_11 := lift_12;
    var lift_10 := ();
    var lift_9 := 'R';
    var lift_8 := multiset{lift_9};
    var lift_7 := lift_8;
    lift_7 := lift_8;
    print arg_6, "\n";
    lift_10 := lift_11;
    lift_14 := (lift_17, "*B=zvKqkoCBKVV>foOToPHjw");
  }
}

method Main () {
  var lift_547 := 'y';
  var lift_545 := ();
  var lift_536 := 'h';
  var lift_535 := {lift_536};
  var lift_534 := (var tmpData : set<char> := {}; tmpData);
  var lift_533 := [lift_534, lift_535, lift_535, lift_535];
  var lift_532 := 1647165289;
  var lift_531 := (lift_532, lift_532);
  var lift_530 := lift_531;
  var lift_529 := true;
  var lift_528 := (lift_529, lift_530);
  var lift_523 := false;
  var lift_522 := 'i';
  var lift_521 := ':';
  var lift_520 := lift_521;
  var lift_519 := (lift_520, lift_522);
  var lift_518 := 'X';
  var lift_517 := (lift_518, lift_518);
  var lift_516 := lift_517;
  var lift_515 := {lift_516, lift_517, lift_519, (lift_520, lift_520)};
  var lift_514 := lift_515;
  var lift_513 := '+';
  var lift_512 := lift_513;
  var lift_511 := '&';
  var lift_510 := '^';
  var lift_509 := (lift_510, lift_510);
  var lift_508 := lift_509;
  var lift_507 := multiset{
    {lift_508, lift_508, lift_509, (lift_511, lift_512), (lift_512, lift_510)},
    lift_514,
    lift_514
  };
  var lift_506 := (lift_507, lift_523);
  var lift_503 := false;
  var lift_502 := true;
  var lift_501 := (lift_502, lift_503);
  var lift_500 := true;
  var lift_499 := (false, lift_500, 938530136);
  var lift_498 := lift_499;
  var lift_497 := lift_498;
  var lift_496 := lift_497;
  var lift_495 := lift_496;
  var lift_494 := lift_495;
  var lift_493 := (-576485035, lift_494, lift_501);
  var lift_477 := ();
  var lift_476 := ();
  var lift_475 := lift_476;
  var lift_474 := {lift_475, lift_476, lift_477};
  var lift_473 := lift_474;
  var lift_455 := '@';
  var lift_454 := lift_455;
  var lift_453 := lift_454;
  var lift_452 := true;
  var lift_451 := lift_452;
  var lift_450 := {lift_451, lift_452};
  var lift_444 := true;
  var lift_443 := false;
  var lift_442 := true;
  var lift_441 := lift_442;
  var lift_440 := (lift_441, lift_443, lift_444);
  var lift_439 := lift_440;
  var lift_437 := false;
  var lift_436 := (lift_437, false, lift_437);
  var lift_423 := false;
  var lift_422 := -1327654128;
  var lift_421 := lift_422;
  var lift_420 := lift_421;
  var lift_419 := lift_420;
  var lift_418 := [lift_419, lift_419, lift_419, lift_421];
  var lift_417 := true;
  var lift_416 := (lift_417, lift_418, lift_423);
  var lift_415 := false;
  var lift_396 := '-';
  var lift_395 := multiset{lift_396, lift_396, lift_396};
  var lift_394 := 'N';
  var lift_393 := (true, lift_394, '"');
  var lift_392 := (lift_393, lift_395, lift_394);
  var lift_391 := lift_392;
  var lift_390 := multiset{lift_391, lift_392};
  var lift_389 := lift_390;
  var lift_387 := 's';
  var lift_386 := 'W';
  var lift_385 := false;
  var lift_384 := (lift_385, lift_386, lift_387);
  var lift_377 := 'P';
  var lift_374 := -1550981416;
  var lift_373 := [lift_374];
  var lift_372 := lift_373;
  var lift_371 := ();
  var lift_370 := lift_371;
  var lift_369 := {lift_370};
  var lift_368 := lift_369;
  var lift_367 := true;
  var lift_366 := 'T';
  var lift_365 := (lift_366, false);
  var lift_364 := 't';
  var lift_363 := lift_364;
  var lift_362 := 'x';
  var lift_361 := ({'!', lift_362, lift_363, 'D'}, lift_365);
  var lift_360 := -1643526906;
  var lift_357 := -966259471;
  var lift_355 := false;
  var lift_333 := 'z';
  var lift_332 := lift_333;
  var lift_331 := multiset{lift_332, lift_332, lift_333, lift_333, lift_333};
  var lift_327 := '-';
  var lift_326 := 'c';
  var lift_325 := lift_326;
  var lift_324 := (lift_325, lift_327, lift_325);
  var lift_323 := {lift_324, lift_324, lift_324};
  var lift_322 := ();
  var lift_321 := {lift_322, (), lift_322};
  var lift_320 := lift_321;
  var lift_236 := 'K';
  var lift_235 := 'z';
  var lift_234 := lift_235;
  var lift_233 := {lift_234};
  var lift_222 := -1494741196;
  var lift_221 := (-277833669, lift_222, -1091791180);
  var lift_219 := '<';
  var lift_218 := lift_219;
  var lift_194 := ();
  var lift_193 := lift_194;
  var lift_192 := ();
  var lift_190 := true;
  var lift_189 := (lift_190, lift_190);
  var lift_186 := true;
  var lift_185 := lift_186;
  var lift_184 := (lift_185, lift_185);
  var lift_165 := 190267881;
  var lift_164 := multiset{1675164542, lift_165};
  var lift_162 := -712786561;
  var lift_161 := lift_162;
  var lift_160 := lift_161;
  var lift_147 := false;
  var lift_146 := 'c';
  var lift_145 := 'g';
  var lift_144 := lift_145;
  var lift_143 := (lift_144, (lift_146, lift_147), lift_144);
  var lift_142 := lift_143;
  var lift_141 := lift_142;
  var lift_140 := 'b';
  var lift_136 := true;
  var lift_135 := true;
  var lift_134 := multiset{lift_135, true, lift_135, lift_136, true};
  var lift_102 := true;
  var lift_101 := {lift_102, lift_102, lift_102, true};
  var lift_99 := 'b';
  var lift_98 := multiset{lift_99, lift_99, lift_99};
  var lift_93 := 'Y';
  var lift_92 := true;
  var lift_91 := lift_92;
  var lift_90 := lift_91;
  var lift_89 := (lift_90, lift_93);
  var lift_88 := 499995145;
  var lift_87 := 'l';
  var lift_86 := 'r';
  var lift_85 := ((lift_86, lift_87, lift_88), lift_89, lift_91);
  var lift_83 := 'S';
  var lift_82 := (false, lift_83);
  var lift_81 := 'd';
  var lift_80 := (lift_81, -1007476689, lift_82);
  var lift_79 := lift_80;
  var lift_78 := 'g';
  var lift_77 := [lift_78];
  var lift_34 := true;
  var lift_33 := false;
  var lift_32 := multiset{lift_33, lift_33, lift_34};
  var lift_30 := '*';
  var lift_29 := {lift_30, lift_30, lift_30};
  var lift_21 := (var tmpData : string := []; tmpData);
  var lift_20 := 1075359314;
  var lift_19 := ();
  var lift_18 := (lift_19, lift_20, lift_21);
  {
    var lift_358 := 'H';
    var lift_356 := multiset{lift_357};
    var lift_230 := true;
    var lift_229 := 1948090077;
    var lift_228 := (lift_88, lift_229, lift_165);
    var lift_227 := (lift_165, 1908614053, lift_222);
    var lift_226 := multiset{lift_221, lift_221, lift_227, lift_228};
    var lift_216 := multiset{lift_162, lift_162};
    var lift_215 := {lift_193};
    var lift_203 := -282494051;
    var lift_191 := 'j';
    var lift_188 := [lift_184, (lift_92, lift_91), lift_184, lift_189];
    var lift_187 := (false, lift_90);
    var lift_183 := [
      (lift_147, lift_136),
      lift_184,
      lift_184,
      lift_187,
      lift_187
    ];
    var lift_163 := lift_164;
    var lift_154 := [lift_20];
    var lift_149 := (lift_87, lift_90);
    var lift_138 := multiset{lift_81, lift_81};
    var lift_105 := (lift_33, lift_102);
    var lift_97 := {lift_33, true, lift_90, false, lift_33};
    var lift_96 := lift_97;
    var lift_95 := lift_96;
    var lift_94 := (lift_95, lift_92, lift_98);
    var lift_84 := true;
    var lift_35 := [true];
    var lift_31 := lift_32;
    var lift_26 := true;
    var lift_23 := false;
    var lift_22 := 'R';
    var methoddefvar_3 := lift_1(lift_18.1, (lift_22 as int));
    {
      var lift_28 := lift_29;
      var lift_27 := multiset{
        (var tmpData : set<char> := {}; tmpData),
        lift_28,
        lift_29,
        lift_28
      };
      var lift_25 := lift_26;
      if (lift_23) {
        var lift_24 := -852439749;
        print 1354540128, "\n";
        lift_24 := -107691278;
        print lift_20, "\n";
        lift_25 := lift_25;
      } else {
        print 1292886720, "\n";
        print 1084989150, "\n";
        lift_27 := lift_27;
        print lift_20, "\n";
      }
      {
        print lift_20, "\n";
      }
    }
    print 
      ((lift_31[lift_23 := lengthNormalize(
        1140526254
      )])[(lift_33 in lift_35)] as int),
      "\n";
    var methoddefvar_38 := lift_36(|lift_77|, lift_79.1);
    {
      var lift_106 := 98127444;
      var lift_104 := lift_105;
      var lift_103 := (lift_91, lift_90);
      var lift_100 := ();
      if (lift_84) {
        lift_85 := lift_85;
        print lift_20, "\n";
        print 25012682, "\n";
      } else {
        lift_94 := (lift_96, true, lift_98);
        lift_100 := ();
        lift_101 := lift_101;
        lift_103 := lift_104;
      }
      print lift_106, "\n";
      var methoddefvar_109, methoddefvar_110 := lift_107(
        methoddefvar_38,
        lift_20
      );
      {
        var lift_137 := 1607661756;
        print lift_20, "\n";
        lift_134 := multiset{lift_102, lift_135};
        print -1972446822, "\n";
        lift_137 := methoddefvar_110;
      }
      lift_138 := lift_138;
    }
    {
      var lift_329 := multiset{lift_91, true};
      var lift_319 := lift_320;
      var lift_274 := [lift_90, lift_102, lift_185, false];
      var lift_225 := lift_226;
      var lift_224 := (lift_203, lift_203, lift_165);
      var lift_204 := lift_162;
      var lift_182 := multiset{lift_183, lift_183, lift_183, lift_188};
      var lift_181 := (lift_182, lift_83, lift_77);
      var lift_155 := 1829942246;
      var lift_153 := ('@', lift_81);
      if (lift_23) {
        var lift_166 := lift_86;
        var lift_159 := multiset{lift_155, lift_160};
        var lift_158 := multiset{lift_155, lift_88};
        var lift_157 := [lift_158, lift_158, lift_159, lift_158];
        var lift_156 := lift_145;
        var lift_151 := (lift_81, 'z');
        var lift_139 := lift_83;
        if (lift_90) {
          var lift_148 := (lift_140, lift_149, lift_81);
          lift_139 := lift_83;
          lift_140 := lift_93;
          lift_141 := lift_148;
          print lift_20, "\n";
        } else {
          var lift_152 := {lift_151, lift_153, lift_151};
          var lift_150 := {lift_151, (lift_93, lift_99), lift_151};
          lift_150 := lift_152;
        }
        {
          print lift_20, "\n";
          lift_154 := lift_154;
          lift_155 := lift_155;
          lift_156 := lift_87;
        }
        if (lift_34) {
          print 1968413636, "\n";
          lift_157 := [
            multiset{1537253207, lift_88, lift_161, 2075082154, lift_160},
            lift_163,
            lift_163,
            lift_163,
            lift_163
          ];
          print lift_155, "\n";
        } else {
          var lift_167 := lift_26;
          lift_166 := lift_30;
          lift_167 := lift_92;
        }
        var methoddefvar_170 := lift_168(lift_88);
        {
          lift_181 := lift_181;
          print lift_160, "\n";
          print lift_162, "\n";
        }
        print lift_160, "\n";
      } else {
        {
          lift_191 := lift_87;
          print lift_162, "\n";
        }
        lift_192 := lift_193;
      }
      if ((lift_84 <==> false <==> lift_34)) {
        print -1374894420, "\n";
        var methoddefvar_197 := lift_195(lift_155, lift_88, lift_155);
        {
          lift_203 := -892722155;
        }
      } else {
        var lift_223 := lift_224;
        var lift_220 := multiset{
          lift_221,
          lift_221,
          lift_223,
          (lift_162, lift_165, -590923692),
          lift_221
        };
        var lift_214 := (lift_215, lift_88);
        lift_204 := lift_161;
        var methoddefvar_207 := lift_205(lift_162, -1131242856);
        {
          print lift_165, "\n";
          lift_214 := (lift_215, lift_88);
          lift_216 := lift_163;
          print lift_155, "\n";
        }
        var methoddefvar_217 := lift_205(lift_20, lift_162);
        {
          lift_218 := lift_219;
        }
        print lift_155, "\n";
        lift_220 := lift_225;
      }
      if ((false <==> lift_230 <==> lift_23)) {
        var lift_232 := ();
        var lift_231 := -311668446;
        lift_231 := lift_165;
        print lift_229, "\n";
        if (lift_23) {
          print lift_203, "\n";
          lift_232 := lift_194;
          lift_233 := lift_233;
          print -2054720513, "\n";
          print lift_160, "\n";
        } else {
          print lift_229, "\n";
          print lift_161, "\n";
          lift_236 := lift_144;
          print lift_222, "\n";
          print 1203314924, "\n";
        }
      } else {
        var methoddefvar_239 := lift_237();
        {
          print -234943043, "\n";
          print lift_204, "\n";
          print lift_165, "\n";
          lift_274 := lift_35;
        }
        var methoddefvar_277, methoddefvar_278 := lift_275(
          lift_88,
          lift_20,
          lift_161
        );
        {
          print lift_161, "\n";
          lift_319 := lift_319;
          lift_323 := lift_323;
          print lift_20, "\n";
        }
        var methoddefvar_328 := lift_237();
        {
          var lift_330 := true;
          lift_329 := lift_32;
          print lift_161, "\n";
          print lift_203, "\n";
          print -965869679, "\n";
          lift_330 := lift_26;
        }
      }
    }
    if (((lift_98 + lift_331 + lift_138) !! multiset(lift_77))) {
      var methoddefvar_336, methoddefvar_337 := lift_334();
      {
        print 1693135931, "\n";
        print lift_222, "\n";
        print lift_161, "\n";
        lift_355 := true;
        print lift_203, "\n";
      }
    } else {
      if ((() !in lift_320)) {
        {
          lift_356 := lift_163;
          print lift_229, "\n";
          lift_358 := lift_219;
          print 915465855, "\n";
        }
        var methoddefvar_359 := lift_1(lift_360, lift_360);
        {
          lift_361 := lift_361;
          lift_367 := lift_147;
          print lift_165, "\n";
          print lift_161, "\n";
          print lift_203, "\n";
        }
        lift_368 := lift_369;
      } else {
        lift_372 := lift_373;
      }
    }
  }
  {
    var lift_527 := (false, (lift_374, lift_165));
    var lift_449 := {false, lift_90, lift_136};
    var lift_438 := lift_439;
    var lift_425 := [lift_415];
    var lift_424 := (lift_147, lift_418, lift_417);
    var lift_398 := lift_30;
    var lift_388 := (lift_389, lift_385);
    var lift_383 := lift_384;
    var lift_382 := lift_383;
    var lift_381 := (lift_90, lift_218, lift_326);
    var methoddefvar_375 := lift_168(lift_221.0);
    {
      var lift_380 := lift_381;
      print lift_165, "\n";
      var methoddefvar_376 := lift_195(lift_161, lift_374, lift_374);
      {
        lift_377 := lift_362;
        print lift_88, "\n";
        print methoddefvar_376, "\n";
      }
      {
        var lift_379 := {lift_380, lift_381, lift_382, lift_380};
        var lift_378 := {lift_379, lift_379};
        lift_378 := lift_378;
        lift_388 := lift_388;
        print lift_165, "\n";
      }
      var methoddefvar_397 := lift_168(methoddefvar_375);
      {
        lift_398 := '<';
        print lift_160, "\n";
        print lift_357, "\n";
      }
    }
    var methoddefvar_399 := lift_237();
    {
      {
        var lift_400 := lift_34;
        lift_400 := lift_190;
      }
      print -1476771454, "\n";
    }
    if (((lift_160 * lift_88) < (lift_32[lift_367] as int))) {
      var methoddefvar_403, methoddefvar_404 := lift_401();
      {
        print lift_222, "\n";
        lift_415 := lift_367;
      }
      print |multiset{true, true, lift_415}|, "\n";
      lift_416 := lift_424;
    } else {
      var lift_435 := {lift_78};
      if (safeSeqRef(lift_425, lift_421, lift_186)) {
        var methoddefvar_428 := lift_426(lift_357, lift_165, 1519665955);
        {
          lift_435 := lift_435;
        }
      } else {
        var lift_472 := true;
        lift_436 := lift_438;
        var methoddefvar_445 := lift_237();
        {
          var lift_446 := "w$@:nIurlu_W_Bj\"TyngmOC\"NildYz";
          lift_446 := [lift_145, lift_363, lift_396];
          print 1121742244, "\n";
        }
        var methoddefvar_447, methoddefvar_448 := lift_107(
          -803163106,
          lift_161
        );
        {
          lift_449 := lift_450;
          lift_453 := lift_78;
          print lift_160, "\n";
        }
        var methoddefvar_458, methoddefvar_459 := lift_456(lift_421);
        {
          print lift_419, "\n";
          print lift_165, "\n";
        }
        var methoddefvar_468, methoddefvar_469 := lift_466();
        {
          lift_472 := lift_441;
          print -1405419401, "\n";
          print lift_162, "\n";
          lift_473 := {lift_193, lift_371, lift_322};
          print lift_374, "\n";
        }
      }
    }
    var methoddefvar_480, methoddefvar_481 := lift_478(
      (lift_218 as int),
      lift_221.0
    );
    {
      var lift_526 := lift_527;
      var lift_525 := multiset{{(lift_83, lift_454), lift_516}, lift_515};
      var lift_524 := (lift_525, lift_33);
      var lift_504 := (var tmpData : seq<set<()>> := []; tmpData);
      var lift_492 := lift_493;
      var lift_491 := 'M';
      var lift_490 := true;
      var lift_489 := lift_475;
      lift_489 := lift_370;
      if (lift_490) {
        lift_491 := lift_377;
        print lift_20, "\n";
        print lift_165, "\n";
        print 2001722681, "\n";
        lift_492 := lift_492;
      } else {
        var lift_505 := lift_506;
        lift_504 := lift_504;
        print lift_419, "\n";
        lift_505 := lift_524;
        print lift_88, "\n";
        lift_526 := lift_528;
      }
      lift_533 := lift_533;
      print methoddefvar_480, "\n";
    }
    var methoddefvar_539, methoddefvar_540 := lift_537(
      lift_496.2,
      safeSeqRef(lift_372, lift_360, lift_420)
    );
    {
      lift_545 := ();
      var methoddefvar_546 := lift_195(lift_421, lift_165, lift_165);
      {
        print 1742544366, "\n";
      }
    }
  }
  lift_547 := lift_81;
}


