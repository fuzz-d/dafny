// RUN: %dafny /noVerify /compile:4 /compileTarget:cs "%s" > "%t"
// RUN: %dafny /noVerify /compile:4 /compileTarget:java "%s" >> "%t"
// RUN: %dafny /noVerify /compile:4 /compileTarget:py "%s" >> "%t"
// RUN: %dafny /noVerify /compile:4 /compileTarget:js "%s" >> "%t"
// RUN: %dafny /noVerify /compile:4 /compileTarget:go "%s" >> "%t"
// RUN: %diff "%s.expect" "%t"

// Seed: 4077321013584231236
// This is a RANDOMLY GENERATED PROGRAM.
// Fuzzer: dafny
// Version: dafny, xsmith 2.0.5 (38f1d83), in Racket 8.9 (vm-type chez-scheme)
// Options: --with-print-constrained true --dafny-syntax true --seed 4077321013584231236
// Seed: 4077321013584231236
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
method lift_668 ()
  returns (arg_672 : int, arg_673 : int)
  requires (true)
  ensures (true)
{
  arg_672 := 114580574;
  arg_673 := 271054756;
  {
    var lift_677 := 'X';
    var lift_676 := lift_677;
    var lift_675 := ();
    var lift_674 := ();
    lift_674 := lift_675;
    lift_676 := lift_677;
  }
}

method lift_643 ()
  returns (arg_647 : int, arg_648 : int)
  requires (true)
  ensures (true)
{
  arg_647 := 1837139700;
  arg_648 := 770989716;
  {
    var lift_651 := arg_648;
    var lift_650 := 753758236;
    var lift_649 := 1248203148;
    lift_649 := lift_650;
    lift_651 := arg_648;
    print lift_650, "\n";
  }
}

method lift_595 (arg_599 : int, arg_600 : int)
  returns (arg_601 : int, arg_602 : int)
  requires (true)
  ensures (true)
{
  arg_601 := 1614517054;
  arg_602 := -957881167;
  {
    var lift_612 := (var tmpData : seq<int> := []; tmpData);
    var lift_611 := 'c';
    var lift_610 := (arg_600, multiset{lift_611});
    var lift_609 := lift_610;
    var lift_608 := 'F';
    var lift_607 := lift_608;
    var lift_606 := lift_607;
    var lift_605 := 'X';
    var lift_604 := (arg_599, multiset{lift_605, lift_606, '_'});
    var lift_603 := ();
    lift_603 := lift_603;
    lift_604 := lift_609;
    lift_612 := [arg_599];
    print arg_601, "\n";
    print arg_602, "\n";
  }
}

method lift_481 (arg_485 : int)
  returns (arg_486 : int, arg_487 : int)
  requires (true)
  ensures (true)
{
  arg_486 := 1579033080;
  arg_487 := -1114671027;
  {
    var lift_489 := '_';
    var lift_488 := lift_489;
    lift_488 := lift_489;
    print arg_487, "\n";
  }
}

method lift_461 (arg_464 : int)
  returns (arg_465 : int)
  requires (true)
  ensures (true)
{
  arg_465 := -1760503306;
  {
    var lift_474 := 506200282;
    var lift_473 := ();
    var lift_472 := lift_473;
    var lift_471 := lift_472;
    var lift_470 := lift_471;
    var lift_469 := lift_470;
    var lift_468 := (lift_469, {arg_464, arg_464});
    var lift_467 := false;
    var lift_466 := lift_467;
    print arg_464, "\n";
    lift_466 := lift_466;
    lift_468 := (lift_473, (var tmpData : set<int> := {}; tmpData));
    print arg_465, "\n";
    print lift_474, "\n";
  }
}

method lift_437 (arg_441 : int, arg_442 : int)
  returns (arg_443 : int, arg_444 : int)
  requires (true)
  ensures (true)
{
  arg_443 := 802747199;
  arg_444 := -147284138;
  {
    var lift_448 := ();
    var lift_447 := (var tmpData : multiset<bool> := multiset{}; tmpData);
    var lift_446 := lift_447;
    var lift_445 := ();
    lift_445 := lift_445;
    print 1108865858, "\n";
    lift_446 := lift_447;
    lift_448 := ();
  }
}

method lift_420 (arg_423 : int)
  returns (arg_424 : int)
  requires (true)
  ensures (true)
{
  arg_424 := 2113401495;
  {
    var lift_425 := arg_423;
    print lift_425, "\n";
    print lift_425, "\n";
    print lift_425, "\n";
    print lift_425, "\n";
    print arg_423, "\n";
  }
}

method lift_365 ()
  returns (arg_369 : int, arg_370 : int)
  requires (true)
  ensures (true)
{
  arg_369 := 2034288015;
  arg_370 := 112402611;
  {
    var lift_376 := true;
    var lift_375 := (true, lift_376);
    var lift_374 := false;
    var lift_373 := (lift_374, false);
    var lift_372 := 514576208;
    var lift_371 := 'A';
    lift_371 := 'c';
    print lift_372, "\n";
    lift_373 := lift_375;
  }
}

method lift_360 ()
  returns (arg_363 : int)
  requires (true)
  ensures (true)
{
  arg_363 := 252473827;
  {
    var lift_364 := '^';
    lift_364 := lift_364;
  }
}

method lift_348 (arg_352 : int, arg_353 : int, arg_354 : int)
  returns (arg_355 : int, arg_356 : int)
  requires (true)
  ensures (true)
{
  arg_355 := -774094050;
  arg_356 := -1944789765;
  {
    var lift_359 := true;
    var lift_358 := true;
    var lift_357 := -1480650639;
    lift_357 := arg_352;
    lift_358 := lift_358;
    lift_359 := lift_358;
  }
}

method lift_338 (arg_341 : int)
  returns (arg_342 : int)
  requires (true)
  ensures (true)
{
  arg_342 := 1436245664;
  {
    var lift_344 := true;
    var lift_343 := lift_344;
    print arg_342, "\n";
    lift_343 := lift_344;
  }
}

function lift_313 (
  arg_315 : (),
  arg_316 : (),
  arg_317 : set<()>,
  arg_318 : seq<bool>
) : seq<set<bool>>
{
  var lift_324 := true;
  var lift_323 := lift_324;
  var lift_322 := lift_323;
  var lift_321 := {lift_322, lift_322, lift_323, lift_322, lift_323};
  var lift_320 := lift_321;
  var lift_319 := [lift_320, lift_321];
  lift_319
}

method lift_287 (arg_291 : int, arg_292 : int, arg_293 : int)
  returns (arg_294 : int, arg_295 : int)
  requires (true)
  ensures (true)
{
  arg_294 := 1365273437;
  arg_295 := -2112141352;
  {
    var lift_300 := 1315504645;
    var lift_299 := ();
    var lift_298 := ();
    var lift_297 := true;
    var lift_296 := lift_297;
    lift_296 := lift_296;
    lift_298 := lift_299;
    lift_300 := arg_293;
  }
}

function lift_280 (arg_282 : (char, int)) : char
{
  var lift_284 := 'd';
  var lift_283 := lift_284;
  lift_283
}

method lift_206 ()
  returns (arg_210 : int, arg_211 : int)
  requires (true)
  ensures (true)
{
  arg_210 := -1315577354;
  arg_211 := -660938730;
  {
    var lift_217 := "aDe?PY+oUDKKywkZ|Q=Q%$A";
    var lift_216 := (lift_217, {arg_210, arg_210, arg_211, arg_210});
    var lift_215 := 1720608238;
    var lift_214 := {arg_210, arg_210, lift_215, lift_215};
    var lift_213 := ("x|d|ngunCyhNw=SYFh+~ss", lift_214);
    var lift_212 := 'N';
    lift_212 := 'g';
    print arg_211, "\n";
    lift_213 := lift_216;
    print -724969386, "\n";
    print arg_210, "\n";
  }
}

method lift_193 (arg_197 : int)
  returns (arg_198 : int, arg_199 : int)
  requires (true)
  ensures (true)
{
  arg_198 := 925628913;
  arg_199 := 904224444;
  {
    var lift_202 := 'X';
    var lift_201 := true;
    var lift_200 := true;
    lift_200 := lift_201;
    lift_202 := lift_202;
  }
}

method lift_164 ()
  returns (arg_168 : int, arg_169 : int)
  requires (true)
  ensures (true)
{
  arg_168 := -337816767;
  arg_169 := 91733587;
  {
    var lift_192 := '+';
    var lift_191 := ('T', arg_168, lift_192);
    var lift_190 := (lift_191, arg_168);
    var lift_189 := 'I';
    var lift_188 := 'j';
    var lift_187 := lift_188;
    var lift_186 := (lift_187, arg_168, lift_189);
    var lift_185 := (lift_186, arg_168);
    var lift_184 := 1815165052;
    var lift_183 := 'N';
    var lift_182 := arg_168;
    var lift_181 := (lift_182, 1001566730, lift_183);
    var lift_180 := (lift_181, lift_184);
    var lift_179 := lift_180;
    var lift_178 := true;
    var lift_177 := (arg_168, lift_178);
    var lift_176 := false;
    var lift_175 := lift_176;
    var lift_174 := multiset{
      (arg_168, lift_175),
      (arg_169, lift_176),
      lift_177,
      lift_177
    };
    var lift_173 := lift_174;
    var lift_172 := lift_173;
    var lift_171 := false;
    var lift_170 := lift_171;
    lift_170 := lift_171;
    lift_172 := lift_173;
    lift_179 := lift_180;
    lift_185 := lift_190;
  }
}

method lift_149 ()
  returns (arg_152 : int)
  requires (true)
  ensures (true)
{
  arg_152 := -779375297;
  {
    var lift_154 := true;
    var lift_153 := 410276407;
    print lift_153, "\n";
    lift_154 := lift_154;
  }
}

method lift_132 (arg_135 : int, arg_136 : int, arg_137 : int)
  returns (arg_138 : int)
  requires (true)
  ensures (true)
{
  arg_138 := 1782371945;
  {
    var lift_141 := ();
    var lift_140 := lift_141;
    var lift_139 := lift_140;
    print arg_136, "\n";
    lift_139 := lift_139;
    print arg_137, "\n";
  }
}

method lift_122 (arg_126 : int, arg_127 : int)
  returns (arg_128 : int, arg_129 : int)
  requires (true)
  ensures (true)
{
  arg_128 := 1080081807;
  arg_129 := -962180902;
  {
    print arg_128, "\n";
    print arg_129, "\n";
    print arg_126, "\n";
  }
}

method lift_114 ()
  returns (arg_118 : int, arg_119 : int)
  requires (true)
  ensures (true)
{
  arg_118 := 290526766;
  arg_119 := 302123062;
  {
    var lift_120 := 'J';
    lift_120 := lift_120;
  }
}

method lift_105 (arg_108 : int, arg_109 : int)
  returns (arg_110 : int)
  requires (true)
  ensures (true)
{
  arg_110 := 521964551;
  {
    print arg_108, "\n";
    print arg_108, "\n";
  }
}

method lift_87 (arg_90 : int, arg_91 : int)
  returns (arg_92 : int)
  requires (true)
  ensures (true)
{
  arg_92 := -170936167;
  {
    var lift_101 := -1594104685;
    var lift_100 := false;
    var lift_99 := lift_100;
    var lift_98 := (lift_99, lift_101);
    var lift_97 := 637075650;
    var lift_96 := 'T';
    var lift_95 := lift_96;
    var lift_94 := arg_91;
    var lift_93 := ((true, lift_94, lift_95), lift_97, lift_98);
    lift_93 := lift_93;
  }
}

method lift_35 (arg_38 : int, arg_39 : int)
  returns (arg_40 : int)
  requires (true)
  ensures (true)
{
  arg_40 := 2026644940;
  {
    var lift_46 := 'o';
    var lift_45 := lift_46;
    var lift_44 := '*';
    var lift_43 := ();
    var lift_42 := lift_43;
    var lift_41 := arg_40;
    print arg_38, "\n";
    print lift_41, "\n";
    lift_42 := lift_42;
    lift_44 := lift_45;
    print arg_39, "\n";
  }
}

method Main () {
  var lift_667 := 'a';
  var lift_666 := lift_667;
  var lift_665 := 'L';
  var lift_664 := [lift_665, lift_666, lift_666, lift_666, lift_665];
  var lift_663 := '\'';
  var lift_662 := {lift_663, 'c', lift_663, 'P'};
  var lift_661 := false;
  var lift_660 := true;
  var lift_659 := lift_660;
  var lift_658 := multiset{lift_659, lift_659, lift_659, lift_661, lift_659};
  var lift_657 := (lift_658, lift_662, lift_664);
  var lift_656 := lift_657;
  var lift_640 := '!';
  var lift_639 := true;
  var lift_638 := 686223174;
  var lift_637 := lift_638;
  var lift_636 := lift_637;
  var lift_635 := (lift_636, lift_639, lift_640);
  var lift_634 := lift_635;
  var lift_633 := 'T';
  var lift_632 := {lift_633, lift_633, lift_633};
  var lift_631 := (lift_632, lift_634, lift_633);
  var lift_623 := ();
  var lift_622 := false;
  var lift_621 := 501442742;
  var lift_620 := lift_621;
  var lift_619 := (lift_620, lift_622, lift_623);
  var lift_617 := (var tmpData : multiset<int> := multiset{}; tmpData);
  var lift_594 := 563532205;
  var lift_593 := -314008348;
  var lift_592 := -584188454;
  var lift_591 := 350234788;
  var lift_590 := [lift_591, lift_592, lift_593, lift_594];
  var lift_589 := ();
  var lift_588 := {lift_589};
  var lift_587 := lift_588;
  var lift_582 := (var tmpData : seq<int> := []; tmpData);
  var lift_581 := {(false, lift_582)};
  var lift_580 := (var tmpData : set<bool> := {}; tmpData);
  var lift_579 := 681495965;
  var lift_578 := lift_579;
  var lift_577 := (lift_578, lift_580, lift_581);
  var lift_573 := '!';
  var lift_572 := lift_573;
  var lift_571 := ();
  var lift_570 := true;
  var lift_569 := ();
  var lift_568 := false;
  var lift_567 := true;
  var lift_566 := (lift_567, lift_568, lift_569);
  var lift_565 := lift_566;
  var lift_564 := ();
  var lift_563 := lift_564;
  var lift_562 := (false, true, lift_563);
  var lift_561 := false;
  var lift_560 := (
    lift_561,
    {lift_562, lift_565, (lift_561, lift_570, lift_571)},
    lift_572
  );
  var lift_559 := true;
  var lift_558 := false;
  var lift_557 := (lift_558, -1330911360, lift_559);
  var lift_556 := lift_557;
  var lift_555 := lift_556;
  var lift_554 := lift_555;
  var lift_553 := [lift_554, lift_555];
  var lift_552 := lift_553;
  var lift_544 := false;
  var lift_543 := multiset{false, lift_544};
  var lift_542 := 336075192;
  var lift_541 := {lift_542, lift_542, lift_542, lift_542};
  var lift_540 := 311038927;
  var lift_539 := {lift_540, lift_540};
  var lift_538 := {{-183429185}, lift_539, lift_541, lift_541};
  var lift_537 := lift_538;
  var lift_536 := false;
  var lift_535 := 'l';
  var lift_534 := false;
  var lift_533 := ('U', lift_534, (lift_535, lift_536));
  var lift_532 := false;
  var lift_531 := '*';
  var lift_530 := (lift_531, lift_532);
  var lift_529 := true;
  var lift_528 := 'G';
  var lift_527 := (lift_528, lift_529, lift_530);
  var lift_526 := true;
  var lift_525 := 'P';
  var lift_524 := (lift_525, lift_526);
  var lift_523 := false;
  var lift_522 := lift_523;
  var lift_521 := 'E';
  var lift_520 := (lift_521, lift_522, lift_524);
  var lift_519 := multiset{lift_520, lift_527, lift_533, lift_520};
  var lift_518 := lift_519;
  var lift_517 := (lift_518, lift_537, lift_543);
  var lift_516 := lift_517;
  var lift_515 := -782981747;
  var lift_514 := {141965032, lift_515};
  var lift_513 := lift_514;
  var lift_512 := ();
  var lift_511 := lift_512;
  var lift_510 := 'R';
  var lift_509 := lift_510;
  var lift_508 := 'q';
  var lift_507 := (lift_508, [lift_509, lift_509, '~']);
  var lift_506 := lift_507;
  var lift_505 := lift_506;
  var lift_504 := lift_505;
  var lift_503 := "V<CI;W^'KR^rTe!f";
  var lift_493 := '=';
  var lift_492 := 'S';
  var lift_491 := ();
  var lift_490 := (lift_491, ('b', lift_492, 350549442), lift_493);
  var lift_480 := false;
  var lift_479 := false;
  var lift_478 := false;
  var lift_477 := {lift_478, lift_478, lift_479, lift_478, lift_480};
  var lift_454 := ();
  var lift_453 := true;
  var lift_452 := (lift_453, 'e');
  var lift_451 := lift_452;
  var lift_450 := ();
  var lift_449 := (lift_450, lift_451, lift_454);
  var lift_436 := 1577889022;
  var lift_435 := lift_436;
  var lift_434 := true;
  var lift_433 := (lift_434, 'e', lift_435);
  var lift_431 := 1219812841;
  var lift_430 := 'q';
  var lift_429 := true;
  var lift_428 := (lift_429, lift_430, lift_431);
  var lift_427 := (lift_428, true);
  var lift_419 := false;
  var lift_418 := '\'';
  var lift_417 := (lift_418, lift_419);
  var lift_416 := false;
  var lift_415 := true;
  var lift_414 := ({lift_415, lift_416}, lift_417);
  var lift_413 := lift_414;
  var lift_412 := 1085080721;
  var lift_411 := '?';
  var lift_410 := '<';
  var lift_409 := (lift_410, lift_411, lift_411);
  var lift_408 := lift_409;
  var lift_407 := (lift_408, lift_412);
  var lift_406 := -233964124;
  var lift_405 := '\'';
  var lift_404 := 'J';
  var lift_403 := lift_404;
  var lift_402 := ('c', lift_403, lift_405);
  var lift_401 := (lift_402, lift_406);
  var lift_400 := {lift_401, lift_401, lift_407, lift_407, lift_401};
  var lift_399 := lift_400;
  var lift_398 := ();
  var lift_397 := "n%!TkQObJWq:TysF=G*ymkzhzq_T\"VjRq%MgWNy";
  var lift_396 := false;
  var lift_395 := (1043273879, lift_396);
  var lift_394 := lift_395;
  var lift_393 := lift_394;
  var lift_392 := false;
  var lift_391 := lift_392;
  var lift_390 := lift_391;
  var lift_389 := lift_390;
  var lift_388 := lift_389;
  var lift_387 := 1222385055;
  var lift_386 := (lift_387, lift_388);
  var lift_385 := {lift_386, lift_393, (1236357953, lift_390)};
  var lift_384 := {lift_385, lift_385, lift_385};
  var lift_383 := (lift_384, lift_397, false);
  var lift_379 := 281225398;
  var lift_378 := -722611532;
  var lift_377 := lift_378;
  var lift_347 := (var tmpData : multiset<()> := multiset{}; tmpData);
  var lift_335 := 777869973;
  var lift_334 := 293066919;
  var lift_333 := [lift_334, lift_335, lift_334];
  var lift_332 := lift_333;
  var lift_331 := lift_332;
  var lift_326 := ();
  var lift_308 := '\'';
  var lift_307 := 570318341;
  var lift_306 := true;
  var lift_305 := lift_306;
  var lift_304 := (lift_305, lift_307, lift_308);
  var lift_303 := '_';
  var lift_302 := (lift_303, lift_304);
  var lift_279 := 'V';
  var lift_277 := 'R';
  var lift_276 := lift_277;
  var lift_275 := ();
  var lift_274 := 592437360;
  var lift_273 := 1262671926;
  var lift_272 := lift_273;
  var lift_271 := lift_272;
  var lift_270 := {-31752969, lift_271, lift_272, lift_274};
  var lift_269 := (lift_270, lift_275, lift_276);
  var lift_268 := 1979140362;
  var lift_267 := {-884885603, lift_268};
  var lift_260 := false;
  var lift_259 := -1145826801;
  var lift_258 := lift_259;
  var lift_257 := lift_258;
  var lift_256 := (lift_257, lift_260, 'D');
  var lift_255 := ();
  var lift_254 := (lift_255, lift_256);
  var lift_253 := 'P';
  var lift_252 := (lift_253, lift_254);
  var lift_251 := lift_252;
  var lift_250 := ';';
  var lift_249 := true;
  var lift_248 := 27811656;
  var lift_247 := ();
  var lift_246 := (lift_247, (lift_248, lift_249, lift_250));
  var lift_245 := 'T';
  var lift_244 := (lift_245, lift_246);
  var lift_243 := lift_244;
  var lift_241 := false;
  var lift_240 := 343906441;
  var lift_239 := (lift_240, lift_241, 'w');
  var lift_238 := ();
  var lift_237 := lift_238;
  var lift_236 := lift_237;
  var lift_235 := (lift_236, lift_239);
  var lift_234 := 'v';
  var lift_233 := lift_234;
  var lift_232 := lift_233;
  var lift_231 := false;
  var lift_230 := -678488070;
  var lift_229 := (lift_230, lift_231, lift_232);
  var lift_228 := ();
  var lift_227 := (lift_228, lift_229);
  var lift_222 := true;
  var lift_162 := '^';
  var lift_161 := '+';
  var lift_160 := (lift_161, lift_162, 'b');
  var lift_159 := (lift_160, -251403884);
  var lift_158 := lift_159;
  var lift_157 := {lift_158, lift_159, lift_158, lift_159};
  var lift_156 := lift_157;
  var lift_155 := [lift_156];
  var lift_147 := 'T';
  var lift_146 := -1300882975;
  var lift_145 := (lift_146, lift_147);
  var lift_144 := lift_145;
  var lift_121 := 'B';
  var lift_85 := false;
  var lift_84 := '=';
  var lift_83 := lift_84;
  var lift_82 := lift_83;
  var lift_81 := (lift_82, [true, lift_85]);
  var lift_80 := true;
  var lift_79 := [lift_80];
  var lift_78 := 'n';
  var lift_77 := {(lift_78, lift_79), lift_81, lift_81};
  var lift_76 := lift_77;
  var lift_75 := true;
  var lift_74 := multiset{lift_75};
  var lift_73 := ("kv_\"+", lift_74, lift_76);
  var lift_72 := lift_73;
  var lift_71 := true;
  var lift_70 := 'F';
  var lift_69 := (lift_70, [lift_71, lift_71, lift_71]);
  var lift_66 := false;
  var lift_65 := [lift_66];
  var lift_60 := ['f'];
  var lift_57 := 1960414613;
  var lift_56 := false;
  var lift_55 := lift_56;
  var lift_54 := lift_55;
  var lift_53 := (lift_54, lift_57, '=');
  var lift_47 := 888566626;
  var lift_28 := 497214962;
  var lift_27 := '\'';
  var lift_26 := 'M';
  var lift_25 := -162976162;
  var lift_24 := (lift_25, lift_26, lift_27);
  var lift_23 := (lift_24, lift_27, lift_28);
  var lift_22 := [-2102966318];
  var lift_21 := lift_22;
  var lift_20 := '>';
  var lift_19 := (lift_20, -1826034294);
  var lift_18 := (var tmpData : multiset<bool> := multiset{}; tmpData);
  var lift_17 := (lift_18, lift_19, lift_21);
  var lift_16 := -1505273811;
  var lift_15 := true;
  var lift_14 := multiset{lift_15};
  var lift_13 := lift_14;
  var lift_12 := lift_13;
  var lift_11 := false;
  var lift_10 := lift_11;
  var lift_9 := multiset{false, false, true, lift_10, lift_10};
  var lift_8 := [lift_9, lift_12, lift_12, lift_13];
  var lift_7 := (var tmpData : multiset<bool> := multiset{}; tmpData);
  var lift_6 := true;
  var lift_5 := [lift_6];
  var lift_4 := true;
  var lift_3 := false;
  var lift_2 := multiset{lift_3, lift_3, false};
  var lift_1 := (lift_2 - multiset([lift_4, lift_3, lift_3]));
  lift_1 := ((multiset(lift_5) + lift_7 + safeSeqRef(
    lift_8,
    lift_16,
    lift_7
  ))[((lift_16 < lift_16) in lift_17.0) := lengthNormalize(
    (lift_23.1 as int)
  )]);
  {
    var lift_148 := 1746692485;
    var lift_143 := (-701796428, lift_20);
    var lift_68 := [false, true, lift_54, lift_4, false];
    var lift_67 := (lift_20, lift_68);
    var lift_64 := (lift_20, lift_65);
    var lift_63 := {lift_64, lift_67, lift_69};
    var lift_62 := lift_63;
    var lift_61 := lift_62;
    var lift_59 := (lift_60, lift_7, lift_61);
    var lift_52 := lift_53;
    var lift_51 := (lift_52, lift_20);
    var lift_29 := {lift_16, lift_16, lift_25, lift_28, -749124000};
    if ((|lift_7| !in (
      lift_29,
      840627391,
      ((
        arg_30 : (),
        arg_31 : bool,
        arg_32 : ((), ()),
        arg_33 : ((int, bool, char), (char, bool, char)),
        arg_34 : multiset<multiset<bool>>
      ) => [false])
    ).0)) {
      var lift_142 := -467524323;
      var lift_111 := false;
      var lift_86 := lift_4;
      var lift_58 := lift_59;
      var lift_50 := (lift_4, lift_28, 'A');
      var lift_49 := lift_50;
      var methoddefvar_37 := lift_35(lift_47, 441073734);
      {
        var lift_48 := (lift_49, lift_20);
        print lift_28, "\n";
        lift_48 := lift_51;
        lift_58 := lift_72;
        print methoddefvar_37, "\n";
      }
      lift_86 := (false <== lift_86 <== false);
      {
        var lift_131 := ();
        var lift_130 := ();
        var lift_104 := multiset{lift_70, lift_20, lift_84};
        var lift_103 := lift_28;
        var lift_102 := -1239754484;
        var methoddefvar_89 := lift_87(lift_57, lift_102);
        {
          print methoddefvar_89, "\n";
          lift_103 := lift_57;
          print -987227413, "\n";
          lift_104 := lift_104;
        }
        var methoddefvar_107 := lift_105(lift_16, lift_47);
        {
          var lift_113 := ();
          var lift_112 := (lift_113, lift_56);
          print lift_16, "\n";
          print lift_47, "\n";
          lift_111 := lift_75;
          lift_112 := lift_112;
        }
        var methoddefvar_116, methoddefvar_117 := lift_114();
        {
          lift_121 := 'v';
        }
        var methoddefvar_124, methoddefvar_125 := lift_122(-766761104, lift_57);
        {
          print methoddefvar_125, "\n";
          lift_130 := lift_131;
        }
      }
      var methoddefvar_134 := lift_132(lift_57, lift_142, lift_142);
      {
        lift_143 := lift_144;
        print lift_16, "\n";
        lift_148 := lift_148;
      }
    } else {
      var methoddefvar_151 := lift_149();
      {
        var lift_163 := lift_155;
        lift_155 := lift_163;
      }
    }
  }
  {
    var lift_346 := lift_347;
    var lift_337 := (lift_26, [lift_245, lift_276, 'n', lift_147]);
    var lift_330 := [lift_21, lift_21];
    var lift_329 := lift_330;
    var lift_312 := {true};
    var lift_311 := [{lift_249, lift_80, lift_71}, lift_312];
    var lift_264 := (lift_82, [true, lift_249, lift_231, lift_6, lift_80]);
    var lift_263 := (896765738, 'I');
    var lift_262 := (lift_263, {lift_264, lift_69, lift_81, lift_69, lift_81});
    var lift_261 := (var tmpData : set<(char, seq<bool>)> := {}; tmpData);
    var lift_242 := [lift_243, ('J', lift_246), lift_251];
    var lift_226 := (lift_47, lift_85, lift_26);
    var lift_225 := ();
    var lift_224 := [(lift_225, lift_226), lift_227, lift_227];
    var lift_223 := safeSeqRef(lift_224, lift_57, lift_235);
    var lift_221 := ();
    var lift_220 := (lift_221, lift_161);
    var methoddefvar_166, methoddefvar_167 := lift_164();
    {
      var lift_205 := 'h';
      var lift_204 := multiset{lift_71, lift_54, lift_15, lift_85};
      var lift_203 := (var tmpData : seq<seq<int>> := []; tmpData);
      var methoddefvar_195, methoddefvar_196 := lift_193(methoddefvar_167);
      {
        print lift_28, "\n";
        lift_203 := lift_203;
        lift_204 := lift_13;
        print 204879539, "\n";
        lift_205 := lift_84;
      }
      print lift_16, "\n";
      var methoddefvar_208, methoddefvar_209 := lift_206();
      {
        var lift_219 := ();
        var lift_218 := (lift_219, lift_26);
        lift_218 := lift_220;
        print lift_57, "\n";
        print methoddefvar_208, "\n";
        print methoddefvar_208, "\n";
        lift_222 := lift_75;
      }
      print lift_28, "\n";
    }
    lift_223 := safeSeqRef(
      lift_242,
      lift_47,
      (lift_78, (lift_237, lift_256))
    ).1;
    if (((lift_77 - lift_261) > (lift_77 + lift_76 + lift_76) == lift_262.1)) {
      var lift_265 := [1770556374, 27361566, lift_25];
      print safeSeqRef(lift_21, lift_47, lift_248), "\n";
      {
        var lift_278 := lift_245;
        var lift_266 := (lift_267, lift_238, lift_20);
        lift_265 := lift_21;
        if (lift_66) {
          print lift_146, "\n";
          lift_266 := lift_269;
          lift_278 := lift_277;
        } else {
          print lift_272, "\n";
        }
      }
      lift_279 := lift_280(lift_19);
    } else {
      var lift_301 := [lift_146, lift_273, lift_259, lift_47];
      {
        var lift_285 := 1291458174;
        lift_285 := lift_230;
        var methoddefvar_286 := lift_132(169796459, lift_146, lift_274);
        {
          print lift_240, "\n";
          print lift_16, "\n";
        }
      }
      var methoddefvar_289, methoddefvar_290 := lift_287(
        lift_268,
        lift_25,
        lift_240
      );
      {
        lift_301 := lift_22;
      }
    }
    if (lift_302.1.0) {
      var lift_345 := (lift_75, lift_346, lift_255);
      var lift_328 := lift_329;
      var lift_327 := lift_21;
      var lift_325 := {lift_326, lift_275, (), lift_221, lift_275};
      print lift_248, "\n";
      var methoddefvar_309, methoddefvar_310 := lift_122(lift_248, lift_25);
      {
        print lift_240, "\n";
        print lift_240, "\n";
        print 653537946, "\n";
        print lift_16, "\n";
        print methoddefvar_309, "\n";
      }
      lift_311 := lift_313(lift_221, lift_236, lift_325, lift_5);
      lift_327 := safeSeqRef(lift_328, lift_307, lift_331);
      {
        var methoddefvar_336 := lift_105(-1872499722, lift_230);
        {
          print lift_259, "\n";
        }
        lift_337 := lift_337;
        var methoddefvar_340 := lift_338(1850257719);
        {
          print lift_274, "\n";
          print lift_335, "\n";
          print lift_268, "\n";
          lift_345 := lift_345;
          print lift_334, "\n";
        }
      }
    } else {
      var methoddefvar_350, methoddefvar_351 := lift_348(
        -443114534,
        lift_257,
        lift_47
      );
      {
        print 1987207197, "\n";
      }
    }
    var methoddefvar_362 := lift_360();
    {
      var lift_382 := lift_383;
      var lift_381 := lift_382;
      var lift_380 := lift_381;
      var methoddefvar_367, methoddefvar_368 := lift_365();
      {
        lift_377 := lift_146;
        lift_379 := lift_240;
        print lift_16, "\n";
        print lift_378, "\n";
      }
      print 1624400504, "\n";
      if (false) {
        lift_380 := lift_382;
        print lift_377, "\n";
        print lift_273, "\n";
      } else {
        lift_398 := lift_238;
      }
      print lift_57, "\n";
    }
  }
  if ((((lift_156 - lift_399) !! lift_157) !in (
    lift_413,
    "-o<IVHkPN/%dSi:jPBd$$?~|;\"ZSD@RvLSI"
  ).0.0)) {
    var methoddefvar_422 := lift_420(lift_23.2);
    {
      print lift_57, "\n";
    }
  } else {
    var lift_678 := 'w';
    var lift_655 := [lift_532];
    var lift_653 := (lift_397, lift_5);
    var lift_642 := (
      (lift_232, lift_271, lift_26),
      multiset{
        lift_332,
        [lift_591, -1731838614],
        [lift_592, lift_257, lift_540, lift_146]
      }
    );
    var lift_641 := lift_642;
    var lift_630 := multiset{lift_631};
    var lift_629 := {lift_540, lift_542, -240459464, lift_16, lift_412};
    var lift_616 := lift_617;
    var lift_586 := {lift_238, lift_491, lift_398, lift_238};
    var lift_585 := [lift_586, lift_586, lift_586, lift_587, lift_588];
    var lift_584 := {(true, lift_22)};
    var lift_575 := (var tmpData : set<(bool, bool, ())> := {}; tmpData);
    var lift_502 := (lift_20, lift_503);
    var lift_501 := {lift_502, lift_502, lift_504, (lift_493, lift_60)};
    var lift_498 := (lift_416, true);
    var lift_495 := (lift_303, lift_161, lift_431);
    var lift_476 := lift_477;
    var lift_460 := (lift_276, lift_410);
    var lift_459 := lift_460;
    var lift_457 := (var tmpData : multiset<(char, char)> := multiset{}; tmpData);
    var lift_455 := (lift_230, "&AH/%NI~XsjmDg:cPT$Xt_bS");
    var lift_426 := lift_427;
    {
      var lift_494 := lift_495;
      var lift_456 := lift_457;
      var lift_432 := (lift_433, lift_54);
      {
        var lift_458 := (lift_405, lift_303);
        {
          print lift_387, "\n";
          print lift_273, "\n";
        }
        lift_426 := lift_432;
        print lift_16, "\n";
        var methoddefvar_439, methoddefvar_440 := lift_437(lift_335, lift_272);
        {
          print lift_240, "\n";
          print -966245029, "\n";
          print 1503557846, "\n";
          print lift_274, "\n";
        }
        if (false) {
          lift_449 := (lift_247, lift_452, lift_247);
          lift_455 := lift_455;
        } else {
          lift_456 := multiset{lift_458, lift_459, lift_458, ('r', lift_404)};
          print lift_335, "\n";
          print 1489847553, "\n";
        }
      }
      if (safeSeqRef(lift_5, lift_57, lift_241)) {
        var methoddefvar_463 := lift_461(lift_431);
        {
          print lift_268, "\n";
          print lift_268, "\n";
        }
      } else {
        var lift_475 := (lift_82, 1265136513);
        lift_475 := lift_19;
        print lift_274, "\n";
        lift_476 := lift_477;
      }
      var methoddefvar_483, methoddefvar_484 := lift_481(lift_435);
      {
        var lift_497 := (false, false);
        var lift_496 := 1090851514;
        lift_490 := ((), lift_494, lift_405);
        lift_496 := lift_28;
        lift_497 := lift_498;
      }
      var methoddefvar_499, methoddefvar_500 := lift_287(
        lift_272,
        lift_25,
        lift_307
      );
      {
        print lift_257, "\n";
        lift_501 := lift_501;
        lift_511 := lift_255;
        print lift_273, "\n";
      }
    }
    if (((lift_267 - lift_267 - lift_513) !in lift_516.1)) {
      var lift_545 := 524764617;
      lift_545 := (lift_70 as int);
    } else {
      var lift_679 := lift_664;
      var lift_613 := {lift_15};
      var lift_576 := lift_268;
      var lift_574 := (lift_536, lift_575, lift_121);
      var methoddefvar_546 := lift_87(lift_271, -512171128);
      {
        print lift_335, "\n";
      }
      {
        var lift_618 := {lift_71, lift_529, lift_6};
        var lift_615 := (lift_616, lift_618);
        var lift_614 := multiset{
          lift_615,
          ((var tmpData : multiset<int> := multiset{}; tmpData), lift_477)
        };
        var lift_583 := (lift_258, lift_476, lift_584);
        var methoddefvar_547, methoddefvar_548 := lift_114();
        {
          var lift_551 := (lift_532, lift_534);
          var lift_550 := ((lift_521, lift_377, '/'), lift_551, lift_238);
          var lift_549 := false;
          lift_549 := lift_6;
          lift_550 := ((lift_528, lift_271, lift_245), lift_498, lift_511);
          lift_552 := lift_553;
        }
        if (lift_559) {
          print lift_307, "\n";
          lift_560 := lift_574;
          lift_576 := lift_540;
          lift_577 := lift_583;
          lift_585 := lift_585;
        } else {
          lift_590 := [lift_579];
          print lift_591, "\n";
          print lift_378, "\n";
        }
        var methoddefvar_597, methoddefvar_598 := lift_595(lift_146, lift_307);
        {
          var lift_624 := -1213590891;
          lift_613 := lift_477;
          print lift_248, "\n";
          lift_614 := lift_614;
          lift_619 := (-1358307256, lift_54, lift_326);
          lift_624 := lift_591;
        }
        var methoddefvar_625, methoddefvar_626 := lift_193(lift_379);
        {
          var lift_627 := (lift_524, (), lift_276);
          lift_627 := lift_627;
          print lift_271, "\n";
        }
      }
      if ((lift_387 < lift_542)) {
        var lift_654 := (
          [lift_276, 'R', lift_245, lift_403, lift_525],
          lift_655
        );
        {
          var lift_628 := [lift_257];
          lift_628 := lift_590;
          lift_629 := lift_514;
          lift_630 := lift_630;
        }
        lift_641 := lift_641;
        var methoddefvar_645, methoddefvar_646 := lift_643();
        {
          var lift_652 := 'c';
          print lift_25, "\n";
          print -1392169316, "\n";
          lift_652 := lift_83;
        }
        {
          lift_653 := lift_654;
          print lift_248, "\n";
          print lift_591, "\n";
          lift_656 := lift_657;
          print lift_593, "\n";
        }
        var methoddefvar_670, methoddefvar_671 := lift_668();
        {
          lift_678 := 'D';
          print lift_378, "\n";
          lift_679 := lift_664;
          print lift_637, "\n";
          print 1043819702, "\n";
        }
      } else {
        var methoddefvar_680 := lift_35(lift_636, lift_387);
        {
          print lift_259, "\n";
        }
      }
    }
  }
}


