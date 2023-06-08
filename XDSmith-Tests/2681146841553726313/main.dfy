//
//
//
//
//
//

// Seed: 2681146841553726313
// This is a RANDOMLY GENERATED PROGRAM.
// Fuzzer: dafny
// Version: dafny, xsmith 2.0.5 (38f1d83), in Racket 8.9 (vm-type chez-scheme)
// Options: --with-print-constrained true --dafny-syntax true --seed 2681146841553726313
// Seed: 2681146841553726313
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
method lift_630 (arg_634 : int, arg_635 : int)
  returns (arg_636 : int, arg_637 : int)
  requires (true)
  ensures (true)
{
  arg_636 := 738394776;
  arg_637 := 1549475169;
  {
    var lift_642 := 'q';
    var lift_641 := lift_642;
    var lift_640 := multiset{lift_641, lift_641};
    var lift_639 := '^';
    var lift_638 := multiset{lift_639, 'J', lift_639, lift_639, lift_639};
    lift_638 := lift_640;
  }
}

method lift_596 ()
  returns (arg_600 : int, arg_601 : int)
  requires (true)
  ensures (true)
{
  arg_600 := -1028942237;
  arg_601 := -750928113;
  {
    var lift_627 := {-1093925091, -1584877741, arg_600, 1302468962};
    var lift_626 := lift_627;
    var lift_625 := -1800996542;
    var lift_624 := {arg_600, arg_601, lift_625};
    var lift_623 := 1281923692;
    var lift_622 := {lift_623, arg_601, arg_600};
    var lift_621 := lift_622;
    var lift_620 := -39961198;
    var lift_619 := {arg_601, lift_620, arg_601, arg_600, arg_601};
    var lift_618 := {lift_619, lift_621, lift_624};
    var lift_617 := {arg_601};
    var lift_616 := -1273921901;
    var lift_615 := {arg_601, arg_600, lift_616, arg_600, arg_601};
    var lift_614 := {lift_615, lift_617};
    var lift_613 := lift_614;
    var lift_612 := multiset{lift_613, lift_614, lift_613, lift_613, lift_618};
    var lift_611 := lift_612;
    var lift_610 := lift_611;
    var lift_609 := arg_601;
    var lift_608 := [arg_600, lift_609, lift_609, lift_609];
    var lift_607 := ();
    var lift_606 := ();
    var lift_605 := ();
    var lift_604 := {(), lift_605, lift_606, lift_607};
    var lift_603 := lift_604;
    var lift_602 := (lift_603, lift_608, arg_601);
    lift_602 := lift_602;
    lift_610 := lift_610;
    lift_626 := lift_619;
  }
}

method lift_528 ()
  returns (arg_531 : int)
  requires (true)
  ensures (true)
{
  arg_531 := 902824993;
  {
    var lift_532 := arg_531;
    print arg_531, "\n";
    print lift_532, "\n";
  }
}

function lift_508 (
  arg_510 : set<(set<bool>, (bool, bool))>,
  arg_511 : int
) : bool
{
  
  false
}

method lift_490 (arg_493 : int, arg_494 : int)
  returns (arg_495 : int)
  requires (true)
  ensures (true)
{
  arg_495 := 1724562511;
  {
    var lift_497 := (var tmpData : multiset<seq<(char, bool)>> := multiset{}; tmpData);
    var lift_496 := lift_497;
    print arg_494, "\n";
    lift_496 := lift_496;
    print arg_495, "\n";
  }
}

method lift_454 (arg_457 : int)
  returns (arg_458 : int)
  requires (true)
  ensures (true)
{
  arg_458 := 849976031;
  {
    var lift_488 := 'f';
    var lift_487 := arg_457;
    var lift_486 := (lift_487, lift_488, arg_457);
    var lift_485 := (-754970360, arg_458);
    var lift_484 := (var tmpData : seq<int> := []; tmpData);
    var lift_483 := lift_484;
    var lift_482 := 1606562882;
    var lift_481 := [-644260269, arg_457, arg_457, lift_482, -282857458];
    var lift_480 := multiset{lift_481, lift_483, lift_481};
    var lift_479 := lift_480;
    var lift_478 := 728600814;
    var lift_477 := (arg_458, 'C', lift_478);
    var lift_476 := (lift_477, lift_479, lift_485);
    var lift_475 := 264037332;
    var lift_474 := multiset{lift_475, arg_457};
    var lift_473 := {lift_474};
    var lift_472 := lift_473;
    var lift_471 := multiset{lift_472, lift_472};
    var lift_470 := multiset{arg_458};
    var lift_469 := arg_458;
    var lift_468 := multiset{arg_458, arg_458};
    var lift_467 := {
      lift_468,
      multiset{arg_458, arg_457, arg_458, lift_469, lift_469},
      lift_470
    };
    var lift_466 := lift_467;
    var lift_465 := multiset{-1734307794, arg_458, arg_457};
    var lift_464 := 375744817;
    var lift_463 := multiset{arg_458, arg_457, arg_457, arg_458, -142257196};
    var lift_462 := {
      lift_463,
      multiset{arg_457, 1491715796, lift_464, arg_457, arg_457},
      lift_463,
      lift_465,
      lift_465
    };
    var lift_461 := (var tmpData : set<multiset<int>> := {}; tmpData);
    var lift_460 := multiset{lift_461, lift_462, lift_466, lift_461};
    var lift_459 := lift_460;
    lift_459 := lift_471;
    lift_476 := (lift_486, lift_480, (lift_469, arg_457));
  }
}

function lift_351 (
  arg_353 : char,
  arg_354 : char,
  arg_355 : bool,
  arg_356 : bool,
  arg_357 : bool
) : int
{
  var lift_358 := 1150076982;
  lift_358
}

method lift_334 (arg_337 : int, arg_338 : int)
  returns (arg_339 : int)
  requires (true)
  ensures (true)
{
  arg_339 := -1844328585;
  {
    var lift_340 := 1469645056;
    lift_340 := -887773339;
  }
}

method lift_326 (arg_329 : int, arg_330 : int)
  returns (arg_331 : int)
  requires (true)
  ensures (true)
{
  arg_331 := -478821568;
  {
    print arg_329, "\n";
  }
}

method lift_245 (arg_248 : int, arg_249 : int)
  returns (arg_250 : int)
  requires (true)
  ensures (true)
{
  arg_250 := 1985224650;
  {
    var lift_260 := 695522010;
    var lift_259 := true;
    var lift_258 := (lift_259, lift_260);
    var lift_257 := (arg_249, lift_258);
    var lift_256 := "Q%*fU%ZFRf!k";
    var lift_255 := 1931440904;
    var lift_254 := ();
    var lift_253 := multiset{lift_254, lift_254, ()};
    var lift_252 := ();
    var lift_251 := multiset{lift_252, lift_252};
    lift_251 := lift_253;
    print lift_255, "\n";
    print arg_250, "\n";
    lift_256 := lift_256;
    lift_257 := lift_257;
  }
}

method lift_210 (arg_213 : int, arg_214 : int, arg_215 : int)
  returns (arg_216 : int)
  requires (true)
  ensures (true)
{
  arg_216 := 35349837;
  {
    var lift_239 := false;
    var lift_238 := 'C';
    var lift_237 := multiset{lift_238, lift_238};
    var lift_236 := lift_237;
    var lift_235 := (lift_236, lift_239);
    var lift_234 := true;
    var lift_233 := '|';
    var lift_232 := (multiset{lift_233, '|'}, lift_234);
    var lift_231 := true;
    var lift_230 := lift_231;
    var lift_229 := 'C';
    var lift_228 := lift_229;
    var lift_227 := 'N';
    var lift_226 := lift_227;
    var lift_225 := lift_226;
    var lift_224 := lift_225;
    var lift_223 := lift_224;
    var lift_222 := multiset{lift_223, lift_227, lift_228, lift_228};
    var lift_221 := (lift_222, lift_230);
    var lift_220 := multiset{
      lift_221,
      lift_232,
      lift_221,
      (lift_222, true),
      lift_221
    };
    var lift_219 := lift_220;
    var lift_218 := true;
    var lift_217 := true;
    print arg_215, "\n";
    print arg_215, "\n";
    lift_217 := lift_218;
    lift_219 := multiset{lift_235, lift_235, lift_235, lift_232};
  }
}

method lift_152 (arg_155 : int)
  returns (arg_156 : int)
  requires (true)
  ensures (true)
{
  arg_156 := 859016203;
  {
    var lift_203 := (var tmpData : set<char> := {}; tmpData);
    var lift_202 := (arg_155, arg_155);
    var lift_201 := true;
    var lift_200 := lift_201;
    var lift_199 := true;
    var lift_198 := lift_199;
    var lift_197 := {lift_198, lift_200, lift_198};
    var lift_196 := lift_197;
    var lift_195 := (lift_196, lift_202, lift_203);
    var lift_194 := lift_195;
    var lift_193 := 'g';
    var lift_192 := 'T';
    var lift_191 := lift_192;
    var lift_190 := {lift_191, lift_193, lift_191, 'j'};
    var lift_189 := -949861410;
    var lift_188 := (arg_155, lift_189);
    var lift_187 := false;
    var lift_186 := false;
    var lift_185 := {lift_186, lift_187};
    var lift_184 := (lift_185, lift_188, lift_190);
    var lift_183 := {lift_184, lift_194, lift_195};
    var lift_182 := 'y';
    var lift_181 := lift_182;
    var lift_180 := lift_181;
    var lift_179 := {lift_180, lift_180, lift_181, lift_182, 'Q'};
    var lift_178 := 'I';
    var lift_177 := 'I';
    var lift_176 := {lift_177, lift_177, lift_178};
    var lift_175 := -841744856;
    var lift_174 := (arg_156, lift_175);
    var lift_173 := lift_174;
    var lift_172 := (var tmpData : set<bool> := {}; tmpData);
    var lift_171 := (lift_172, lift_173, lift_176);
    var lift_170 := 'u';
    var lift_169 := {lift_170, lift_170};
    var lift_168 := (1998127958, -1517223351);
    var lift_167 := lift_168;
    var lift_166 := true;
    var lift_165 := true;
    var lift_164 := {lift_165, lift_166, lift_165, true};
    var lift_163 := (lift_164, lift_167, lift_169);
    var lift_162 := {
      lift_163,
      lift_163,
      lift_171,
      (lift_172, lift_174, lift_179)
    };
    var lift_161 := lift_162;
    var lift_160 := lift_161;
    var lift_159 := ();
    var lift_158 := {lift_159};
    var lift_157 := lift_158;
    lift_157 := lift_157;
    lift_160 := lift_183;
  }
}

method lift_131 (arg_135 : int, arg_136 : int, arg_137 : int)
  returns (arg_138 : int, arg_139 : int)
  requires (true)
  ensures (true)
{
  arg_138 := 1298653288;
  arg_139 := 1503284390;
  {
    var lift_150 := '-';
    var lift_149 := lift_150;
    var lift_148 := ();
    var lift_147 := ();
    var lift_146 := multiset{lift_147, (), lift_148};
    var lift_145 := ();
    var lift_144 := multiset{lift_145, lift_145, lift_145};
    var lift_143 := true;
    var lift_142 := (lift_143, arg_136);
    var lift_141 := false;
    var lift_140 := (lift_141, arg_139);
    lift_140 := lift_142;
    print arg_138, "\n";
    print arg_136, "\n";
    lift_144 := lift_146;
    lift_149 := lift_150;
  }
}

method lift_95 ()
  returns (arg_99 : int, arg_100 : int)
  requires (true)
  ensures (true)
{
  arg_99 := 1295109046;
  arg_100 := -1778910317;
  {
    var lift_108 := -1911593695;
    var lift_107 := true;
    var lift_106 := 'M';
    var lift_105 := (lift_106, lift_106);
    var lift_104 := "BWwMFbdEBoG~sVD$\"n";
    var lift_103 := (lift_104, lift_105, lift_107);
    var lift_102 := lift_103;
    var lift_101 := -313106500;
    print lift_101, "\n";
    print -1452848837, "\n";
    lift_102 := lift_102;
    print lift_108, "\n";
  }
}

method lift_88 (arg_91 : int, arg_92 : int, arg_93 : int)
  returns (arg_94 : int)
  requires (true)
  ensures (true)
{
  arg_94 := -918269583;
  {
    print arg_93, "\n";
    print arg_93, "\n";
  }
}

method lift_56 (arg_60 : int)
  returns (arg_61 : int, arg_62 : int)
  requires (true)
  ensures (true)
{
  arg_61 := -530486261;
  arg_62 := -137216849;
  {
    var lift_63 := 372110585;
    print lift_63, "\n";
  }
}

method Main () {
  var lift_663 := (var tmpData : multiset<(bool, ())> := multiset{}; tmpData);
  var lift_662 := lift_663;
  var lift_661 := true;
  var lift_660 := (lift_661, ());
  var lift_658 := ();
  var lift_657 := lift_658;
  var lift_656 := lift_657;
  var lift_655 := lift_656;
  var lift_654 := true;
  var lift_653 := lift_654;
  var lift_652 := (lift_653, lift_655);
  var lift_651 := ();
  var lift_650 := lift_651;
  var lift_649 := (true, lift_650);
  var lift_648 := ();
  var lift_647 := false;
  var lift_646 := ();
  var lift_645 := lift_646;
  var lift_644 := (lift_645, {(lift_647, lift_648), lift_649, lift_652});
  var lift_593 := '=';
  var lift_592 := lift_593;
  var lift_591 := '$';
  var lift_590 := (276118086, lift_591);
  var lift_589 := lift_590;
  var lift_588 := -1513110068;
  var lift_587 := (lift_588, lift_589, lift_592);
  var lift_586 := lift_587;
  var lift_585 := {
    lift_586,
    lift_586,
    lift_587,
    lift_586,
    (lift_588, lift_589, lift_593)
  };
  var lift_584 := lift_585;
  var lift_583 := 'v';
  var lift_582 := ('G', lift_583);
  var lift_581 := (lift_582, (var tmpData : set<int> := {}; tmpData), lift_584);
  var lift_580 := 'r';
  var lift_579 := 586239328;
  var lift_578 := (lift_579, lift_580);
  var lift_577 := lift_578;
  var lift_576 := -865440639;
  var lift_575 := (lift_576, lift_577, 'x');
  var lift_574 := {lift_575, lift_575};
  var lift_573 := 'n';
  var lift_572 := -434979992;
  var lift_571 := (lift_572, lift_573);
  var lift_570 := lift_571;
  var lift_569 := lift_570;
  var lift_568 := lift_569;
  var lift_567 := 126426869;
  var lift_566 := (lift_567, lift_568, lift_573);
  var lift_565 := ':';
  var lift_564 := -2072353449;
  var lift_563 := lift_564;
  var lift_562 := (lift_563, lift_565);
  var lift_561 := 750467256;
  var lift_560 := 'X';
  var lift_559 := 1262056707;
  var lift_558 := (lift_559, lift_560);
  var lift_557 := -996492075;
  var lift_556 := (lift_557, lift_558, lift_560);
  var lift_555 := {
    lift_556,
    lift_556,
    lift_556,
    (lift_561, lift_562, lift_560),
    lift_566
  };
  var lift_554 := (lift_555 + lift_555 + lift_574);
  var lift_552 := -1658155344;
  var lift_551 := (lift_552, 1986769548);
  var lift_550 := lift_551;
  var lift_549 := true;
  var lift_548 := 147859297;
  var lift_547 := (lift_548, lift_549);
  var lift_546 := (lift_547, lift_550);
  var lift_543 := true;
  var lift_542 := '"';
  var lift_540 := '"';
  var lift_539 := multiset{lift_540};
  var lift_538 := lift_539;
  var lift_536 := (var tmpData : multiset<char> := multiset{}; tmpData);
  var lift_535 := ((), lift_536);
  var lift_526 := ();
  var lift_525 := ();
  var lift_524 := '$';
  var lift_523 := (lift_524, lift_525, lift_526);
  var lift_521 := -948945235;
  var lift_520 := lift_521;
  var lift_519 := lift_520;
  var lift_518 := (lift_519, lift_519);
  var lift_498 := false;
  var lift_453 := false;
  var lift_452 := '/';
  var lift_451 := lift_452;
  var lift_450 := (lift_451, lift_453);
  var lift_449 := false;
  var lift_448 := lift_449;
  var lift_447 := '+';
  var lift_446 := (lift_447, lift_448);
  var lift_445 := lift_446;
  var lift_444 := lift_445;
  var lift_443 := false;
  var lift_442 := lift_443;
  var lift_441 := 'i';
  var lift_440 := (lift_441, lift_442);
  var lift_439 := multiset{lift_440, lift_444, lift_450, lift_450};
  var lift_425 := true;
  var lift_424 := 'z';
  var lift_423 := lift_424;
  var lift_422 := (lift_423, lift_425);
  var lift_421 := lift_422;
  var lift_420 := 'q';
  var lift_419 := (lift_420, lift_421);
  var lift_418 := false;
  var lift_417 := ('b', lift_418);
  var lift_416 := 'Z';
  var lift_415 := (lift_416, true);
  var lift_414 := '\'';
  var lift_413 := (lift_414, lift_415);
  var lift_407 := 97205663;
  var lift_406 := 'a';
  var lift_405 := (lift_406, lift_407);
  var lift_404 := lift_405;
  var lift_403 := [lift_404];
  var lift_402 := -1941058392;
  var lift_401 := 'k';
  var lift_400 := (lift_401, lift_402);
  var lift_399 := [lift_400, lift_400];
  var lift_375 := -20500046;
  var lift_374 := -112462660;
  var lift_373 := -215057439;
  var lift_372 := lift_373;
  var lift_371 := multiset{lift_372, lift_374, lift_374, lift_374};
  var lift_368 := 'o';
  var lift_366 := false;
  var lift_365 := 'U';
  var lift_364 := (lift_365, lift_366, lift_365);
  var lift_363 := true;
  var lift_362 := lift_363;
  var lift_361 := 'Y';
  var lift_360 := {(lift_361, lift_362, lift_361), lift_364, lift_364};
  var lift_359 := (var tmpData : set<multiset<char>> := {}; tmpData);
  var lift_350 := true;
  var lift_349 := lift_350;
  var lift_348 := true;
  var lift_347 := {lift_348, lift_349, lift_348};
  var lift_346 := false;
  var lift_345 := (false, lift_346);
  var lift_344 := (lift_345, lift_347, lift_351);
  var lift_333 := 2028628863;
  var lift_332 := [lift_333, lift_333, lift_333];
  var lift_325 := -459140721;
  var lift_324 := lift_325;
  var lift_323 := 'o';
  var lift_322 := false;
  var lift_321 := lift_322;
  var lift_320 := lift_321;
  var lift_319 := (lift_320, lift_323, lift_324);
  var lift_318 := -46387367;
  var lift_317 := -1014533672;
  var lift_316 := lift_317;
  var lift_315 := [lift_316, -229845854, lift_318, lift_316];
  var lift_314 := lift_315;
  var lift_313 := (lift_314, lift_319);
  var lift_312 := 't';
  var lift_311 := (lift_312, lift_313);
  var lift_310 := 583872340;
  var lift_309 := 'a';
  var lift_308 := true;
  var lift_307 := (lift_308, lift_309, lift_310);
  var lift_306 := 1986543956;
  var lift_305 := lift_306;
  var lift_304 := -364119030;
  var lift_303 := [lift_304, lift_304, lift_305, lift_304, lift_304];
  var lift_302 := (lift_303, lift_307);
  var lift_301 := lift_302;
  var lift_300 := '!';
  var lift_299 := ();
  var lift_298 := true;
  var lift_297 := lift_298;
  var lift_296 := 'N';
  var lift_295 := lift_296;
  var lift_294 := 'O';
  var lift_293 := true;
  var lift_292 := 'z';
  var lift_291 := (lift_292, lift_293, lift_292);
  var lift_290 := [
    lift_291,
    (lift_294, lift_293, lift_292),
    (lift_295, lift_297, 'E'),
    lift_291,
    lift_291
  ];
  var lift_279 := false;
  var lift_278 := ('Q', lift_279);
  var lift_276 := false;
  var lift_275 := lift_276;
  var lift_274 := 'U';
  var lift_273 := (lift_274, true);
  var lift_272 := lift_273;
  var lift_271 := {
    lift_272,
    lift_272,
    (lift_274, lift_275),
    lift_273,
    lift_273
  };
  var lift_269 := 'u';
  var lift_268 := false;
  var lift_267 := (431909081, lift_268, lift_269);
  var lift_244 := (var tmpData : seq<()> := []; tmpData);
  var lift_206 := false;
  var lift_205 := lift_206;
  var lift_130 := true;
  var lift_129 := '~';
  var lift_128 := 'd';
  var lift_127 := 'n';
  var lift_126 := (
    [lift_127, lift_128, lift_129, lift_129],
    lift_130,
    -163682528
  );
  var lift_125 := -652879687;
  var lift_124 := -700821151;
  var lift_123 := [lift_124, lift_125, lift_124];
  var lift_119 := 1101258364;
  var lift_118 := lift_119;
  var lift_115 := (1699682989, 'w');
  var lift_113 := -2026535507;
  var lift_112 := {lift_113};
  var lift_111 := lift_112;
  var lift_110 := [lift_111];
  var lift_87 := true;
  var lift_86 := lift_87;
  var lift_85 := [lift_86, true, lift_87, true, lift_87];
  var lift_84 := ();
  var lift_83 := 'v';
  var lift_82 := {(lift_83, lift_84, lift_85), (lift_83, (), lift_85)};
  var lift_81 := lift_82;
  var lift_80 := false;
  var lift_79 := false;
  var lift_78 := true;
  var lift_77 := [lift_78, lift_79, lift_80, lift_80];
  var lift_76 := ();
  var lift_75 := '"';
  var lift_74 := lift_75;
  var lift_73 := (lift_74, lift_76, lift_77);
  var lift_72 := true;
  var lift_71 := lift_72;
  var lift_70 := lift_71;
  var lift_69 := ();
  var lift_68 := 'J';
  var lift_67 := (lift_68, lift_69, [lift_70, lift_71, lift_72, lift_70]);
  var lift_54 := 1406112708;
  var lift_53 := lift_54;
  var lift_52 := lift_53;
  var lift_51 := {lift_52, 1174351624, lift_54, lift_52};
  var lift_47 := ();
  var lift_46 := ();
  var lift_45 := {lift_46, lift_46, ()};
  var lift_44 := (var tmpData : set<()> := {}; tmpData);
  var lift_43 := lift_44;
  var lift_42 := [lift_43, lift_43, lift_44, lift_45, lift_43];
  var lift_41 := ();
  var lift_40 := lift_41;
  var lift_39 := lift_40;
  var lift_38 := {lift_39};
  var lift_37 := ();
  var lift_36 := ();
  var lift_35 := lift_36;
  var lift_34 := {lift_35, lift_37};
  var lift_33 := ();
  var lift_32 := ();
  var lift_31 := ();
  var lift_30 := lift_31;
  var lift_29 := {lift_30, lift_32, lift_31, lift_33, ()};
  var lift_28 := true;
  var lift_27 := 'X';
  var lift_26 := true;
  var lift_25 := (lift_26, lift_27, lift_28);
  var lift_24 := (lift_25, lift_27);
  var lift_23 := '%';
  var lift_22 := lift_23;
  var lift_21 := lift_22;
  var lift_20 := false;
  var lift_19 := lift_20;
  var lift_18 := ((lift_19, lift_21, lift_20), lift_22);
  var lift_17 := multiset{lift_18, lift_24, lift_24, (lift_25, lift_22)};
  var lift_16 := (lift_17, lift_19, lift_23);
  var lift_15 := 285702342;
  var lift_12 := true;
  var lift_6 := 'n';
  var lift_5 := lift_6;
  {
    var lift_14 := ();
    var lift_13 := (lift_14, lift_15, lift_16);
    var lift_11 := (lift_12, lift_6, lift_12);
    var lift_10 := (lift_11, 'B');
    var lift_9 := lift_10;
    var lift_8 := multiset{lift_9, lift_10};
    var lift_7 := true;
    var lift_4 := true;
    var lift_3 := (lift_4, lift_5, lift_7);
    var lift_2 := multiset{(lift_3, lift_5)};
    var lift_1 := (lift_2 + lift_8);
    lift_1 := lift_13.2.0;
  }
  if ((((lift_29 * {
    lift_32,
    lift_31,
    ()
  }) * lift_29) == ((lift_34 + lift_38) * safeSeqRef(
    lift_42,
    lift_15,
    lift_29
  ) * ({lift_46, lift_30, lift_46, lift_36, lift_47} - lift_43 - {
    lift_46,
    lift_47,
    lift_37
  })))) {
    var lift_343 := (lift_274, lift_15);
    var lift_289 := lift_290;
    var lift_283 := {lift_271, lift_271};
    var lift_277 := {lift_278, lift_278};
    var lift_264 := {lift_22, lift_21, lift_74};
    var lift_261 := 1729988176;
    var lift_204 := '!';
    var lift_117 := (lift_15, lift_15, lift_115);
    var lift_116 := lift_117;
    var lift_114 := (lift_54, lift_15, lift_115);
    var lift_66 := {lift_67, lift_73};
    var lift_65 := [true];
    var lift_55 := {lift_15, lift_53, lift_54, lift_54, lift_15};
    var lift_50 := [lift_51, lift_51, lift_55];
    var lift_49 := multiset{lift_23, lift_6, 'l', lift_27, 'K'};
    var lift_48 := lift_49;
    if ((|lift_48| in safeSeqRef(lift_50, lift_52, lift_55))) {
      var lift_109 := lift_110;
      var methoddefvar_58, methoddefvar_59 := lift_56(lift_52);
      {
        print methoddefvar_58, "\n";
        print lift_53, "\n";
        print lift_54, "\n";
      }
      {
        if (false) {
          var lift_64 := lift_23;
          lift_64 := lift_5;
          print lift_15, "\n";
          lift_65 := lift_65;
          print lift_54, "\n";
          print lift_15, "\n";
        } else {
          lift_66 := lift_81;
          print lift_15, "\n";
          print lift_52, "\n";
          print -762042189, "\n";
          print lift_53, "\n";
        }
      }
      if ((lift_23 >= lift_6 >= lift_27)) {
        var lift_121 := (lift_87, (lift_6, lift_53), lift_19);
        var lift_120 := lift_121;
        var methoddefvar_90 := lift_88(1404354266, lift_15, lift_15);
        {
          print -586942150, "\n";
        }
        var methoddefvar_97, methoddefvar_98 := lift_95();
        {
          lift_109 := [
            {-404968628, lift_113},
            lift_111,
            {-2043409023, lift_113, lift_52, methoddefvar_97}
          ];
          lift_114 := lift_116;
          print -264253086, "\n";
          print lift_53, "\n";
        }
        {
          print lift_118, "\n";
          print lift_119, "\n";
          lift_120 := lift_120;
          print lift_119, "\n";
          print lift_119, "\n";
        }
      } else {
        var lift_122 := lift_123;
        lift_122 := lift_122;
        lift_126 := lift_126;
        var methoddefvar_133, methoddefvar_134 := lift_131(
          lift_53,
          lift_118,
          lift_53
        );
        {
          var lift_151 := {lift_35, (), lift_35, lift_32, lift_32};
          print lift_54, "\n";
          lift_151 := lift_34;
        }
        var methoddefvar_154 := lift_152(lift_54);
        {
          lift_204 := lift_6;
        }
      }
    } else {
      var lift_288 := lift_289;
      var lift_285 := "H/h+x/<e?vLmP:ISIyl>'|mh";
      var lift_284 := ['d', lift_83, lift_21];
      var lift_282 := lift_283;
      var lift_281 := lift_282;
      var lift_270 := {lift_271, lift_271, lift_277, lift_271};
      var lift_266 := (lift_267, lift_270);
      var lift_209 := (lift_21, lift_125);
      var lift_208 := (lift_123, lift_209, lift_20);
      if ((lift_48 == multiset{lift_21, lift_68})) {
        var lift_243 := [lift_127];
        var lift_242 := lift_243;
        var lift_241 := (var tmpData : seq<char> := []; tmpData);
        if (true) {
          lift_205 := lift_130;
          print -925712537, "\n";
        } else {
          var lift_207 := lift_208;
          lift_207 := lift_208;
          print lift_118, "\n";
        }
        var methoddefvar_212 := lift_210(lift_52, lift_113, lift_52);
        {
          var lift_240 := [lift_241, lift_242];
          lift_240 := lift_240;
          lift_244 := lift_244;
        }
        var methoddefvar_247 := lift_245(lift_54, lift_118);
        {
          lift_261 := lift_124;
          print lift_261, "\n";
        }
      } else {
        var lift_265 := lift_266;
        var lift_263 := multiset{lift_264, lift_264};
        if (lift_206) {
          var lift_280 := ((lift_113, lift_71, lift_274), lift_281);
          var lift_262 := {lift_263, lift_263, lift_263};
          lift_262 := lift_262;
          print lift_53, "\n";
          lift_265 := lift_280;
        } else {
          lift_284 := lift_285;
        }
        var methoddefvar_286, methoddefvar_287 := lift_95();
        {
          lift_288 := lift_289;
          lift_299 := lift_46;
          print lift_53, "\n";
          print methoddefvar_286, "\n";
        }
      }
      lift_300 := safeSeqRef("ZJwItQBOkn", -1732307391, lift_204);
      lift_301 := lift_311.1;
    }
    var methoddefvar_328 := lift_326(
      lift_119,
      safeSeqRef(lift_332, lift_310, lift_317)
    );
    {
      var lift_341 := ();
      var methoddefvar_336 := lift_334(lift_310, lift_119);
      {
        var lift_342 := (lift_343, (lift_306, lift_310), lift_39);
        lift_341 := lift_31;
        print lift_305, "\n";
        lift_342 := lift_342;
        print lift_305, "\n";
        print methoddefvar_336, "\n";
      }
    }
    print 
      lift_344.2(
        safeSeqRef("yptfqKUtXpy!IFByU-RzA_LP;nhutVd", lift_119, lift_27),
        '&',
        (lift_294 !in lift_48),
        (lift_350 <== lift_78),
        (multiset{lift_68, lift_68, lift_27, lift_6, lift_23} !in lift_359)
      ),
      "\n";
  } else {
    var lift_668 := 'K';
    var lift_665 := lift_576;
    var lift_594 := {lift_586, lift_575, lift_586, lift_566, lift_556};
    var lift_522 := (lift_124, lift_333);
    var lift_512 := (var tmpData : set<(set<bool>, (bool, bool))> := {}; tmpData);
    var lift_507 := ();
    var lift_504 := lift_371;
    var lift_503 := lift_504;
    var lift_500 := 967431206;
    var lift_430 := -1231784857;
    var lift_428 := 'Z';
    var lift_426 := lift_419;
    var lift_408 := (var tmpData : set<seq<(char, int)>> := {}; tmpData);
    var lift_397 := (lift_372, lift_268);
    var lift_396 := lift_397;
    var lift_395 := (lift_315, lift_396, lift_74);
    var lift_383 := (lift_27, lift_269);
    var lift_380 := {lift_6, lift_23, lift_323};
    var lift_378 := "C%A@EoYt>/pJ:L%Jj*&AdN=X%q>ei\"x!bVSl\"<";
    var lift_367 := (var tmpData : set<(char, bool, char)> := {}; tmpData);
    if (!(({lift_291} == lift_360 == lift_367))) {
      var lift_412 := {lift_413, ('q', lift_417), lift_419};
      var lift_411 := lift_303;
      var lift_410 := ['q', lift_6, lift_323];
      var lift_394 := (lift_119, lift_363);
      var lift_393 := (lift_303, lift_394, lift_365);
      var lift_392 := {
        lift_393,
        (lift_332, lift_394, lift_5),
        (lift_303, (lift_324, lift_206), lift_74),
        lift_395
      };
      var lift_391 := (lift_124, lift_297);
      var lift_390 := {(lift_315, lift_391, lift_294)};
      var lift_387 := lift_279;
      var lift_379 := lift_380;
      var lift_377 := (lift_378, lift_379, lift_325);
      var lift_376 := lift_377;
      var lift_370 := multiset{lift_324, lift_317};
      if ((lift_308 <==> false)) {
        var lift_385 := ('S', lift_68);
        var lift_384 := (lift_385, lift_296, lift_308);
        var lift_382 := (lift_383, 'e', lift_206);
        var lift_381 := (lift_378, 'D');
        {
          print lift_318, "\n";
          print lift_324, "\n";
        }
        if (lift_87) {
          var lift_369 := lift_370;
          lift_368 := lift_368;
          lift_369 := lift_371;
          lift_375 := -55274586;
          lift_376 := lift_376;
          lift_381 := lift_381;
        } else {
          print lift_54, "\n";
          print lift_372, "\n";
          print lift_124, "\n";
        }
        lift_382 := lift_384;
        if (lift_206) {
          print lift_372, "\n";
          print -1456782294, "\n";
          print lift_124, "\n";
        } else {
          var lift_386 := true;
          lift_386 := lift_322;
          print lift_304, "\n";
        }
        if (lift_276) {
          print lift_324, "\n";
          print -1807975017, "\n";
          lift_387 := lift_276;
        } else {
          var lift_388 := 'I';
          print lift_305, "\n";
          print lift_304, "\n";
          lift_388 := 'U';
        }
      } else {
        var lift_409 := {lift_46, (), lift_76, lift_35, lift_69};
        if (lift_71) {
          var lift_398 := [
            {lift_399, lift_403, lift_403},
            {lift_403},
            lift_408
          ];
          var lift_389 := true;
          lift_389 := lift_276;
          lift_390 := lift_392;
          lift_398 := lift_398;
          print lift_119, "\n";
        } else {
          print lift_54, "\n";
          lift_409 := lift_38;
        }
        lift_410 := lift_378;
        if (true) {
          var lift_427 := 'k';
          print lift_372, "\n";
          lift_411 := [lift_318, lift_333, lift_375, lift_375];
          lift_412 := {
            lift_426,
            (lift_5, lift_278),
            lift_413,
            lift_413,
            lift_419
          };
          lift_427 := lift_274;
          lift_428 := lift_127;
        } else {
          var lift_429 := 'O';
          print lift_375, "\n";
          lift_429 := lift_368;
          print lift_54, "\n";
          lift_430 := lift_310;
        }
      }
      var methoddefvar_431, methoddefvar_432 := lift_56(lift_375);
      {
        print lift_374, "\n";
        print methoddefvar_431, "\n";
      }
    } else {
      var lift_527 := (lift_128, lift_40, lift_41);
      var lift_517 := [lift_518, lift_522, lift_522, (lift_316, lift_372)];
      var lift_515 := lift_347;
      var lift_514 := {lift_449, lift_72, false, lift_443};
      var lift_502 := lift_317;
      var lift_501 := multiset{lift_502, lift_407, lift_310};
      var lift_489 := lift_347;
      var lift_438 := multiset{(lift_428, lift_28)};
      var lift_437 := multiset{lift_415, lift_422};
      var lift_436 := [lift_406];
      var lift_435 := (lift_305, "=D?SqojYf!V/iZK^LzVc\"C'*?W");
      var lift_434 := {lift_435, lift_435, (lift_304, lift_436)};
      var lift_433 := lift_434;
      lift_433 := (lift_433 * lift_434);
      if ((multiset{('b', false), lift_415, lift_415, lift_272, lift_273} in {
        lift_437,
        lift_438,
        lift_437,
        lift_438,
        lift_439
      })) {
        var methoddefvar_456 := lift_454(lift_324);
        {
          lift_489 := {lift_80, lift_346, lift_442, lift_78};
          print lift_318, "\n";
          print lift_54, "\n";
        }
        print lift_324, "\n";
        var methoddefvar_492 := lift_490(lift_317, lift_402);
        {
          print lift_54, "\n";
          print lift_304, "\n";
          print lift_124, "\n";
          lift_498 := false;
        }
        var methoddefvar_499 := lift_88(lift_52, -1695430835, lift_317);
        {
          lift_500 := methoddefvar_499;
          print lift_53, "\n";
          print lift_372, "\n";
          lift_501 := lift_503;
        }
      } else {
        var methoddefvar_505, methoddefvar_506 := lift_56(lift_318);
        {
          lift_507 := ();
        }
        print lift_306, "\n";
      }
      if (lift_508(lift_512, lift_372)) {
        var lift_516 := lift_414;
        var methoddefvar_513 := lift_454(lift_113);
        {
          lift_514 := lift_515;
          lift_516 := lift_312;
        }
        print lift_324, "\n";
        print lift_306, "\n";
        print lift_502, "\n";
      } else {
        lift_517 := lift_517;
        {
          print lift_316, "\n";
          lift_523 := lift_527;
        }
      }
      print safeSeqRef(lift_332, lift_54, lift_333), "\n";
      {
        {
          print lift_430, "\n";
        }
        var methoddefvar_530 := lift_528();
        {
          print lift_324, "\n";
        }
      }
    }
    var methoddefvar_533 := lift_88(
      (lift_504[1291027865] as int),
      |lift_290|,
      lift_400.1
    );
    {
      print 2133010322, "\n";
    }
    {
      var lift_553 := {lift_308, lift_320, lift_87};
      var lift_545 := (lift_404, lift_307);
      var lift_541 := {lift_299, lift_40, (), lift_69, lift_30};
      print safeSeqRef(lift_314, lift_316, lift_520), "\n";
      {
        var methoddefvar_534 := lift_210(lift_125, lift_318, 1972906663);
        {
          var lift_537 := (lift_32, lift_538);
          print -39852854, "\n";
          lift_535 := lift_537;
          print lift_430, "\n";
          print methoddefvar_534, "\n";
          lift_541 := (var tmpData : set<()> := {}; tmpData);
        }
        {
          lift_542 := 'L';
          print lift_305, "\n";
          print lift_375, "\n";
          print lift_310, "\n";
          print lift_372, "\n";
        }
      }
      lift_543 := (lift_367 <= lift_360 == lift_367);
      var methoddefvar_544 := lift_334(lift_54, lift_305);
      {
        lift_545 := lift_545;
        lift_546 := lift_546;
        lift_553 := lift_553;
        print lift_402, "\n";
        print lift_305, "\n";
      }
    }
    lift_554 := (lift_581.2 - lift_584 - ({
      lift_575,
      lift_575,
      lift_566,
      lift_586,
      lift_566
    } + lift_555 + lift_594));
    var methoddefvar_595 := lift_152(lift_500);
    {
      var lift_669 := {lift_423};
      var lift_667 := {lift_30, ()};
      var lift_666 := lift_34;
      var lift_643 := lift_416;
      var methoddefvar_598, methoddefvar_599 := lift_596();
      {
        var lift_629 := (var tmpData : seq<(bool, char, char)> := []; tmpData);
        var lift_628 := lift_525;
        lift_628 := lift_40;
        print 458005915, "\n";
        lift_629 := lift_629;
        print lift_564, "\n";
      }
      var methoddefvar_632, methoddefvar_633 := lift_630(lift_52, lift_325);
      {
        print -619227261, "\n";
        print lift_15, "\n";
        print lift_402, "\n";
        lift_643 := lift_365;
        print lift_572, "\n";
      }
      print lift_113, "\n";
      if (lift_28) {
        var lift_664 := lift_348;
        var lift_659 := multiset{lift_652, lift_660};
        lift_644 := lift_644;
        lift_659 := lift_662;
        print lift_54, "\n";
        lift_664 := lift_647;
      } else {
        var lift_670 := lift_380;
        lift_665 := lift_519;
        lift_666 := lift_667;
        lift_668 := lift_312;
        lift_669 := lift_670;
      }
    }
  }
  print 
    |(safeSeqDrop(lift_332, lift_119) + lift_315 + safeSeqSet(
      lift_332,
      lift_520,
      lift_374
    ))|,
    "\n";
}


