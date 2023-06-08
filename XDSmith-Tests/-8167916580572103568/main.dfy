// RUN: %dafny /noVerify /compile:4 /compileTarget:cs "%s" > "%t"
// RUN: %dafny /noVerify /compile:4 /compileTarget:java "%s" >> "%t"
// RUN: %dafny /noVerify /compile:4 /compileTarget:py "%s" >> "%t"
// RUN: %dafny /noVerify /compile:4 /compileTarget:js "%s" >> "%t"
// RUN: %dafny /noVerify /compile:4 /compileTarget:go "%s" >> "%t"
// RUN: %diff "%s.expect" "%t"

// Seed: -8167916580572103568
// This is a RANDOMLY GENERATED PROGRAM.
// Fuzzer: dafny
// Version: dafny, xsmith 2.0.5 (38f1d83), in Racket 8.9 (vm-type chez-scheme)
// Options: --with-print-constrained true --dafny-syntax true --seed -8167916580572103568
// Seed: -8167916580572103568
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
function lift_809 () : int
{
  var lift_811 := -1054787981;
  lift_811
}

function lift_805 (arg_807 : (bool, char), arg_808 : (int, int)) : (() -> int)
{
  
  lift_809
}

function lift_789 (
  arg_791 : bool,
  arg_792 : int,
  arg_793 : int,
  arg_794 : int,
  arg_795 : int
) : ()
{
  var lift_796 := ();
  lift_796
}

method lift_702 (arg_705 : int)
  returns (arg_706 : int)
  requires (true)
  ensures (true)
{
  arg_706 := -1572494702;
  {
    var lift_746 := true;
    var lift_745 := true;
    var lift_744 := [lift_745];
    var lift_743 := lift_744;
    var lift_742 := lift_743;
    var lift_741 := lift_742;
    var lift_740 := true;
    var lift_739 := 'I';
    var lift_738 := (lift_739, lift_740);
    var lift_737 := multiset{-1496121181};
    var lift_736 := (lift_737, lift_738, lift_741);
    var lift_735 := lift_736;
    var lift_734 := false;
    var lift_733 := [lift_734, false, lift_734, false];
    var lift_732 := false;
    var lift_731 := ';';
    var lift_730 := (lift_731, lift_732);
    var lift_729 := (
      multiset{arg_705, -945756351, arg_706, arg_706},
      lift_730,
      lift_733
    );
    var lift_728 := true;
    var lift_727 := lift_728;
    var lift_726 := lift_727;
    var lift_725 := false;
    var lift_724 := [lift_725, lift_726];
    var lift_723 := lift_724;
    var lift_722 := true;
    var lift_721 := ('O', lift_722);
    var lift_720 := -1161365530;
    var lift_719 := multiset{arg_705, arg_706, lift_720, arg_706};
    var lift_718 := (lift_719, lift_721, lift_723);
    var lift_717 := {lift_718, lift_718, lift_729, lift_718, lift_735};
    var lift_716 := (var tmpData : seq<bool> := []; tmpData);
    var lift_715 := false;
    var lift_714 := '~';
    var lift_713 := (lift_714, lift_715);
    var lift_712 := (var tmpData : multiset<int> := multiset{}; tmpData);
    var lift_711 := (lift_712, lift_713, lift_716);
    var lift_710 := {lift_711};
    var lift_709 := 1548529924;
    var lift_708 := false;
    var lift_707 := false;
    lift_707 := lift_708;
    lift_709 := arg_706;
    lift_710 := lift_717;
    print arg_705, "\n";
    lift_746 := lift_726;
  }
}

function lift_696 () : set<bool>
{
  var lift_699 := false;
  var lift_698 := {lift_699, lift_699, lift_699, lift_699};
  lift_698
}

method lift_547 (arg_551 : int, arg_552 : int, arg_553 : int)
  returns (arg_554 : int, arg_555 : int)
  requires (true)
  ensures (true)
{
  arg_554 := 1490693689;
  arg_555 := 1307776561;
  {
    var lift_607 := arg_551;
    var lift_606 := 'n';
    var lift_605 := '+';
    var lift_604 := lift_605;
    var lift_603 := (lift_604, lift_606);
    var lift_602 := true;
    var lift_601 := false;
    var lift_600 := [lift_601, lift_602, lift_601, lift_601];
    var lift_599 := 'U';
    var lift_598 := 'l';
    var lift_597 := (lift_598, lift_598);
    var lift_596 := lift_597;
    var lift_595 := true;
    var lift_594 := lift_595;
    var lift_593 := lift_594;
    var lift_592 := lift_593;
    var lift_591 := [lift_592];
    var lift_590 := ('E', lift_591, lift_596);
    var lift_589 := lift_590;
    var lift_588 := lift_589;
    var lift_587 := {
      lift_588,
      lift_589,
      (lift_599, lift_600, lift_603),
      (lift_605, lift_600, lift_603),
      lift_588
    };
    var lift_586 := 'h';
    var lift_585 := lift_586;
    var lift_584 := (var tmpData : seq<bool> := []; tmpData);
    var lift_583 := 'A';
    var lift_582 := (lift_583, lift_584, (lift_583, lift_585));
    var lift_581 := lift_582;
    var lift_580 := 'S';
    var lift_579 := (lift_580, lift_580);
    var lift_578 := false;
    var lift_577 := false;
    var lift_576 := true;
    var lift_575 := [lift_576, lift_577, false, lift_578, lift_577];
    var lift_574 := ('b', lift_575, lift_579);
    var lift_573 := ':';
    var lift_572 := 'o';
    var lift_571 := (lift_572, lift_573);
    var lift_570 := true;
    var lift_569 := [lift_570, lift_570];
    var lift_568 := 'N';
    var lift_567 := (lift_568, lift_569, lift_571);
    var lift_566 := {lift_567, lift_574, lift_581};
    var lift_565 := true;
    var lift_564 := lift_565;
    var lift_563 := (1612914104, lift_564);
    var lift_562 := true;
    var lift_561 := (lift_562, lift_563);
    var lift_560 := false;
    var lift_559 := (arg_552, lift_560);
    var lift_558 := false;
    var lift_557 := (lift_558, lift_559);
    var lift_556 := ();
    lift_556 := lift_556;
    lift_557 := lift_561;
    print arg_553, "\n";
    lift_566 := lift_587;
    lift_607 := arg_555;
  }
}

method lift_514 (arg_518 : int, arg_519 : int)
  returns (arg_520 : int, arg_521 : int)
  requires (true)
  ensures (true)
{
  arg_520 := -33617180;
  arg_521 := 808051114;
  {
    var lift_524 := '=';
    var lift_523 := 'e';
    var lift_522 := ();
    lift_522 := lift_522;
    lift_523 := lift_524;
  }
}

method lift_492 ()
  returns (arg_495 : int)
  requires (true)
  ensures (true)
{
  arg_495 := 960995143;
  {
    var lift_512 := multiset{'H'};
    var lift_511 := lift_512;
    var lift_510 := ();
    var lift_509 := false;
    var lift_508 := lift_509;
    var lift_507 := (lift_508, lift_510, lift_511);
    var lift_506 := ();
    var lift_505 := ();
    var lift_504 := arg_495;
    var lift_503 := false;
    var lift_502 := true;
    var lift_501 := multiset{lift_502, lift_502, lift_503};
    var lift_500 := true;
    var lift_499 := lift_500;
    var lift_498 := lift_499;
    var lift_497 := true;
    var lift_496 := multiset{lift_497, lift_498};
    lift_496 := lift_501;
    print lift_504, "\n";
    lift_505 := lift_506;
    print -891333277, "\n";
    lift_507 := lift_507;
  }
}

method lift_387 (arg_391 : int)
  returns (arg_392 : int, arg_393 : int)
  requires (true)
  ensures (true)
{
  arg_392 := 253330611;
  arg_393 := -1283577907;
  {
    var lift_421 := multiset{arg_392};
    var lift_420 := multiset{arg_391, arg_393};
    var lift_419 := 'Q';
    var lift_418 := false;
    var lift_417 := (lift_418, arg_393, lift_419);
    var lift_416 := (lift_417, lift_420);
    var lift_415 := lift_416;
    var lift_414 := false;
    var lift_413 := true;
    var lift_412 := true;
    var lift_411 := lift_412;
    var lift_410 := multiset{lift_411, lift_413, lift_414, lift_413, lift_411};
    var lift_409 := lift_410;
    var lift_408 := lift_409;
    var lift_407 := lift_408;
    var lift_406 := 'H';
    var lift_405 := ('q', arg_392, lift_406);
    var lift_404 := lift_405;
    var lift_403 := 'r';
    var lift_402 := lift_403;
    var lift_401 := lift_402;
    var lift_400 := false;
    var lift_399 := (lift_400, lift_401, lift_404);
    var lift_398 := 'W';
    var lift_397 := (lift_398, arg_391, '?');
    var lift_396 := '\'';
    var lift_395 := false;
    var lift_394 := (lift_395, lift_396, lift_397);
    print arg_393, "\n";
    lift_394 := lift_399;
    lift_407 := lift_407;
    lift_415 := ((lift_414, arg_391, 'c'), lift_421);
  }
}

method lift_323 (arg_326 : int)
  returns (arg_327 : int)
  requires (true)
  ensures (true)
{
  arg_327 := -1188605041;
  {
    var lift_328 := '~';
    lift_328 := lift_328;
    print arg_326, "\n";
  }
}

method lift_307 (arg_310 : int, arg_311 : int)
  returns (arg_312 : int)
  requires (true)
  ensures (true)
{
  arg_312 := 1317713888;
  {
    var lift_321 := 1259500487;
    var lift_320 := '?';
    var lift_319 := lift_320;
    var lift_318 := 'B';
    var lift_317 := 'Z';
    var lift_316 := {lift_317, lift_317, lift_318, lift_319};
    var lift_315 := lift_316;
    var lift_314 := 'o';
    var lift_313 := (lift_314, arg_310, lift_315);
    lift_313 := lift_313;
    print lift_321, "\n";
    print lift_321, "\n";
    print arg_312, "\n";
  }
}

method lift_244 (arg_247 : int)
  returns (arg_248 : int)
  requires (true)
  ensures (true)
{
  arg_248 := 1753265391;
  {
    var lift_258 := 1372695908;
    var lift_257 := 'L';
    var lift_256 := lift_257;
    var lift_255 := 'D';
    var lift_254 := lift_255;
    var lift_253 := {lift_254, lift_256, lift_256, lift_255, ';'};
    var lift_252 := 'd';
    var lift_251 := lift_252;
    var lift_250 := {'n', lift_251};
    var lift_249 := [lift_250, lift_253];
    print arg_248, "\n";
    print arg_247, "\n";
    lift_249 := lift_249;
    lift_258 := lift_258;
    print arg_248, "\n";
  }
}

method lift_177 (arg_181 : int)
  returns (arg_182 : int, arg_183 : int)
  requires (true)
  ensures (true)
{
  arg_182 := 2116781619;
  arg_183 := -718012133;
  {
    var lift_223 := (var tmpData : multiset<char> := multiset{}; tmpData);
    var lift_222 := ();
    var lift_221 := lift_222;
    var lift_220 := lift_221;
    var lift_219 := (lift_220, lift_223);
    var lift_218 := false;
    var lift_217 := {lift_218, lift_218, lift_218, lift_218};
    var lift_216 := true;
    var lift_215 := lift_216;
    var lift_214 := lift_215;
    var lift_213 := lift_214;
    var lift_212 := (lift_213, lift_215);
    var lift_211 := -335978876;
    var lift_210 := false;
    var lift_209 := (lift_210, arg_182, lift_211);
    var lift_208 := (lift_209, lift_212, lift_217);
    var lift_207 := false;
    var lift_206 := true;
    var lift_205 := (lift_206, lift_206);
    var lift_204 := false;
    var lift_203 := (lift_204, arg_183, arg_183);
    var lift_202 := (lift_203, lift_205, {false, lift_206, lift_207, lift_207});
    var lift_201 := lift_202;
    var lift_200 := multiset{
      lift_201,
      lift_208,
      ((lift_207, arg_182, arg_181), lift_205, lift_217)
    };
    var lift_199 := lift_200;
    var lift_198 := (var tmpData : multiset<((bool, int, int), (bool, bool), set<bool>)> := multiset{}; tmpData);
    var lift_197 := ();
    var lift_196 := lift_197;
    var lift_195 := false;
    var lift_194 := ':';
    var lift_193 := (lift_194, lift_195, lift_195);
    var lift_192 := 'F';
    var lift_191 := ('O', lift_192);
    var lift_190 := ();
    var lift_189 := false;
    var lift_188 := 'L';
    var lift_187 := '*';
    var lift_186 := lift_187;
    var lift_185 := (lift_186, lift_188);
    var lift_184 := (lift_185, ('w', lift_189, false), lift_190);
    print 32844673, "\n";
    lift_184 := (lift_191, lift_193, lift_196);
    lift_198 := lift_199;
    lift_219 := ((), multiset{'w'});
  }
}

method lift_162 (arg_166 : int)
  returns (arg_167 : int, arg_168 : int)
  requires (true)
  ensures (true)
{
  arg_167 := -562726343;
  arg_168 := 216809561;
  {
    var lift_173 := 'v';
    var lift_172 := 'W';
    var lift_171 := 225467978;
    var lift_170 := true;
    var lift_169 := lift_170;
    print arg_168, "\n";
    lift_169 := lift_170;
    lift_171 := arg_168;
    lift_172 := lift_173;
  }
}

method lift_139 (arg_142 : int)
  returns (arg_143 : int)
  requires (true)
  ensures (true)
{
  arg_143 := -610549659;
  {
    var lift_147 := '-';
    var lift_146 := lift_147;
    var lift_145 := 'J';
    var lift_144 := lift_145;
    print arg_143, "\n";
    lift_144 := lift_145;
    print -1022930417, "\n";
    lift_146 := 'k';
    print arg_142, "\n";
  }
}

method lift_123 ()
  returns (arg_127 : int, arg_128 : int)
  requires (true)
  ensures (true)
{
  arg_127 := 1292966907;
  arg_128 := 1616591198;
  {
    var lift_135 := true;
    var lift_134 := lift_135;
    var lift_133 := ();
    var lift_132 := lift_133;
    var lift_131 := true;
    var lift_130 := multiset{false, lift_131};
    var lift_129 := lift_130;
    print arg_127, "\n";
    lift_129 := lift_129;
    lift_132 := lift_132;
    lift_134 := false;
  }
}

method lift_81 ()
  returns (arg_84 : int)
  requires (true)
  ensures (true)
{
  arg_84 := 1741039655;
  {
    var lift_86 := 1713662332;
    var lift_85 := lift_86;
    lift_85 := 515273184;
  }
}

method lift_55 (arg_59 : int, arg_60 : int)
  returns (arg_61 : int, arg_62 : int)
  requires (true)
  ensures (true)
{
  arg_61 := 692009703;
  arg_62 := -1014717258;
  {
    var lift_66 := ();
    var lift_65 := ();
    var lift_64 := 3766652;
    var lift_63 := 891865132;
    print lift_63, "\n";
    lift_64 := arg_62;
    lift_65 := lift_65;
    lift_66 := lift_65;
  }
}

method lift_1 (arg_4 : int, arg_5 : int, arg_6 : int)
  returns (arg_7 : int)
  requires (true)
  ensures (true)
{
  arg_7 := -1899141870;
  {
    var lift_17 := true;
    var lift_16 := 'u';
    var lift_15 := lift_16;
    var lift_14 := (arg_5, arg_5, arg_7);
    var lift_13 := (
      [arg_5],
      lift_14,
      (var tmpData : multiset<int> := multiset{}; tmpData)
    );
    var lift_12 := lift_13;
    var lift_11 := multiset{arg_4, arg_7, arg_6};
    var lift_10 := (arg_5, -282590293, arg_4);
    var lift_9 := [arg_5, arg_6];
    var lift_8 := (lift_9, lift_10, lift_11);
    lift_8 := lift_12;
    lift_15 := lift_16;
    lift_17 := lift_17;
    print arg_6, "\n";
  }
}

method Main () {
  var lift_814 := (var tmpData : seq<int> := []; tmpData);
  var lift_813 := 2103021332;
  var lift_812 := (lift_813, lift_814);
  var lift_804 := true;
  var lift_803 := 'G';
  var lift_802 := lift_803;
  var lift_801 := {'a', lift_802, lift_802, lift_803};
  var lift_800 := lift_801;
  var lift_799 := (lift_800, lift_804);
  var lift_798 := lift_799;
  var lift_797 := lift_798;
  var lift_784 := '?';
  var lift_783 := lift_784;
  var lift_782 := lift_783;
  var lift_781 := (
    lift_782,
    ((
      arg_785 : int,
      arg_786 : bool,
      arg_787 : bool,
      arg_788 : char
    ) => lift_789)
  );
  var lift_780 := -447532692;
  var lift_779 := false;
  var lift_777 := (((arg_778 : int) => ()), lift_779);
  var lift_776 := lift_777.0(lift_780);
  var lift_775 := -1350740117;
  var lift_774 := lift_775;
  var lift_772 := 'b';
  var lift_771 := -929603421;
  var lift_770 := '-';
  var lift_769 := (lift_770, lift_771, lift_772);
  var lift_768 := false;
  var lift_767 := ();
  var lift_766 := (lift_767, lift_768, lift_769);
  var lift_765 := 'g';
  var lift_764 := lift_765;
  var lift_763 := '&';
  var lift_762 := (lift_763, -35759610, lift_764);
  var lift_761 := false;
  var lift_760 := ();
  var lift_759 := (lift_760, lift_761, lift_762);
  var lift_758 := '?';
  var lift_757 := -1445759118;
  var lift_756 := ('k', lift_757, lift_758);
  var lift_755 := true;
  var lift_754 := ();
  var lift_753 := (lift_754, lift_755, lift_756);
  var lift_752 := lift_753;
  var lift_751 := {lift_752, lift_759, lift_766, lift_766};
  var lift_747 := true;
  var lift_695 := true;
  var lift_694 := {lift_695};
  var lift_689 := ();
  var lift_687 := false;
  var lift_686 := lift_687;
  var lift_685 := (lift_686, lift_687);
  var lift_684 := true;
  var lift_683 := true;
  var lift_682 := lift_683;
  var lift_681 := (lift_682, lift_684);
  var lift_680 := [lift_681, lift_681, lift_681, lift_685, lift_685];
  var lift_679 := false;
  var lift_678 := lift_679;
  var lift_677 := false;
  var lift_676 := (lift_677, lift_678);
  var lift_675 := true;
  var lift_674 := (true, lift_675);
  var lift_673 := [lift_674, lift_674, lift_676, lift_676, lift_676];
  var lift_670 := -1624461367;
  var lift_663 := 538183072;
  var lift_662 := -196602060;
  var lift_661 := (lift_662, lift_663, 'G');
  var lift_660 := (var tmpData : multiset<(multiset<char>, set<char>)> := multiset{}; tmpData);
  var lift_658 := ();
  var lift_657 := false;
  var lift_656 := (lift_657, lift_658);
  var lift_650 := ();
  var lift_649 := ();
  var lift_648 := {lift_649, lift_650, lift_649, ()};
  var lift_641 := 'X';
  var lift_640 := 483010578;
  var lift_639 := -1736224306;
  var lift_638 := (lift_639, lift_640, lift_641);
  var lift_637 := lift_638;
  var lift_636 := lift_637;
  var lift_635 := '~';
  var lift_634 := '?';
  var lift_633 := multiset{lift_634, lift_635, lift_634};
  var lift_632 := lift_633;
  var lift_631 := (lift_632, lift_636);
  var lift_630 := 1672986810;
  var lift_629 := -191710971;
  var lift_628 := 'D';
  var lift_627 := 'h';
  var lift_626 := multiset{lift_627, lift_628};
  var lift_625 := (lift_626, (lift_629, lift_630, '&'));
  var lift_624 := multiset{lift_625, lift_631, lift_631};
  var lift_623 := lift_624;
  var lift_622 := 430491803;
  var lift_621 := lift_622;
  var lift_620 := '$';
  var lift_619 := '?';
  var lift_618 := lift_619;
  var lift_617 := lift_618;
  var lift_616 := 'q';
  var lift_615 := multiset{lift_616, lift_617, 'O', lift_620};
  var lift_614 := lift_615;
  var lift_613 := (lift_614, (lift_621, lift_622, lift_619));
  var lift_612 := lift_613;
  var lift_533 := true;
  var lift_532 := lift_533;
  var lift_531 := lift_532;
  var lift_530 := lift_531;
  var lift_529 := [lift_530, true, lift_533, lift_531, true];
  var lift_528 := false;
  var lift_527 := {[lift_528, true], lift_529};
  var lift_490 := 29881818;
  var lift_489 := '!';
  var lift_488 := (lift_489, lift_490);
  var lift_487 := -1807137423;
  var lift_486 := 'F';
  var lift_485 := (lift_486, lift_487);
  var lift_484 := -1936928475;
  var lift_483 := 'N';
  var lift_482 := (lift_483, lift_484);
  var lift_481 := [lift_482, lift_485, lift_488, lift_485];
  var lift_477 := (var tmpData : set<seq<int>> := {}; tmpData);
  var lift_474 := true;
  var lift_473 := (lift_474, -839541408, true);
  var lift_472 := lift_473;
  var lift_471 := lift_472;
  var lift_470 := lift_471;
  var lift_469 := lift_470;
  var lift_468 := lift_469;
  var lift_467 := lift_468;
  var lift_466 := [lift_467];
  var lift_465 := {lift_466, lift_466};
  var lift_464 := lift_465;
  var lift_458 := '~';
  var lift_457 := lift_458;
  var lift_456 := lift_457;
  var lift_455 := [lift_456, lift_458, '/', lift_458];
  var lift_454 := lift_455;
  var lift_453 := 'm';
  var lift_452 := lift_453;
  var lift_451 := lift_452;
  var lift_450 := lift_451;
  var lift_449 := (lift_450, false, lift_454);
  var lift_443 := true;
  var lift_442 := lift_443;
  var lift_440 := true;
  var lift_439 := [lift_440];
  var lift_438 := true;
  var lift_437 := [lift_438];
  var lift_436 := [lift_437, lift_439, lift_437, lift_439, lift_439];
  var lift_435 := lift_436;
  var lift_432 := 'X';
  var lift_431 := 7908863;
  var lift_430 := (lift_431, lift_432);
  var lift_429 := (var tmpData : set<(int, char)> := {}; tmpData);
  var lift_428 := (433128135, 'e');
  var lift_427 := {lift_428, lift_428};
  var lift_424 := 2110282549;
  var lift_423 := (var tmpData : seq<int> := []; tmpData);
  var lift_422 := [lift_423, lift_423, [lift_424]];
  var lift_384 := ();
  var lift_383 := 2051570045;
  var lift_382 := 'F';
  var lift_381 := ((-830055337, lift_382, 'x'), (lift_383, lift_382), lift_384);
  var lift_380 := lift_381;
  var lift_379 := ();
  var lift_378 := 'v';
  var lift_377 := (-1412981053, lift_378);
  var lift_376 := 's';
  var lift_375 := 'O';
  var lift_374 := -781640219;
  var lift_373 := ((lift_374, lift_375, lift_376), lift_377, lift_379);
  var lift_372 := lift_373;
  var lift_368 := 'r';
  var lift_367 := "-/'lj$HHhwguY'&E=|IbJ!e";
  var lift_366 := 'd';
  var lift_365 := 'X';
  var lift_364 := ['Y'];
  var lift_363 := [
    lift_364,
    lift_364,
    [lift_365, lift_366],
    lift_367,
    ['|', lift_368, lift_366, lift_365, lift_366]
  ];
  var lift_356 := '\'';
  var lift_355 := '>';
  var lift_354 := 'Q';
  var lift_353 := {lift_354, 'x', lift_355, lift_356, lift_356};
  var lift_352 := 'c';
  var lift_351 := lift_352;
  var lift_350 := {'=', 's', lift_351, lift_351};
  var lift_349 := [lift_350, lift_353, {lift_354}];
  var lift_347 := false;
  var lift_346 := 905943008;
  var lift_345 := (lift_346, lift_347);
  var lift_344 := 'S';
  var lift_343 := -167864831;
  var lift_342 := (lift_343, lift_344);
  var lift_341 := (lift_342, lift_345);
  var lift_337 := -127975704;
  var lift_336 := false;
  var lift_335 := ();
  var lift_334 := multiset{lift_335, lift_335, lift_335};
  var lift_333 := lift_334;
  var lift_332 := lift_333;
  var lift_331 := (lift_332, lift_336, lift_337);
  var lift_304 := ';';
  var lift_303 := (lift_304, true);
  var lift_302 := lift_303;
  var lift_301 := false;
  var lift_300 := lift_301;
  var lift_299 := lift_300;
  var lift_298 := true;
  var lift_297 := {lift_298, true, lift_299, lift_300, lift_299};
  var lift_296 := true;
  var lift_295 := {lift_296};
  var lift_294 := lift_295;
  var lift_293 := multiset{lift_294, lift_297, lift_295, lift_295};
  var lift_292 := (lift_293, lift_302);
  var lift_291 := lift_292;
  var lift_288 := ();
  var lift_286 := ();
  var lift_283 := '/';
  var lift_282 := true;
  var lift_281 := true;
  var lift_280 := false;
  var lift_279 := (multiset{lift_280, lift_281, lift_282}, lift_283);
  var lift_274 := {'S'};
  var lift_273 := -780795973;
  var lift_272 := 'i';
  var lift_271 := (lift_272, lift_273);
  var lift_270 := -1766479939;
  var lift_269 := 'a';
  var lift_268 := lift_269;
  var lift_267 := (lift_268, lift_270);
  var lift_266 := -836275180;
  var lift_265 := lift_266;
  var lift_264 := lift_265;
  var lift_263 := lift_264;
  var lift_262 := 'B';
  var lift_261 := multiset{
    (lift_262, lift_263),
    lift_267,
    lift_267,
    lift_271,
    lift_271
  };
  var lift_260 := (lift_261, lift_274);
  var lift_243 := (var tmpData : string := []; tmpData);
  var lift_242 := ('x', '@');
  var lift_241 := ();
  var lift_240 := lift_241;
  var lift_239 := (lift_240, lift_242, lift_243);
  var lift_235 := ('S', false);
  var lift_234 := 1520750547;
  var lift_233 := 'u';
  var lift_232 := (lift_233, 1034472184, lift_234);
  var lift_161 := 189447468;
  var lift_160 := (lift_161, lift_161, lift_161);
  var lift_159 := lift_160;
  var lift_158 := 'A';
  var lift_157 := 'J';
  var lift_156 := lift_157;
  var lift_155 := (lift_156, lift_156, lift_158);
  var lift_154 := (lift_155, lift_159);
  var lift_153 := 1165278216;
  var lift_152 := (1719389516, 1348036595, lift_153);
  var lift_151 := 'G';
  var lift_150 := 'c';
  var lift_149 := (('F', lift_150, lift_151), lift_152);
  var lift_137 := true;
  var lift_122 := false;
  var lift_121 := true;
  var lift_120 := multiset{lift_121, lift_122, lift_122, true};
  var lift_119 := lift_120;
  var lift_118 := ();
  var lift_117 := true;
  var lift_116 := false;
  var lift_115 := lift_116;
  var lift_114 := multiset{true, lift_115, lift_115, false, lift_117};
  var lift_113 := ((), lift_114);
  var lift_112 := lift_113;
  var lift_111 := {lift_112, (lift_118, lift_119)};
  var lift_100 := 'f';
  var lift_99 := lift_100;
  var lift_94 := (var tmpData : set<(char, ())> := {}; tmpData);
  var lift_93 := lift_94;
  var lift_54 := false;
  var lift_53 := lift_54;
  var lift_52 := -1619596263;
  var lift_51 := true;
  var lift_50 := (lift_51, lift_52, lift_53);
  var lift_49 := lift_50;
  var lift_48 := 'y';
  var lift_47 := (false, lift_48);
  var lift_46 := lift_47;
  var lift_43 := false;
  var lift_42 := {lift_43, true, lift_43};
  var lift_41 := lift_42;
  var lift_40 := lift_41;
  var lift_39 := lift_40;
  var lift_38 := [lift_39];
  var lift_31 := (var tmpData : set<bool> := {}; tmpData);
  var lift_29 := (var tmpData : seq<bool> := []; tmpData);
  var lift_28 := lift_29;
  var lift_27 := lift_28;
  var lift_25 := false;
  var lift_24 := lift_25;
  var lift_23 := (-619691871, lift_24, lift_24);
  var lift_22 := -33475639;
  var lift_21 := (lift_22, lift_23);
  {
    var lift_340 := (lift_153, lift_51);
    var lift_322 := [lift_270, lift_52, lift_153, lift_52, lift_161];
    var lift_305 := -360354536;
    var lift_284 := (lift_114, lift_151);
    var lift_278 := {
      lift_279,
      lift_279,
      lift_284,
      lift_284,
      (lift_120, lift_269)
    };
    var lift_277 := lift_278;
    var lift_276 := (lift_270, lift_268);
    var lift_259 := lift_260;
    var lift_231 := (lift_232, lift_235, lift_24);
    var lift_225 := 1380863155;
    var lift_110 := (var tmpData : set<((), multiset<bool>)> := {}; tmpData);
    var lift_109 := lift_110;
    var lift_108 := ();
    var lift_107 := lift_108;
    var lift_105 := 354865765;
    var lift_104 := '\'';
    var lift_102 := (lift_100, lift_100);
    var lift_101 := lift_102;
    var lift_98 := (lift_99, lift_99);
    var lift_91 := ();
    var lift_90 := lift_91;
    var lift_89 := ();
    var lift_88 := multiset{lift_89, lift_90};
    var lift_87 := lift_88;
    var lift_73 := ();
    var lift_72 := 835120420;
    var lift_71 := [lift_72];
    var lift_70 := "UAiG";
    var lift_69 := (lift_70, (), lift_71);
    var lift_37 := lift_31;
    var lift_36 := [
      lift_31,
      lift_31,
      lift_31,
      lift_37,
      (var tmpData : set<bool> := {}; tmpData)
    ];
    var lift_35 := false;
    var lift_34 := [{false, lift_35, lift_24, lift_25}];
    var lift_33 := {lift_34, [lift_31], [lift_31], lift_36, lift_38};
    var lift_30 := lift_31;
    var lift_26 := [lift_27, lift_29, lift_28, lift_27];
    var lift_19 := -1274514892;
    var lift_18 := lift_19;
    {
      var methoddefvar_3 := lift_1(lift_18, lift_19, lift_18);
      {
        var lift_20 := 1360713534;
        print lift_20, "\n";
        print lift_20, "\n";
      }
    }
    if ((lift_21.0 < |lift_26|)) {
      var lift_106 := lift_107;
      var lift_103 := {lift_99, lift_104, lift_100, lift_100, lift_104};
      var lift_92 := lift_48;
      var lift_79 := lift_53;
      var lift_78 := ();
      var lift_77 := 'h';
      var lift_76 := '<';
      var lift_67 := ();
      var lift_45 := (lift_46, lift_49, (lift_19, lift_18));
      var lift_44 := lift_45;
      var lift_32 := {true};
      if (([{true}, lift_30, lift_30, lift_30, lift_32] !in lift_33)) {
        lift_44 := lift_45;
        var methoddefvar_57, methoddefvar_58 := lift_55(lift_18, lift_18);
        {
          var lift_68 := ();
          print methoddefvar_57, "\n";
          lift_67 := lift_68;
          lift_69 := lift_69;
          lift_73 := lift_67;
          print lift_19, "\n";
        }
        var methoddefvar_74, methoddefvar_75 := lift_55(lift_72, lift_52);
        {
          var lift_80 := 960610688;
          lift_76 := lift_77;
          lift_78 := lift_78;
          lift_79 := false;
          lift_80 := lift_52;
          print lift_52, "\n";
        }
      } else {
        var methoddefvar_83 := lift_81();
        {
          print lift_52, "\n";
          print lift_72, "\n";
          lift_87 := lift_88;
          lift_92 := 'Q';
          lift_93 := lift_94;
        }
        {
          print lift_18, "\n";
        }
      }
      {
        var lift_95 := lift_18;
        print lift_95, "\n";
        if (lift_43) {
          var lift_97 := (var tmpData : set<()> := {}; tmpData);
          var lift_96 := lift_97;
          lift_96 := {lift_67, lift_90};
        } else {
          lift_98 := lift_101;
        }
      }
      {
        print lift_19, "\n";
        lift_103 := {lift_99, lift_99, lift_92, lift_99, lift_76};
        lift_105 := lift_105;
        {
          print lift_18, "\n";
          lift_106 := lift_78;
          print 1761814952, "\n";
          lift_109 := lift_111;
        }
        print lift_72, "\n";
      }
    } else {
      var lift_238 := ('y', (lift_25, lift_225, lift_234), lift_72);
      var lift_237 := (lift_117, lift_153, lift_19);
      var lift_230 := (lift_150, lift_115);
      var lift_229 := lift_230;
      var lift_228 := lift_229;
      var lift_224 := ();
      var lift_176 := (lift_53, lift_161, lift_43);
      var lift_175 := {lift_27, lift_28};
      var lift_148 := true;
      var methoddefvar_125, methoddefvar_126 := lift_123();
      {
        var lift_136 := false;
        print methoddefvar_125, "\n";
        print lift_52, "\n";
        lift_136 := lift_51;
        lift_137 := lift_116;
        print lift_105, "\n";
      }
      {
        var lift_138 := (lift_89, false);
        print lift_52, "\n";
        lift_138 := (lift_91, lift_54);
      }
      if ((lift_100 >= lift_48)) {
        var lift_285 := 'H';
        var lift_275 := (lift_276, (lift_53, lift_263), lift_277);
        var lift_236 := (lift_104, lift_237, lift_19);
        var lift_227 := ('R', lift_161, lift_19);
        var methoddefvar_141 := lift_139(lift_72);
        {
          lift_148 := lift_115;
          lift_149 := lift_154;
        }
        var methoddefvar_164, methoddefvar_165 := lift_162(lift_72);
        {
          var lift_174 := (false, lift_175, lift_176);
          print lift_153, "\n";
          print -1427378172, "\n";
          lift_174 := lift_174;
          print lift_161, "\n";
        }
        var methoddefvar_179, methoddefvar_180 := lift_177(-1506878427);
        {
          var lift_226 := (lift_227, lift_228, true);
          lift_224 := lift_118;
          lift_225 := lift_52;
          lift_226 := lift_231;
          lift_236 := lift_238;
          lift_239 := lift_239;
        }
        var methoddefvar_246 := lift_244(lift_18);
        {
          print lift_161, "\n";
          print 1846784657, "\n";
        }
        if (lift_121) {
          lift_259 := lift_260;
          lift_275 := lift_275;
        } else {
          var lift_287 := -2046117935;
          print lift_19, "\n";
          lift_285 := lift_151;
          lift_286 := lift_241;
          print lift_153, "\n";
          lift_287 := 1631876724;
        }
      } else {
        var lift_306 := multiset{lift_234, 2051916582, lift_234};
        lift_288 := lift_241;
        var methoddefvar_289, methoddefvar_290 := lift_55(lift_273, lift_264);
        {
          print lift_19, "\n";
          print lift_264, "\n";
          lift_291 := lift_292;
        }
        print lift_161, "\n";
        {
          print lift_264, "\n";
          lift_305 := lift_265;
          lift_306 := multiset{lift_105, lift_72};
          print lift_105, "\n";
        }
      }
    }
    var methoddefvar_309 := lift_307(
      lift_50.1,
      safeSeqRef(lift_322, lift_234, lift_18)
    );
    {
      var lift_348 := {lift_157, lift_150, lift_268, lift_304};
      var lift_339 := (lift_276, lift_340);
      var lift_330 := (multiset{lift_286, lift_240, ()}, lift_43, lift_305);
      var methoddefvar_325 := lift_323(lift_273);
      {
        var lift_329 := lift_330;
        print lift_270, "\n";
        print lift_270, "\n";
        print lift_266, "\n";
        lift_329 := lift_331;
      }
      {
        var lift_338 := multiset{lift_339, lift_341};
        print lift_18, "\n";
        lift_338 := lift_338;
        print lift_337, "\n";
      }
      lift_348 := (var tmpData : set<char> := {}; tmpData);
      print lift_265, "\n";
    }
  }
  if ((|safeSeqRef(lift_349, lift_161, lift_274)| > |safeSeqSlice2(
    lift_243,
    lift_270,
    lift_343
  )|)) {
    var lift_546 := (lift_489, lift_153, lift_157);
    var lift_545 := [lift_546, (lift_283, lift_343, lift_283)];
    var lift_537 := -240226227;
    var lift_535 := lift_240;
    var lift_534 := ((lift_457, lift_531), lift_270, lift_527);
    var lift_491 := [lift_488, lift_267];
    var lift_479 := [lift_431, -2031720760, -760239701];
    var lift_476 := lift_477;
    var lift_463 := 1701679896;
    var lift_462 := lift_272;
    var lift_447 := 1045828477;
    var lift_441 := 'v';
    var lift_426 := lift_427;
    var lift_425 := (lift_426 + lift_426 + lift_427);
    var lift_386 := lift_157;
    var lift_371 := {lift_372, lift_373, lift_380};
    var lift_362 := false;
    var lift_361 := [(1534142623, lift_100), (lift_270, '~')];
    var lift_360 := lift_361;
    var methoddefvar_357, methoddefvar_358 := lift_123();
    {
      var lift_370 := lift_371;
      var lift_359 := 1193874040;
      if (lift_280) {
        lift_359 := lift_270;
        lift_360 := lift_361;
      } else {
        var lift_369 := (var tmpData : seq<seq<char>> := []; tmpData);
        lift_362 := lift_115;
        lift_363 := lift_369;
        print -1223725396, "\n";
        print lift_264, "\n";
        print lift_266, "\n";
      }
      print lift_265, "\n";
      {
        var lift_385 := {lift_380, lift_373, lift_372, lift_373, lift_381};
        print lift_263, "\n";
        lift_370 := lift_385;
        lift_386 := lift_354;
        print 451196415, "\n";
      }
      var methoddefvar_389, methoddefvar_390 := lift_387(lift_153);
      {
        print lift_265, "\n";
        print lift_374, "\n";
        print lift_337, "\n";
        lift_422 := lift_422;
        print lift_273, "\n";
      }
    }
    lift_425 := ((lift_427 * lift_429 * lift_425) + (lift_426 * {
      lift_428,
      lift_428,
      lift_428,
      lift_342,
      lift_430
    } * lift_425));
    var methoddefvar_433, methoddefvar_434 := lift_123();
    {
      var lift_459 := ('G', lift_347, lift_243);
      if (lift_116) {
        print lift_161, "\n";
        lift_435 := lift_435;
      } else {
        var lift_445 := (
          lift_114,
          (lift_51, lift_440, methoddefvar_433),
          lift_345
        );
        var lift_444 := -328191947;
        print lift_424, "\n";
        lift_441 := lift_356;
        lift_442 := lift_117;
        lift_444 := -1944259722;
        lift_445 := lift_445;
      }
      print lift_234, "\n";
      {
        var lift_448 := multiset{lift_288, (), lift_379, lift_118, lift_384};
        var lift_446 := true;
        lift_446 := lift_347;
        lift_447 := 1536775061;
        lift_448 := (var tmpData : multiset<()> := multiset{}; tmpData);
      }
      {
        print lift_266, "\n";
        lift_449 := lift_459;
      }
    }
    if (((lift_332[() := lengthNormalize(
      -855765802
    )]) in (var tmpData : set<multiset<()>> := {}; tmpData))) {
      var lift_480 := {lift_477};
      var lift_478 := {lift_479, lift_423};
      var lift_475 := {lift_476, lift_478, lift_478, lift_478, lift_477};
      var methoddefvar_460, methoddefvar_461 := lift_123();
      {
        print -2090354913, "\n";
        print -463566948, "\n";
        lift_462 := lift_432;
        lift_463 := methoddefvar_460;
      }
      lift_464 := ('X', lift_465, "|>t:Q!pHJ|JGddb!@f|EjdnW/j'").1;
      lift_475 := (lift_480 * lift_480 * lift_475);
      print lift_232.2, "\n";
      lift_481 := lift_491;
    } else {
      var methoddefvar_494 := lift_492();
      {
        print lift_264, "\n";
      }
    }
    var methoddefvar_513 := lift_307(
      |lift_371|,
      |(var tmpData : seq<multiset<bool>> := []; tmpData)|
    );
    {
      var lift_544 := lift_545;
      var lift_543 := false;
      var lift_541 := (lift_337, (lift_25, true));
      var lift_538 := multiset{lift_234};
      var lift_536 := 1558707765;
      var methoddefvar_516, methoddefvar_517 := lift_514(lift_447, -998255535);
      {
        var lift_526 := (lift_302, lift_463, lift_527);
        var lift_525 := lift_526;
        print -95549655, "\n";
        lift_525 := lift_534;
      }
      if (lift_530) {
        lift_535 := lift_118;
      } else {
        print 665355859, "\n";
      }
      if (lift_474) {
        lift_536 := -142123766;
        lift_537 := -1692902215;
        lift_538 := lift_538;
        print lift_263, "\n";
        print lift_346, "\n";
      } else {
        var lift_540 := lift_541;
        var lift_539 := lift_540;
        lift_539 := lift_541;
        print lift_374, "\n";
      }
      if (lift_24) {
        var lift_542 := lift_379;
        lift_542 := lift_286;
        print lift_374, "\n";
        lift_543 := lift_51;
      } else {
        print lift_484, "\n";
        print lift_234, "\n";
        print lift_263, "\n";
        lift_544 := lift_544;
        print lift_537, "\n";
      }
    }
  } else {
    var lift_611 := multiset{lift_612};
    var lift_608 := lift_118;
    var methoddefvar_549, methoddefvar_550 := lift_547(
      (lift_374, 'l', ((), ())).0,
      lift_159.1,
      lift_50.1
    );
    {
      var lift_642 := "MeVEQZ=D!Q_-F@cNJY~Mr|B~>S>x&L";
      {
        lift_608 := lift_288;
      }
      {
        var lift_609 := [lift_299, false, false, false, lift_116];
        print methoddefvar_549, "\n";
        print lift_52, "\n";
        lift_609 := lift_28;
      }
      var methoddefvar_610 := lift_307(lift_52, lift_424);
      {
        lift_611 := lift_623;
        print lift_630, "\n";
        print lift_424, "\n";
        lift_642 := [lift_355, lift_156];
        print lift_266, "\n";
      }
    }
  }
  {
    var lift_750 := lift_751;
    var lift_669 := 'D';
    var lift_666 := true;
    var lift_665 := ();
    var lift_659 := lift_660;
    var lift_645 := (lift_29, lift_122);
    {
      var lift_690 := ();
      var lift_688 := 'K';
      var lift_654 := {lift_455, lift_455};
      var lift_652 := true;
      var lift_651 := '%';
      var lift_647 := (lift_529, lift_531);
      var lift_646 := lift_647;
      var methoddefvar_643, methoddefvar_644 := lift_123();
      {
        lift_645 := lift_646;
      }
      if ((() in lift_648)) {
        var lift_664 := {'&', lift_158};
        var lift_653 := (var tmpData : seq<set<bool>> := []; tmpData);
        if (lift_438) {
          lift_651 := lift_635;
          print lift_640, "\n";
        } else {
          print lift_264, "\n";
          lift_652 := lift_300;
          lift_653 := lift_38;
          print -1996612821, "\n";
          lift_654 := lift_654;
        }
        if (lift_115) {
          var lift_655 := lift_656;
          lift_655 := lift_655;
          lift_659 := lift_660;
          lift_661 := lift_636;
        } else {
          print lift_264, "\n";
          lift_664 := lift_664;
          print lift_484, "\n";
        }
        {
          lift_665 := lift_241;
          print lift_270, "\n";
          print 737248834, "\n";
          print -1308650561, "\n";
          print lift_621, "\n";
        }
        lift_666 := lift_281;
      } else {
        var methoddefvar_667, methoddefvar_668 := lift_123();
        {
          print lift_153, "\n";
          print lift_161, "\n";
          lift_669 := lift_150;
        }
        if (lift_122) {
          var lift_672 := lift_673;
          var lift_671 := lift_672;
          lift_670 := lift_343;
          print lift_153, "\n";
          lift_671 := lift_680;
          print lift_383, "\n";
          lift_688 := lift_365;
        } else {
          print lift_490, "\n";
          lift_689 := lift_286;
          print lift_343, "\n";
        }
      }
      print |lift_427|, "\n";
      {
        var lift_693 := [lift_689, lift_650];
        print lift_265, "\n";
        if (lift_683) {
          lift_690 := ();
        } else {
          var lift_692 := {lift_693};
          var lift_691 := lift_692;
          print 313564902, "\n";
          print lift_337, "\n";
          lift_691 := lift_691;
        }
        {
          print -247793119, "\n";
        }
      }
      lift_694 := lift_696();
    }
    var methoddefvar_700, methoddefvar_701 := lift_162(lift_490);
    {
      var methoddefvar_704 := lift_702(lift_630);
      {
        print -210429100, "\n";
        lift_747 := lift_531;
      }
      var methoddefvar_748, methoddefvar_749 := lift_55(
        methoddefvar_701,
        -456459059
      );
      {
        print lift_630, "\n";
      }
      {
        var lift_773 := (lift_240, lift_121, lift_756);
        lift_750 := {lift_753, lift_773, lift_766, lift_773, lift_773};
        print lift_266, "\n";
      }
      lift_774 := lift_775;
    }
  }
  lift_776 := lift_781.1(
    lift_160.2,
    lift_755,
    (lift_695 <== false <== lift_438),
    lift_620
  )(
    ((lift_293[lift_295] as int) < lift_762.1),
    |(lift_334 + multiset{lift_241, lift_240, lift_649, lift_118, lift_689})|,
    |lift_797.0|,
    lift_805((lift_442, lift_617), (629629407, lift_264))(),
    ((
      (
        {1597566449, 1178342916, lift_487},
        multiset{985969394},
        (var tmpData : seq<bool> := []; tmpData)
      ),
      (var tmpData : seq<(bool, int, char)> := []; tmpData),
      lift_114
    ).2[(lift_94 <= lift_94)] as int)
  );
  print 
    safeSeqRef(
      safeSeqTake(lift_812.1, |lift_293|),
      ((), lift_809).1(),
      safeSeqRef(lift_423, (lift_784 as int), lift_469.1)
    ),
    "\n";
}


