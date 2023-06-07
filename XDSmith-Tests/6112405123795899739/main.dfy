// RUN: %dafny /noVerify /compile:4 /compileTarget:cs "%s" > "%t"
// RUN: %exits-with 3 %dafny /noVerify /compile:4 /compileTarget:java "%s" >> "%t"
// RUN: %dafny /noVerify /compile:4 /compileTarget:py "%s" >> "%t"
// RUN: %dafny /noVerify /compile:4 /compileTarget:js "%s" >> "%t"
// RUN: %dafny /noVerify /compile:4 /compileTarget:go "%s" >> "%t"
// RUN: %diff "%s.expect" "%t"

// Seed: 6112405123795899739
// This is a RANDOMLY GENERATED PROGRAM.
// Fuzzer: dafny
// Version: dafny, xsmith 2.0.5 (38f1d83), in Racket 8.9 (vm-type chez-scheme)
// Options: --dafny-syntax true --seed 6112405123795899739
// Seed: 6112405123795899739
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
function lift_1016 (
  arg_1018 : int,
  arg_1019 : set<()>,
  arg_1020 : (char, char, bool)
) : (int, (), (bool, char))
{
  var lift_1029 := false;
  var lift_1028 := (lift_1029, '<');
  var lift_1027 := lift_1028;
  var lift_1026 := lift_1027;
  var lift_1025 := lift_1026;
  var lift_1024 := ();
  var lift_1023 := lift_1024;
  var lift_1022 := 2113993726;
  var lift_1021 := (lift_1022, lift_1023, lift_1025);
  lift_1021
}

method lift_778 ()
  returns (arg_782 : int, arg_783 : char)
  requires (true)
  ensures (true)
{
  arg_782 := -2012881065;
  arg_783 := '&';
  {
    var lift_799 := ();
    var lift_798 := false;
    var lift_797 := lift_798;
    var lift_796 := [lift_797, false, lift_798];
    var lift_795 := false;
    var lift_794 := [lift_795, lift_795, lift_795];
    var lift_793 := multiset{arg_783};
    var lift_792 := lift_793;
    var lift_791 := lift_792;
    var lift_790 := lift_791;
    var lift_789 := arg_782;
    var lift_788 := lift_789;
    var lift_787 := multiset{arg_782, arg_782, lift_788, arg_782};
    var lift_786 := false;
    var lift_785 := 'I';
    var lift_784 := ((lift_785, lift_786), lift_787);
    print "!aoCorNO|^HeaMky_+pKXtb:zdnrWO", "\n";
    lift_784 := lift_784;
    lift_790 := lift_791;
    lift_794 := lift_796;
    lift_799 := lift_799;
  }
}

method lift_719 (
  arg_722 : (),
  arg_723 : set<set<char>>,
  arg_724 : set<(int, (bool, int), bool)>,
  arg_725 : bool,
  arg_726 : bool
)
  returns (arg_727 : char)
  requires (true)
  ensures (true)
{
  arg_727 := 'Z';
  {
    var lift_747 := -1549171340;
    var lift_746 := arg_727;
    var lift_745 := (lift_746, arg_727);
    var lift_744 := ();
    var lift_743 := multiset{lift_744, lift_744};
    var lift_742 := (lift_743, lift_745, lift_747);
    var lift_741 := ();
    var lift_740 := ();
    var lift_739 := (arg_726, arg_725, true);
    var lift_738 := true;
    var lift_737 := (lift_738, lift_738, lift_738);
    var lift_736 := multiset{lift_737, lift_737, lift_739, lift_737};
    var lift_735 := false;
    var lift_734 := (lift_735, arg_725, arg_726);
    var lift_733 := multiset{lift_734};
    var lift_732 := (true, arg_726, arg_726);
    var lift_731 := true;
    var lift_730 := (arg_726, lift_731, arg_726);
    var lift_729 := (arg_726, arg_725, arg_726);
    var lift_728 := false;
    print 
      {
        multiset{
          (arg_726, false, arg_726),
          (arg_726, lift_728, lift_728),
          lift_729
        },
        multiset{lift_730, lift_732},
        lift_733,
        lift_736
      },
      "\n";
    print true, (), "\n";
    lift_740 := lift_741;
    print multiset{lift_735, lift_731, lift_735}, ':', "\n";
    lift_742 := lift_742;
  }
}

method lift_685 (
  arg_688 : (bool, bool),
  arg_689 : seq<bool>,
  arg_690 : set<(int, (char, int, char), bool)>,
  arg_691 : set<()>
)
  returns (arg_692 : bool)
  requires (true)
  ensures (true)
{
  arg_692 := true;
  {
    var lift_708 := 'R';
    var lift_707 := false;
    var lift_706 := 186379222;
    var lift_705 := (lift_706, lift_706, lift_707);
    var lift_704 := {(lift_705, arg_692, lift_708)};
    var lift_703 := true;
    var lift_702 := 2018023506;
    var lift_701 := -44510079;
    var lift_700 := [lift_701, lift_702, 159993124];
    var lift_699 := lift_700;
    var lift_698 := [lift_699, lift_700, lift_700];
    print 
      (var tmpData : multiset<((int, bool), (bool, char, bool))> := multiset{}; tmpData),
      "\n";
    print 
      ((
        arg_693 : seq<seq<int>>,
        arg_694 : bool,
        arg_695 : int,
        arg_696 : (multiset<()>, (int, char, bool)),
        arg_697 : ((int, char, int), seq<int>)
      ) => {(var tmpData : seq<seq<int>> := []; tmpData), arg_693, lift_698}),
      (),
      "\n";
    lift_703 := arg_692;
    lift_704 := lift_704;
  }
}

method lift_663 (
  arg_667 : multiset<bool>,
  arg_668 : bool,
  arg_669 : seq<int>,
  arg_670 : char
)
  returns (arg_671 : bool, arg_672 : int)
  requires (true)
  ensures (true)
{
  arg_671 := true;
  arg_672 := 80092535;
  {
    var lift_678 := -1563633801;
    var lift_677 := (arg_672, lift_678);
    var lift_676 := 'V';
    var lift_675 := false;
    var lift_674 := ();
    var lift_673 := ();
    lift_673 := lift_674;
    print ['a', 'f', arg_670, arg_670, arg_670], (), "\n";
    lift_675 := arg_671;
    lift_676 := arg_670;
    lift_677 := lift_677;
  }
}

function lift_650 (
  arg_652 : bool,
  arg_653 : seq<bool>,
  arg_654 : (int, int)
) : multiset<bool>
{
  var lift_657 := false;
  var lift_656 := lift_657;
  var lift_655 := multiset{lift_656, lift_657};
  lift_655
}

method lift_494 (
  arg_498 : multiset<multiset<(bool, bool, char)>>,
  arg_499 : int
)
  returns (arg_500 : char, arg_501 : int)
  requires (true)
  ensures (true)
{
  arg_500 := '"';
  arg_501 := 67097325;
  {
    var lift_528 := false;
    var lift_527 := lift_528;
    var lift_526 := lift_527;
    var lift_525 := (lift_526, arg_499, arg_500);
    var lift_524 := ();
    var lift_518 := true;
    var lift_517 := lift_518;
    var lift_516 := lift_517;
    var lift_515 := lift_516;
    var lift_514 := (arg_501, arg_500);
    var lift_513 := (lift_514, lift_515);
    var lift_512 := false;
    var lift_511 := 'M';
    var lift_510 := (arg_501, lift_511);
    var lift_509 := (lift_510, lift_512);
    var lift_508 := (arg_500, -923760991);
    var lift_507 := true;
    var lift_506 := lift_507;
    var lift_505 := (lift_506, arg_501, lift_508);
    var lift_504 := lift_505;
    var lift_503 := {lift_504, lift_505};
    var lift_502 := (arg_500, lift_503);
    lift_502 := lift_502;
    print (false, true), "\n";
    lift_509 := lift_513;
    print 
      ((
        arg_519 : char,
        arg_520 : bool,
        arg_521 : set<()>,
        arg_522 : (bool, multiset<(multiset<char>, (char, int, int), (int, bool, bool))>, ()),
        arg_523 : char
      ) => {lift_513, (lift_510, lift_512), lift_513, lift_513}),
      (-2089885654, (-1223965261, 'w'), [(), lift_524, lift_524, lift_524]),
      "\n";
    print 
      (
        (
          multiset{
            (lift_511, (lift_515, arg_501, lift_511)),
            (lift_511, lift_525)
          },
          "ho<VXR&X",
          false
        ),
        ([multiset{lift_505, lift_504}], ((), 1537923290, true)),
        [(), (), lift_524, lift_524]
      ),
      '_',
      "\n";
  }
}

method lift_320 (arg_324 : set<(set<bool>, char, char)>, arg_325 : char)
  returns (arg_326 : char, arg_327 : bool)
  requires (true)
  ensures (true)
{
  arg_326 := 'p';
  arg_327 := false;
  {
    var lift_355 := (-155581427, '-', arg_327);
    var lift_354 := false;
    var lift_353 := -1927714994;
    var lift_352 := (var tmpData : seq<bool> := []; tmpData);
    var lift_351 := (lift_352, arg_326, (lift_353, arg_325, lift_354));
    var lift_350 := arg_327;
    var lift_349 := multiset{arg_327, lift_350, arg_327, arg_327, lift_350};
    var lift_348 := false;
    var lift_347 := true;
    var lift_346 := true;
    var lift_345 := multiset{lift_346, arg_327};
    var lift_344 := false;
    var lift_343 := [
      multiset{arg_327, false, lift_344},
      lift_345,
      multiset{lift_347, arg_327, false}
    ];
    var lift_342 := false;
    var lift_341 := multiset{lift_342};
    var lift_340 := lift_341;
    var lift_339 := false;
    var lift_338 := true;
    var lift_337 := [
      multiset{arg_327, lift_338, arg_327},
      multiset{false, arg_327, arg_327, arg_327, lift_339},
      lift_340
    ];
    var lift_336 := lift_337;
    var lift_335 := multiset{
      lift_336,
      lift_343,
      [
        lift_345,
        lift_340,
        multiset{lift_346, arg_327, lift_339},
        multiset{arg_327, lift_339, lift_348, lift_347, lift_339},
        lift_349
      ]
    };
    var lift_334 := false;
    var lift_333 := (1775071549, lift_334);
    var lift_332 := (lift_333, lift_335);
    var lift_331 := lift_332;
    var lift_330 := arg_325;
    var lift_329 := 'E';
    var lift_328 := false;
    lift_328 := lift_328;
    lift_329 := lift_330;
    print "T$UFdc", "\n";
    lift_331 := lift_331;
    lift_351 := (lift_352, lift_330, lift_355);
  }
}

method lift_239 (arg_242 : (int, bool, bool), arg_243 : multiset<bool>)
  returns (arg_244 : bool)
  requires (true)
  ensures (true)
{
  arg_244 := false;
  {
    var lift_249 := 'J';
    var lift_248 := 'a';
    var lift_247 := false;
    var lift_246 := 1831485585;
    var lift_245 := 1734919373;
    lift_245 := lift_246;
    print (), "\n";
    lift_247 := true;
    print 
      (var tmpData : set<int> := {}; tmpData),
      multiset{lift_248, lift_249, lift_248},
      "\n";
  }
}

function lift_181 (arg_183 : multiset<seq<int>>) : set<int>
{
  var lift_184 := (var tmpData : set<int> := {}; tmpData);
  lift_184
}

function lift_166 (arg_168 : multiset<seq<int>>) : set<int>
{
  var lift_170 := -1797388824;
  var lift_169 := lift_170;
  {lift_169, lift_169, lift_169, lift_170, lift_170}
}

function lift_160 (arg_162 : multiset<seq<int>>) : set<int>
{
  var lift_165 := 613482531;
  var lift_164 := -1845812608;
  var lift_163 := {lift_164, lift_164, lift_165};
  lift_163
}

method lift_79 (
  arg_83 : (bool, bool, char),
  arg_84 : (int, int, int),
  arg_85 : (),
  arg_86 : char,
  arg_87 : char
)
  returns (arg_88 : char, arg_89 : char)
  requires (true)
  ensures (true)
{
  arg_88 := '/';
  arg_89 := ';';
  {
    var lift_93 := 1958366909;
    var lift_92 := lift_93;
    var lift_91 := -1060134359;
    var lift_90 := multiset{lift_91, lift_91, lift_91, -992267911, lift_92};
    lift_90 := multiset{lift_93};
    print {multiset{(), arg_85}}, "\n";
  }
}

method lift_21 (
  arg_24 : set<bool>,
  arg_25 : int,
  arg_26 : seq<bool>,
  arg_27 : (),
  arg_28 : (bool, bool, int)
)
  returns (arg_29 : int)
  requires (true)
  ensures (true)
{
  arg_29 := 544829044;
  {
    var lift_64 := 'V';
    var lift_63 := lift_64;
    var lift_62 := 'z';
    var lift_61 := {'=', lift_62, lift_62, lift_63, lift_63};
    var lift_60 := '>';
    var lift_59 := {lift_60, lift_60};
    var lift_58 := 'T';
    var lift_57 := lift_58;
    var lift_56 := 'w';
    var lift_55 := {lift_56, lift_57};
    var lift_54 := 'j';
    var lift_53 := {lift_54};
    var lift_52 := {lift_53, lift_55, lift_53, lift_53, lift_55};
    var lift_51 := arg_25;
    var lift_50 := 1626621790;
    var lift_49 := {lift_50, arg_25, lift_50, lift_50, lift_51};
    var lift_48 := {arg_25};
    var lift_47 := [
      lift_48,
      lift_48,
      lift_49,
      lift_49,
      {arg_25, arg_29, arg_29}
    ];
    var lift_46 := lift_47;
    var lift_45 := false;
    var lift_44 := 'e';
    var lift_43 := 'c';
    var lift_37 := arg_29;
    var lift_36 := {arg_25, -757813998, lift_37, arg_25};
    var lift_35 := lift_36;
    var lift_34 := (var tmpData : set<int> := {}; tmpData);
    var lift_33 := {lift_34, lift_35, {arg_29, -1324132760}, lift_34};
    var lift_32 := {arg_29, arg_25, -1640400120};
    var lift_31 := {arg_25, arg_25, 122581502, arg_29, arg_25};
    var lift_30 := 1729627451;
    print 
      {
        {{arg_29, lift_30, lift_30, arg_25}, lift_31, lift_32},
        lift_33,
        lift_33,
        lift_33,
        lift_33
      },
      (
        (
          false,
          -1149493429,
          ((
            arg_38 : ((char, bool, int), (char, char, char)),
            arg_39 : (seq<int>, ()),
            arg_40 : ((), seq<bool>),
            arg_41 : int,
            arg_42 : bool
          ) => 'k')
        ),
        true
      ),
      "\n";
    lift_43 := lift_44;
    lift_45 := lift_45;
    lift_46 := [lift_31, lift_49, lift_31, lift_48, lift_31];
    lift_52 := {lift_55, lift_59, lift_61};
  }
}

function lift_9 (arg_11 : bool, arg_12 : (int, bool)) : set<(bool, char, bool)>
{
  var lift_18 := false;
  var lift_17 := 'z';
  var lift_16 := true;
  var lift_15 := (lift_16, lift_17, lift_18);
  var lift_14 := lift_15;
  var lift_13 := {lift_14, (lift_18, 'm', lift_16)};
  lift_13
}

method Main () {
  var lift_1036 := 'r';
  var lift_1035 := (false, lift_1036);
  var lift_1034 := ();
  var lift_1033 := -1327749556;
  var lift_1032 := (lift_1033, lift_1034, lift_1035);
  var lift_1003 := 'J';
  var lift_1002 := -1740343553;
  var lift_1001 := (lift_1002, lift_1003, lift_1002);
  var lift_994 := 1283476226;
  var lift_993 := false;
  var lift_992 := (lift_993, lift_993, lift_994);
  var lift_990 := 'I';
  var lift_989 := 's';
  var lift_988 := lift_989;
  var lift_987 := (lift_988, lift_990);
  var lift_986 := lift_987;
  var lift_985 := ();
  var lift_984 := lift_985;
  var lift_983 := (lift_984, lift_986, false);
  var lift_982 := true;
  var lift_981 := 'z';
  var lift_980 := 'I';
  var lift_979 := (lift_980, lift_981);
  var lift_978 := ();
  var lift_977 := (lift_978, lift_979, lift_982);
  var lift_976 := lift_977;
  var lift_975 := true;
  var lift_974 := 'x';
  var lift_973 := lift_974;
  var lift_972 := (lift_973, lift_974);
  var lift_971 := ();
  var lift_970 := {(lift_971, lift_972, lift_975), lift_976, lift_983};
  var lift_969 := false;
  var lift_968 := 'm';
  var lift_967 := 'y';
  var lift_966 := lift_967;
  var lift_965 := (lift_966, lift_968);
  var lift_964 := ();
  var lift_963 := lift_964;
  var lift_962 := (lift_963, lift_965, lift_969);
  var lift_961 := {lift_962};
  var lift_960 := [lift_961, lift_970];
  var lift_959 := lift_960;
  var lift_958 := true;
  var lift_957 := '~';
  var lift_956 := (lift_957, 'A');
  var lift_955 := ((), lift_956, lift_958);
  var lift_954 := false;
  var lift_953 := lift_954;
  var lift_952 := 'a';
  var lift_951 := ();
  var lift_950 := lift_951;
  var lift_949 := {(lift_950, ('F', lift_952), lift_953), lift_955};
  var lift_948 := '*';
  var lift_947 := false;
  var lift_946 := 'O';
  var lift_945 := (lift_946, lift_946);
  var lift_944 := ();
  var lift_943 := (lift_944, lift_945, lift_947);
  var lift_942 := false;
  var lift_941 := 'r';
  var lift_940 := lift_941;
  var lift_939 := 'V';
  var lift_938 := ();
  var lift_937 := (lift_938, (lift_939, lift_940), lift_942);
  var lift_936 := {
    lift_937,
    lift_937,
    lift_943,
    lift_937,
    (lift_938, (lift_948, lift_946), lift_947)
  };
  var lift_935 := [lift_936, lift_949];
  var lift_933 := (var tmpData : seq<bool> := []; tmpData);
  var lift_931 := 'l';
  var lift_930 := [lift_931];
  var lift_929 := 'N';
  var lift_928 := [lift_929, lift_929, lift_929, lift_929];
  var lift_927 := "~YW@~TbTQooj$*'='^ExY|<M-VZ%!AY_";
  var lift_926 := [lift_927, lift_927, lift_928, lift_927, lift_930];
  var lift_919 := true;
  var lift_918 := false;
  var lift_917 := (lift_918, lift_919);
  var lift_915 := ();
  var lift_914 := ();
  var lift_913 := lift_914;
  var lift_912 := ();
  var lift_911 := lift_912;
  var lift_910 := lift_911;
  var lift_909 := multiset{lift_910, lift_913, (), lift_914, lift_915};
  var lift_908 := ();
  var lift_907 := lift_908;
  var lift_906 := 'g';
  var lift_905 := (lift_906, lift_907, lift_909);
  var lift_904 := lift_905.0;
  var lift_893 := ();
  var lift_892 := lift_893;
  var lift_884 := 'p';
  var lift_882 := '-';
  var lift_881 := 'i';
  var lift_880 := lift_881;
  var lift_879 := '\'';
  var lift_878 := [lift_879, lift_880, lift_881, lift_882];
  var lift_877 := -800369047;
  var lift_876 := false;
  var lift_875 := (lift_876, lift_877, lift_876);
  var lift_874 := ();
  var lift_873 := (lift_874, lift_875, lift_878);
  var lift_865 := true;
  var lift_864 := false;
  var lift_863 := true;
  var lift_862 := 'z';
  var lift_861 := lift_862;
  var lift_860 := 'u';
  var lift_859 := [lift_860, lift_860, lift_861];
  var lift_858 := (lift_859, lift_863, lift_860);
  var lift_857 := lift_858;
  var lift_856 := lift_857;
  var lift_855 := multiset{
    lift_856,
    lift_857,
    ((var tmpData : seq<char> := []; tmpData), lift_864, lift_861)
  };
  var lift_854 := (lift_855, lift_860);
  var lift_853 := lift_854;
  var lift_842 := '&';
  var lift_841 := -485879497;
  var lift_840 := 'Z';
  var lift_839 := (lift_840, lift_841, lift_842);
  var lift_838 := 'H';
  var lift_837 := 495473625;
  var lift_836 := 'c';
  var lift_835 := (lift_836, lift_837, lift_838);
  var lift_834 := 'S';
  var lift_833 := 1539563037;
  var lift_832 := '&';
  var lift_831 := (lift_832, lift_833, lift_834);
  var lift_829 := [-2023469627];
  var lift_821 := true;
  var lift_820 := ('C', lift_821);
  var lift_819 := ();
  var lift_818 := (lift_819, lift_820);
  var lift_808 := -1188163552;
  var lift_807 := lift_808;
  var lift_806 := lift_807;
  var lift_805 := ();
  var lift_804 := ();
  var lift_803 := (lift_804, lift_805, lift_806);
  var lift_800 := -1381471292;
  var lift_776 := true;
  var lift_775 := lift_776;
  var lift_774 := multiset{lift_775};
  var lift_771 := -179379899;
  var lift_770 := -376691221;
  var lift_769 := multiset{lift_770, lift_771, lift_770};
  var lift_768 := [lift_769];
  var lift_766 := (var tmpData : set<int> := {}; tmpData);
  var lift_765 := 'U';
  var lift_764 := lift_765;
  var lift_763 := lift_764;
  var lift_762 := '/';
  var lift_761 := multiset{'s', lift_762, lift_762, lift_763, lift_763};
  var lift_760 := '$';
  var lift_758 := -2041303455;
  var lift_757 := false;
  var lift_756 := (lift_757, lift_758);
  var lift_753 := (var tmpData : seq<set<(int, (bool, int), bool)>> := []; tmpData);
  var lift_752 := 'Q';
  var lift_751 := 'O';
  var lift_750 := {lift_751};
  var lift_749 := {
    lift_750,
    lift_750,
    lift_750,
    lift_750,
    {'K', lift_751, lift_751, '\'', lift_752}
  };
  var lift_748 := lift_749;
  var lift_716 := 'm';
  var lift_715 := '&';
  var lift_714 := {lift_715, 'l', lift_716};
  var lift_713 := ();
  var lift_712 := (lift_713, lift_714, -433643963);
  var lift_711 := lift_712;
  var lift_710 := lift_711;
  var lift_709 := lift_710;
  var lift_684 := 'G';
  var lift_683 := 'X';
  var lift_682 := ((lift_683, lift_684, lift_684), "v+IjYD$|e^njErRZm\"");
  var lift_662 := 634058311;
  var lift_661 := (1787209948, lift_662);
  var lift_660 := false;
  var lift_659 := true;
  var lift_658 := [lift_659, lift_660];
  var lift_649 := true;
  var lift_648 := lift_649;
  var lift_647 := -834380282;
  var lift_646 := lift_647;
  var lift_645 := (lift_646, lift_648, true);
  var lift_640 := true;
  var lift_639 := 'F';
  var lift_638 := (3082715, lift_639, lift_640);
  var lift_632 := 'w';
  var lift_631 := ';';
  var lift_630 := lift_631;
  var lift_629 := [lift_630, lift_632, lift_631, lift_630];
  var lift_628 := multiset{lift_629, lift_629, lift_629};
  var lift_622 := true;
  var lift_621 := false;
  var lift_620 := lift_621;
  var lift_619 := (true, false, [lift_620, lift_622, lift_621, lift_620]);
  var lift_618 := lift_619;
  var lift_613 := -183406193;
  var lift_612 := 761798178;
  var lift_611 := {lift_612, lift_613};
  var lift_610 := lift_611;
  var lift_609 := [
    lift_610,
    {1837378916, lift_613, lift_613},
    lift_610,
    lift_611,
    lift_610
  ];
  var lift_603 := 'w';
  var lift_602 := (lift_603, lift_603);
  var lift_592 := ();
  var lift_591 := {lift_592, lift_592};
  var lift_590 := 1156635948;
  var lift_589 := (lift_590, lift_591);
  var lift_580 := -984963479;
  var lift_579 := true;
  var lift_578 := (lift_579, lift_580);
  var lift_577 := true;
  var lift_576 := false;
  var lift_575 := (lift_576, lift_577);
  var lift_574 := lift_575;
  var lift_573 := 'N';
  var lift_572 := (lift_573, lift_574, lift_578);
  var lift_564 := ":Xm";
  var lift_563 := {lift_564, lift_564};
  var lift_560 := true;
  var lift_559 := 1719735483;
  var lift_558 := (lift_559, lift_560);
  var lift_557 := multiset{lift_558};
  var lift_555 := 697316441;
  var lift_550 := 'P';
  var lift_549 := false;
  var lift_548 := (lift_549, true, lift_550);
  var lift_547 := 'X';
  var lift_546 := false;
  var lift_545 := false;
  var lift_544 := multiset{(lift_545, lift_546, lift_547), lift_548};
  var lift_543 := '-';
  var lift_542 := lift_543;
  var lift_541 := true;
  var lift_540 := (lift_541, lift_541, lift_542);
  var lift_539 := lift_540;
  var lift_538 := multiset{lift_539, lift_539, lift_540, lift_539};
  var lift_537 := '@';
  var lift_536 := true;
  var lift_535 := lift_536;
  var lift_534 := lift_535;
  var lift_533 := (lift_534, lift_535, lift_537);
  var lift_532 := multiset{lift_533, lift_533, lift_533};
  var lift_531 := lift_532;
  var lift_530 := multiset{
    lift_531,
    lift_538,
    lift_544,
    multiset{lift_548, lift_533, lift_539, lift_540, lift_548}
  };
  var lift_493 := 1845138730;
  var lift_492 := lift_493;
  var lift_491 := (lift_492, ());
  var lift_490 := lift_491;
  var lift_482 := false;
  var lift_481 := lift_482;
  var lift_480 := lift_481;
  var lift_479 := -12996078;
  var lift_478 := (lift_479, lift_480);
  var lift_465 := -906979329;
  var lift_464 := 2035474379;
  var lift_463 := lift_464;
  var lift_462 := false;
  var lift_461 := lift_462;
  var lift_460 := (lift_461, lift_463);
  var lift_459 := multiset{lift_460, (lift_461, lift_464), (false, lift_465)};
  var lift_458 := lift_459;
  var lift_455 := (var tmpData : multiset<(bool, int)> := multiset{}; tmpData);
  var lift_451 := 87294210;
  var lift_450 := 'u';
  var lift_449 := (lift_450, lift_451);
  var lift_448 := [lift_449];
  var lift_447 := lift_448;
  var lift_446 := ';';
  var lift_445 := lift_446;
  var lift_444 := (lift_445, 397096404);
  var lift_443 := 720602480;
  var lift_442 := 'T';
  var lift_441 := true;
  var lift_440 := (lift_441, lift_442, lift_443);
  var lift_439 := lift_440;
  var lift_438 := (lift_439, lift_444, lift_447);
  var lift_437 := 180645520;
  var lift_436 := (lift_437, false);
  var lift_435 := false;
  var lift_434 := (-1692469879, lift_435);
  var lift_433 := -1774052422;
  var lift_432 := 1685677663;
  var lift_431 := [lift_432, lift_433, lift_432, lift_433];
  var lift_430 := -1913795925;
  var lift_429 := multiset{lift_430};
  var lift_428 := lift_429;
  var lift_427 := '+';
  var lift_426 := -767013555;
  var lift_425 := true;
  var lift_424 := (lift_425, lift_425, lift_426);
  var lift_423 := (lift_424, lift_427, lift_428);
  var lift_422 := false;
  var lift_421 := (true, lift_422, 'Z');
  var lift_420 := (lift_421, "ZEpsS/W<aGca!\"&!jho|udfX+tz<+TMD/j|");
  var lift_419 := lift_420;
  var lift_418 := lift_419;
  var lift_417 := 'X';
  var lift_416 := 764170033;
  var lift_415 := (lift_416, lift_417, lift_418);
  var lift_414 := 'A';
  var lift_413 := lift_414;
  var lift_412 := 'P';
  var lift_411 := '*';
  var lift_410 := [lift_411, 'O', lift_412, 'D', lift_413];
  var lift_409 := true;
  var lift_408 := lift_409;
  var lift_407 := lift_408;
  var lift_406 := false;
  var lift_405 := ({lift_406, lift_407}, lift_410, lift_415);
  var lift_404 := ();
  var lift_403 := ();
  var lift_402 := {lift_403, lift_404, lift_403, (), ()};
  var lift_401 := false;
  var lift_400 := lift_401;
  var lift_399 := 'w';
  var lift_398 := [lift_399, lift_399, lift_399];
  var lift_397 := 'Q';
  var lift_396 := true;
  var lift_395 := (false, lift_396, lift_397);
  var lift_394 := lift_395;
  var lift_393 := (lift_394, lift_398);
  var lift_392 := ((lift_393, lift_399, lift_400), lift_402);
  var lift_391 := lift_392.0.0;
  var lift_385 := ();
  var lift_384 := lift_385;
  var lift_383 := [lift_384, lift_384, (), lift_384];
  var lift_382 := [lift_383, lift_383, lift_383];
  var lift_381 := ();
  var lift_380 := lift_381;
  var lift_379 := lift_380;
  var lift_378 := ();
  var lift_377 := [lift_378, lift_378, lift_379, lift_379, lift_380];
  var lift_376 := lift_377;
  var lift_375 := lift_376;
  var lift_374 := false;
  var lift_372 := -817690821;
  var lift_371 := ('w', lift_372);
  var lift_370 := lift_371;
  var lift_369 := lift_370;
  var lift_366 := ();
  var lift_365 := lift_366;
  var lift_364 := lift_365;
  var lift_360 := '>';
  var lift_359 := lift_360;
  var lift_319 := true;
  var lift_317 := false;
  var lift_316 := (lift_317, true, lift_317);
  var lift_315 := lift_316;
  var lift_314 := lift_315;
  var lift_313 := lift_314;
  var lift_309 := -1078159429;
  var lift_303 := true;
  var lift_302 := false;
  var lift_301 := multiset{lift_302, lift_302, lift_303};
  var lift_295 := false;
  var lift_294 := false;
  var lift_293 := false;
  var lift_292 := true;
  var lift_291 := [lift_292, lift_292, lift_293, lift_294, lift_295];
  var lift_290 := (lift_291, lift_292);
  var lift_286 := true;
  var lift_285 := lift_286;
  var lift_284 := lift_285;
  var lift_283 := false;
  var lift_282 := {lift_283, lift_284, lift_286, lift_285};
  var lift_281 := true;
  var lift_280 := true;
  var lift_279 := true;
  var lift_278 := false;
  var lift_277 := {lift_278, lift_279, lift_279, true};
  var lift_276 := [
    lift_277,
    {lift_280, lift_280, lift_281, lift_278, lift_279},
    lift_282,
    {lift_280, lift_281, lift_283, lift_280}
  ];
  var lift_275 := true;
  var lift_274 := true;
  var lift_273 := {lift_274, false, lift_274, false, lift_275};
  var lift_272 := true;
  var lift_271 := false;
  var lift_270 := {true, lift_271, lift_272, lift_271, lift_272};
  var lift_269 := false;
  var lift_268 := lift_269;
  var lift_267 := lift_268;
  var lift_266 := false;
  var lift_265 := lift_266;
  var lift_264 := false;
  var lift_263 := {lift_264, lift_265, lift_266, lift_267};
  var lift_262 := [lift_263, lift_270, lift_273, {lift_271, lift_266}];
  var lift_261 := {
    lift_262,
    lift_276,
    [lift_282, lift_263, lift_263, lift_277]
  };
  var lift_254 := false;
  var lift_253 := lift_254;
  var lift_252 := lift_253;
  var lift_251 := 1237062652;
  var lift_250 := (lift_251, false, lift_252);
  var lift_238 := 'C';
  var lift_237 := lift_238;
  var lift_236 := lift_237;
  var lift_235 := true;
  var lift_234 := (lift_235, lift_236);
  var lift_233 := lift_234;
  var lift_231 := 'B';
  var lift_230 := true;
  var lift_229 := lift_230;
  var lift_228 := (lift_229, lift_231);
  var lift_227 := (lift_228, false);
  var lift_226 := (var tmpData : multiset<()> := multiset{}; tmpData);
  var lift_220 := "UWOyke<\"@rywShaFMKdvA+byE+^z!WZ";
  var lift_217 := "zIg;~k+hy@UQ/GPb&Gws|Cp%?j+QRt|p'=t:N";
  var lift_216 := lift_217;
  var lift_215 := lift_216;
  var lift_214 := '%';
  var lift_213 := 'y';
  var lift_212 := [lift_213, lift_213, lift_214, lift_214];
  var lift_208 := false;
  var lift_207 := 'M';
  var lift_206 := lift_207;
  var lift_205 := (true, lift_206, lift_208);
  var lift_204 := lift_205;
  var lift_203 := -1328944438;
  var lift_202 := lift_203;
  var lift_201 := {lift_202, -1648411413};
  var lift_200 := -2053840346;
  var lift_199 := (lift_200, lift_201, lift_204);
  var lift_198 := lift_199;
  var lift_197 := true;
  var lift_196 := true;
  var lift_195 := true;
  var lift_194 := {lift_195, lift_196, lift_197};
  var lift_193 := lift_194;
  var lift_192 := [lift_193, {false, false}];
  var lift_177 := 1762690220;
  var lift_176 := lift_177;
  var lift_175 := lift_176;
  var lift_174 := {1564268940, lift_175, -1254765035, lift_175, lift_177};
  var lift_152 := '^';
  var lift_151 := (lift_152, 1115933889, lift_152);
  var lift_150 := ();
  var lift_149 := {(), lift_150, ()};
  var lift_148 := -1561150630;
  var lift_147 := (lift_148, lift_149, lift_151);
  var lift_146 := lift_147;
  var lift_145 := (var tmpData : seq<set<()>> := []; tmpData);
  var lift_144 := (var tmpData : set<()> := {}; tmpData);
  var lift_143 := ();
  var lift_142 := {lift_143};
  var lift_141 := lift_142;
  var lift_134 := '_';
  var lift_133 := 'w';
  var lift_132 := multiset{lift_133, lift_133, lift_134};
  var lift_131 := '~';
  var lift_130 := {multiset{'j', lift_131}, lift_132, lift_132};
  var lift_124 := 'b';
  var lift_123 := 'F';
  var lift_122 := multiset{lift_123, 'm', lift_123, lift_124};
  var lift_115 := 'x';
  var lift_113 := 'V';
  var lift_112 := -490439251;
  var lift_111 := (lift_112, lift_113, lift_113);
  var lift_105 := -1100582896;
  var lift_104 := lift_105;
  var lift_103 := lift_104;
  var lift_102 := 'r';
  var lift_101 := (lift_102, lift_103);
  var lift_100 := ();
  var lift_99 := (lift_100, lift_101);
  var lift_98 := lift_99;
  var lift_97 := true;
  var lift_76 := 'V';
  var lift_75 := true;
  var lift_74 := (lift_75, lift_76, lift_75);
  var lift_73 := ();
  var lift_72 := (lift_73, lift_74, lift_73);
  var lift_69 := -2129560719;
  var lift_68 := false;
  var lift_67 := (-157022032, lift_68, lift_69);
  var lift_66 := false;
  var lift_65 := {lift_66, false, lift_66};
  var lift_20 := false;
  var lift_19 := (-1708693198, lift_20);
  var lift_8 := (var tmpData : set<(multiset<char>, (int, bool))> := {}; tmpData);
  var lift_7 := 1488256090;
  var lift_6 := -249825358;
  var lift_5 := [lift_6, lift_7];
  var lift_4 := 1752862185;
  var lift_3 := lift_4;
  {
    var lift_368 := multiset{lift_369};
    var lift_367 := lift_368;
    var lift_362 := (lift_291, true, lift_5);
    var lift_312 := (lift_238, lift_279, lift_313);
    var lift_311 := lift_312;
    var lift_308 := lift_177;
    var lift_298 := (var tmpData : set<bool> := {}; tmpData);
    var lift_260 := ("nWTEE'hji-RV!ZBTqWS&e", lift_261);
    var lift_259 := lift_260;
    var lift_258 := (lift_76, lift_259);
    var lift_257 := lift_258;
    var lift_256 := lift_6;
    var lift_224 := (var tmpData : multiset<()> := multiset{}; tmpData);
    var lift_219 := ((lift_4, lift_105, 1724749390), lift_220);
    var lift_191 := lift_192;
    var lift_190 := lift_191;
    var lift_188 := ((lift_175, -1991764133, lift_76), lift_143);
    var lift_187 := lift_188;
    var lift_180 := (
      lift_113,
      [lift_166, lift_166, lift_181, lift_166, lift_181],
      lift_20
    );
    var lift_157 := lift_143;
    var lift_156 := [lift_157];
    var lift_155 := [lift_66];
    var lift_154 := lift_155;
    var lift_140 := lift_141;
    var lift_139 := (lift_140 * lift_144 * lift_141);
    var lift_137 := (false, lift_6);
    var lift_135 := lift_130;
    var lift_129 := lift_130;
    var lift_127 := 'h';
    var lift_126 := multiset{lift_113, 'n', '!', lift_127, lift_123};
    var lift_125 := {
      lift_126,
      multiset{lift_76},
      (var tmpData : multiset<char> := multiset{}; tmpData)
    };
    var lift_121 := 'd';
    var lift_120 := {
      multiset{lift_121, lift_102},
      lift_122,
      multiset{lift_123, lift_124, lift_123},
      lift_122
    };
    var lift_117 := (lift_6, lift_102, lift_113);
    var lift_116 := 'o';
    var lift_114 := (lift_7, lift_115, lift_116);
    var lift_110 := {lift_111, lift_114, lift_117};
    var lift_109 := multiset{
      lift_105,
      lift_4,
      1546233470,
      lift_103,
      1819898392
    };
    var lift_96 := (lift_7, lift_4, lift_3);
    var lift_95 := (lift_20, lift_20, '_');
    var lift_78 := (lift_20, lift_20, lift_6);
    var lift_77 := lift_78;
    var lift_71 := [lift_20, true, true, true, false];
    var lift_70 := lift_71;
    var lift_2 := (var tmpData : seq<int> := []; tmpData);
    var lift_1 := [lift_2, lift_2];
    print 
      safeSeqDrop(safeSeqRef(lift_1, lift_3, lift_5), |lift_8|),
      |lift_9(true, lift_19)|,
      "\n";
    var methoddefvar_23 := lift_21(
      lift_65,
      lift_67.2,
      safeSeqTake(lift_70, -953390184),
      lift_72.2,
      lift_77
    );
    {
      var lift_136 := (lift_137, lift_104);
      var lift_128 := multiset{lift_116, lift_123, lift_124};
      var lift_118 := '<';
      var lift_94 := lift_95;
      var methoddefvar_81, methoddefvar_82 := lift_79(
        lift_94,
        lift_96,
        (),
        lift_76,
        lift_76
      );
      {
        print 'U', "\n";
      }
      if (lift_97) {
        var lift_108 := lift_109;
        var lift_107 := lift_108;
        var lift_106 := (lift_107, lift_75, lift_110);
        lift_98 := lift_98;
        lift_106 := lift_106;
        lift_118 := lift_115;
      } else {
        var lift_138 := lift_136;
        var lift_119 := {
          lift_120,
          lift_125,
          {
            lift_122,
            lift_128,
            multiset{lift_127, lift_76, lift_118},
            lift_122,
            lift_126
          },
          lift_120
        };
        lift_119 := {lift_129, lift_130, lift_135};
        lift_136 := lift_138;
      }
    }
    lift_139 := safeSeqRef(
      safeSeqDrop(lift_145, -508975429),
      |lift_71|,
      lift_146.1
    );
    var methoddefvar_153 := lift_21(
      safeSeqRef([lift_65], lift_3, {lift_75, lift_66}),
      |lift_139|,
      safeSeqSubseq(lift_154, lift_112, lift_7),
      safeSeqRef(lift_156, lift_104, lift_150),
      lift_78
    );
    {
      var lift_186 := {
        lift_187,
        lift_187,
        ((lift_6, lift_176, lift_152), lift_73),
        ((lift_3, lift_104, lift_133), lift_150)
      };
      var lift_179 := {lift_3, lift_69, -425505493, -1674072681, lift_103};
      var lift_172 := (
        lift_115,
        [
          lift_166,
          ((arg_173 : multiset<seq<int>>) => lift_174),
          lift_160,
          ((arg_178 : multiset<seq<int>>) => lift_179),
          lift_166
        ],
        lift_75
      );
      var lift_171 := lift_172;
      {
        var lift_189 := {lift_188, lift_187};
        var lift_185 := lift_127;
        var lift_158 := lift_20;
        lift_158 := lift_75;
        print 
          true,
          [
            (
              '$',
              [
                ((arg_159 : multiset<seq<int>>) => {
                  methoddefvar_153,
                  lift_6,
                  lift_3,
                  lift_112
                }),
                lift_160,
                lift_160,
                lift_166,
                lift_160
              ],
              false
            ),
            lift_171,
            lift_180,
            lift_172,
            lift_180
          ],
          "\n";
        lift_185 := lift_185;
        lift_186 := lift_189;
        print 
          "d<:jQ+SRKuJTpG&vhrsxo*aDj$t<",
          {
            (var tmpData : set<()> := {}; tmpData),
            {(), (), lift_150, lift_150, lift_150},
            lift_139,
            lift_142,
            lift_149
          },
          "\n";
      }
    }
    if ((safeSeqRef(
      lift_190,
      lift_176,
      lift_194
    ) == (lift_194 - lift_65 - lift_194))) {
      var lift_255 := multiset{lift_252, lift_235, true, lift_235};
      var lift_232 := (lift_233, lift_197);
      var lift_211 := "_D~DDhIB>R^n!\"X$_K\"K@h=o$svW|MxsT$";
      var lift_210 := (var tmpData : multiset<char> := multiset{}; tmpData);
      var lift_209 := lift_201;
      if (('<' !in multiset{lift_102, '^', lift_133, lift_116, lift_115})) {
        var lift_287 := [true];
        var lift_225 := lift_226;
        var lift_222 := 'R';
        var lift_221 := 1703818638;
        var lift_218 := lift_219;
        {
          lift_198 := (lift_177, lift_209, (lift_195, lift_113, lift_66));
          print (688201686, true), "\n";
          print (), "\n";
          lift_210 := lift_126;
          print 
            ("bYSkAZeiGcB%P;KgJMV+JcM\"QMP^TV-&hMc<KGA", {[lift_68]}),
            (() => (
              'k',
              "!%_xp$oXgIncHdII",
              ["EeSClapYWxg&lbtkw", lift_211, [lift_131], lift_212, lift_212]
            )),
            "\n";
        }
        if (lift_195) {
          lift_215 := lift_212;
          print (var tmpData : seq<char> := []; tmpData), "\n";
        } else {
          var lift_223 := [lift_224, lift_225, lift_224];
          lift_218 := lift_219;
          lift_221 := lift_203;
          lift_222 := '^';
          print 
            (
              [
                [(var tmpData : multiset<()> := multiset{}; tmpData)],
                lift_223,
                lift_223,
                lift_223
              ],
              -837599500
            ),
            ((), (var tmpData : multiset<()> := multiset{}; tmpData)),
            "\n";
          lift_227 := lift_232;
        }
        var methoddefvar_241 := lift_239(lift_250, lift_255);
        {
          lift_256 := lift_177;
        }
        print 
          (
            'N',
            -1520770456,
            {
              (multiset{lift_206, lift_214, lift_124, lift_124, lift_121}, 'I'),
              (lift_126, lift_121)
            }
          ),
          (var tmpData : multiset<char> := multiset{}; tmpData),
          "\n";
        if (lift_253) {
          print 
            true,
            [
              ('B', ("BG+ouc%<KVVlqBJ+!VgW%s<&uh&lo'd", {lift_192})),
              lift_257,
              lift_258
            ],
            "\n";
        } else {
          lift_287 := [lift_264, false, false];
        }
      } else {
        var methoddefvar_288, methoddefvar_289 := lift_79(
          lift_95,
          lift_96,
          lift_100,
          'n',
          lift_237
        );
        {
          lift_290 := lift_290;
        }
      }
      print 
        safeSeqSlice3(lift_70, lift_177, lift_148, lift_69),
        lift_101.0,
        "\n";
    } else {
      var lift_387 := ((lift_200, lift_115), lift_111);
      var lift_373 := lift_368;
      var lift_361 := 649362129;
      var lift_358 := '%';
      var lift_357 := ({lift_281, lift_285, lift_266}, lift_116, lift_358);
      var lift_307 := (lift_196, lift_303, lift_6);
      var lift_304 := (var tmpData : seq<multiset<(bool, (bool, bool, char))>> := []; tmpData);
      var lift_300 := lift_250;
      var lift_297 := multiset{lift_113, lift_115, lift_133, lift_124};
      if ((lift_206 == lift_133)) {
        var lift_296 := multiset{907894768, lift_104};
        {
          print 'J', (), "\n";
          lift_296 := lift_296;
          print (false, 'k', 'e'), (), "\n";
          lift_297 := lift_126;
        }
        print (), "\n";
        lift_298 := lift_263;
      } else {
        var methoddefvar_299 := lift_239(lift_300, lift_301);
        {
          var lift_305 := lift_295;
          lift_304 := lift_304;
          lift_305 := false;
        }
        var methoddefvar_306 := lift_21(
          {false, lift_230, false, false},
          1289689849,
          lift_70,
          lift_73,
          lift_307
        );
        {
          print 'l', "\n";
          lift_308 := lift_6;
          lift_309 := 1162981762;
          print "DwAdA:cTIJJpS\"w:_^um/:\"LnBhGh|Q", "\n";
          print "P?~OPpoqk'PlEi*jWbL!_$^mRF>QZXPoJx>j", "\n";
        }
      }
      print (() => multiset{{lift_112, 1017479630}, lift_201}), "\n";
      {
        var lift_388 := -1360252444;
        var lift_386 := [lift_383];
        var lift_356 := {lift_357, lift_357, lift_357};
        var lift_318 := false;
        var methoddefvar_310 := lift_21(
          lift_193,
          lift_309,
          [lift_279, lift_272, lift_265, lift_281, lift_229],
          lift_150,
          lift_78
        );
        {
          lift_311 := lift_312;
          lift_318 := lift_285;
          lift_319 := lift_196;
        }
        var methoddefvar_322, methoddefvar_323 := lift_320(lift_356, lift_359);
        {
          var lift_363 := (lift_71, lift_113, lift_20);
          print 
            (var tmpData : multiset<char> := multiset{}; tmpData),
            ["l?\"^xCj~ONaZD*~yH?Ipk|'~?y"],
            "\n";
          lift_361 := lift_3;
          lift_362 := lift_362;
          lift_363 := lift_363;
          lift_364 := lift_73;
        }
        if (lift_229) {
          print (var tmpData : set<char> := {}; tmpData), "\n";
          print 
            (var tmpData : multiset<((char, char), ())> := multiset{}; tmpData),
            multiset{
              multiset{lift_101, lift_101},
              lift_367,
              lift_373,
              lift_368
            },
            "\n";
          lift_374 := lift_66;
          print 
            [
              [[(), lift_100], lift_156, lift_375],
              lift_382,
              lift_386,
              lift_382
            ],
            "\n";
        } else {
          lift_387 := lift_387;
        }
        lift_388 := -1890947715;
        if (lift_265) {
          print ['x', lift_237, lift_214], -522515668, "\n";
          print 'y', (31169151, false), "\n";
          print 'K', "\n";
          print 
            (
              (
                [true, lift_319],
                ('+', [false, lift_267, lift_295], -170159064),
                {-628390239, lift_7}
              ),
              ((arg_389 : (char, bool)) => ['^', lift_207, lift_116]),
              ('c', (var tmpData : string := []; tmpData), true)
            ),
            -870953909,
            "\n";
        } else {
          var lift_390 := multiset{lift_380, lift_364, lift_366, ()};
          print 
            true,
            (
              "vWJ_;ey?V&Q'uGcEEn\"Gj''dl-spfxjgEG",
              (
                "vrVF*gbp_=|jnVc*~B'",
                [
                  multiset{lift_381, lift_150, (), (), lift_381},
                  lift_226,
                  lift_390,
                  lift_224
                ]
              )
            ),
            "\n";
        }
      }
    }
  }
  lift_391 := lift_405.2.2;
  print 
    (lift_423.2[safeSeqRef(
      safeSeqTake(lift_431, lift_7),
      (lift_76 as int),
      (lift_428[lift_112] as int)
    ) := lengthNormalize(
      safeSeqRef([lift_19, lift_434, lift_436], lift_104, lift_434).0
    )]),
    multiset(lift_438.2),
    "\n";
  if ((((-1489204514, false), '*').0.0 == safeSeqRef(
    lift_447,
    lift_4,
    lift_449
  ).1)) {
    var lift_903 := ();
    var lift_902 := (var tmpData : set<(int, (bool, int), bool)> := {}; tmpData);
    var lift_900 := 'P';
    var lift_899 := (var tmpData : set<(set<bool>, char, char)> := {}; tmpData);
    var lift_895 := lift_194;
    var lift_891 := (var tmpData : seq<seq<char>> := []; tmpData);
    var lift_872 := 949530400;
    var lift_852 := lift_853;
    var lift_851 := (var tmpData : set<(char, set<bool>, bool)> := {}; tmpData);
    var lift_850 := (false, lift_851, lift_142);
    var lift_849 := ('=', lift_193, lift_401);
    var lift_824 := (lift_131, lift_613, lift_631);
    var lift_816 := (lift_776, lift_545, lift_424);
    var lift_802 := multiset{lift_803, lift_803};
    var lift_773 := (lift_774, lift_301);
    var lift_772 := lift_773;
    var lift_767 := {lift_766};
    var lift_759 := (lift_559, lift_460, false);
    var lift_755 := (-1283836898, lift_756, lift_425);
    var lift_754 := {lift_755, lift_755, lift_759};
    var lift_718 := lift_379;
    var lift_717 := ();
    var lift_681 := lift_682;
    var lift_679 := [lift_200, lift_202, lift_105, lift_104, lift_580];
    var lift_644 := (lift_216, lift_645);
    var lift_642 := ();
    var lift_641 := (var tmpData : multiset<()> := multiset{}; tmpData);
    var lift_636 := multiset{false, lift_286, lift_576};
    var lift_627 := 'G';
    var lift_601 := lift_602;
    var lift_571 := lift_572;
    var lift_570 := (lift_293, lift_441);
    var lift_569 := lift_570;
    var lift_568 := (lift_537, lift_569, lift_460);
    var lift_562 := [lift_417, lift_414];
    var lift_556 := {lift_557, lift_557, lift_557, lift_557};
    var lift_484 := (lift_73, lift_436, 'S');
    var lift_474 := lift_402;
    var lift_472 := lift_291;
    var lift_467 := (lift_19, lift_464);
    var lift_457 := (lift_272, -759129372);
    var lift_456 := (lift_274, lift_309);
    var lift_454 := lift_455;
    var lift_453 := {
      lift_454,
      multiset{lift_456, lift_456, lift_457, lift_456},
      multiset{lift_457, lift_457, lift_456},
      lift_454
    };
    var lift_452 := (lift_384, 'A');
    if ((lift_151.2 <= lift_452.1)) {
      var lift_617 := lift_618;
      var lift_616 := (var tmpData : seq<bool> := []; tmpData);
      var lift_615 := (lift_281, false, lift_616);
      var lift_605 := (lift_314, 'T', lift_601);
      var lift_583 := (lift_427, lift_574, lift_578);
      var lift_566 := 'V';
      var lift_552 := (var tmpData : multiset<bool> := multiset{}; tmpData);
      var lift_551 := lift_552;
      var lift_489 := lift_490;
      var lift_483 := (lift_385, (lift_309, lift_283), 's');
      {
        var lift_488 := lift_489;
        var lift_487 := (1803067525, lift_284);
        var lift_477 := multiset{
          (lift_365, lift_478, lift_417),
          lift_483,
          lift_484,
          lift_484
        };
        var lift_476 := (lift_104, lift_254, lift_407);
        var lift_471 := (lift_463, lift_430, lift_437);
        var lift_470 := lift_471;
        var lift_466 := (lift_436, -1586849727);
        if (lift_408) {
          lift_453 := {lift_455, lift_458, lift_458};
        } else {
          print 
            (
              -68514519,
              multiset{
                "'qWf$WA<dHh*YZGBQ>&t\"'UIcePLd!;f!YsUsV",
                [lift_442, lift_231]
              }
            ),
            "\n";
          print 
            'M',
            [
              (var tmpData : string := []; tmpData),
              lift_220,
              "<<gSl_Nwz|Rtgo_?q&|gcxfXc",
              lift_216
            ],
            "\n";
        }
        lift_466 := lift_467;
        var methoddefvar_468, methoddefvar_469 := lift_79(
          lift_421,
          lift_470,
          lift_73,
          'E',
          lift_214
        );
        {
          var lift_473 := multiset{lift_291, lift_291, [lift_195]};
          print 
            multiset{
              multiset{
                [lift_230, lift_295, lift_272, lift_266, true],
                [lift_317, lift_271, lift_254, lift_66, lift_425]
              },
              multiset{
                lift_472,
                lift_291,
                [lift_281, lift_253, lift_462],
                lift_472,
                lift_291
              },
              lift_473,
              lift_473,
              multiset{lift_472, lift_291}
            },
            -2114159929,
            "\n";
          lift_474 := lift_149;
        }
        var methoddefvar_475 := lift_239(lift_476, lift_301);
        {
          print "m;gWk;PKvSRIZgf-!mMiZzil'?AQWb*/", "\n";
          print false, "E'~iKCQyr", "\n";
        }
        if (lift_68) {
          var lift_486 := (lift_366, lift_487, lift_238);
          var lift_485 := multiset{
            lift_484,
            lift_484,
            lift_486,
            lift_484,
            lift_486
          };
          lift_477 := lift_485;
          print false, "l?jV<>Oi-'dg>;tmwA>sCecaGj", "\n";
        } else {
          lift_488 := (lift_200, lift_404);
          print 'E', "\n";
        }
      }
      {
        var lift_554 := (lift_275, lift_213, lift_399);
        var lift_553 := (lift_540, lift_214, lift_554);
        var lift_529 := lift_530;
        var methoddefvar_496, methoddefvar_497 := lift_494(lift_529, lift_104);
        {
          lift_551 := lift_552;
          lift_553 := lift_553;
          lift_555 := lift_103;
        }
        print 'Q', (), "\n";
        {
          print -1196897368, "\n";
          lift_556 := lift_556;
          print (false, -1102513580), ((), 'z'), "\n";
          print {false, lift_75, lift_401, lift_253, lift_267}, (), "\n";
        }
      }
      {
        var lift_624 := ();
        var lift_623 := (var tmpData : seq<(bool, int, int)> := []; tmpData);
        var lift_614 := ();
        var lift_608 := (var tmpData : multiset<multiset<(bool, bool, char)>> := multiset{}; tmpData);
        var lift_600 := ((lift_396, lift_275, lift_294), lift_450, lift_601);
        var lift_582 := {lift_572, lift_583, lift_568};
        var lift_581 := lift_582;
        var lift_565 := {
          [lift_214, 'y', lift_566],
          lift_562,
          lift_410,
          lift_562
        };
        var methoddefvar_561 := lift_239(lift_250, lift_552);
        {
          var lift_584 := "HOQiSaQpr$/WQn;L$fIlHJsZ|H!sr~*";
          var lift_567 := {lift_568, lift_571, lift_568, lift_572, lift_568};
          print 
            (
              [multiset{';'}],
              (
                (
                  (
                    multiset{
                      {lift_215, lift_215, lift_212, lift_562},
                      lift_563,
                      lift_565,
                      {lift_216, lift_217, [lift_414, lift_397], lift_212},
                      lift_565
                    },
                    "Sb:q!aHG~;_hGMfmQBH~Utjq;sGG-z%<c\"fCe"
                  ),
                  [false, lift_480, lift_265, lift_396, lift_267]
                ),
                -271068678,
                (
                  (var tmpData : set<()> := {}; tmpData),
                  [
                    (var tmpData : set<bool> := {}; tmpData),
                    lift_277,
                    lift_282,
                    lift_277
                  ]
                )
              ),
              'c'
            ),
            multiset{"QKwOXvOGEx$aAc-XbDuT"},
            "\n";
          lift_567 := lift_581;
          print 
            false,
            {(var tmpData : seq<char> := []; tmpData), lift_216, lift_216},
            "\n";
          lift_584 := lift_212;
        }
        var methoddefvar_585, methoddefvar_586 := lift_494(
          (var tmpData : multiset<multiset<(bool, bool, char)>> := multiset{}; tmpData),
          lift_443
        );
        {
          print 206471549, true, "\n";
        }
        var methoddefvar_587, methoddefvar_588 := lift_79(
          (lift_302, lift_275, 'E'),
          (lift_309, lift_200, lift_443),
          lift_100,
          lift_427,
          lift_360
        );
        {
          var lift_604 := lift_605;
          var lift_599 := -2002331216;
          var lift_593 := (615169983, lift_402);
          lift_589 := lift_593;
          print 
            ((
              arg_594 : set<int>,
              arg_595 : int,
              arg_596 : seq<(bool, int)>,
              arg_597 : char,
              arg_598 : (set<seq<multiset<bool>>>, (int, bool, int))
            ) => 'Z'),
            "\n";
          lift_599 := lift_112;
          lift_600 := lift_604;
        }
        var methoddefvar_606, methoddefvar_607 := lift_494(lift_608, lift_465);
        {
          lift_609 := [
            lift_201,
            lift_611,
            {lift_426, lift_430, methoddefvar_607, 1116041513},
            lift_174
          ];
          lift_614 := lift_143;
          lift_615 := lift_617;
          lift_623 := lift_623;
          lift_624 := lift_403;
        }
      }
      print 
        ({lift_531, multiset{lift_548, lift_539}} >= {
          lift_531,
          multiset{
            lift_539,
            lift_540,
            (lift_66, lift_284, 'q'),
            lift_540,
            (lift_534, lift_303, lift_573)
          }
        }),
        "\n";
      print (lift_141 !! lift_591 !! lift_149), "\n";
    } else {
      var lift_637 := (lift_67, lift_638);
      var methoddefvar_625, methoddefvar_626 := lift_79(
        lift_548,
        (lift_612, lift_104, -2026368007),
        lift_150,
        lift_213,
        'y'
      );
      {
        lift_627 := 'r';
        print 
          (
            {lift_272, lift_560, lift_294, lift_546, lift_406},
            {
              multiset{lift_216, lift_215, [lift_124]},
              (var tmpData : multiset<string> := multiset{}; tmpData),
              lift_628
            },
            (
              (
                (
                  false,
                  ((arg_633 : (), arg_634 : char) => 'x'),
                  {lift_371, lift_444, lift_371}
                ),
                {true, lift_235, lift_374}
              ),
              multiset{'O'}
            )
          ),
          multiset{false},
          "\n";
      }
      var methoddefvar_635 := lift_239(lift_250, lift_301);
      {
        print 
          {
            (lift_398, lift_432, lift_253),
            (lift_410, lift_613, lift_545),
            (lift_398, lift_103, lift_302)
          },
          189313855,
          "\n";
        print multiset{multiset{lift_294}, lift_301, lift_301, lift_636}, "\n";
        lift_637 := lift_637;
        print 
          (845469076, 'Q', "M\">zWdB;\"p_QNDzFI@/s/"),
          multiset{
            multiset{(), lift_385, lift_73},
            lift_226,
            (var tmpData : multiset<()> := multiset{}; tmpData),
            lift_226,
            lift_641
          },
          "\n";
        lift_642 := lift_150;
      }
    }
    var methoddefvar_643 := lift_239(
      lift_644.1,
      lift_650(lift_317, lift_658, lift_661)
    );
    {
      var lift_680 := ((lift_445, lift_360, lift_213), lift_410);
      var methoddefvar_665, methoddefvar_666 := lift_663(
        lift_636,
        lift_408,
        lift_679,
        lift_213
      );
      {
        lift_680 := lift_681;
      }
      var methoddefvar_687 := lift_685(
        (lift_295, true),
        lift_472,
        (var tmpData : set<(int, (char, int, char), bool)> := {}; tmpData),
        {(), lift_365}
      );
      {
        lift_709 := lift_710;
        print [true, lift_254, lift_545, lift_75], "\n";
        print "yhj'yBRZcf=_%iuIi", "\n";
        lift_717 := lift_403;
        lift_718 := lift_380;
      }
    }
    var methoddefvar_721 := lift_719(
      safeSeqRef(lift_375, lift_646, lift_592),
      lift_748,
      safeSeqRef(lift_753, lift_465, lift_754),
      (lift_229 && lift_577),
      lift_229
    );
    {
      print 
        (2063361674, ()),
        (
          multiset{lift_451, lift_437, lift_200, lift_580},
          ("~mACNTXwdz/I\"mzQwC'fS", "EAESA'FtoO=&UGa?e/BCL~rX*f"),
          multiset{multiset{lift_206, lift_237, lift_760, lift_631}, lift_761}
        ),
        "\n";
      print 
        {
          {lift_174, lift_611, lift_766, lift_611, lift_201},
          lift_767,
          lift_767,
          {lift_611, lift_201, lift_611},
          lift_767
        },
        "DYJr:Kp",
        "\n";
    }
    if ((lift_423.2 !! safeSeqRef(lift_768, lift_175, lift_428) !! (multiset{
      lift_7,
      1796308569,
      lift_175
    }[lift_416 := lengthNormalize(lift_612)]))) {
      var lift_889 := lift_714;
      var lift_886 := lift_713;
      var lift_844 := [lift_365, lift_819];
      var lift_830 := {lift_612, lift_465, lift_251, lift_492, lift_433};
      var lift_826 := (lift_472, lift_206);
      var lift_825 := multiset{
        lift_437,
        lift_590,
        1654290059,
        -695826980,
        lift_647
      };
      var lift_814 := ();
      var lift_810 := (lift_378, lift_380, 555177351);
      var lift_809 := multiset{
        (lift_804, lift_403, lift_492),
        lift_803,
        lift_803,
        lift_810
      };
      if ((lift_435 <==> lift_408)) {
        lift_772 := lift_772;
        print 
          (
            (-391345860, ("I^l%\"Lwr~<*Lhjryl?NkP/UsuWI^?^", false, ()), true),
            multiset{(), lift_364, lift_379, lift_378, lift_379},
            (
              (
                '/',
                (
                  multiset{lift_69, lift_479},
                  multiset{lift_264, lift_541},
                  [
                    "DUedcAe+L\"$zF$AZSo$'wu$QNpU\"/U'&",
                    lift_398,
                    lift_629,
                    lift_216
                  ]
                )
              ),
              "@c",
              (() => true)
            )
          ),
          "\n";
      } else {
        var lift_801 := true;
        var methoddefvar_777 := lift_719(
          lift_403,
          lift_748,
          lift_754,
          true,
          true
        );
        {
          print (), {multiset{lift_478, lift_434, lift_19}}, "\n";
        }
        var methoddefvar_780, methoddefvar_781 := lift_778();
        {
          print -891073851, "\n";
          lift_800 := lift_646;
          print "SuUiM;Uy;cO|gr+KeWGK_UIErGNXmG-Nl<@Kr>l", "\n";
          lift_801 := lift_620;
          lift_802 := lift_809;
        }
      }
      {
        var lift_815 := (lift_281, lift_535, lift_424);
        var methoddefvar_811, methoddefvar_812 := lift_778();
        {
          var lift_813 := ();
          lift_813 := lift_814;
        }
        lift_815 := lift_816;
        {
          var lift_822 := (var tmpData : multiset<int> := multiset{}; tmpData);
          var lift_817 := lift_818;
          lift_817 := lift_818;
          print multiset{true, lift_254, lift_235, lift_775}, "\n";
          print 
            multiset{lift_215, [lift_76], lift_564, lift_398, lift_215},
            "\n";
          lift_822 := lift_428;
        }
      }
      {
        var lift_848 := lift_849;
        var lift_847 := {lift_848, lift_848};
        var lift_843 := lift_472;
        var lift_828 := {lift_152};
        var methoddefvar_823 := lift_239(lift_250, lift_301);
        {
          var lift_827 := (lift_291, lift_760);
          print {lift_151, lift_824, lift_151}, (), "\n";
          lift_825 := lift_428;
          lift_826 := lift_827;
          lift_828 := {lift_207, lift_752, lift_359, lift_764};
          lift_829 := lift_431;
        }
        if (lift_272) {
          lift_830 := lift_830;
          print 
            false,
            (
              false,
              "/:koV>se>hONT*T'OEwLsouuSw-HsS",
              [
                multiset{2094878404, lift_808, lift_555, lift_105, lift_808},
                lift_769
              ]
            ),
            "\n";
          print 
            (
              {
                (lift_214, -650176245, lift_231),
                lift_831,
                lift_831,
                lift_835,
                lift_839
              },
              "R!O"
            ),
            "\n";
          print 
            (
              ({[false], lift_843}, ['~'], [true, lift_462]),
              {lift_715, lift_131, lift_550, 'B'},
              {false, lift_480, lift_425}
            ),
            "\n";
          lift_844 := lift_844;
        } else {
          var lift_866 := ();
          var lift_846 := lift_847;
          var lift_845 := (lift_660, lift_846, lift_474);
          print 
            1697056922,
            {lift_369, lift_370, lift_371, lift_370, lift_371},
            "\n";
          lift_845 := lift_850;
          lift_852 := lift_853;
          lift_865 := lift_461;
          lift_866 := lift_384;
        }
        print true, {lift_546, lift_620, lift_264, lift_283, true}, "\n";
      }
      {
        var lift_890 := lift_891;
        var methoddefvar_867 := lift_239(lift_250, lift_774);
        {
          var lift_883 := lift_873;
          print 
            ((
              arg_868 : bool,
              arg_869 : bool,
              arg_870 : bool,
              arg_871 : ()
            ) => 2012065321),
            "\n";
          lift_872 := lift_432;
          print 
            (
              (var tmpData : multiset<int> := multiset{}; tmpData),
              (var tmpData : multiset<int> := multiset{}; tmpData)
            ),
            "\n";
          print 
            (
              multiset{
                (lift_73, (lift_407, 1425769442, lift_422), "wkUDWUOs<>Q!hDgf"),
                lift_873,
                lift_883,
                lift_873
              },
              ":;OyIA=BL",
              [{lift_235, lift_659}, lift_282, lift_270]
            ),
            (),
            "\n";
          lift_884 := '"';
        }
        {
          var lift_885 := lift_807;
          print "SGLUM^=wg=$>>|RWF*bj^Zm=JS", false, "\n";
          lift_885 := lift_177;
          print 
            multiset{lift_713, (), lift_73},
            (var tmpData : seq<char> := []; tmpData),
            "\n";
        }
        lift_886 := lift_378;
        var methoddefvar_887 := lift_719(
          lift_804,
          lift_748,
          lift_754,
          lift_271,
          false
        );
        {
          var lift_888 := (lift_434, lift_463);
          print 
            multiset{lift_467, lift_888},
            "lrjOjLfoTQj<Dd^a*ilGUhQogQ",
            "\n";
          lift_889 := lift_889;
          lift_890 := [
            (var tmpData : seq<char> := []; tmpData),
            "MR;~VSP@^JL>Y@gew*dEAR&aqjy"
          ];
          lift_892 := lift_378;
          print [()], '@', "\n";
        }
        print "qq", 'e', "\n";
      }
    } else {
      var lift_898 := lift_899;
      var methoddefvar_894 := lift_21(
        lift_273,
        lift_443,
        lift_291,
        lift_384,
        lift_424
      );
      {
        lift_895 := {lift_865, lift_579, lift_408, lift_401, false};
      }
      var methoddefvar_896, methoddefvar_897 := lift_320(lift_898, lift_842);
      {
        print (), "\n";
        print (), -1798853369, "\n";
        print multiset{-1815167872, lift_426}, "\n";
        print 's', "\n";
        lift_900 := lift_236;
      }
    }
    var methoddefvar_901 := lift_719(
      lift_385,
      (
        "NNb'MWyM:BHWF:x>Rx!nhfxSE=b&",
        ((), true),
        {lift_714, (var tmpData : set<char> := {}; tmpData)}
      ).2,
      (lift_754 + lift_754 + lift_902),
      lift_74.2,
      (lift_621 && lift_425)
    );
    {
      lift_903 := ();
      print ["vx~>C_lF", "U/*c^cbtd|bL:fDMBu@=jF\""], "\n";
    }
  } else {
    var lift_1031 := (lift_573, lift_931, lift_919);
    var lift_1030 := lift_1031;
    var lift_1015 := lift_1016(lift_479, lift_149, lift_1030);
    var lift_1014 := lift_122;
    var lift_1007 := (var tmpData : seq<multiset<(string, bool, char)>> := []; tmpData);
    var lift_1006 := (lift_911, lift_220, lift_1007);
    var lift_1005 := [lift_855];
    var lift_998 := (
      (lift_309, 'b', -1650028796),
      {lift_430, lift_492, lift_372},
      lift_841
    );
    var lift_997 := (lift_761, lift_422);
    var lift_934 := (var tmpData : set<(int, (char, int, char), bool)> := {}; tmpData);
    var lift_932 := lift_933;
    var lift_925 := (lift_926, lift_865);
    lift_904 := lift_411;
    var methoddefvar_916 := lift_685(
      (
        (
          true,
          {(var tmpData : set<()> := {}; tmpData), lift_402},
          ([-1831352669, lift_758], "wR*pZjlU@x'SLR*")
        ),
        (),
        lift_917
      ).2,
      (
        ((
          arg_920 : int,
          arg_921 : (int, set<set<int>>, multiset<()>),
          arg_922 : set<char>,
          arg_923 : (),
          arg_924 : (bool, (int, char), ())
        ) => [(["~v\"hSB*C?%cnhLcPOik|R"], true), lift_925]),
        lift_932,
        true
      ).1,
      (-490626083, lift_934).1,
      {lift_911, lift_364, lift_911}
    );
    {
      var lift_1012 := false;
      var lift_1008 := lift_555;
      var lift_1004 := ((), lift_212, lift_1005);
      var lift_1000 := (lift_1001, lift_201, lift_148);
      var lift_996 := lift_997;
      if (true) {
        print {false, lift_279, lift_535, lift_461}, "\n";
      } else {
        lift_935 := lift_959;
        print false, "i*h%@P;eXr", "\n";
      }
      var methoddefvar_991 := lift_21(
        lift_194,
        lift_465,
        lift_658,
        lift_944,
        lift_992
      );
      {
        var lift_999 := lift_1000;
        var lift_995 := [
          (var tmpData : multiset<char> := multiset{}; tmpData),
          lift_761
        ];
        lift_995 := [lift_761, lift_122];
        print 
          (
            (),
            [
              (multiset{'*', lift_939, 'B', 'm', lift_940}, false),
              lift_996,
              lift_997,
              lift_996
            ],
            multiset{
              ((lift_464, ';', lift_6), {lift_451}, lift_833),
              lift_998,
              lift_999,
              lift_1000,
              lift_998
            }
          ),
          multiset{{(), (), lift_944, lift_379, lift_713}},
          "\n";
        print 
          multiset{
            lift_220,
            "K\"/lHj;y:CSwK~kc\"wrJGk<lHx'TGBp/Kac!BRM",
            lift_212,
            "~FS|S%JSv-USvUG+^bI'YVkp"
          },
          [
            (
              (),
              "ou",
              [
                (var tmpData : multiset<(seq<char>, bool, char)> := multiset{}; tmpData),
                lift_855,
                lift_855,
                lift_855,
                lift_855
              ]
            ),
            lift_1004,
            lift_1006
          ],
          "\n";
        print 
          1843222560,
          [
            multiset{lift_941, lift_446, lift_715, lift_639},
            lift_761,
            lift_132
          ],
          "\n";
        lift_1008 := lift_464;
      }
      if (true) {
        var lift_1009 := ();
        print multiset{-1426474951, lift_841, lift_758}, "\n";
        print {lift_914, lift_938, lift_907, lift_913}, "\n";
        lift_1009 := lift_915;
        print (), "\n";
        print (false, true, '/'), "\n";
      } else {
        var lift_1011 := (lift_932, lift_113, lift_319);
        var lift_1010 := lift_1011;
        print (var tmpData : set<int> := {}; tmpData), "\n";
        lift_1010 := lift_1011;
        lift_1012 := lift_482;
        print ((arg_1013 : set<char>) => multiset{lift_917}), "\n";
        lift_1014 := lift_1014;
      }
    }
    lift_1015 := lift_1032;
  }
}


