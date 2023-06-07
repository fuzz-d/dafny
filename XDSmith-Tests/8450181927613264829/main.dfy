//
//
//
//
//
//

// Seed: 8450181927613264829
// This is a RANDOMLY GENERATED PROGRAM.
// Fuzzer: dafny
// Version: dafny, xsmith 2.0.5 (38f1d83), in Racket 8.9 (vm-type chez-scheme)
// Options: --dafny-syntax true --seed 8450181927613264829
// Seed: 8450181927613264829
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
function lift_615 () : seq<int>
{
  var lift_621 := 941482905;
  var lift_620 := lift_621;
  var lift_619 := -982385069;
  var lift_618 := [lift_619, 475015294, lift_620, lift_619, lift_620];
  var lift_617 := lift_618;
  lift_617
}

function lift_522 (
  arg_524 : bool,
  arg_525 : set<()>,
  arg_526 : (int, char),
  arg_527 : (bool, bool)
) : (char, int)
{
  var lift_529 := 1199947564;
  var lift_528 := '%';
  (lift_528, lift_529)
}

method lift_308 (
  arg_312 : seq<bool>,
  arg_313 : bool,
  arg_314 : (bool, bool),
  arg_315 : multiset<(int, seq<bool>, (char, int, bool))>
)
  returns (arg_316 : char, arg_317 : bool)
  requires (true)
  ensures (true)
{
  arg_316 := '$';
  arg_317 := true;
  {
    var lift_322 := ();
    var lift_321 := ();
    var lift_320 := [arg_313, arg_317, arg_317];
    var lift_319 := [arg_312, lift_320, lift_320, arg_312];
    var lift_318 := [false, true];
    print 
      (
        "yd",
        multiset{arg_312, lift_318, lift_318, arg_312},
        ('o', "L<ke>m!hldJ=VsTjFpS+Ug*", ((true, 'd'), -2076721355))
      ),
      false,
      "\n";
    lift_319 := [
      arg_312,
      arg_312,
      lift_320,
      (var tmpData : seq<bool> := []; tmpData)
    ];
    print -1007274817, {arg_313, arg_313, arg_317}, "\n";
    print 
      false,
      ((), [multiset{(), lift_321, lift_321, lift_322, lift_322}]),
      "\n";
  }
}

method lift_246 (
  arg_249 : (int, char),
  arg_250 : seq<int>,
  arg_251 : (char, char, bool),
  arg_252 : char
)
  returns (arg_253 : char)
  requires (true)
  ensures (true)
{
  arg_253 := 'Z';
  {
    var lift_255 := 1267861494;
    var lift_254 := -2087446160;
    lift_254 := lift_255;
  }
}

method lift_168 (
  arg_172 : set<seq<(int, bool)>>,
  arg_173 : seq<int>,
  arg_174 : (int, bool, int),
  arg_175 : seq<int>,
  arg_176 : int
)
  returns (arg_177 : char, arg_178 : int)
  requires (true)
  ensures (true)
{
  arg_177 := '?';
  arg_178 := -562385767;
  {
    var lift_190 := 1559026846;
    var lift_189 := 'j';
    var lift_188 := ();
    var lift_187 := false;
    var lift_186 := lift_187;
    var lift_185 := [lift_186];
    var lift_184 := lift_185;
    var lift_183 := (lift_184, lift_188);
    var lift_182 := ();
    var lift_181 := true;
    var lift_180 := ([lift_181], lift_182);
    var lift_179 := '@';
    print -1904509932, "\n";
    print (), 'v', "\n";
    lift_179 := lift_179;
    lift_180 := lift_183;
    print 
      (
        (multiset{'g', arg_177, lift_189, lift_189}, (), -577428969),
        "gZbeICJMU</&zh_q$yVuN_igUTc!yH~G!C",
        [-1155236158, arg_178, lift_190, lift_190, -1823596969]
      ),
      '_',
      "\n";
  }
}

method lift_125 (arg_129 : seq<int>, arg_130 : int, arg_131 : (), arg_132 : int)
  returns (arg_133 : int, arg_134 : char)
  requires (true)
  ensures (true)
{
  arg_133 := -1400892275;
  arg_134 := 'v';
  {
    var lift_142 := multiset{arg_134};
    var lift_141 := lift_142;
    var lift_140 := ();
    var lift_139 := multiset{(), lift_140};
    var lift_138 := ();
    var lift_137 := lift_138;
    var lift_136 := lift_137;
    var lift_135 := multiset{arg_131, (), arg_131, lift_136, lift_137};
    print 
      "'qeTcw-SlV-f+:QiP&dGQ-=;oD'j:'!>i",
      (
        true,
        [524056759, arg_132],
        (var tmpData : multiset<(bool, (int, int), (int, int, char))> := multiset{}; tmpData)
      ),
      "\n";
    print true, "\n";
    print 'D', "\n";
    lift_135 := lift_139;
    lift_141 := lift_141;
  }
}

method lift_79 (
  arg_82 : multiset<(char, ())>,
  arg_83 : (char, int),
  arg_84 : (int, int, bool)
)
  returns (arg_85 : char)
  requires (true)
  ensures (true)
{
  arg_85 := '<';
  {
    var lift_93 := false;
    var lift_92 := false;
    var lift_91 := [lift_92, lift_93, false];
    var lift_90 := true;
    var lift_89 := false;
    var lift_88 := lift_89;
    var lift_87 := true;
    var lift_86 := [lift_87, lift_88, lift_90, lift_89, lift_87];
    lift_86 := lift_91;
  }
}

method lift_55 (arg_58 : (char, int, bool), arg_59 : set<(seq<bool>, char, ())>)
  returns (arg_60 : int)
  requires (true)
  ensures (true)
{
  arg_60 := 150654125;
  {
    print false, "\n";
  }
}

function lift_44 (arg_46 : char, arg_47 : int) : char
{
  var lift_48 := '*';
  lift_48
}

function lift_27 (
  arg_29 : int,
  arg_30 : (int, bool),
  arg_31 : set<char>,
  arg_32 : bool
) : int
{
  var lift_34 := -1798565941;
  var lift_33 := lift_34;
  lift_33
}

function lift_20 (
  arg_22 : int,
  arg_23 : char,
  arg_24 : bool,
  arg_25 : char,
  arg_26 : bool
) : bool
{
  
  false
}

function lift_12 (
  arg_14 : int,
  arg_15 : char,
  arg_16 : bool,
  arg_17 : char,
  arg_18 : bool
) : bool
{
  
  true
}

method Main () {
  var lift_696 := false;
  var lift_695 := false;
  var lift_694 := multiset{lift_695, lift_695, lift_696, lift_695, false};
  var lift_681 := false;
  var lift_680 := [lift_681, true];
  var lift_679 := 'L';
  var lift_678 := '\'';
  var lift_677 := (lift_678, lift_679);
  var lift_676 := lift_677;
  var lift_675 := lift_676;
  var lift_674 := ();
  var lift_673 := 523091483;
  var lift_672 := 685130971;
  var lift_671 := -1180102745;
  var lift_670 := ({lift_671, lift_672, lift_673}, lift_674, lift_675);
  var lift_669 := 'd';
  var lift_668 := 'r';
  var lift_667 := (lift_668, lift_669);
  var lift_666 := ();
  var lift_665 := 651932864;
  var lift_664 := {lift_665, lift_665, lift_665};
  var lift_663 := (lift_664, lift_666, lift_667);
  var lift_662 := (multiset{lift_663, lift_670}, lift_680);
  var lift_661 := false;
  var lift_660 := [true, lift_661, true];
  var lift_659 := (var tmpData : multiset<(set<int>, (), (char, char))> := multiset{}; tmpData);
  var lift_658 := (lift_659, lift_660);
  var lift_651 := '_';
  var lift_650 := 'Q';
  var lift_649 := -878869750;
  var lift_648 := '*';
  var lift_647 := (lift_648, lift_649, lift_650);
  var lift_646 := lift_647;
  var lift_645 := {lift_646, (lift_651, 957611644, lift_650), lift_647};
  var lift_644 := 1222013217;
  var lift_643 := 'W';
  var lift_642 := (lift_643, lift_644, lift_643);
  var lift_641 := lift_642;
  var lift_640 := {lift_641};
  var lift_639 := lift_640;
  var lift_638 := -1905666837;
  var lift_637 := ':';
  var lift_636 := lift_637;
  var lift_635 := (lift_636, lift_638, lift_637);
  var lift_634 := lift_635;
  var lift_633 := {
    lift_634,
    lift_634,
    lift_634,
    lift_635,
    (lift_637, lift_638, 't')
  };
  var lift_632 := [lift_633, lift_639, lift_639, lift_645];
  var lift_624 := -1496019433;
  var lift_623 := 203364892;
  var lift_622 := (lift_623, lift_624);
  var lift_614 := 'K';
  var lift_613 := lift_614;
  var lift_612 := 'a';
  var lift_611 := lift_612;
  var lift_610 := (lift_611, lift_613);
  var lift_609 := (lift_610, lift_615, lift_622);
  var lift_608 := 'A';
  var lift_607 := lift_608;
  var lift_606 := 1610924333;
  var lift_605 := lift_606;
  var lift_604 := false;
  var lift_603 := -118383415;
  var lift_602 := ((lift_603, lift_604, lift_603), lift_605, lift_607);
  var lift_601 := 'R';
  var lift_600 := 'g';
  var lift_599 := 1614286009;
  var lift_598 := lift_599;
  var lift_597 := false;
  var lift_596 := 1964338045;
  var lift_595 := (lift_596, lift_597, lift_596);
  var lift_594 := (lift_595, lift_598, lift_600);
  var lift_593 := [lift_594, (lift_595, -1772190280, lift_601)];
  var lift_592 := false;
  var lift_591 := -1513773869;
  var lift_590 := (lift_591, lift_592);
  var lift_589 := lift_590;
  var lift_588 := false;
  var lift_587 := 890906074;
  var lift_586 := [(lift_587, lift_588)];
  var lift_585 := false;
  var lift_584 := lift_585;
  var lift_583 := lift_584;
  var lift_582 := 1640029910;
  var lift_581 := (lift_582, lift_583);
  var lift_580 := -238444576;
  var lift_579 := lift_580;
  var lift_578 := (lift_579, false);
  var lift_577 := [lift_578, lift_581, lift_578, lift_578, lift_578];
  var lift_576 := true;
  var lift_575 := -1335693562;
  var lift_574 := lift_575;
  var lift_573 := lift_574;
  var lift_572 := (lift_573, lift_576);
  var lift_571 := 2068691145;
  var lift_570 := lift_571;
  var lift_569 := true;
  var lift_568 := 1823127936;
  var lift_567 := (lift_568, true);
  var lift_566 := {
    [lift_567, (lift_568, lift_569), (lift_570, lift_569), lift_572],
    lift_577,
    lift_586,
    [lift_578, lift_572, lift_589, lift_590],
    lift_586
  };
  var lift_565 := false;
  var lift_564 := 875742086;
  var lift_563 := lift_564;
  var lift_562 := (lift_563, lift_565);
  var lift_561 := lift_562;
  var lift_560 := [lift_561];
  var lift_559 := true;
  var lift_558 := lift_559;
  var lift_557 := -1038653336;
  var lift_556 := (lift_557, lift_558);
  var lift_555 := [lift_556, lift_556];
  var lift_554 := true;
  var lift_553 := 21497073;
  var lift_552 := (lift_553, lift_554);
  var lift_551 := [lift_552];
  var lift_550 := lift_551;
  var lift_549 := {lift_550, lift_555, lift_550, lift_560};
  var lift_548 := [lift_549, lift_566];
  var lift_541 := 270426528;
  var lift_540 := lift_541;
  var lift_539 := ('+', lift_540);
  var lift_536 := 'x';
  var lift_535 := 'G';
  var lift_534 := (lift_535, lift_536);
  var lift_533 := 'y';
  var lift_532 := (lift_533, lift_534);
  var lift_531 := lift_532;
  var lift_521 := 'M';
  var lift_520 := (lift_521, ());
  var lift_519 := 'l';
  var lift_518 := (lift_519, ());
  var lift_517 := -789878898;
  var lift_516 := 'W';
  var lift_515 := (lift_516, lift_516, lift_517);
  var lift_514 := ();
  var lift_513 := (lift_514, lift_515);
  var lift_512 := 1004081004;
  var lift_511 := 'y';
  var lift_510 := lift_511;
  var lift_509 := ('+', lift_510, lift_512);
  var lift_508 := lift_509;
  var lift_507 := lift_508;
  var lift_506 := ();
  var lift_505 := lift_506;
  var lift_504 := lift_505;
  var lift_503 := (lift_504, lift_507);
  var lift_502 := lift_503;
  var lift_501 := {
    lift_502,
    lift_503,
    lift_503,
    lift_513,
    (lift_505, (lift_516, lift_510, lift_512))
  };
  var lift_500 := (lift_501, lift_510, multiset{lift_518, lift_520});
  var lift_496 := true;
  var lift_495 := lift_496;
  var lift_494 := multiset{lift_495, lift_495};
  var lift_493 := false;
  var lift_492 := true;
  var lift_491 := lift_492;
  var lift_490 := lift_491;
  var lift_489 := multiset{lift_490, lift_493, lift_491};
  var lift_488 := [lift_489, multiset{lift_492, lift_491}, lift_489, lift_494];
  var lift_487 := 'N';
  var lift_486 := {lift_487, 'x'};
  var lift_485 := lift_486;
  var lift_484 := (var tmpData : seq<bool> := []; tmpData);
  var lift_483 := (lift_484, lift_485);
  var lift_482 := lift_483;
  var lift_473 := false;
  var lift_472 := lift_473;
  var lift_470 := 1339487531;
  var lift_469 := '&';
  var lift_468 := (lift_469, lift_469, lift_470);
  var lift_467 := false;
  var lift_466 := 91281730;
  var lift_465 := {lift_466, lift_466, lift_466};
  var lift_464 := (lift_465, lift_467, lift_468);
  var lift_459 := (var tmpData : multiset<set<char>> := multiset{}; tmpData);
  var lift_453 := -1816850883;
  var lift_452 := {lift_453, 1169259060, lift_453, lift_453};
  var lift_451 := 'o';
  var lift_450 := (var tmpData : seq<char> := []; tmpData);
  var lift_449 := lift_450;
  var lift_448 := multiset{lift_449};
  var lift_447 := (lift_448, ['s'], [lift_451]);
  var lift_446 := ";J|";
  var lift_445 := (lift_446, lift_447, lift_452);
  var lift_444 := '=';
  var lift_443 := lift_444;
  var lift_442 := lift_443;
  var lift_441 := [lift_442, lift_443, lift_443, lift_444, lift_442];
  var lift_431 := -414458644;
  var lift_430 := 'W';
  var lift_429 := lift_430;
  var lift_428 := lift_429;
  var lift_427 := (lift_428, lift_431, lift_429);
  var lift_426 := lift_427;
  var lift_425 := lift_426;
  var lift_420 := 'L';
  var lift_412 := -1709775909;
  var lift_411 := -972416530;
  var lift_410 := [1642727097, -959922829, lift_411, lift_412];
  var lift_407 := 'x';
  var lift_406 := 1162639789;
  var lift_405 := lift_406;
  var lift_404 := (lift_405, lift_407);
  var lift_403 := 'u';
  var lift_402 := true;
  var lift_401 := lift_402;
  var lift_400 := (lift_401, lift_401, lift_403);
  var lift_399 := (lift_400, 'R', lift_404);
  var lift_396 := '?';
  var lift_395 := -1239969551;
  var lift_394 := (lift_395, lift_396);
  var lift_390 := 'M';
  var lift_389 := '\'';
  var lift_388 := 'x';
  var lift_387 := [lift_388, lift_389, lift_389, lift_390, lift_388];
  var lift_386 := multiset{lift_387, lift_387, lift_387, lift_387, lift_387};
  var lift_385 := -2136818984;
  var lift_384 := lift_385;
  var lift_383 := lift_384;
  var lift_382 := lift_383;
  var lift_381 := false;
  var lift_380 := 437760288;
  var lift_379 := 1197812381;
  var lift_378 := {lift_379, 1304206707, lift_380};
  var lift_377 := (
    lift_378,
    (lift_381, lift_381),
    multiset{lift_382, lift_380}
  );
  var lift_376 := 915685840;
  var lift_375 := 356967605;
  var lift_374 := multiset{lift_375, lift_376, -336463938};
  var lift_373 := false;
  var lift_372 := (lift_373, lift_373);
  var lift_371 := 1457570368;
  var lift_370 := ({lift_371, -669982915}, lift_372, lift_374);
  var lift_369 := 414850318;
  var lift_368 := lift_369;
  var lift_367 := -181021397;
  var lift_366 := multiset{lift_367, lift_367, lift_367, lift_368};
  var lift_365 := false;
  var lift_364 := true;
  var lift_363 := (lift_364, lift_365);
  var lift_362 := 1918566496;
  var lift_361 := ({lift_362, 91704258}, lift_363, lift_366);
  var lift_360 := {lift_361, lift_361, lift_370, lift_370, lift_377};
  var lift_359 := lift_360;
  var lift_358 := lift_359;
  var lift_356 := 797006942;
  var lift_355 := {lift_356, lift_356};
  var lift_354 := lift_355;
  var lift_350 := ();
  var lift_349 := ();
  var lift_348 := ();
  var lift_347 := multiset{lift_348, lift_349, lift_349, lift_350, lift_348};
  var lift_344 := true;
  var lift_343 := lift_344;
  var lift_342 := -1201713815;
  var lift_341 := ('s', lift_342, lift_343);
  var lift_340 := false;
  var lift_339 := [lift_340];
  var lift_338 := -1757803506;
  var lift_337 := (lift_338, lift_339, lift_341);
  var lift_336 := true;
  var lift_335 := 554281745;
  var lift_334 := 'j';
  var lift_333 := lift_334;
  var lift_332 := (lift_333, lift_335, lift_336);
  var lift_331 := true;
  var lift_330 := [lift_331, lift_331];
  var lift_329 := 888587414;
  var lift_328 := (lift_329, lift_330, lift_332);
  var lift_325 := true;
  var lift_324 := false;
  var lift_323 := (lift_324, lift_325);
  var lift_306 := -419910637;
  var lift_305 := lift_306;
  var lift_304 := -1335851522;
  var lift_303 := {lift_304, lift_305, lift_306, -980595909};
  var lift_302 := lift_303;
  var lift_301 := {lift_302};
  var lift_300 := lift_301;
  var lift_299 := -297945467;
  var lift_298 := -1439203575;
  var lift_297 := {lift_298, lift_299, lift_298, 1792470343};
  var lift_296 := -2655461;
  var lift_295 := 1601573011;
  var lift_294 := {-599283182, lift_295, lift_296, lift_295};
  var lift_293 := {lift_294, lift_297, lift_294, lift_297};
  var lift_292 := [lift_293, lift_293, lift_300];
  var lift_291 := lift_292;
  var lift_290 := lift_291;
  var lift_285 := -146311333;
  var lift_284 := [lift_285];
  var lift_283 := 266033184;
  var lift_282 := lift_283;
  var lift_281 := lift_282;
  var lift_280 := lift_281;
  var lift_279 := lift_280;
  var lift_278 := [358458888, lift_279, lift_283, lift_282];
  var lift_277 := 1955356529;
  var lift_276 := 965218228;
  var lift_275 := -1986676073;
  var lift_274 := multiset{
    [lift_275, lift_275, lift_276, lift_277, lift_275],
    lift_278,
    lift_284
  };
  var lift_273 := lift_274;
  var lift_272 := -560423890;
  var lift_271 := 1277194134;
  var lift_270 := lift_271;
  var lift_269 := (var tmpData : seq<int> := []; tmpData);
  var lift_268 := multiset{
    lift_269,
    [lift_270, lift_272, lift_271, lift_271, lift_271],
    lift_269,
    [lift_272, lift_270, 1508675430, lift_271, 1563338737],
    lift_269
  };
  var lift_267 := 2051088177;
  var lift_266 := -1465133601;
  var lift_265 := -1198592414;
  var lift_264 := [lift_265, lift_266, lift_266, lift_267, lift_265];
  var lift_263 := multiset{lift_264, lift_264, lift_264};
  var lift_262 := {lift_263, lift_268, lift_273, lift_268, lift_274};
  var lift_260 := 'l';
  var lift_259 := -1734065367;
  var lift_258 := lift_259;
  var lift_257 := (lift_258, lift_260);
  var lift_244 := 'g';
  var lift_243 := (lift_244, lift_244);
  var lift_240 := false;
  var lift_239 := true;
  var lift_238 := {lift_239, lift_240, lift_240, lift_240, false};
  var lift_237 := false;
  var lift_236 := {true, lift_237};
  var lift_234 := -909118900;
  var lift_233 := 340967983;
  var lift_232 := lift_233;
  var lift_231 := 'o';
  var lift_230 := (lift_231, lift_232);
  var lift_229 := lift_230;
  var lift_228 := 1195788230;
  var lift_227 := 'a';
  var lift_226 := (lift_227, lift_228);
  var lift_225 := [lift_226, lift_229, lift_229, ('R', lift_234)];
  var lift_224 := lift_225;
  var lift_222 := 1951835120;
  var lift_218 := 685238060;
  var lift_217 := false;
  var lift_216 := -2039441466;
  var lift_215 := (lift_216, lift_217, lift_218);
  var lift_212 := -450102526;
  var lift_211 := 1000986611;
  var lift_210 := 1164165346;
  var lift_209 := multiset{lift_210, lift_211, lift_210, lift_212};
  var lift_205 := false;
  var lift_204 := 'O';
  var lift_203 := (lift_204, -590483269, lift_205);
  var lift_199 := (var tmpData : seq<int> := []; tmpData);
  var lift_198 := true;
  var lift_197 := (2071196617, lift_198);
  var lift_196 := true;
  var lift_195 := -2024455433;
  var lift_194 := (lift_195, lift_196);
  var lift_193 := [lift_194];
  var lift_192 := lift_193;
  var lift_191 := {lift_192, [lift_194, lift_197, lift_194]};
  var lift_167 := ();
  var lift_166 := lift_167;
  var lift_161 := (var tmpData : seq<bool> := []; tmpData);
  var lift_160 := lift_161;
  var lift_154 := true;
  var lift_153 := [-572823589];
  var lift_152 := ();
  var lift_151 := (lift_152, lift_153, lift_154);
  var lift_150 := (var tmpData : seq<set<char>> := []; tmpData);
  var lift_149 := lift_150;
  var lift_147 := 'Y';
  var lift_146 := lift_147;
  var lift_145 := -497758342;
  var lift_144 := [lift_145, lift_145, 1034402741, lift_145];
  var lift_143 := (lift_144, lift_146);
  var lift_124 := (var tmpData : set<bool> := {}; tmpData);
  var lift_123 := ();
  var lift_122 := -768899560;
  var lift_121 := 'f';
  var lift_120 := lift_121;
  var lift_119 := lift_120;
  var lift_118 := lift_119;
  var lift_117 := (lift_118, lift_120, lift_122);
  var lift_116 := true;
  var lift_115 := {lift_116, lift_116};
  var lift_114 := ();
  var lift_113 := -378155376;
  var lift_112 := 'X';
  var lift_111 := ('I', lift_112, lift_113);
  var lift_110 := (lift_111, lift_114, lift_115);
  var lift_109 := lift_110;
  var lift_108 := multiset{
    lift_109,
    (lift_117, lift_123, (var tmpData : set<bool> := {}; tmpData)),
    (lift_117, lift_114, lift_124),
    lift_110,
    lift_109
  };
  var lift_105 := -1675298411;
  var lift_99 := false;
  var lift_98 := 989710954;
  var lift_97 := (lift_98, lift_98, lift_99);
  var lift_78 := false;
  var lift_77 := false;
  var lift_76 := true;
  var lift_75 := [lift_76, lift_77, lift_76, lift_78, false];
  var lift_74 := ();
  var lift_73 := lift_74;
  var lift_72 := 'W';
  var lift_71 := lift_72;
  var lift_70 := lift_71;
  var lift_69 := lift_70;
  var lift_68 := (var tmpData : seq<bool> := []; tmpData);
  var lift_67 := (lift_68, lift_69, lift_73);
  var lift_66 := 'N';
  var lift_65 := false;
  var lift_64 := [false, lift_65, lift_65];
  var lift_63 := {
    (lift_64, lift_66, ()),
    lift_67,
    (lift_75, lift_70, lift_73),
    lift_67
  };
  var lift_54 := true;
  var lift_53 := [lift_54, false, false];
  var lift_51 := 'j';
  var lift_50 := lift_51;
  var lift_49 := lift_50;
  var lift_43 := false;
  var lift_42 := false;
  var lift_41 := lift_42;
  var lift_40 := true;
  var lift_38 := 'P';
  var lift_35 := -441050715;
  var lift_19 := 601019360;
  var lift_1 := [
    ((
      arg_2 : int,
      arg_3 : char,
      arg_4 : bool,
      arg_5 : char,
      arg_6 : bool
    ) => false),
    ((
      arg_7 : int,
      arg_8 : char,
      arg_9 : bool,
      arg_10 : char,
      arg_11 : bool
    ) => arg_11),
    lift_12,
    lift_12
  ];
  {
    var lift_544 := multiset{lift_38, lift_429, lift_118, lift_389, lift_333};
    var lift_543 := lift_544;
    var lift_538 := [lift_539, lift_226];
    var lift_530 := {lift_167, lift_506, lift_506};
    var lift_498 := ();
    var lift_497 := [
      lift_489,
      lift_494,
      lift_494,
      multiset{lift_343, lift_325, lift_473, lift_43}
    ];
    var lift_481 := (var tmpData : multiset<((bool, char, char), (char, char))> := multiset{}; tmpData);
    var lift_471 := 'O';
    var lift_457 := {'a'};
    var lift_456 := (var tmpData : multiset<set<char>> := multiset{}; tmpData);
    var lift_455 := lift_456;
    var lift_440 := [lift_260, lift_70, lift_50, '$', lift_38];
    var lift_439 := multiset{lift_440, lift_387, lift_441, lift_387, lift_441};
    var lift_438 := (lift_439, "DbCn", lift_440);
    var lift_437 := (lift_387, lift_438, lift_302);
    var lift_432 := (2101152330, lift_99, -423994564);
    var lift_424 := {
      (lift_329, lift_425, lift_432),
      (lift_210, lift_425, lift_215)
    };
    var lift_423 := lift_424;
    var lift_422 := {
      lift_377,
      lift_361,
      (
        lift_355,
        (lift_340, lift_41),
        multiset{lift_277, lift_272, -550207286, lift_285}
      ),
      lift_370
    };
    var lift_418 := (lift_35, lift_160, lift_332);
    var lift_417 := lift_418;
    var lift_416 := multiset{
      (lift_412, lift_161, lift_332),
      lift_417,
      lift_337,
      lift_328
    };
    var lift_408 := [lift_153, lift_199];
    var lift_392 := {lift_376, lift_368, lift_211, lift_19, lift_258};
    var lift_357 := (var tmpData : multiset<int> := multiset{}; tmpData);
    var lift_353 := (lift_354, (lift_343, lift_43), lift_357);
    var lift_352 := lift_353;
    var lift_287 := 1483774335;
    var lift_256 := lift_257;
    var lift_242 := ('C', lift_69);
    var lift_241 := [
      ('_', lift_112),
      lift_242,
      (lift_66, lift_204),
      lift_242,
      lift_243
    ];
    var lift_223 := lift_224;
    var lift_221 := (lift_120, lift_222);
    var lift_220 := (lift_71, 593150592);
    var lift_208 := (lift_69, lift_113, lift_78);
    var lift_207 := (lift_115, lift_208);
    var lift_206 := (lift_207, lift_209);
    var lift_164 := (lift_38, true, lift_122);
    var lift_163 := (lift_164, (lift_119, lift_121, true));
    var lift_162 := 'B';
    var lift_148 := lift_149;
    var lift_107 := -1953299756;
    var lift_106 := lift_41;
    var lift_103 := {lift_43};
    var lift_102 := (lift_51, lift_72, lift_19);
    var lift_101 := (lift_102, lift_73, lift_103);
    var lift_96 := (lift_69, ());
    var lift_95 := (lift_50, lift_74);
    var lift_62 := lift_63;
    var lift_52 := (lift_53, lift_49, lift_42);
    var lift_39 := 'C';
    var lift_37 := (lift_35, false);
    var lift_36 := lift_37;
    if (safeSeqRef(lift_1, lift_19, lift_20)(
      lift_27(lift_35, lift_36, {lift_38, 's', lift_39}, lift_40),
      (
        lift_38,
        (
          (() => {lift_38}),
          true,
          [
            (var tmpData : string := []; tmpData),
            "WXrYo&~Gxw-gc;kyGUx",
            "Qlou?pYsS&Rm",
            "kt"
          ]
        )
      ).0,
      (lift_41 <== lift_43),
      lift_44(lift_49, lift_19),
      lift_52.2
    )) {
      var lift_94 := multiset{lift_95, lift_96};
      var lift_61 := lift_35;
      var methoddefvar_57 := lift_55(('B', lift_61, lift_54), lift_62);
      {
        print 
          (
            "HwAJU'=CzpSh&%toUmW|DPP=",
            (
              ((), "Yra=Z@;!xxLpa\"A:Xvz!Z%PVrE+%ezLoK", [()]),
              'r',
              (() => false)
            )
          ),
          "\n";
      }
      var methoddefvar_81 := lift_79(lift_94, (lift_70, lift_35), lift_97);
      {
        var lift_100 := multiset{lift_101, lift_101};
        lift_100 := multiset{lift_101, lift_101};
        print '|', "\n";
      }
    } else {
      var methoddefvar_104 := lift_79(
        multiset{(lift_69, ()), lift_96, lift_95, lift_96},
        (lift_71, lift_19),
        (lift_105, lift_98, lift_106)
      );
      {
        print 'Q', "ZBHWgjTRmj~iW$:", "\n";
        print (var tmpData : seq<(int, bool, int)> := []; tmpData), "\n";
      }
      print 
        safeSeqSlice1Colon([723896107, lift_98, lift_105, lift_107], lift_98),
        (lift_101 in lift_108),
        "\n";
    }
    var methoddefvar_127, methoddefvar_128 := lift_125(
      lift_143.0,
      lift_97.1,
      ((), lift_73, '>').1,
      lift_97.1
    );
    {
      var lift_165 := ();
      if (lift_116) {
        lift_148 := lift_148;
      } else {
        print false, (var tmpData : seq<()> := []; tmpData), "\n";
        print 
          multiset{
            (
              (),
              [
                lift_113,
                methoddefvar_127,
                methoddefvar_127,
                lift_105,
                -1839484257
              ],
              lift_65
            ),
            lift_151,
            lift_151
          },
          "\n";
        print 
          ((
            arg_155 : char,
            arg_156 : int,
            arg_157 : char,
            arg_158 : set<((char, int, char), multiset<bool>)>,
            arg_159 : multiset<((char, char), set<bool>, char)>
          ) => 1748536307),
          [{(lift_99, true), (lift_54, lift_76)}],
          "\n";
        print 'd', -1383096925, "\n";
      }
      lift_160 := lift_160;
      if (false) {
        print [()], "\n";
        lift_162 := lift_147;
        print "E~/MMpFk", (), "\n";
        print (), 716513916, "\n";
        print false, "\n";
      } else {
        print true, "%wlyXOmAgkdp!'vPhnW<OQ", "\n";
        print false, "\n";
        lift_163 := lift_163;
      }
      print -1410464604, -1590837365, "\n";
      lift_165 := lift_166;
    }
    {
      var lift_351 := multiset{lift_114, (), lift_73, lift_166};
      var lift_346 := (lift_41, 'a');
      var lift_345 := (lift_99, lift_258, lift_346);
      var lift_327 := multiset{lift_328, lift_328, lift_337};
      var lift_307 := lift_266;
      var lift_289 := 320476392;
      var lift_288 := ();
      var lift_286 := lift_205;
      var lift_261 := (lift_49, lift_118, lift_40);
      var lift_219 := [lift_220, lift_221, lift_221, lift_221];
      var lift_202 := (lift_115, lift_203);
      var lift_200 := (lift_145, lift_43, lift_19);
      var methoddefvar_170, methoddefvar_171 := lift_168(
        lift_191,
        lift_199,
        lift_200,
        lift_199,
        lift_105
      );
      {
        var lift_201 := lift_196;
        lift_201 := lift_76;
        print 
          (var tmpData : multiset<(bool, bool, char)> := multiset{}; tmpData),
          "\n";
        print 'a', (2075807396, "~&f:~\"</=P"), "\n";
        print true, "\n";
      }
      lift_202 := lift_206.0;
      var methoddefvar_213, methoddefvar_214 := lift_168(
        lift_191,
        lift_144,
        lift_215,
        lift_153,
        -1576151446
      );
      {
        print true, "\n";
        lift_219 := lift_223;
      }
      if (!(lift_116)) {
        var lift_245 := '<';
        var lift_235 := ();
        if (lift_217) {
          print -1344033653, {lift_227, lift_227}, "\n";
          lift_235 := lift_167;
          lift_236 := lift_238;
          print 
            "rW:AoCJ:?eqm+MfXBLLxhn",
            {[(lift_38, lift_39)], lift_241},
            "\n";
        } else {
          lift_245 := lift_118;
        }
        var methoddefvar_248 := lift_246(
          lift_256,
          lift_199,
          lift_261,
          lift_245
        );
        {
          lift_262 := lift_262;
          print {lift_147, lift_147}, 262540595, "\n";
        }
        print true, {910600590, lift_35}, "\n";
      } else {
        var lift_326 := lift_327;
        if (false) {
          lift_286 := lift_77;
          print false, "\n";
          print "nF>X;;EB?UCQw!tmj;IlKR-", {lift_260, lift_118}, "\n";
          lift_287 := lift_216;
        } else {
          lift_288 := lift_167;
          lift_289 := -555962768;
          print 
            (-1805736849, multiset{false, lift_78, lift_240, lift_239}, ()),
            "\n";
        }
        if (lift_154) {
          lift_290 := lift_292;
          print '|', "\n";
        } else {
          print (var tmpData : set<()> := {}; tmpData), "\n";
        }
        print (), "\n";
        lift_307 := lift_304;
        var methoddefvar_310, methoddefvar_311 := lift_308(
          lift_75,
          lift_99,
          lift_323,
          lift_326
        );
        {
          print (), true, "\n";
          lift_345 := lift_345;
          print multiset{multiset{()}, lift_347, lift_347, lift_351}, "\n";
          print '?', "\n";
        }
      }
    }
    if (!(({
      (
        lift_302,
        (lift_198, lift_217),
        multiset{lift_122, lift_122, lift_283, lift_306}
      ),
      lift_352
    } !! lift_358 !! lift_358))) {
      var lift_397 := (lift_396, lift_69, lift_40);
      if ((['Z', lift_38, lift_121] in lift_386)) {
        var lift_391 := multiset{lift_154, lift_324, lift_54, true};
        if (lift_42) {
          lift_391 := lift_391;
        } else {
          print multiset{multiset{'X', lift_69}}, "\n";
          lift_392 := lift_294;
        }
        var methoddefvar_393 := lift_246(
          lift_394,
          lift_199,
          lift_397,
          lift_120
        );
        {
          var lift_398 := lift_399;
          lift_398 := lift_399;
        }
        print (), (true, (), {(), (), ()}), "\n";
      } else {
        var lift_409 := [lift_199, lift_410, lift_264, lift_199];
        lift_408 := lift_409;
        print true, 673554551, "\n";
      }
    } else {
      var lift_480 := lift_481;
      var lift_474 := lift_285;
      var lift_458 := (
        lift_440,
        lift_459,
        {lift_72, lift_49, lift_429, lift_70, lift_407}
      );
      var lift_454 := (lift_450, lift_455, lift_457);
      var lift_419 := ();
      var lift_415 := (lift_116, lift_205);
      var methoddefvar_413, methoddefvar_414 := lift_308(
        lift_330,
        lift_365,
        lift_415,
        lift_416
      );
      {
        var lift_421 := -704372678;
        lift_419 := lift_167;
        lift_420 := '*';
        lift_421 := lift_281;
      }
      if ((lift_358 !! lift_422)) {
        lift_423 := lift_424;
        var methoddefvar_433, methoddefvar_434 := lift_168(
          lift_191,
          lift_144,
          lift_215,
          lift_269,
          lift_259
        );
        {
          print 'U', {lift_50, 'h'}, "\n";
          print 
            ((
              arg_435 : multiset<((char, int, int), seq<bool>)>,
              arg_436 : ()
            ) => ((), (), 'o')),
            [
              (
                "Yu$hu;h=vEX$XRD~n'EWOZRFdxo+*QV*av",
                (
                  multiset{"ZR'BZd<JXHpbemy>"},
                  "AFBhKpgB!p%",
                  "j<=OEpdxqwIFhBewXVxhqLAV$nJHxTx"
                ),
                (var tmpData : set<int> := {}; tmpData)
              ),
              lift_437,
              lift_437,
              lift_437,
              lift_445
            ],
            "\n";
        }
      } else {
        lift_454 := lift_458;
        print 
          ((
            arg_460 : (),
            arg_461 : int,
            arg_462 : bool,
            arg_463 : (int, set<int>)
          ) => [-1213321785]),
          (
            (),
            multiset{(false, false), lift_372, lift_323, (lift_99, lift_54)}
          ),
          "\n";
        lift_464 := lift_464;
        lift_471 := lift_389;
        lift_472 := lift_467;
      }
      lift_474 := ((
        arg_475 : seq<bool>,
        arg_476 : int,
        arg_477 : (multiset<()>, multiset<()>, int),
        arg_478 : multiset<((bool, char, char), (char, char))>,
        arg_479 : (seq<bool>, set<char>)
      ) => lift_383)(
        lift_339,
        lift_304,
        (lift_347, lift_347, lift_287),
        lift_480,
        lift_482
      );
      lift_488 := safeSeqDrop(lift_497, lift_406);
      lift_498 := lift_123;
    }
    var methoddefvar_499 := lift_79(
      lift_500.2,
      lift_522(lift_496, lift_530, lift_404, lift_363),
      (lift_267, lift_222, true)
    );
    {
      var lift_545 := -2140110408;
      var lift_542 := multiset{lift_511, lift_510, lift_516, lift_260};
      if (lift_373) {
        var lift_537 := (lift_50, lift_243);
        lift_531 := lift_537;
      } else {
        print 
          {
            lift_223,
            lift_538,
            [lift_226, lift_539, (lift_260, lift_375), lift_221, lift_226],
            lift_223,
            [lift_230, lift_539, lift_221, lift_230, lift_226]
          },
          -1759342236,
          "\n";
        print (), "\n";
        print "/ykY>?sM^@xIDoFJB;f&gzWn<eo~t_zW$*HC", (), "\n";
        print 
          multiset{
            multiset{'u', lift_39, methoddefvar_499, lift_227},
            lift_542,
            lift_542,
            lift_543,
            lift_542
          },
          "\n";
      }
      if (lift_373) {
        print 
          (
            (
              'l',
              [true, lift_198, lift_496, lift_78, lift_239],
              {multiset{(var tmpData : set<bool> := {}; tmpData), lift_236}}
            ),
            ('$', "Vz@JkriCcjT"),
            multiset{'V', lift_146, ':', lift_511, lift_204}
          ),
          {(), lift_350, lift_350, lift_505, lift_505},
          "\n";
        lift_545 := lift_212;
        print [1213176002, lift_411], (), "\n";
      } else {
        print {lift_51, lift_334, lift_516, lift_390}, "\n";
      }
    }
  }
  var methoddefvar_546, methoddefvar_547 := lift_168(
    ((lift_191 * lift_191 * {
      [(lift_233, lift_496)],
      lift_193,
      lift_193,
      lift_192,
      lift_193
    }) - safeSeqRef(lift_548, lift_371, lift_566)),
    safeSeqTake(
      safeSeqSubseq(lift_284, lift_541, lift_568),
      (true, (), lift_296).2
    ),
    safeSeqRef(lift_593, lift_267, lift_602).0,
    lift_609.1(),
    (lift_44(lift_519, lift_222) as int)
  );
  {
    var lift_685 := (lift_114, lift_167);
    var lift_684 := true;
    var lift_682 := {false, lift_99, lift_491, lift_604, lift_681};
    var lift_657 := {lift_412, lift_376, lift_553};
    var lift_653 := [lift_512, lift_145, lift_623];
    var lift_630 := ();
    {
      var lift_631 := lift_506;
      if (lift_565) {
        var lift_625 := 'q';
        lift_625 := '=';
      } else {
        print 
          ((
            arg_626 : char,
            arg_627 : (set<((char, int), bool)>, (char, char, char)),
            arg_628 : bool
          ) => true),
          "\n";
      }
      var methoddefvar_629 := lift_55(lift_332, lift_63);
      {
        print 
          (var tmpData : multiset<char> := multiset{}; tmpData),
          (var tmpData : multiset<seq<string>> := multiset{}; tmpData),
          "\n";
        lift_630 := lift_631;
        print -657231029, 'O', "\n";
        lift_632 := lift_632;
      }
      if (lift_77) {
        var lift_652 := false;
        lift_652 := false;
      } else {
        var lift_656 := (lift_303, lift_99, lift_657);
        var lift_655 := (lift_302, false, lift_297);
        var lift_654 := lift_655;
        print '+', 4784234, "\n";
        print 986080940, "\n";
        lift_653 := [lift_649, lift_557, lift_258, lift_564];
        print 
          (
            (),
            {
              ({lift_275, lift_19, lift_591, lift_540}, true, lift_303),
              lift_654,
              lift_655,
              lift_656,
              (lift_302, lift_217, lift_297)
            }
          ),
          (var tmpData : set<()> := {}; tmpData),
          "\n";
        lift_658 := lift_662;
      }
    }
    {
      var lift_683 := [[1435621717, lift_105, lift_568, lift_605]];
      lift_682 := lift_115;
      print 
        [
          (
            "+\"OZm_X~DfqxtJ&jjL@yv&yNyV",
            false,
            [-1753430153, lift_276, lift_368]
          )
        ],
        "\n";
      if (lift_559) {
        print {'g', lift_442}, (), "\n";
        lift_683 := lift_683;
        print -845042847, "\n";
        lift_684 := lift_491;
      } else {
        lift_685 := lift_685;
      }
      print (), "\n";
      {
        var lift_691 := {lift_303, {lift_283}};
        print 'u', "\n";
        print 
          [
            (
              ((
                arg_686 : (set<int>, ()),
                arg_687 : (),
                arg_688 : multiset<int>,
                arg_689 : set<seq<seq<int>>>,
                arg_690 : set<((), bool)>
              ) => ('T', {true, true})),
              (
                ['o', lift_511, '=', lift_608, lift_333],
                "Ha|X%tgrQ>lF@Qmrt!NY~hFQAu@;J;UWDk*JV"
              )
            )
          ],
          "\n";
        lift_691 := lift_301;
      }
    }
    {
      print 1347714473, 'z', "\n";
    }
    var methoddefvar_692, methoddefvar_693 := lift_168(
      lift_566,
      lift_278,
      lift_595,
      (var tmpData : seq<int> := []; tmpData),
      1497899541
    );
    {
      var lift_697 := (lift_389, lift_365);
      print (var tmpData : multiset<int> := multiset{}; tmpData), "\n";
      lift_694 := multiset{lift_237, lift_588, lift_402, lift_467};
      lift_697 := lift_697;
    }
  }
}


