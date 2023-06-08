//
//
//
//
//
//

// Seed: -7048234092379291407
// This is a RANDOMLY GENERATED PROGRAM.
// Fuzzer: dafny
// Version: dafny, xsmith 2.0.5 (38f1d83), in Racket 8.9 (vm-type chez-scheme)
// Options: --with-print-constrained true --dafny-syntax true --seed -7048234092379291407
// Seed: -7048234092379291407
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
function lift_667 (arg_669 : int, arg_670 : char) : int
{
  
  -1681729980
}

method lift_527 ()
  returns (arg_530 : int)
  requires (true)
  ensures (true)
{
  arg_530 := -165404037;
  {
    var lift_537 := arg_530;
    var lift_536 := 1636972477;
    var lift_535 := false;
    var lift_534 := lift_535;
    var lift_533 := lift_534;
    var lift_532 := ();
    var lift_531 := ();
    print arg_530, "\n";
    lift_531 := lift_532;
    lift_533 := lift_533;
    lift_536 := lift_537;
    print arg_530, "\n";
  }
}

method lift_472 (arg_475 : int, arg_476 : int, arg_477 : int)
  returns (arg_478 : int)
  requires (true)
  ensures (true)
{
  arg_478 := -1176965661;
  {
    var lift_486 := true;
    var lift_485 := true;
    var lift_484 := [lift_485, lift_486];
    var lift_483 := true;
    var lift_482 := true;
    var lift_481 := false;
    var lift_480 := lift_481;
    var lift_479 := [lift_480, lift_482, lift_483, lift_482];
    lift_479 := lift_484;
    print arg_477, "\n";
  }
}

method lift_429 ()
  returns (arg_433 : int, arg_434 : int)
  requires (true)
  ensures (true)
{
  arg_433 := -214148873;
  arg_434 := -1438798476;
  {
    var lift_437 := '?';
    var lift_436 := true;
    var lift_435 := 'W';
    lift_435 := lift_435;
    lift_436 := lift_436;
    lift_437 := 'D';
  }
}

method lift_422 (arg_425 : int)
  returns (arg_426 : int)
  requires (true)
  ensures (true)
{
  arg_426 := -498710503;
  {
    var lift_427 := -277319792;
    print lift_427, "\n";
    print arg_425, "\n";
  }
}

method lift_326 (arg_329 : int, arg_330 : int)
  returns (arg_331 : int)
  requires (true)
  ensures (true)
{
  arg_331 := 398313349;
  {
    var lift_341 := 'P';
    var lift_340 := (lift_341, arg_329);
    var lift_339 := lift_340;
    var lift_338 := 'F';
    var lift_337 := lift_338;
    var lift_336 := lift_337;
    var lift_335 := (lift_336, arg_331);
    var lift_334 := 'r';
    var lift_333 := (lift_334, -745416025);
    var lift_332 := [lift_333, lift_335, lift_333, lift_339];
    print arg_329, "\n";
    lift_332 := lift_332;
  }
}

method lift_311 (arg_315 : int, arg_316 : int, arg_317 : int)
  returns (arg_318 : int, arg_319 : int)
  requires (true)
  ensures (true)
{
  arg_318 := -1257698345;
  arg_319 := 1537069669;
  {
    var lift_323 := '|';
    var lift_322 := [lift_323];
    var lift_321 := lift_322;
    var lift_320 := "=JdQBZxE~Cy+y;SQ/vd/vI'yMeeFxoMlcOA";
    print arg_319, "\n";
    print arg_316, "\n";
    print arg_319, "\n";
    lift_320 := lift_321;
    print 626319184, "\n";
  }
}

method lift_295 (arg_298 : int)
  returns (arg_299 : int)
  requires (true)
  ensures (true)
{
  arg_299 := 1642295824;
  {
    var lift_308 := -1850963154;
    var lift_307 := arg_298;
    var lift_306 := true;
    var lift_305 := ':';
    var lift_304 := (arg_298, lift_305, lift_306);
    var lift_303 := [lift_304];
    var lift_302 := 'l';
    var lift_301 := (-1694684667, lift_302, false);
    var lift_300 := [lift_301, lift_301];
    lift_300 := lift_303;
    print arg_299, "\n";
    print arg_299, "\n";
    lift_307 := lift_308;
    print arg_299, "\n";
  }
}

method lift_266 (arg_270 : int, arg_271 : int, arg_272 : int)
  returns (arg_273 : int, arg_274 : int)
  requires (true)
  ensures (true)
{
  arg_273 := 1647211028;
  arg_274 := 1130114180;
  {
    var lift_278 := 'X';
    var lift_277 := '|';
    var lift_276 := 'X';
    var lift_275 := multiset{lift_276, lift_277, lift_276, lift_278, lift_278};
    lift_275 := (var tmpData : multiset<char> := multiset{}; tmpData);
  }
}

method lift_254 ()
  returns (arg_257 : int)
  requires (true)
  ensures (true)
{
  arg_257 := 1515218160;
  {
    var lift_258 := 1263736812;
    print lift_258, "\n";
    print arg_257, "\n";
  }
}

method lift_197 ()
  returns (arg_201 : int, arg_202 : int)
  requires (true)
  ensures (true)
{
  arg_201 := 2057614172;
  arg_202 := -1620960222;
  {
    var lift_224 := false;
    var lift_223 := lift_224;
    var lift_222 := lift_223;
    var lift_221 := -774492427;
    var lift_220 := (lift_221, lift_222, lift_222);
    var lift_219 := ();
    var lift_218 := ();
    var lift_217 := (lift_218, lift_219, arg_202);
    var lift_216 := multiset{lift_217};
    var lift_215 := lift_216;
    var lift_214 := lift_215;
    var lift_213 := (lift_214, arg_202, lift_220);
    var lift_212 := lift_213;
    var lift_211 := false;
    var lift_210 := true;
    var lift_209 := (arg_202, lift_210, lift_211);
    var lift_208 := ();
    var lift_207 := lift_208;
    var lift_206 := (lift_207, lift_207, arg_202);
    var lift_205 := multiset{lift_206, lift_206};
    var lift_204 := lift_205;
    var lift_203 := (lift_204, arg_201, lift_209);
    print arg_201, "\n";
    lift_203 := lift_212;
  }
}

method lift_178 (arg_182 : int)
  returns (arg_183 : int, arg_184 : int)
  requires (true)
  ensures (true)
{
  arg_183 := 124396338;
  arg_184 := -2002263294;
  {
    var lift_194 := -1712110506;
    var lift_193 := true;
    var lift_192 := (lift_193, lift_194);
    var lift_191 := false;
    var lift_190 := (lift_191, lift_192);
    var lift_189 := false;
    var lift_188 := (lift_189, arg_184);
    var lift_187 := (true, lift_188);
    var lift_186 := {lift_187, lift_190};
    var lift_185 := ();
    lift_185 := lift_185;
    lift_186 := lift_186;
  }
}

method lift_158 ()
  returns (arg_161 : int)
  requires (true)
  ensures (true)
{
  arg_161 := 279739553;
  {
    var lift_176 := false;
    var lift_175 := (var tmpData : set<(char, int, int)> := {}; tmpData);
    var lift_174 := lift_175;
    var lift_173 := 'b';
    var lift_172 := (lift_173, arg_161, arg_161);
    var lift_171 := {lift_172, lift_172, lift_172};
    var lift_170 := ':';
    var lift_169 := (lift_170, arg_161, arg_161);
    var lift_168 := 949112660;
    var lift_167 := -2090313637;
    var lift_166 := 'f';
    var lift_165 := {(lift_166, lift_167, lift_168), lift_169};
    var lift_164 := multiset{lift_165, lift_171, lift_171, lift_174, lift_171};
    var lift_163 := (lift_164, lift_176);
    var lift_162 := (var tmpData : set<(bool, multiset<bool>, ())> := {}; tmpData);
    lift_162 := lift_162;
    lift_163 := (lift_164, lift_176);
    print lift_167, "\n";
    print lift_168, "\n";
    print lift_168, "\n";
  }
}

method lift_148 (arg_152 : int)
  returns (arg_153 : int, arg_154 : int)
  requires (true)
  ensures (true)
{
  arg_153 := -2106562973;
  arg_154 := 1928376636;
  {
    var lift_155 := arg_153;
    print arg_154, "\n";
    print arg_152, "\n";
    print arg_153, "\n";
    print arg_153, "\n";
    lift_155 := arg_154;
  }
}

method lift_115 (arg_118 : int)
  returns (arg_119 : int)
  requires (true)
  ensures (true)
{
  arg_119 := 691664860;
  {
    var lift_144 := 'q';
    var lift_143 := false;
    var lift_142 := false;
    var lift_141 := ();
    var lift_140 := (arg_119, lift_141, lift_142);
    var lift_139 := true;
    var lift_138 := ();
    var lift_137 := (arg_119, lift_138, lift_139);
    var lift_136 := lift_137;
    var lift_135 := (var tmpData : multiset<(int, (), bool)> := multiset{}; tmpData);
    var lift_134 := true;
    var lift_133 := ();
    var lift_132 := arg_119;
    var lift_131 := (lift_132, lift_133, lift_134);
    var lift_130 := lift_131;
    var lift_129 := [
      multiset{lift_130},
      lift_135,
      multiset{lift_130, lift_136, lift_136, lift_140, (arg_119, (), lift_143)},
      lift_135,
      multiset{lift_130, lift_137, lift_136, lift_136}
    ];
    var lift_128 := true;
    var lift_127 := lift_128;
    var lift_126 := ();
    var lift_125 := lift_126;
    var lift_124 := lift_125;
    var lift_123 := lift_124;
    var lift_122 := (arg_119, lift_123, lift_127);
    var lift_121 := multiset{lift_122};
    var lift_120 := [lift_121, lift_121];
    lift_120 := lift_129;
    lift_144 := lift_144;
  }
}

method lift_106 ()
  returns (arg_110 : int, arg_111 : int)
  requires (true)
  ensures (true)
{
  arg_110 := -552899399;
  arg_111 := -1187249070;
  {
    var lift_113 := ();
    var lift_112 := {lift_113};
    print 580185980, "\n";
    lift_112 := lift_112;
  }
}

method lift_83 (arg_86 : int, arg_87 : int, arg_88 : int)
  returns (arg_89 : int)
  requires (true)
  ensures (true)
{
  arg_89 := 118043067;
  {
    var lift_90 := -1344132949;
    lift_90 := -1541046839;
  }
}

function lift_32 (
  arg_34 : bool,
  arg_35 : int,
  arg_36 : (bool, bool, char),
  arg_37 : char,
  arg_38 : multiset<set<bool>>
) : set<(multiset<bool>, (), multiset<char>)>
{
  var lift_56 := ();
  var lift_55 := false;
  var lift_54 := false;
  var lift_53 := 't';
  var lift_52 := lift_53;
  var lift_51 := 'o';
  var lift_50 := multiset{lift_51, '+', '|', lift_52};
  var lift_49 := lift_50;
  var lift_48 := ();
  var lift_47 := (var tmpData : multiset<bool> := multiset{}; tmpData);
  var lift_46 := lift_47;
  var lift_45 := (lift_46, lift_48, lift_49);
  var lift_44 := lift_45;
  var lift_43 := lift_44;
  var lift_42 := lift_43;
  var lift_41 := {
    lift_42,
    lift_45,
    (multiset{lift_54, lift_54, lift_55, lift_55, lift_55}, lift_56, lift_49),
    lift_44,
    lift_43
  };
  var lift_40 := lift_41;
  var lift_39 := lift_40;
  lift_39
}

method Main () {
  var lift_760 := 'E';
  var lift_759 := true;
  var lift_758 := lift_759;
  var lift_757 := 1808715333;
  var lift_756 := (lift_757, lift_758, lift_760);
  var lift_753 := 'd';
  var lift_752 := lift_753;
  var lift_751 := multiset{lift_752, 'Y', lift_752};
  var lift_747 := '!';
  var lift_743 := 237341911;
  var lift_742 := -2138965472;
  var lift_741 := [lift_742, lift_742, lift_742, lift_742, lift_743];
  var lift_734 := 'k';
  var lift_732 := ();
  var lift_731 := lift_732;
  var lift_728 := ();
  var lift_727 := lift_728;
  var lift_726 := lift_727;
  var lift_723 := true;
  var lift_722 := (lift_723, false);
  var lift_717 := ();
  var lift_716 := lift_717;
  var lift_715 := lift_716;
  var lift_714 := false;
  var lift_713 := 'd';
  var lift_712 := (lift_713, lift_714);
  var lift_711 := false;
  var lift_710 := 'b';
  var lift_709 := -588262295;
  var lift_708 := lift_709;
  var lift_707 := (lift_708, lift_710);
  var lift_706 := (lift_707, lift_711, lift_712);
  var lift_705 := true;
  var lift_704 := '~';
  var lift_703 := (lift_704, lift_705);
  var lift_702 := false;
  var lift_701 := '%';
  var lift_700 := (1025119676, lift_701);
  var lift_699 := (lift_700, lift_702, lift_703);
  var lift_696 := true;
  var lift_694 := 'W';
  var lift_693 := lift_694;
  var lift_690 := -399947069;
  var lift_689 := -1911894219;
  var lift_688 := [lift_689, lift_689, lift_690, lift_689, lift_690];
  var lift_685 := 721485879;
  var lift_684 := true;
  var lift_683 := lift_684;
  var lift_682 := (lift_683, lift_685);
  var lift_681 := lift_682;
  var lift_680 := false;
  var lift_679 := true;
  var lift_678 := true;
  var lift_677 := lift_678;
  var lift_676 := {lift_677, lift_679, lift_679, lift_680, true};
  var lift_675 := (lift_676, lift_681);
  var lift_674 := lift_675;
  var lift_666 := ();
  var lift_665 := ();
  var lift_664 := multiset{lift_665, lift_666, lift_666, ()};
  var lift_663 := (lift_664, lift_667);
  var lift_660 := ();
  var lift_659 := ();
  var lift_658 := [lift_659, lift_660, ()];
  var lift_653 := true;
  var lift_652 := lift_653;
  var lift_651 := -1937333022;
  var lift_650 := (lift_651, lift_652);
  var lift_646 := ();
  var lift_643 := ();
  var lift_642 := true;
  var lift_641 := 'C';
  var lift_640 := lift_641;
  var lift_639 := lift_640;
  var lift_638 := (lift_639, lift_642, lift_643);
  var lift_637 := ();
  var lift_636 := lift_637;
  var lift_635 := true;
  var lift_634 := '@';
  var lift_633 := (lift_634, lift_635, lift_636);
  var lift_632 := false;
  var lift_631 := false;
  var lift_630 := [lift_631, lift_632, lift_631];
  var lift_627 := '~';
  var lift_626 := lift_627;
  var lift_625 := -779434517;
  var lift_624 := lift_625;
  var lift_623 := (lift_624, lift_626);
  var lift_622 := '+';
  var lift_621 := -1049009481;
  var lift_620 := lift_621;
  var lift_619 := -1393884465;
  var lift_618 := multiset{
    lift_619,
    -1263703284,
    lift_619,
    283047568,
    lift_620
  };
  var lift_617 := (lift_618, (lift_622, lift_622), lift_623);
  var lift_614 := 'l';
  var lift_613 := (lift_614, lift_614);
  var lift_612 := lift_613;
  var lift_610 := 'W';
  var lift_609 := true;
  var lift_608 := (lift_609, lift_610);
  var lift_603 := ':';
  var lift_602 := ((), lift_603);
  var lift_598 := (var tmpData : multiset<bool> := multiset{}; tmpData);
  var lift_597 := false;
  var lift_596 := 'J';
  var lift_595 := lift_596;
  var lift_594 := (lift_595, lift_597);
  var lift_592 := 254542038;
  var lift_591 := (lift_592, ('&', false));
  var lift_590 := true;
  var lift_589 := '*';
  var lift_588 := (lift_589, lift_590);
  var lift_585 := true;
  var lift_584 := '+';
  var lift_583 := (lift_584, lift_585);
  var lift_580 := '"';
  var lift_579 := (-426738440, lift_580);
  var lift_578 := false;
  var lift_577 := (lift_578, lift_579);
  var lift_574 := ();
  var lift_573 := ();
  var lift_572 := lift_573;
  var lift_571 := ();
  var lift_570 := [lift_571, lift_572, lift_573, lift_574];
  var lift_562 := false;
  var lift_561 := true;
  var lift_560 := {lift_561, lift_561, lift_561, lift_562};
  var lift_550 := (var tmpData : multiset<()> := multiset{}; tmpData);
  var lift_547 := ();
  var lift_545 := -1063722999;
  var lift_544 := 2026998813;
  var lift_543 := multiset{lift_544, lift_545, lift_545};
  var lift_523 := ();
  var lift_516 := false;
  var lift_515 := 'Z';
  var lift_514 := 'r';
  var lift_513 := (lift_514, lift_515, lift_516);
  var lift_512 := (lift_513, 'C');
  var lift_511 := 'L';
  var lift_510 := true;
  var lift_509 := 'f';
  var lift_508 := ((lift_509, lift_509, lift_510), lift_511);
  var lift_507 := true;
  var lift_506 := 'r';
  var lift_505 := 'F';
  var lift_504 := (lift_505, lift_506, lift_507);
  var lift_503 := lift_504;
  var lift_502 := (lift_503, lift_505);
  var lift_501 := true;
  var lift_500 := 'K';
  var lift_499 := multiset{
    ((lift_500, lift_500, lift_501), lift_500),
    lift_502,
    lift_508,
    lift_508
  };
  var lift_498 := true;
  var lift_497 := '?';
  var lift_496 := '!';
  var lift_495 := lift_496;
  var lift_494 := (lift_495, lift_497, lift_498);
  var lift_493 := (lift_494, lift_495);
  var lift_492 := multiset{lift_493, lift_493, lift_493};
  var lift_490 := true;
  var lift_489 := false;
  var lift_488 := lift_489;
  var lift_487 := {lift_488, lift_490, lift_490};
  var lift_470 := 'j';
  var lift_469 := lift_470;
  var lift_468 := lift_469;
  var lift_467 := multiset{lift_468};
  var lift_466 := (var tmpData : multiset<char> := multiset{}; tmpData);
  var lift_465 := lift_466;
  var lift_464 := multiset{lift_465, lift_467, lift_465, lift_466, lift_465};
  var lift_463 := lift_464;
  var lift_462 := lift_463;
  var lift_459 := 's';
  var lift_458 := multiset{lift_459};
  var lift_457 := 'B';
  var lift_456 := multiset{'*', lift_457};
  var lift_455 := multiset{
    lift_456,
    lift_458,
    lift_458,
    multiset{lift_457, lift_459, lift_459}
  };
  var lift_454 := (var tmpData : multiset<multiset<char>> := multiset{}; tmpData);
  var lift_453 := lift_454;
  var lift_452 := '>';
  var lift_451 := ';';
  var lift_450 := multiset{lift_451, lift_451, lift_451, lift_452};
  var lift_449 := lift_450;
  var lift_448 := lift_449;
  var lift_447 := 'a';
  var lift_446 := lift_447;
  var lift_445 := lift_446;
  var lift_444 := lift_445;
  var lift_443 := lift_444;
  var lift_442 := multiset{lift_443, lift_445, lift_446, lift_444};
  var lift_441 := multiset{
    multiset{lift_442, lift_448, lift_450, lift_450},
    multiset{lift_449, lift_450, lift_450},
    lift_453,
    lift_453,
    lift_455
  };
  var lift_421 := 'h';
  var lift_420 := lift_421;
  var lift_419 := 'y';
  var lift_418 := -2089144042;
  var lift_417 := (lift_418, lift_419, lift_420);
  var lift_416 := ('c', lift_417);
  var lift_415 := -1893780454;
  var lift_414 := 'H';
  var lift_413 := 'x';
  var lift_412 := ';';
  var lift_411 := safeSeqRef(
    [lift_412, lift_413, lift_414, 'O'],
    lift_415,
    'L'
  );
  var lift_408 := 'A';
  var lift_407 := 457215322;
  var lift_406 := true;
  var lift_405 := (lift_406, lift_407, lift_408);
  var lift_397 := 'W';
  var lift_396 := {lift_397};
  var lift_395 := 'R';
  var lift_394 := lift_395;
  var lift_393 := 'a';
  var lift_392 := {lift_393, 'G', lift_394, '=', lift_395};
  var lift_391 := '~';
  var lift_390 := {lift_391};
  var lift_389 := false;
  var lift_388 := lift_389;
  var lift_387 := 'a';
  var lift_386 := (lift_387, lift_388, lift_390);
  var lift_385 := false;
  var lift_384 := 457706436;
  var lift_383 := lift_384;
  var lift_382 := lift_383;
  var lift_381 := lift_382;
  var lift_380 := -270925583;
  var lift_379 := (lift_380, lift_381, lift_385);
  var lift_378 := 't';
  var lift_377 := '\'';
  var lift_376 := lift_377;
  var lift_375 := lift_376;
  var lift_374 := {lift_375, lift_378};
  var lift_373 := (lift_374, lift_379);
  var lift_372 := 9618699;
  var lift_371 := '"';
  var lift_370 := lift_371;
  var lift_369 := lift_370;
  var lift_368 := lift_369;
  var lift_367 := {lift_368, 'm'};
  var lift_366 := lift_367;
  var lift_365 := -1729071168;
  var lift_364 := (lift_365, lift_366);
  var lift_363 := lift_364;
  var lift_362 := lift_363;
  var lift_361 := multiset{lift_362, (lift_372, lift_366), lift_364};
  var lift_356 := true;
  var lift_355 := -903307211;
  var lift_352 := 337688003;
  var lift_351 := lift_352;
  var lift_350 := 1259716853;
  var lift_349 := lift_350;
  var lift_347 := "B%AM@kBX:GYW~";
  var lift_309 := ();
  var lift_291 := ();
  var lift_288 := -509832754;
  var lift_287 := lift_288;
  var lift_286 := 1636141267;
  var lift_285 := lift_286;
  var lift_284 := lift_285;
  var lift_261 := ();
  var lift_260 := ();
  var lift_259 := multiset{lift_260, lift_260, lift_261};
  var lift_253 := 'O';
  var lift_252 := {lift_253};
  var lift_251 := true;
  var lift_250 := [lift_251];
  var lift_247 := false;
  var lift_246 := lift_247;
  var lift_245 := lift_246;
  var lift_244 := false;
  var lift_243 := [true, lift_244, lift_244, lift_244, lift_245];
  var lift_242 := false;
  var lift_241 := lift_242;
  var lift_240 := lift_241;
  var lift_239 := (lift_240, (), lift_243);
  var lift_236 := ('&', false, -2029311396);
  var lift_235 := lift_236;
  var lift_230 := 697639257;
  var lift_229 := 'G';
  var lift_228 := (497004363, lift_229, lift_230);
  var lift_147 := false;
  var lift_100 := 'O';
  var lift_99 := (var tmpData : multiset<char> := multiset{}; tmpData);
  var lift_98 := (lift_99, lift_100, lift_100);
  var lift_97 := 'S';
  var lift_96 := 'P';
  var lift_95 := '|';
  var lift_94 := (multiset{lift_95, lift_96, lift_97}, 'w', lift_95);
  var lift_93 := multiset{lift_94, lift_98};
  var lift_71 := (var tmpData : set<bool> := {}; tmpData);
  var lift_70 := false;
  var lift_69 := lift_70;
  var lift_68 := true;
  var lift_67 := {lift_68, true, lift_69, false};
  var lift_66 := lift_67;
  var lift_65 := true;
  var lift_64 := true;
  var lift_63 := lift_64;
  var lift_62 := lift_63;
  var lift_61 := multiset{
    {true, lift_62, lift_64, lift_65, lift_63},
    lift_66,
    lift_71,
    lift_67
  };
  var lift_60 := 'D';
  var lift_59 := false;
  var lift_58 := lift_59;
  var lift_57 := (lift_58, lift_59, lift_60);
  var lift_31 := 'N';
  var lift_30 := lift_31;
  var lift_28 := false;
  var lift_27 := lift_28;
  var lift_26 := lift_27;
  var lift_25 := (
    (var tmpData : multiset<bool> := multiset{}; tmpData),
    lift_26
  );
  var lift_24 := ();
  var lift_23 := false;
  var lift_22 := ();
  var lift_21 := (lift_22, lift_23, lift_24);
  var lift_20 := ();
  var lift_19 := (lift_20, false, ());
  var lift_18 := {lift_19, lift_21};
  var lift_17 := lift_18;
  var lift_16 := [lift_17, lift_18, lift_17];
  var lift_15 := lift_16;
  var lift_14 := -370578502;
  var lift_13 := lift_14;
  var lift_12 := true;
  var lift_11 := ();
  var lift_10 := (lift_11, lift_12, lift_11);
  var lift_9 := {lift_10, ((), false, lift_11)};
  var lift_8 := false;
  var lift_7 := ();
  var lift_6 := lift_7;
  var lift_5 := (lift_6, lift_8, lift_7);
  var lift_4 := {lift_5};
  var lift_3 := [
    (var tmpData : set<((), bool, ())> := {}; tmpData),
    lift_4,
    lift_9
  ];
  var lift_2 := lift_3;
  var lift_1 := lift_2;
  if (((safeSeqRef(lift_1, lift_13, lift_9) !! ({
    lift_10
  } * lift_9) !! safeSeqRef(lift_15, lift_13, lift_17)) !in lift_25.0)) {
    var lift_345 := (lift_28, lift_26, lift_96);
    var lift_344 := {lift_57, lift_345};
    var lift_294 := (false, lift_31, [lift_58, lift_64, lift_251, true]);
    var lift_292 := (var tmpData : seq<int> := []; tmpData);
    var lift_279 := [lift_22, lift_20, lift_20];
    var lift_249 := (lift_62, lift_6, lift_250);
    var lift_238 := (lift_20, lift_228, (lift_100, lift_28, lift_13));
    var lift_234 := (lift_24, lift_228, lift_235);
    var lift_233 := lift_234;
    var lift_232 := lift_14;
    var lift_231 := (lift_31, lift_62, lift_232);
    var lift_227 := (lift_22, lift_228, lift_231);
    var lift_226 := multiset{lift_227, lift_233};
    var lift_156 := 'R';
    var lift_105 := (lift_99, lift_12, lift_22);
    var lift_92 := (var tmpData : set<int> := {}; tmpData);
    var lift_82 := 1628917944;
    var lift_80 := {lift_60, lift_60};
    var lift_79 := {lift_80, lift_80, lift_80, lift_80, lift_80};
    var lift_29 := 'f';
    if (((
      (var tmpData : multiset<bool> := multiset{}; tmpData),
      lift_24,
      multiset{'y', lift_29, lift_30, 'q', lift_30}
    ) !in lift_32(lift_27, -720819361, lift_57, lift_60, lift_61))) {
      var lift_293 := (lift_65, '+', lift_243);
      var lift_265 := lift_71;
      var lift_196 := (multiset{lift_7, ()}, lift_7);
      var lift_146 := [lift_14, lift_14];
      var lift_104 := lift_105;
      var lift_91 := (lift_31, lift_60, lift_92);
      var lift_74 := -1101483846;
      var lift_73 := [lift_74];
      var lift_72 := (lift_73, lift_30, lift_26);
      if (lift_72.2) {
        var lift_78 := lift_79;
        {
          var lift_81 := {lift_65};
          var lift_77 := {lift_30};
          var lift_76 := (var tmpData : set<char> := {}; tmpData);
          var lift_75 := {lift_76, lift_77, lift_77, lift_76};
          lift_75 := lift_78;
          lift_81 := (var tmpData : set<bool> := {}; tmpData);
          print lift_82, "\n";
        }
      } else {
        var lift_145 := 'j';
        var lift_103 := lift_104;
        var lift_102 := (lift_99, false, lift_6);
        var methoddefvar_85 := lift_83(lift_14, lift_14, lift_74);
        {
          var lift_101 := lift_94;
          lift_91 := lift_91;
          lift_93 := multiset{lift_101, lift_101};
          lift_102 := lift_103;
        }
        var methoddefvar_108, methoddefvar_109 := lift_106();
        {
          var lift_114 := -547968955;
          print lift_74, "\n";
          lift_114 := lift_114;
        }
        var methoddefvar_117 := lift_115(lift_14);
        {
          lift_145 := lift_95;
          lift_146 := lift_146;
        }
        lift_147 := lift_65;
        var methoddefvar_150, methoddefvar_151 := lift_148(lift_13);
        {
          var lift_157 := {methoddefvar_150, lift_13, lift_14, 956349983};
          print methoddefvar_150, "\n";
          print 613113869, "\n";
          lift_156 := lift_97;
          print lift_14, "\n";
          lift_157 := lift_92;
        }
      }
      {
        var lift_195 := 1564750263;
        var lift_177 := true;
        print lift_13, "\n";
        var methoddefvar_160 := lift_158();
        {
          lift_177 := lift_12;
        }
        var methoddefvar_180, methoddefvar_181 := lift_178(lift_14);
        {
          print lift_14, "\n";
          print methoddefvar_180, "\n";
          print lift_14, "\n";
          lift_195 := methoddefvar_180;
          lift_196 := lift_196;
        }
      }
      var methoddefvar_199, methoddefvar_200 := lift_197();
      {
        print lift_74, "\n";
      }
      if ((lift_61 == multiset{lift_71})) {
        var lift_263 := false;
        var lift_262 := multiset{lift_22};
        var lift_225 := multiset{(), lift_6, lift_6};
        {
          var lift_248 := lift_249;
          var lift_237 := multiset{
            lift_233,
            lift_238,
            (lift_6, lift_228, lift_236)
          };
          lift_225 := lift_225;
          lift_226 := lift_237;
          lift_239 := lift_248;
          lift_252 := lift_252;
        }
        var methoddefvar_256 := lift_254();
        {
          print 2023607303, "\n";
          print lift_232, "\n";
          lift_259 := lift_262;
          lift_263 := lift_68;
        }
        var methoddefvar_264 := lift_115(lift_74);
        {
          lift_265 := {lift_68, false, lift_246, lift_8, lift_64};
        }
        print lift_230, "\n";
        var methoddefvar_268, methoddefvar_269 := lift_266(
          lift_82,
          lift_74,
          lift_13
        );
        {
          print lift_232, "\n";
          lift_279 := [lift_261, lift_22, lift_24, lift_20];
        }
      } else {
        var methoddefvar_280 := lift_254();
        {
          var lift_281 := true;
          lift_281 := lift_63;
        }
        var methoddefvar_282 := lift_254();
        {
          print 1813434757, "\n";
          print lift_232, "\n";
          print -1426717217, "\n";
          print lift_82, "\n";
          print lift_13, "\n";
        }
        var methoddefvar_283 := lift_115(lift_82);
        {
          print lift_13, "\n";
          print 861114858, "\n";
          lift_284 := lift_14;
          lift_287 := lift_287;
          print lift_288, "\n";
        }
        var methoddefvar_289, methoddefvar_290 := lift_266(
          lift_288,
          lift_74,
          -1572601494
        );
        {
          lift_291 := lift_261;
          print -178322714, "\n";
          lift_292 := lift_292;
          print lift_288, "\n";
          lift_293 := lift_294;
        }
        {
          print lift_230, "\n";
        }
      }
      var methoddefvar_297 := lift_295(416159732);
      {
        var lift_310 := [lift_230, lift_232, lift_13];
        lift_309 := lift_291;
        lift_310 := lift_292;
      }
    } else {
      if ((lift_31 == 'O' >= lift_229)) {
        var methoddefvar_313, methoddefvar_314 := lift_311(
          lift_14,
          lift_288,
          lift_287
        );
        {
          var lift_325 := (lift_236, lift_260);
          var lift_324 := (var tmpData : set<(int, int, bool)> := {}; tmpData);
          lift_324 := lift_324;
          lift_325 := lift_325;
          print lift_232, "\n";
        }
      } else {
        var lift_348 := true;
        var lift_346 := (lift_347, lift_259, lift_68);
        var lift_343 := [lift_344];
        var methoddefvar_328 := lift_326(lift_82, lift_288);
        {
          print lift_82, "\n";
          print lift_286, "\n";
        }
        var methoddefvar_342 := lift_326(-1410436678, lift_288);
        {
          lift_343 := lift_343;
        }
        lift_346 := lift_346;
        {
          lift_348 := lift_244;
          lift_349 := lift_230;
        }
      }
      lift_351 := |lift_61|;
      var methoddefvar_353, methoddefvar_354 := lift_266(
        473571466,
        lift_355,
        lift_355
      );
      {
        lift_356 := false;
        print lift_352, "\n";
        print lift_286, "\n";
      }
    }
  } else {
    var lift_359 := false;
    {
      var methoddefvar_357, methoddefvar_358 := lift_311(
        lift_350,
        -1559686920,
        lift_349
      );
      {
        print 1228468747, "\n";
        print 177875522, "\n";
        lift_359 := true;
      }
      var methoddefvar_360 := lift_326(-736082521, lift_352);
      {
        print lift_287, "\n";
        print lift_355, "\n";
        print lift_350, "\n";
      }
    }
  }
  if ((!(((
    lift_349,
    {'F'}
  ) in lift_361)) <== (lift_373.0 >= lift_386.2 > (lift_252 * lift_392 * lift_396)))) {
    var lift_517 := multiset{
      lift_508,
      (lift_513, lift_414),
      lift_502,
      lift_493,
      (lift_494, lift_253)
    };
    var lift_491 := [
      lift_492,
      lift_499,
      lift_499,
      multiset{lift_493, lift_502, lift_502, (lift_503, 'm')}
    ];
    var lift_438 := -1971489019;
    var lift_410 := (lift_27, lift_369);
    var lift_409 := lift_410;
    var lift_404 := (lift_405, lift_409);
    var lift_399 := (lift_351, lift_351);
    var lift_398 := (lift_247, lift_391, lift_399);
    print 
      (1149895214, (var tmpData : set<char> := {}; tmpData), lift_235).2.2,
      "\n";
    print lift_398.2.1, "\n";
    {
      var lift_403 := (lift_309, lift_30, lift_404);
      var lift_402 := (lift_70, lift_391);
      var lift_401 := (lift_28, lift_372, lift_96);
      var lift_400 := (lift_401, lift_402);
      lift_400 := lift_403.2;
    }
    lift_411 := lift_416.1.2;
    {
      var lift_439 := lift_6;
      if ((lift_9 == lift_18)) {
        var lift_428 := multiset{lift_58, lift_406, lift_23, lift_245};
        print lift_352, "\n";
        var methoddefvar_424 := lift_422(-1388586621);
        {
          lift_428 := lift_428;
          print lift_418, "\n";
        }
      } else {
        var lift_461 := lift_462;
        var methoddefvar_431, methoddefvar_432 := lift_429();
        {
          lift_438 := 293944199;
          print lift_230, "\n";
        }
        lift_439 := lift_260;
        if (lift_63) {
          var lift_440 := lift_13;
          lift_440 := lift_380;
        } else {
          var lift_471 := ();
          var lift_460 := multiset{
            lift_461,
            lift_454,
            lift_463,
            lift_463,
            lift_462
          };
          lift_441 := lift_460;
          lift_471 := ();
          print lift_407, "\n";
        }
      }
      var methoddefvar_474 := lift_472(lift_384, lift_407, lift_381);
      {
        print lift_352, "\n";
        lift_487 := {lift_242, false, lift_69, lift_8, lift_356};
        lift_491 := [
          multiset{
            lift_508,
            lift_512,
            ((lift_378, 'B', lift_241), lift_253),
            lift_493,
            lift_508
          },
          multiset{(lift_494, '&')},
          lift_499,
          multiset{lift_512, lift_508, lift_512, lift_508, lift_508},
          lift_517
        ];
      }
      var methoddefvar_518 := lift_158();
      {
        print lift_287, "\n";
        print lift_285, "\n";
        print lift_418, "\n";
        print 1247553275, "\n";
        print lift_13, "\n";
      }
    }
  } else {
    var lift_656 := lift_574;
    var lift_649 := lift_650;
    var lift_605 := {1124135329, lift_286, lift_350, lift_372, lift_418};
    var lift_593 := multiset{
      (lift_418, lift_588),
      (lift_351, lift_594),
      lift_591
    };
    var lift_587 := (lift_382, lift_588);
    var lift_582 := (lift_284, lift_583);
    var lift_566 := lift_20;
    var lift_563 := (433232611, lift_544);
    var lift_559 := (lift_365, lift_496, lift_371);
    var lift_558 := (lift_559, lift_560, lift_563);
    var lift_557 := multiset{-2108605186, lift_284, 922014001};
    var lift_549 := (multiset{lift_260}, lift_418);
    var lift_542 := (lift_543, lift_28);
    var lift_541 := lift_542;
    var lift_526 := lift_383;
    var lift_525 := lift_12;
    var lift_521 := (var tmpData : set<multiset<(bool, int, int)>> := {}; tmpData);
    var lift_519 := (var tmpData : multiset<multiset<char>> := multiset{}; tmpData);
    if ((safeSeqRef(
      [
        (var tmpData : multiset<char> := multiset{}; tmpData),
        lift_442,
        lift_467
      ],
      -470520717,
      lift_449
    ) in (lift_463 - lift_519))) {
      var lift_548 := [lift_24, lift_260, lift_22];
      var lift_522 := (lift_8, lift_521);
      var lift_520 := (false, lift_521);
      lift_520 := safeSeqRef([(lift_241, lift_521)], lift_381, lift_522);
      {
        if (lift_12) {
          print lift_288, "\n";
          print lift_284, "\n";
        } else {
          lift_523 := lift_6;
          print lift_284, "\n";
        }
        var methoddefvar_524 := lift_115(lift_418);
        {
          lift_525 := lift_510;
          lift_526 := -1824218425;
          print -208006113, "\n";
        }
      }
      if (safeSeqRef(lift_243, lift_350, lift_12)) {
        print lift_351, "\n";
      } else {
        var lift_538 := (false, {lift_253, lift_95, lift_97, lift_444});
        print lift_352, "\n";
        var methoddefvar_529 := lift_527();
        {
          var lift_540 := 1340533398;
          var lift_539 := (lift_385, lift_390);
          lift_538 := lift_539;
          lift_540 := lift_350;
          lift_541 := lift_541;
        }
      }
      print -758427567, "\n";
      var methoddefvar_546 := lift_326(lift_545, -957869362);
      {
        lift_547 := lift_547;
        print lift_351, "\n";
        lift_548 := lift_548;
        print lift_382, "\n";
      }
    } else {
      var lift_654 := (lift_30, 'm');
      var lift_644 := true;
      var lift_629 := lift_630;
      var lift_616 := lift_617;
      var lift_615 := (lift_355, lift_596);
      var lift_607 := ([726392935], lift_608);
      var lift_599 := (var tmpData : seq<int> := []; tmpData);
      var lift_586 := lift_587;
      var lift_581 := multiset{
        lift_582,
        lift_582,
        lift_586,
        (-467308536, lift_588),
        lift_591
      };
      var lift_576 := (-552871903, lift_419);
      var lift_575 := (lift_62, lift_576);
      var lift_565 := true;
      lift_549 := (false, (lift_550, lift_382)).1;
      if (lift_240) {
        var lift_553 := {lift_452, lift_395, lift_375, lift_468};
        var methoddefvar_551, methoddefvar_552 := lift_311(
          -1896929425,
          -981839441,
          lift_380
        );
        {
          print 1524457203, "\n";
          lift_553 := lift_374;
          print -1967904619, "\n";
          print 647542441, "\n";
        }
        print lift_286, "\n";
      } else {
        var lift_556 := (var tmpData : multiset<int> := multiset{}; tmpData);
        var methoddefvar_554, methoddefvar_555 := lift_148(lift_288);
        {
          lift_556 := lift_557;
          print lift_284, "\n";
          lift_558 := lift_558;
        }
      }
      var methoddefvar_564 := lift_158();
      {
        print lift_380, "\n";
        lift_565 := lift_356;
        print lift_383, "\n";
        lift_566 := ();
      }
      var methoddefvar_567, methoddefvar_568 := lift_148(lift_545);
      {
        var lift_569 := lift_570;
        print -1003683645, "\n";
        lift_569 := [lift_309];
        lift_575 := lift_577;
        lift_581 := lift_593;
      }
      if ((lift_70 !in lift_598)) {
        var lift_611 := (
          (var tmpData : multiset<int> := multiset{}; tmpData),
          lift_612,
          lift_615
        );
        var lift_601 := lift_602;
        var lift_600 := [-138206811];
        if (lift_246) {
          lift_599 := lift_600;
          lift_601 := lift_602;
        } else {
          var lift_606 := multiset{lift_494, lift_504};
          var lift_604 := (lift_605, lift_606, lift_595);
          lift_604 := lift_604;
          lift_607 := lift_607;
          lift_611 := lift_616;
        }
      } else {
        var lift_657 := {lift_658, lift_570, lift_658, lift_570};
        var lift_655 := (
          lift_350,
          multiset{lift_375, lift_411, lift_496},
          lift_370
        );
        var lift_648 := (lift_649, lift_504, (lift_592, lift_8));
        var lift_647 := lift_648;
        var lift_628 := lift_383;
        {
          lift_628 := -1543847704;
          print lift_350, "\n";
        }
        if (lift_241) {
          print lift_545, "\n";
          print 49408881, "\n";
          lift_629 := lift_250;
          print lift_349, "\n";
        } else {
          lift_633 := lift_638;
          print lift_545, "\n";
          print lift_619, "\n";
          lift_644 := lift_64;
        }
        var methoddefvar_645 := lift_158();
        {
          lift_646 := lift_6;
          lift_647 := lift_648;
        }
        {
          print lift_365, "\n";
          lift_654 := (lift_627, lift_496);
          lift_655 := (1152502477, lift_442, lift_30);
          lift_656 := lift_637;
          lift_657 := lift_657;
        }
      }
    }
  }
  var methoddefvar_661, methoddefvar_662 := lift_311(
    (((var tmpData : multiset<char> := multiset{}; tmpData) - lift_449)[lift_408] as int),
    lift_383,
    lift_663.1(247817762, lift_377)
  );
  {
    var lift_718 := lift_27;
    var lift_698 := multiset{lift_699, lift_706};
    var lift_695 := 2124057221;
    var lift_673 := lift_674;
    if ((lift_464 == lift_462 == lift_463)) {
      var lift_691 := multiset{
        -817779577,
        lift_418,
        lift_284,
        lift_415,
        lift_284
      };
      var lift_687 := [lift_688];
      var methoddefvar_671, methoddefvar_672 := lift_311(
        lift_287,
        lift_380,
        lift_230
      );
      {
        print lift_365, "\n";
      }
      if (lift_8) {
        print lift_352, "\n";
      } else {
        var lift_686 := [lift_284, lift_287, lift_351];
        print lift_380, "\n";
        lift_673 := lift_673;
        lift_686 := lift_686;
        print lift_351, "\n";
        lift_687 := lift_687;
      }
      print lift_380, "\n";
      print 765018478, "\n";
      if (false) {
        lift_691 := lift_691;
      } else {
        print lift_689, "\n";
      }
    } else {
      var methoddefvar_692 := lift_158();
      {
        print lift_351, "\n";
      }
      if (lift_26) {
        lift_693 := lift_60;
        lift_695 := lift_651;
      } else {
        lift_696 := lift_501;
        print lift_625, "\n";
        print lift_381, "\n";
        print lift_651, "\n";
      }
      {
        var lift_697 := lift_698;
        lift_697 := lift_698;
        lift_715 := lift_666;
        print lift_685, "\n";
        print lift_689, "\n";
        print lift_230, "\n";
      }
    }
    lift_718 := (lift_560 <= lift_560 <= lift_487);
    var methoddefvar_719 := lift_83(methoddefvar_661, lift_384, lift_384);
    {
      print lift_382, "\n";
      print lift_625, "\n";
      print lift_14, "\n";
    }
  }
  {
    var lift_761 := (lift_445, -1988715828, lift_286);
    var lift_755 := (true, lift_756, lift_761);
    var lift_735 := 'c';
    var lift_730 := (lift_641, lift_445);
    var lift_729 := (lift_626, 'e');
    var lift_725 := (lift_589, lift_70, lift_490);
    var methoddefvar_720 := lift_254();
    {
      var lift_738 := multiset{lift_389, lift_498, lift_64, lift_677, lift_585};
      var lift_737 := lift_738;
      var lift_736 := lift_702;
      var lift_724 := (lift_613, lift_715, lift_725);
      {
        var lift_721 := (lift_651, lift_722, lift_574);
        print -1497138651, "\n";
        print lift_365, "\n";
        print lift_352, "\n";
        lift_721 := lift_721;
      }
      {
        print lift_380, "\n";
        print lift_380, "\n";
        lift_724 := lift_724;
      }
      {
        lift_726 := lift_637;
        print methoddefvar_720, "\n";
        lift_729 := lift_730;
      }
      if (lift_679) {
        var lift_733 := 343628981;
        lift_731 := lift_717;
        lift_733 := -2119563486;
        print lift_350, "\n";
        lift_734 := lift_470;
        lift_735 := lift_693;
      } else {
        print lift_651, "\n";
        print -1097698049, "\n";
      }
      if (lift_251) {
        lift_736 := lift_702;
        print -531006167, "\n";
        print -571522672, "\n";
      } else {
        var lift_739 := ();
        lift_737 := lift_598;
        print lift_545, "\n";
        print lift_685, "\n";
        print lift_625, "\n";
        lift_739 := ();
      }
    }
    {
      var lift_754 := lift_755;
      var lift_748 := [lift_365, lift_383, lift_621, lift_685];
      print lift_372, "\n";
      var methoddefvar_740 := lift_472(lift_288, -1918545577, lift_621);
      {
        var lift_744 := [1478811612, lift_418];
        print lift_349, "\n";
        print 456468368, "\n";
        print lift_351, "\n";
        lift_741 := lift_744;
      }
      var methoddefvar_745, methoddefvar_746 := lift_148(lift_381);
      {
        print -948969584, "\n";
        lift_747 := lift_734;
      }
      {
        var lift_750 := {lift_7, lift_732, (), lift_731, ()};
        if (true) {
          var lift_749 := [lift_689, lift_545, lift_382, lift_382, lift_625];
          print lift_286, "\n";
          print lift_418, "\n";
          lift_748 := lift_749;
          print lift_685, "\n";
        } else {
          lift_750 := lift_750;
        }
        if (lift_578) {
          print -1454446720, "\n";
          print -1362779287, "\n";
          lift_751 := lift_99;
          lift_754 := lift_755;
        } else {
          print lift_287, "\n";
          print lift_708, "\n";
          print lift_625, "\n";
        }
      }
    }
  }
  var methoddefvar_762 := lift_254();
  {
    {
      {
        print lift_349, "\n";
        print lift_690, "\n";
        print lift_545, "\n";
      }
      {
        var lift_763 := ();
        print lift_545, "\n";
        lift_763 := ();
        print lift_592, "\n";
      }
      print lift_690, "\n";
    }
    var methoddefvar_764, methoddefvar_765 := lift_311(
      lift_708,
      lift_288,
      lift_685
    );
    {
      print lift_620, "\n";
    }
  }
}


