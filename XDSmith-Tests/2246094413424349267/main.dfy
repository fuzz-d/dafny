// RUN: %dafny /noVerify /compile:4 /compileTarget:cs "%s" > "%t"
// RUN: %exits-with 3 %dafny /noVerify /compile:4 /compileTarget:java "%s" >> "%t"
// RUN: %dafny /noVerify /compile:4 /compileTarget:py "%s" >> "%t"
// RUN: %dafny /noVerify /compile:4 /compileTarget:js "%s" >> "%t"
// RUN: %dafny /noVerify /compile:4 /compileTarget:go "%s" >> "%t"
// RUN: %diff "%s.expect" "%t"

// Seed: 2246094413424349267
// This is a RANDOMLY GENERATED PROGRAM.
// Fuzzer: dafny
// Version: dafny, xsmith 2.0.5 (38f1d83), in Racket 8.9 (vm-type chez-scheme)
// Options: --dafny-syntax true --seed 2246094413424349267
// Seed: 2246094413424349267
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
method lift_583 (
  arg_587 : bool,
  arg_588 : (int, char, int),
  arg_589 : set<multiset<(char, int, bool)>>,
  arg_590 : multiset<(bool, set<int>)>
)
  returns (arg_591 : char, arg_592 : bool)
  requires (true)
  ensures (true)
{
  arg_591 := 'D';
  arg_592 := true;
  {
    var lift_594 := arg_592;
    var lift_593 := arg_592;
    print 1007738232, (() => multiset{arg_591, 'k'}), "\n";
    lift_593 := lift_594;
  }
}

method lift_501 (arg_504 : set<bool>, arg_505 : int)
  returns (arg_506 : int)
  requires (true)
  ensures (true)
{
  arg_506 := -2044063427;
  {
    var lift_522 := ();
    var lift_521 := -940970249;
    var lift_520 := (lift_521, lift_522);
    var lift_519 := multiset{
      lift_520,
      lift_520,
      lift_520,
      (-1138485180, lift_522)
    };
    var lift_518 := false;
    var lift_517 := (lift_518, arg_506);
    var lift_516 := lift_517;
    var lift_515 := true;
    var lift_514 := lift_515;
    var lift_513 := lift_514;
    var lift_512 := lift_513;
    var lift_511 := lift_512;
    var lift_510 := false;
    var lift_509 := (lift_510, arg_505);
    var lift_508 := multiset{
      lift_509,
      lift_509,
      (lift_511, 668732693),
      lift_516,
      lift_517
    };
    var lift_507 := {lift_508};
    lift_507 := (var tmpData : set<multiset<(bool, int)>> := {}; tmpData);
    lift_519 := lift_519;
  }
}

method lift_430 (
  arg_434 : int,
  arg_435 : (bool, int, int),
  arg_436 : multiset<int>,
  arg_437 : (bool, char)
)
  returns (arg_438 : int, arg_439 : int)
  requires (true)
  ensures (true)
{
  arg_438 := -2118848588;
  arg_439 := 1121732260;
  {
    var lift_462 := (var tmpData : set<seq<bool>> := {}; tmpData);
    var lift_461 := (lift_462, (arg_434, arg_438, arg_439));
    var lift_460 := lift_461;
    var lift_459 := lift_460;
    var lift_458 := {arg_434};
    var lift_457 := -474120656;
    var lift_456 := {arg_439, arg_438, arg_438, lift_457};
    var lift_455 := [
      lift_456,
      lift_456,
      lift_456,
      (var tmpData : set<int> := {}; tmpData),
      lift_458
    ];
    var lift_454 := (var tmpData : set<int> := {}; tmpData);
    var lift_453 := lift_454;
    var lift_452 := lift_453;
    var lift_451 := [lift_452];
    var lift_450 := ();
    var lift_449 := lift_450;
    var lift_448 := (var tmpData : set<(int, int)> := {}; tmpData);
    var lift_447 := (lift_448, lift_449);
    var lift_446 := lift_447;
    var lift_445 := lift_446;
    print 
      (
        ((
          arg_440 : (),
          arg_441 : bool,
          arg_442 : (),
          arg_443 : set<()>,
          arg_444 : multiset<char>
        ) => (1961311126, ())),
        "cRbDOI<\"&CYvvffjUk&%/UnQNVtr/U"
      ),
      ["|'Rjp:e$Zd>uWPjt:vw>\"J@DuV"],
      "\n";
    lift_445 := lift_447;
    lift_451 := lift_455;
    print true, "\n";
    lift_459 := lift_460;
  }
}

method lift_335 (
  arg_338 : (),
  arg_339 : int,
  arg_340 : int,
  arg_341 : set<char>
)
  returns (arg_342 : char)
  requires (true)
  ensures (true)
{
  arg_342 := '!';
  {
    print (), "\n";
    print (var tmpData : multiset<()> := multiset{}; tmpData), "\n";
  }
}

method lift_195 (
  arg_198 : (),
  arg_199 : (int, int),
  arg_200 : char,
  arg_201 : multiset<((), set<int>, multiset<bool>)>,
  arg_202 : multiset<()>
)
  returns (arg_203 : char)
  requires (true)
  ensures (true)
{
  arg_203 := '=';
  {
    var lift_215 := 1263776594;
    var lift_214 := false;
    var lift_213 := lift_214;
    var lift_212 := lift_213;
    var lift_211 := (lift_212, arg_200);
    var lift_210 := -23921492;
    var lift_209 := (arg_200, lift_210, arg_200);
    var lift_208 := lift_209;
    var lift_207 := -1301220870;
    var lift_206 := (lift_207, lift_208, lift_211);
    var lift_205 := lift_206;
    var lift_204 := lift_205;
    lift_204 := lift_205;
    print (), "\n";
    lift_215 := lift_207;
  }
}

method lift_179 (arg_183 : (int, bool, char), arg_184 : bool)
  returns (arg_185 : int, arg_186 : char)
  requires (true)
  ensures (true)
{
  arg_185 := -658403013;
  arg_186 := '_';
  {
    var lift_189 := (var tmpData : multiset<int> := multiset{}; tmpData);
    var lift_188 := '^';
    var lift_187 := lift_188;
    lift_187 := lift_188;
    print "mEHJCx$;@W@CfI:^CjqL|w|a-g", (), "\n";
    print 'F', ("vBfS:X~Ylw\"=f?<k", true, true), "\n";
    lift_189 := lift_189;
  }
}

function lift_158 (
  arg_160 : int,
  arg_161 : set<char>,
  arg_162 : multiset<(multiset<bool>, (bool, bool))>
) : multiset<()>
{
  var lift_164 := ();
  var lift_163 := lift_164;
  multiset{lift_163}
}

function lift_136 (
  arg_138 : bool,
  arg_139 : (bool, int),
  arg_140 : (),
  arg_141 : char
) : bool
{
  var lift_143 := true;
  var lift_142 := lift_143;
  lift_142
}

method lift_76 (arg_79 : multiset<()>, arg_80 : set<char>)
  returns (arg_81 : bool)
  requires (true)
  ensures (true)
{
  arg_81 := true;
  {
    var lift_82 := ();
    print ['Y'], "\n";
    print (), "\n";
    print (var tmpData : seq<(int, int)> := []; tmpData), "\n";
    lift_82 := lift_82;
  }
}

method Main () {
  var lift_1061 := -1095939377;
  var lift_1060 := 145708557;
  var lift_1059 := lift_1060;
  var lift_1058 := multiset{
    lift_1059,
    -1565494165,
    lift_1059,
    -403366413,
    lift_1061
  };
  var lift_1057 := lift_1058;
  var lift_1056 := (var tmpData : multiset<bool> := multiset{}; tmpData);
  var lift_1055 := (lift_1056, lift_1057, ());
  var lift_1053 := '|';
  var lift_1052 := 'm';
  var lift_1051 := ['g', lift_1052, lift_1053];
  var lift_1050 := ();
  var lift_1049 := false;
  var lift_1048 := true;
  var lift_1047 := multiset{lift_1048, lift_1049, false, true};
  var lift_1046 := lift_1047;
  var lift_1045 := (var tmpData : multiset<bool> := multiset{}; tmpData);
  var lift_1044 := multiset{lift_1045, lift_1046, lift_1046};
  var lift_1043 := multiset{lift_1044};
  var lift_1042 := ((var tmpData : string := []; tmpData), lift_1043);
  var lift_1041 := false;
  var lift_1040 := [lift_1041, false];
  var lift_1039 := (lift_1040, lift_1042, lift_1050);
  var lift_1038 := lift_1039;
  var lift_1037 := 'z';
  var lift_1036 := lift_1037;
  var lift_1035 := (lift_1036, lift_1038);
  var lift_1034 := (lift_1035, lift_1041);
  var lift_1033 := lift_1034;
  var lift_1032 := '-';
  var lift_1031 := lift_1032;
  var lift_1030 := lift_1031;
  var lift_1029 := true;
  var lift_1028 := [lift_1029, lift_1029, true];
  var lift_1027 := (lift_1028, lift_1030);
  var lift_1026 := (lift_1027, lift_1033, lift_1051);
  var lift_1025 := lift_1026;
  var lift_1024 := (var tmpData : string := []; tmpData);
  var lift_1023 := ();
  var lift_1022 := false;
  var lift_1021 := lift_1022;
  var lift_1020 := multiset{lift_1021};
  var lift_1019 := multiset{lift_1020};
  var lift_1018 := lift_1019;
  var lift_1017 := lift_1018;
  var lift_1016 := multiset{lift_1017, lift_1019, lift_1018};
  var lift_1015 := "QLM_SFZ=z:a?";
  var lift_1014 := (lift_1015, lift_1016);
  var lift_1013 := false;
  var lift_1012 := [lift_1013, lift_1013, lift_1013];
  var lift_1011 := (lift_1012, lift_1014, lift_1023);
  var lift_1010 := 'L';
  var lift_1009 := (lift_1010, lift_1011);
  var lift_1008 := lift_1009;
  var lift_1007 := (lift_1008, lift_1013);
  var lift_1006 := lift_1007;
  var lift_1002 := false;
  var lift_1001 := lift_1002;
  var lift_1000 := lift_1001;
  var lift_999 := lift_1000;
  var lift_998 := 1286976371;
  var lift_997 := (lift_998, lift_999);
  var lift_996 := '^';
  var lift_995 := false;
  var lift_994 := (lift_995, lift_996, lift_995);
  var lift_993 := (lift_994, lift_997);
  var lift_992 := lift_993;
  var lift_990 := false;
  var lift_989 := 'r';
  var lift_988 := (lift_989, lift_989, lift_990);
  var lift_987 := lift_988;
  var lift_986 := false;
  var lift_985 := 'Q';
  var lift_984 := lift_985;
  var lift_983 := ();
  var lift_982 := lift_983;
  var lift_981 := (lift_982, lift_984, (lift_985, lift_985, lift_986));
  var lift_980 := {lift_981, lift_981, (lift_982, 'W', lift_987)};
  var lift_978 := 'c';
  var lift_977 := (lift_978, 'r', false);
  var lift_976 := 'Y';
  var lift_975 := ();
  var lift_974 := (lift_975, lift_976, lift_977);
  var lift_973 := lift_974;
  var lift_972 := ':';
  var lift_971 := (lift_972, lift_972, true);
  var lift_970 := ();
  var lift_969 := {
    (lift_970, 'U', lift_971),
    lift_973,
    (lift_975, 't', lift_977),
    lift_973
  };
  var lift_962 := -265673420;
  var lift_961 := {lift_962, lift_962};
  var lift_960 := multiset{lift_961};
  var lift_959 := lift_960;
  var lift_958 := -1301119666;
  var lift_957 := lift_958;
  var lift_956 := 265710581;
  var lift_955 := {-1995403840, lift_956, lift_957, lift_956, lift_958};
  var lift_954 := -1394661485;
  var lift_953 := 992903186;
  var lift_952 := 915046331;
  var lift_951 := {lift_952, lift_952};
  var lift_950 := multiset{
    lift_951,
    lift_951,
    {-601482207, lift_953, lift_953, lift_954},
    lift_951,
    lift_955
  };
  var lift_949 := multiset{lift_950, lift_959};
  var lift_948 := ();
  var lift_947 := false;
  var lift_946 := (lift_947, lift_948, lift_949);
  var lift_945 := (var tmpData : set<int> := {}; tmpData);
  var lift_944 := -1047099845;
  var lift_943 := 382912589;
  var lift_942 := -1708951256;
  var lift_941 := {lift_942, lift_943};
  var lift_940 := multiset{
    lift_941,
    {128653181, lift_944, lift_942, lift_943, lift_942},
    lift_941,
    {lift_944, lift_944, lift_942, lift_944, lift_942},
    lift_945
  };
  var lift_939 := lift_940;
  var lift_938 := -2056793250;
  var lift_937 := lift_938;
  var lift_936 := {682402297, lift_937, lift_937, lift_937};
  var lift_935 := lift_936;
  var lift_934 := ();
  var lift_933 := false;
  var lift_932 := [
    (lift_933, lift_934, multiset{multiset{lift_935, lift_936}, lift_939}),
    lift_946
  ];
  var lift_931 := lift_932;
  var lift_930 := lift_931;
  var lift_925 := -482181324;
  var lift_924 := lift_925;
  var lift_923 := lift_924;
  var lift_922 := -1799532386;
  var lift_921 := multiset{{lift_922, lift_922, -141633764, lift_923}};
  var lift_920 := multiset{lift_921};
  var lift_919 := ();
  var lift_918 := false;
  var lift_917 := lift_918;
  var lift_916 := lift_917;
  var lift_915 := (lift_916, lift_919, lift_920);
  var lift_914 := {-1308529211};
  var lift_913 := lift_914;
  var lift_912 := lift_913;
  var lift_911 := multiset{lift_912, lift_913, lift_912, lift_914};
  var lift_910 := lift_911;
  var lift_909 := lift_910;
  var lift_908 := lift_909;
  var lift_907 := 1046350686;
  var lift_906 := {lift_907, lift_907};
  var lift_905 := lift_906;
  var lift_904 := lift_905;
  var lift_903 := multiset{lift_904, lift_905, lift_905, lift_905};
  var lift_902 := multiset{
    lift_903,
    lift_908,
    multiset{lift_904, lift_906},
    (var tmpData : multiset<set<int>> := multiset{}; tmpData),
    lift_911
  };
  var lift_901 := lift_902;
  var lift_897 := false;
  var lift_896 := (lift_897, lift_897);
  var lift_895 := 'b';
  var lift_894 := lift_895;
  var lift_893 := -1708563544;
  var lift_892 := true;
  var lift_891 := (lift_892, lift_893, lift_894);
  var lift_890 := lift_891;
  var lift_889 := (lift_890, lift_896);
  var lift_878 := 1860577154;
  var lift_877 := lift_878;
  var lift_876 := true;
  var lift_875 := -236357080;
  var lift_874 := (lift_875, lift_876, lift_875);
  var lift_873 := lift_874;
  var lift_870 := (var tmpData : multiset<()> := multiset{}; tmpData);
  var lift_869 := lift_870;
  var lift_864 := 'v';
  var lift_863 := lift_864;
  var lift_862 := (true, lift_863, 1593759971);
  var lift_856 := false;
  var lift_854 := false;
  var lift_853 := false;
  var lift_852 := lift_853;
  var lift_851 := lift_852;
  var lift_850 := lift_851;
  var lift_849 := {lift_850, lift_853, lift_854};
  var lift_848 := lift_849;
  var lift_846 := -557771349;
  var lift_845 := false;
  var lift_844 := (lift_845, lift_846);
  var lift_843 := 1239834354;
  var lift_842 := lift_843;
  var lift_841 := -1300906277;
  var lift_840 := {lift_841, lift_842, 1209974743};
  var lift_839 := (true, lift_840);
  var lift_838 := multiset{lift_839, lift_839};
  var lift_837 := 287468048;
  var lift_836 := '*';
  var lift_835 := lift_836;
  var lift_834 := (lift_835, lift_837, lift_838);
  var lift_833 := lift_834;
  var lift_832 := -1460215406;
  var lift_831 := {lift_832, lift_832, lift_832};
  var lift_830 := lift_831;
  var lift_829 := true;
  var lift_828 := lift_829;
  var lift_827 := lift_828;
  var lift_826 := lift_827;
  var lift_825 := lift_826;
  var lift_824 := 1254210658;
  var lift_823 := {lift_824, lift_824};
  var lift_822 := false;
  var lift_821 := multiset{(lift_822, lift_823), (lift_825, lift_830)};
  var lift_820 := -1657650232;
  var lift_819 := ('p', lift_820, lift_821);
  var lift_818 := (var tmpData : set<int> := {}; tmpData);
  var lift_817 := false;
  var lift_816 := (lift_817, lift_818);
  var lift_815 := (var tmpData : set<int> := {}; tmpData);
  var lift_814 := lift_815;
  var lift_813 := lift_814;
  var lift_812 := true;
  var lift_811 := lift_812;
  var lift_810 := (lift_811, lift_813);
  var lift_809 := multiset{lift_810, lift_816, lift_810};
  var lift_808 := -1213194886;
  var lift_807 := lift_808;
  var lift_806 := ('M', lift_807, lift_809);
  var lift_805 := lift_806;
  var lift_804 := -1586706699;
  var lift_803 := {lift_804};
  var lift_802 := multiset{(true, lift_803)};
  var lift_801 := -383608367;
  var lift_800 := 'I';
  var lift_799 := [
    (lift_800, lift_801, lift_802),
    lift_805,
    lift_806,
    lift_819,
    lift_833
  ];
  var lift_798 := lift_799;
  var lift_797 := false;
  var lift_796 := -127510921;
  var lift_795 := '^';
  var lift_794 := (lift_795, lift_796, lift_797);
  var lift_793 := lift_794;
  var lift_792 := lift_793;
  var lift_791 := -2041227233;
  var lift_790 := lift_791;
  var lift_789 := lift_790;
  var lift_788 := lift_789;
  var lift_787 := lift_788;
  var lift_786 := lift_787;
  var lift_785 := '%';
  var lift_784 := (lift_785, lift_786, false);
  var lift_783 := multiset{lift_784, lift_792};
  var lift_782 := false;
  var lift_781 := 225895146;
  var lift_780 := '|';
  var lift_779 := (lift_780, lift_781, lift_782);
  var lift_778 := lift_779;
  var lift_777 := lift_778;
  var lift_776 := lift_777;
  var lift_775 := {multiset{lift_776, lift_778, lift_778}, lift_783};
  var lift_774 := 2133513881;
  var lift_773 := lift_774;
  var lift_772 := true;
  var lift_771 := (lift_772, lift_773, lift_775);
  var lift_770 := (var tmpData : seq<(bool, int, set<multiset<(char, int, bool)>>)> := []; tmpData);
  var lift_769 := '*';
  var lift_768 := -2121267711;
  var lift_767 := (lift_768, lift_769, 1367559848);
  var lift_766 := true;
  var lift_765 := lift_766;
  var lift_764 := lift_765;
  var lift_763 := lift_764;
  var lift_762 := lift_763;
  var lift_761 := lift_762;
  var lift_760 := 1423620640;
  var lift_759 := (lift_760, lift_761, lift_765);
  var lift_758 := lift_759;
  var lift_757 := false;
  var lift_756 := multiset{lift_757};
  var lift_755 := (lift_756, lift_758, (lift_760, lift_767));
  var lift_752 := (var tmpData : seq<(char, char)> := []; tmpData);
  var lift_748 := [-1183110399];
  var lift_746 := 1711606252;
  var lift_740 := ();
  var lift_739 := multiset{lift_740, (), lift_740};
  var lift_738 := -495214154;
  var lift_737 := 958899950;
  var lift_736 := {lift_737, lift_737, lift_737, lift_738};
  var lift_735 := lift_736;
  var lift_734 := (lift_735, lift_739);
  var lift_725 := (var tmpData : set<char> := {}; tmpData);
  var lift_721 := ();
  var lift_720 := lift_721;
  var lift_719 := {lift_720, (), lift_721};
  var lift_718 := lift_719;
  var lift_717 := lift_718;
  var lift_714 := "ifHTzosvWh<Nf'asfDxP-ynl$GX";
  var lift_713 := ();
  var lift_712 := (lift_713, lift_714);
  var lift_706 := 64960158;
  var lift_705 := {-706241602, 617816752, 170095518, lift_706};
  var lift_704 := lift_705;
  var lift_703 := lift_704;
  var lift_702 := lift_703;
  var lift_700 := false;
  var lift_699 := -2036880197;
  var lift_698 := ((), (lift_699, lift_700));
  var lift_697 := lift_698;
  var lift_696 := lift_697;
  var lift_695 := false;
  var lift_694 := (787995780, lift_695);
  var lift_693 := ();
  var lift_692 := (lift_693, lift_694);
  var lift_691 := false;
  var lift_690 := 1557696034;
  var lift_689 := (lift_690, lift_691);
  var lift_688 := ();
  var lift_687 := (lift_688, lift_689);
  var lift_686 := multiset{lift_687, lift_692, lift_696, lift_692, lift_696};
  var lift_684 := (var tmpData : seq<bool> := []; tmpData);
  var lift_683 := lift_684;
  var lift_682 := false;
  var lift_681 := lift_682;
  var lift_680 := false;
  var lift_679 := [lift_680, lift_681];
  var lift_678 := lift_679;
  var lift_677 := multiset{lift_678, lift_683};
  var lift_676 := lift_677;
  var lift_668 := false;
  var lift_667 := true;
  var lift_666 := multiset{lift_667, lift_667, lift_668};
  var lift_662 := 'E';
  var lift_661 := lift_662;
  var lift_660 := false;
  var lift_659 := lift_660;
  var lift_658 := (lift_659, lift_661);
  var lift_646 := -412277634;
  var lift_645 := 990025716;
  var lift_644 := {lift_645, lift_646, lift_645};
  var lift_642 := 'x';
  var lift_641 := false;
  var lift_640 := (var tmpData : multiset<((char, bool), set<bool>)> := multiset{}; tmpData);
  var lift_639 := (lift_640, lift_641, lift_642);
  var lift_638 := lift_639;
  var lift_626 := -231488921;
  var lift_625 := 'o';
  var lift_624 := ();
  var lift_623 := 'E';
  var lift_622 := (lift_623, lift_623);
  var lift_621 := lift_622;
  var lift_620 := (lift_621, lift_624, lift_625);
  var lift_619 := 'D';
  var lift_618 := ();
  var lift_617 := lift_618;
  var lift_616 := lift_617;
  var lift_615 := 'X';
  var lift_614 := 'U';
  var lift_613 := (lift_614, lift_615);
  var lift_612 := lift_613;
  var lift_611 := lift_612;
  var lift_610 := {
    (lift_611, lift_616, lift_619),
    lift_620,
    lift_620,
    (lift_622, lift_624, 'l'),
    (lift_621, lift_618, lift_615)
  };
  var lift_609 := -2049961212;
  var lift_608 := [lift_609];
  var lift_607 := (lift_608, lift_610, lift_626);
  var lift_606 := lift_607;
  var lift_604 := (var tmpData : multiset<(bool, set<int>)> := multiset{}; tmpData);
  var lift_603 := lift_604;
  var lift_602 := lift_603;
  var lift_600 := true;
  var lift_599 := -574051574;
  var lift_598 := 'M';
  var lift_597 := lift_598;
  var lift_596 := (lift_597, lift_599, lift_600);
  var lift_595 := multiset{lift_596};
  var lift_582 := -170645690;
  var lift_581 := lift_582;
  var lift_580 := lift_581;
  var lift_579 := ();
  var lift_578 := (lift_579, lift_580);
  var lift_577 := lift_578;
  var lift_576 := (var tmpData : seq<int> := []; tmpData);
  var lift_575 := (var tmpData : set<((char, char), (), ())> := {}; tmpData);
  var lift_574 := (lift_575, lift_576, lift_577);
  var lift_572 := ();
  var lift_571 := ();
  var lift_570 := -509057322;
  var lift_569 := 'x';
  var lift_568 := lift_569;
  var lift_567 := ('S', lift_568, lift_570);
  var lift_566 := (lift_567, lift_571, lift_572);
  var lift_565 := ();
  var lift_561 := 'H';
  var lift_560 := 'C';
  var lift_559 := lift_560;
  var lift_558 := [lift_559, lift_561, 'T', lift_561];
  var lift_557 := [lift_558];
  var lift_548 := true;
  var lift_547 := 'C';
  var lift_546 := (lift_547, lift_547, lift_548);
  var lift_545 := false;
  var lift_544 := lift_545;
  var lift_543 := '~';
  var lift_542 := (lift_543, 'P', lift_544);
  var lift_541 := lift_542;
  var lift_540 := false;
  var lift_539 := ':';
  var lift_538 := 'w';
  var lift_537 := (lift_538, lift_539, lift_540);
  var lift_536 := multiset{
    lift_537,
    lift_541,
    lift_546,
    (lift_547, lift_539, lift_545)
  };
  var lift_534 := true;
  var lift_533 := lift_534;
  var lift_532 := {lift_533, lift_534, lift_533};
  var lift_531 := lift_532;
  var lift_530 := lift_531;
  var lift_529 := lift_530;
  var lift_528 := lift_529;
  var lift_525 := (var tmpData : multiset<char> := multiset{}; tmpData);
  var lift_496 := true;
  var lift_495 := ('s', lift_496);
  var lift_494 := lift_495;
  var lift_490 := '@';
  var lift_489 := -1997511461;
  var lift_488 := (lift_489, lift_489, lift_490);
  var lift_487 := 'T';
  var lift_486 := -1382942688;
  var lift_485 := (lift_486, lift_486, lift_487);
  var lift_480 := true;
  var lift_479 := 385811030;
  var lift_478 := lift_479;
  var lift_477 := (lift_478, lift_480);
  var lift_476 := 154319301;
  var lift_475 := true;
  var lift_474 := lift_475;
  var lift_473 := true;
  var lift_472 := [lift_473, lift_474, lift_473, lift_473, lift_474];
  var lift_471 := (lift_472, lift_476, lift_477);
  var lift_470 := lift_471;
  var lift_469 := {lift_470, lift_471, lift_470};
  var lift_468 := (lift_469, lift_478);
  var lift_467 := lift_468;
  var lift_426 := 1467370459;
  var lift_425 := (var tmpData : multiset<int> := multiset{}; tmpData);
  var lift_424 := [lift_425, lift_425, lift_425, multiset{lift_426}];
  var lift_419 := false;
  var lift_418 := lift_419;
  var lift_417 := '@';
  var lift_416 := (lift_417, lift_417, lift_418);
  var lift_415 := lift_416;
  var lift_411 := 1151570956;
  var lift_410 := '+';
  var lift_409 := lift_410;
  var lift_408 := lift_409;
  var lift_407 := lift_408;
  var lift_406 := '*';
  var lift_405 := lift_406;
  var lift_404 := lift_405;
  var lift_403 := (lift_404, lift_407, true);
  var lift_402 := false;
  var lift_401 := (lift_402, lift_403, [lift_411]);
  var lift_400 := -245792826;
  var lift_399 := 294943701;
  var lift_398 := [lift_399, lift_400, lift_399, lift_399];
  var lift_397 := lift_398;
  var lift_396 := 'G';
  var lift_395 := 'H';
  var lift_394 := false;
  var lift_393 := (lift_394, (lift_395, lift_396, true), lift_397);
  var lift_392 := {lift_393, lift_401};
  var lift_391 := lift_392;
  var lift_377 := (var tmpData : multiset<((), set<int>, multiset<bool>)> := multiset{}; tmpData);
  var lift_374 := 'd';
  var lift_373 := lift_374;
  var lift_372 := false;
  var lift_371 := (lift_372, lift_373);
  var lift_370 := [lift_371];
  var lift_369 := lift_370;
  var lift_368 := 'l';
  var lift_367 := true;
  var lift_366 := lift_367;
  var lift_365 := lift_366;
  var lift_364 := (lift_365, lift_368);
  var lift_361 := {'u'};
  var lift_352 := true;
  var lift_351 := ();
  var lift_350 := 'T';
  var lift_349 := (-72622934, '|', lift_350);
  var lift_348 := lift_349;
  var lift_347 := (lift_348, lift_351, lift_352);
  var lift_322 := -683100783;
  var lift_321 := (lift_322, lift_322, lift_322);
  var lift_320 := 1939363097;
  var lift_319 := lift_320;
  var lift_318 := [lift_319, lift_320];
  var lift_317 := lift_318;
  var lift_316 := false;
  var lift_315 := 'O';
  var lift_314 := true;
  var lift_313 := (lift_314, lift_315, lift_316);
  var lift_312 := (lift_313, lift_317, lift_321);
  var lift_311 := multiset{lift_312};
  var lift_310 := lift_311;
  var lift_308 := 1018023713;
  var lift_307 := (lift_308, lift_308);
  var lift_306 := -1215238448;
  var lift_305 := lift_306;
  var lift_304 := 425093610;
  var lift_303 := (lift_304, lift_305, lift_305);
  var lift_302 := lift_303;
  var lift_301 := 1885250309;
  var lift_300 := -1318720525;
  var lift_299 := lift_300;
  var lift_298 := [lift_299, lift_301, 1480517842];
  var lift_297 := false;
  var lift_296 := true;
  var lift_295 := (lift_296, '"', lift_297);
  var lift_294 := (lift_295, lift_298, lift_302);
  var lift_293 := lift_294;
  var lift_292 := -1605069364;
  var lift_291 := 293972677;
  var lift_290 := (lift_291, lift_292, 1386640148);
  var lift_289 := 1010461328;
  var lift_288 := -383286304;
  var lift_287 := lift_288;
  var lift_286 := [-1766581350, lift_287, -506831290, lift_289, lift_288];
  var lift_285 := lift_286;
  var lift_284 := false;
  var lift_283 := (lift_284, 'A', lift_284);
  var lift_282 := (lift_283, lift_285, lift_290);
  var lift_281 := multiset{lift_282, lift_293, lift_282};
  var lift_280 := 'Z';
  var lift_279 := lift_280;
  var lift_278 := multiset{lift_279, lift_280, lift_280};
  var lift_277 := (lift_278, lift_281, lift_307);
  var lift_270 := "A>dqJkzgEnLcfAER";
  var lift_267 := '"';
  var lift_266 := 'A';
  var lift_265 := [lift_266, lift_266, lift_266, lift_266, lift_267];
  var lift_260 := 1927671764;
  var lift_259 := multiset{lift_260};
  var lift_253 := (var tmpData : seq<seq<bool>> := []; tmpData);
  var lift_252 := lift_253;
  var lift_250 := false;
  var lift_249 := true;
  var lift_248 := [lift_249, lift_250, true];
  var lift_247 := (lift_248, lift_250);
  var lift_246 := lift_247;
  var lift_245 := lift_246;
  var lift_236 := ();
  var lift_235 := 'b';
  var lift_234 := 'v';
  var lift_233 := multiset{lift_234, lift_234, lift_235, lift_234};
  var lift_232 := '^';
  var lift_231 := multiset{lift_232};
  var lift_230 := lift_231;
  var lift_225 := false;
  var lift_224 := false;
  var lift_223 := true;
  var lift_222 := multiset{lift_223, lift_224, lift_224, lift_224, lift_225};
  var lift_221 := -716062619;
  var lift_220 := -394797352;
  var lift_219 := {lift_220, lift_220, lift_220, lift_221};
  var lift_218 := ();
  var lift_217 := (lift_218, lift_219, lift_222);
  var lift_194 := true;
  var lift_193 := true;
  var lift_192 := multiset{false, lift_193, lift_194, lift_194, lift_194};
  var lift_178 := false;
  var lift_177 := lift_178;
  var lift_176 := multiset{lift_177};
  var lift_175 := (lift_176, (lift_177, lift_177));
  var lift_174 := false;
  var lift_173 := (lift_174, lift_174);
  var lift_172 := false;
  var lift_171 := lift_172;
  var lift_170 := lift_171;
  var lift_169 := lift_170;
  var lift_168 := true;
  var lift_167 := multiset{false, lift_168, lift_169, lift_169};
  var lift_166 := (lift_167, lift_173);
  var lift_165 := multiset{lift_166, lift_175};
  var lift_157 := ();
  var lift_156 := ();
  var lift_155 := lift_156;
  var lift_154 := lift_155;
  var lift_153 := ();
  var lift_152 := multiset{lift_153, lift_154, lift_157};
  var lift_151 := (var tmpData : multiset<()> := multiset{}; tmpData);
  var lift_149 := ();
  var lift_148 := 1620956680;
  var lift_147 := lift_148;
  var lift_146 := (false, lift_147);
  var lift_145 := true;
  var lift_144 := lift_145;
  var lift_135 := lift_136(lift_144, lift_146, lift_149, '/');
  var lift_133 := -15002749;
  var lift_132 := lift_133;
  var lift_131 := ();
  var lift_130 := '/';
  var lift_129 := lift_130;
  var lift_128 := (lift_129, lift_131, lift_132);
  var lift_127 := lift_128;
  var lift_126 := lift_127;
  var lift_125 := ();
  var lift_124 := 'd';
  var lift_123 := (lift_124, lift_125, 1218140827);
  var lift_122 := multiset{lift_123, lift_126};
  var lift_121 := 297032371;
  var lift_120 := ();
  var lift_119 := 'c';
  var lift_118 := (lift_119, lift_120, lift_121);
  var lift_117 := lift_118;
  var lift_113 := -609880494;
  var lift_112 := lift_113;
  var lift_111 := lift_112;
  var lift_110 := true;
  var lift_109 := 1535875554;
  var lift_108 := ('J', lift_109, lift_110);
  var lift_107 := (lift_108, lift_111);
  var lift_104 := '!';
  var lift_103 := lift_104;
  var lift_102 := 'u';
  var lift_101 := lift_102;
  var lift_100 := lift_101;
  var lift_99 := {lift_100, lift_103, lift_103, lift_104, lift_103};
  var lift_98 := 905773325;
  var lift_97 := lift_98;
  var lift_96 := -1085714569;
  var lift_95 := lift_96;
  var lift_94 := [lift_95, lift_96, lift_97, lift_97];
  var lift_93 := lift_94;
  var lift_92 := -392532810;
  var lift_91 := lift_92;
  var lift_90 := (lift_91, lift_93, lift_99);
  var lift_89 := lift_90;
  var lift_87 := ();
  var lift_86 := multiset{lift_87};
  var lift_84 := ();
  var lift_75 := ('D', '+');
  var lift_74 := ();
  var lift_73 := ();
  var lift_72 := 'i';
  var lift_71 := true;
  var lift_70 := true;
  var lift_69 := lift_70;
  var lift_68 := lift_69;
  var lift_67 := (lift_68, lift_71, lift_72);
  var lift_66 := -264060057;
  var lift_65 := true;
  var lift_64 := (lift_65, lift_65, lift_66);
  var lift_63 := false;
  var lift_62 := (lift_63, lift_63, 'A');
  var lift_61 := 1165203575;
  var lift_60 := false;
  var lift_59 := true;
  var lift_58 := (lift_59, lift_60, lift_61);
  var lift_57 := (lift_58, lift_62);
  var lift_56 := 'i';
  var lift_55 := false;
  var lift_54 := lift_55;
  var lift_53 := (lift_54, lift_54, lift_56);
  var lift_52 := -564899479;
  var lift_51 := true;
  var lift_50 := lift_51;
  var lift_49 := (false, lift_50, lift_52);
  var lift_48 := (lift_49, lift_53);
  var lift_47 := multiset{
    lift_48,
    lift_57,
    lift_57,
    lift_57,
    (lift_64, lift_67)
  };
  var lift_46 := lift_47;
  var lift_45 := lift_46;
  var lift_44 := lift_45;
  var lift_43 := (lift_44, lift_73);
  var lift_42 := 'z';
  var lift_41 := false;
  var lift_40 := (lift_41, lift_42, lift_43);
  var lift_39 := lift_40;
  var lift_38 := (lift_39, lift_74, lift_75);
  var lift_37 := ();
  var lift_36 := lift_37;
  var lift_35 := 'z';
  var lift_34 := true;
  var lift_33 := lift_34;
  var lift_32 := true;
  var lift_31 := (lift_32, lift_33, lift_35);
  var lift_30 := -1358176507;
  var lift_29 := lift_30;
  var lift_28 := false;
  var lift_27 := (lift_28, true, lift_29);
  var lift_26 := (lift_27, lift_31);
  var lift_25 := 'H';
  var lift_24 := false;
  var lift_23 := false;
  var lift_22 := (lift_23, lift_24, lift_25);
  var lift_21 := true;
  var lift_20 := true;
  var lift_19 := (lift_20, lift_20, -1774388072);
  var lift_18 := lift_19;
  var lift_17 := multiset{
    (lift_18, (lift_21, true, '_')),
    (lift_18, lift_22),
    lift_26
  };
  var lift_16 := (lift_17, lift_36);
  var lift_15 := -220003720;
  var lift_14 := lift_15;
  var lift_13 := lift_14;
  var lift_12 := [lift_13, lift_13, lift_13, 99261054];
  var lift_11 := lift_12;
  var lift_10 := lift_11;
  var lift_9 := lift_10;
  var lift_8 := 'u';
  var lift_7 := lift_8;
  var lift_6 := 1491328551;
  var lift_5 := (lift_6, lift_7, true);
  var lift_4 := (lift_5, lift_9, lift_16);
  var lift_3 := lift_4;
  var lift_2 := lift_3;
  var lift_1 := lift_2.2;
  {
    var lift_114 := (var tmpData : seq<(int, int)> := []; tmpData);
    var lift_106 := lift_107;
    var lift_88 := lift_89;
    var lift_85 := ();
    var lift_83 := multiset{lift_73, lift_84, lift_36, lift_85};
    lift_1 := lift_38.0.2;
    var methoddefvar_78 := lift_76((lift_83 + lift_86), lift_88.2);
    {
      var lift_134 := lift_122;
      var lift_116 := ('y', lift_73, lift_95);
      if (lift_41) {
        var lift_105 := {lift_106, lift_106};
        lift_105 := (var tmpData : set<((char, int, bool), int)> := {}; tmpData);
        print 
          {"uMDCy~Y^gGTXAyT?l%W'ak;&H:muUP>SnOIGi="},
          {false, false, lift_71, lift_54},
          "\n";
        print "uA", "\n";
      } else {
        var lift_115 := false;
        lift_114 := lift_114;
        print 
          (
            {lift_97, lift_15, lift_95, lift_98, lift_61},
            (var tmpData : multiset<char> := multiset{}; tmpData)
          ),
          "\n";
        lift_115 := true;
        print 
          (
            [
              multiset{
                (lift_56, (), lift_14),
                lift_116,
                lift_116,
                lift_116,
                lift_117
              },
              lift_122,
              lift_134,
              lift_122
            ],
            {lift_107, lift_106, lift_106, lift_107}
          ),
          '"',
          "\n";
      }
      print true, "\n";
      print multiset{lift_63, lift_34, lift_20}, "\n";
    }
    lift_135 := lift_24;
    print !((lift_41 || lift_23)), "\n";
  }
  var methoddefvar_150 := lift_76(
    (lift_86 + (lift_151 - lift_152) + lift_158(
      lift_98,
      {lift_35, 'C', lift_129},
      lift_165
    )),
    lift_89.2
  );
  {
    var lift_240 := ();
    var lift_238 := (var tmpData : seq<bool> := []; tmpData);
    var lift_228 := {lift_92};
    var lift_226 := (var tmpData : set<int> := {}; tmpData);
    var lift_216 := (lift_98, lift_6);
    var lift_191 := (lift_14, lift_68, ';');
    var lift_190 := lift_191;
    if ((lift_174 || lift_168)) {
      var methoddefvar_181, methoddefvar_182 := lift_179(lift_190, lift_60);
      {
        print (var tmpData : set<((int, int), ())> := {}; tmpData), "\n";
      }
    } else {
      var lift_244 := lift_245;
      var lift_239 := multiset{lift_119, lift_104};
      var lift_237 := [lift_194, lift_145, lift_172];
      var lift_227 := (lift_87, lift_219, lift_192);
      lift_192 := lift_176;
      var methoddefvar_197 := lift_195(
        lift_84,
        lift_216,
        '=',
        multiset{
          lift_217,
          (lift_149, lift_226, multiset{lift_59, lift_193, lift_144, lift_71}),
          lift_227,
          (lift_155, lift_228, lift_167)
        },
        lift_86
      );
      {
        var lift_229 := 'w';
        lift_229 := 'j';
        lift_230 := lift_233;
        lift_236 := lift_157;
        print [()], {lift_91, lift_133, lift_221, lift_91}, "\n";
      }
      if (lift_178) {
        lift_237 := lift_238;
      } else {
        var lift_251 := lift_75;
        lift_239 := lift_233;
        lift_240 := lift_155;
        print 
          (),
          (
            ((arg_241 : char, arg_242 : multiset<bool>, arg_243 : char) => (
              "R?/",
              multiset{1526314522, lift_109, lift_147, lift_147},
              multiset{
                ([methoddefvar_150, lift_55], true),
                lift_244,
                lift_247,
                lift_245,
                (lift_248, true)
              }
            )),
            '|',
            (
              ([(var tmpData : set<char> := {}; tmpData), lift_99], true),
              (
                (
                  ['$', lift_101, '<'],
                  multiset{
                    lift_75,
                    (lift_234, lift_130),
                    lift_75,
                    lift_251,
                    lift_251
                  },
                  ()
                ),
                multiset{lift_235, lift_56, lift_124},
                [multiset{lift_178}, lift_192, lift_176, lift_167, lift_167]
              )
            )
          ),
          "\n";
        print ([{lift_84, (), lift_153, lift_36, lift_74}], false), false, "\n";
        print "XLr:pJn$S<XcCP_mxrrD&:", false, "\n";
      }
    }
  }
  if (safeSeqRef(
    safeSeqRef(
      ("</k@GI\"rdl+'!QywZibu+<oBiXCBum^%", lift_252).1,
      lift_89.0,
      safeSeqSubseq(lift_248, lift_30, lift_113)
    ),
    |lift_43.0|,
    (|lift_44| > lift_146.1 == safeSeqRef(lift_12, lift_112, lift_66))
  )) {
    var lift_601 := lift_602;
    var lift_573 := lift_565;
    var lift_527 := lift_528;
    var lift_500 := (var tmpData : set<int> := {}; tmpData);
    var lift_499 := (lift_500, lift_101, lift_398);
    var lift_498 := multiset{(lift_405, lift_172), lift_495};
    var lift_491 := [lift_99];
    var lift_484 := {lift_485, lift_488, lift_485};
    var lift_463 := (lift_28, 1593270892, lift_52);
    var lift_428 := {lift_30, lift_289, lift_98};
    var lift_423 := (lift_30, lift_68, lift_407);
    var lift_420 := (lift_69, lift_415, lift_398);
    var lift_414 := lift_415;
    var lift_385 := multiset{(), lift_36, lift_351, lift_153, lift_149};
    var lift_379 := ();
    var lift_375 := (lift_172, lift_303, lift_279);
    var lift_359 := (
      (var tmpData : multiset<int> := multiset{}; tmpData),
      (lift_301, lift_352, lift_291),
      lift_265
    );
    var lift_356 := (lift_171, lift_248);
    var lift_355 := lift_356;
    var lift_345 := (lift_287, lift_132, lift_6);
    var lift_344 := ((lift_250, lift_148), lift_345);
    var lift_343 := {lift_344, lift_344};
    var lift_326 := ([-150398996, lift_112], 807303525);
    var lift_323 := (lift_287, lift_52);
    var lift_274 := (lift_42, lift_20, lift_147);
    var lift_273 := lift_274;
    var lift_264 := (lift_265, lift_267, ());
    var lift_263 := "@HU|Vjo\"g'Wh/oTLD";
    var lift_262 := {
      (lift_263, lift_129, ()),
      lift_264,
      (lift_265, 'r', lift_155),
      lift_264
    };
    var lift_258 := lift_259;
    if (!((true && lift_178))) {
      var lift_271 := 'N';
      var lift_268 := (lift_36, {lift_194, lift_174}, lift_178);
      var lift_257 := {lift_232, lift_8, lift_100, lift_235};
      {
        var methoddefvar_254, methoddefvar_255 := lift_179(
          (lift_112, lift_224, lift_232),
          lift_135
        );
        {
          var lift_256 := 319517727;
          lift_256 := lift_92;
        }
        if (lift_70) {
          print "CHGWAv@tcjq_P*FuKURv@B~+EL?", "\n";
          print (';', (false, -1138442291)), 629112521, "\n";
          print (), "\n";
        } else {
          print 
            multiset{
              {'e', lift_102, lift_72},
              {lift_235},
              lift_257,
              lift_99,
              {lift_7, lift_124, 'q', lift_35, lift_124}
            },
            "\n";
        }
        {
          lift_258 := lift_259;
        }
        var methoddefvar_261 := lift_76(
          lift_151,
          (var tmpData : set<char> := {}; tmpData)
        );
        {
          print {(), ()}, "\n";
          lift_262 := lift_262;
          print (), {'q'}, "\n";
          print 
            multiset{
              (lift_154, {true, true, lift_145, lift_177, lift_59}, false),
              lift_268
            },
            "\n";
          print 
            (),
            (var tmpData : multiset<(int, (bool, char), bool)> := multiset{}; tmpData),
            "\n";
        }
      }
      var methoddefvar_269 := lift_76(lift_151, lift_257);
      {
        print 
          (
            ("B$LL$w!nA+\"=Gv_GE=UMB'R/u", (), -1772037186),
            [
              ['n'],
              lift_270,
              lift_270,
              (var tmpData : string := []; tmpData),
              lift_263
            ]
          ),
          "\n";
        lift_271 := lift_103;
      }
    } else {
      var lift_564 := 'y';
      var lift_535 := lift_536;
      var lift_493 := lift_494;
      var lift_481 := lift_233;
      var lift_412 := lift_401;
      var lift_390 := (lift_266, lift_61);
      var lift_383 := multiset{'T', lift_100, lift_279, 'U', lift_42};
      var lift_382 := {lift_104};
      var lift_381 := lift_382;
      var lift_363 := {lift_55};
      var lift_362 := ((), lift_222);
      var lift_358 := ((lift_168, lift_320), lift_290);
      var lift_354 := lift_355;
      var lift_334 := (lift_298, lift_121, -966947437);
      var lift_331 := (lift_317, lift_109, lift_121);
      var lift_330 := 'm';
      var lift_328 := ();
      var lift_327 := ([lift_322], lift_221);
      var lift_325 := ((), multiset{lift_71, lift_178, true});
      var lift_309 := (lift_233, lift_310, lift_323);
      var lift_275 := (var tmpData : set<(char, bool, int)> := {}; tmpData);
      if ((lift_121 == lift_30)) {
        var lift_324 := (lift_236, lift_167);
        print false, "\n";
        {
          var lift_276 := lift_277;
          var lift_272 := lift_273;
          print multiset{{('n', true, -217515140), lift_272}, lift_275}, "\n";
          lift_276 := lift_309;
          lift_324 := lift_325;
        }
        {
          print false, "\n";
          lift_326 := lift_327;
          print 'x', "\n";
        }
        if (lift_41) {
          print (), "~m>N", "\n";
          lift_328 := ();
        } else {
          var lift_333 := lift_334;
          var lift_332 := lift_333;
          var lift_329 := ();
          lift_329 := lift_236;
          print (), "ujV*?C+>VOTqsS%iU$nQpu?A+@<", "\n";
          lift_330 := lift_8;
          print 
            [true, lift_54, lift_50],
            {
              ([lift_109, 2069926380], lift_98, lift_260),
              lift_331,
              lift_331,
              lift_332,
              lift_331
            },
            "\n";
        }
      } else {
        var lift_360 := multiset{lift_235, lift_232, lift_234, 'a', lift_103};
        var lift_357 := (lift_100, lift_104, lift_235);
        var lift_353 := {lift_347};
        var methoddefvar_337 := lift_335(
          lift_87,
          lift_14,
          lift_148,
          {lift_232, lift_129, '|'}
        );
        {
          var lift_346 := {lift_347, (lift_349, lift_236, true)};
          lift_343 := lift_343;
          lift_346 := lift_353;
          lift_354 := lift_355;
          print 
            (
              695259690,
              (
                (
                  (
                    (),
                    "~bRE?n$StMdm+KU%yX$@$@=YiSzmmyZXMJbkI~",
                    multiset{lift_304, lift_13, -114855353}
                  ),
                  (),
                  ()
                ),
                [('r', 'o', '$'), lift_357, (lift_100, lift_280, lift_129)]
              ),
              {lift_344, lift_358, lift_358}
            ),
            false,
            "\n";
          print 
            (
              '|',
              'J',
              {
                (
                  lift_259,
                  (616957911, false, 446929596),
                  ['$', lift_129, lift_56]
                ),
                lift_359,
                lift_359
              }
            ),
            'T',
            "\n";
        }
        print 
          {
            {lift_234},
            {lift_267, 'J', 'B', 'Y', lift_266},
            lift_99,
            lift_99,
            lift_99
          },
          multiset{lift_233, lift_233, lift_360},
          "\n";
      }
      if ((false ==> lift_144 ==> lift_50)) {
        lift_361 := lift_361;
        lift_362 := lift_362;
        {
          lift_363 := {true};
          print [[(true, 'M'), lift_364, lift_364], lift_369], "\n";
        }
        print (() => "A:Tn=cHa;P<rb?gTctxYB"), "\n";
        print 
          multiset{
            lift_318,
            [lift_13, -1298534515],
            lift_285,
            lift_94,
            lift_11
          },
          multiset{
            (lift_297, (lift_112, lift_304, -462283096), 'A'),
            lift_375,
            lift_375
          },
          "\n";
      } else {
        var lift_380 := (var tmpData : set<char> := {}; tmpData);
        var lift_378 := (var tmpData : set<int> := {}; tmpData);
        var methoddefvar_376 := lift_195(
          lift_218,
          lift_323,
          lift_129,
          lift_377,
          lift_86
        );
        {
          lift_378 := lift_378;
          print multiset{()}, "\n";
          lift_379 := ();
          lift_380 := lift_381;
          print {lift_278, lift_383, lift_231}, "\n";
        }
      }
      var methoddefvar_384 := lift_76(lift_385, lift_381);
      {
        var lift_413 := (lift_110, lift_414, lift_9);
        var lift_389 := (lift_390, lift_391);
        var lift_388 := lift_248;
        var lift_387 := lift_84;
        var lift_386 := multiset{lift_13, -207286636};
        print -712378277, "\n";
        lift_386 := lift_386;
        lift_387 := lift_131;
        lift_388 := lift_388;
        lift_389 := (
          (lift_267, lift_288),
          {lift_412, lift_413, (lift_296, lift_414, lift_318), lift_420}
        );
      }
      if (('j' == lift_42)) {
        var lift_427 := [
          lift_425,
          lift_425,
          lift_425,
          multiset{lift_95, -2010092412, 189787485, lift_319, lift_13},
          lift_425
        ];
        var methoddefvar_421, methoddefvar_422 := lift_179(lift_423, lift_365);
        {
          var lift_429 := (lift_219, lift_270, [lift_374]);
          print 'Q', "\n";
          print 
            multiset{
              [
                multiset{lift_319, methoddefvar_421, lift_411, lift_52},
                lift_258
              ],
              lift_424,
              lift_424,
              [lift_425, lift_258, lift_259],
              lift_427
            },
            '$',
            "\n";
          print 
            {
              ({-884859083}, ":/;OCD", "H*"),
              (lift_428, [lift_72, lift_368], ['V', lift_407]),
              lift_429
            },
            false,
            "\n";
          print 'T', ('Y', (var tmpData : set<bool> := {}; tmpData)), "\n";
          print false, true, "\n";
        }
        {
          print 
            multiset{
              multiset{
                lift_371,
                (lift_177, lift_234),
                lift_371,
                lift_364,
                lift_371
              }
            },
            "\n";
          print "eiz|", (false, (), ()), "\n";
        }
        var methoddefvar_432, methoddefvar_433 := lift_430(
          lift_133,
          lift_463,
          lift_259,
          (lift_50, lift_267)
        );
        {
          var lift_464 := true;
          print true, "\n";
          print ("sE/wzwU=T:A:IULCA|", 'f', 'B'), 'i', "\n";
          lift_464 := lift_223;
        }
        {
          print 
            (
              {
                lift_293,
                (lift_283, lift_285, lift_321),
                (
                  lift_295,
                  [lift_132, lift_30, 1936210597, lift_30, -981046316],
                  lift_290
                )
              },
              '>',
              {(('N', lift_121), "w-%l\"v@c$DOL_Y$!T<dGxwj^nDwzE\"<=")}
            ),
            multiset{-2028946768},
            "\n";
          print (), multiset{lift_10, lift_93, lift_317}, "\n";
        }
      } else {
        var lift_523 := {false, lift_297};
        var lift_497 := lift_498;
        var lift_492 := (';', false);
        var lift_483 := (lift_289, 'L', lift_168);
        var lift_482 := (lift_483, lift_373, lift_396);
        var lift_465 := lift_270;
        if (lift_193) {
          var lift_466 := multiset{(), lift_153, lift_156, lift_157, ()};
          print 
            true,
            multiset{
              ['q', lift_373, lift_406],
              lift_465,
              "qXcpukJ~_@N_|vnmJRm$YQEpc@_xBZzx"
            },
            "\n";
          lift_466 := lift_86;
          print 
            [(), lift_84],
            (var tmpData : multiset<int> := multiset{}; tmpData),
            "\n";
          lift_467 := lift_467;
          lift_481 := lift_481;
        } else {
          lift_482 := lift_482;
        }
        {
          print 
            (
              'y',
              (
                "C&uFBrrue&wl_r%XL;",
                multiset{{(-1531046043, lift_113, lift_404)}, lift_484}
              )
            ),
            true,
            "\n";
          print 
            multiset{
              [
                (var tmpData : set<char> := {}; tmpData),
                lift_361,
                lift_361,
                lift_361,
                lift_381
              ],
              lift_491,
              lift_491
            },
            (),
            "\n";
          print 
            (),
            (
              [{lift_472, lift_472}],
              {
                (var tmpData : multiset<(char, bool)> := multiset{}; tmpData),
                multiset{(lift_409, lift_41), lift_492, lift_493, lift_492},
                lift_497,
                multiset{lift_492, lift_494, lift_492, (lift_407, lift_418)}
              },
              "t*Ho:_LX;RM/^VC"
            ),
            "\n";
          print 
            multiset{
              ((var tmpData : set<int> := {}; tmpData), 'J', lift_317),
              lift_499
            },
            "\n";
        }
        var methoddefvar_503 := lift_501(lift_523, lift_304);
        {
          var lift_524 := (lift_414, lift_50);
          lift_524 := lift_524;
          lift_525 := lift_278;
        }
        var methoddefvar_526 := lift_501(lift_527, lift_399);
        {
          print 
            (
              (
                (
                  {multiset{lift_416, lift_416}, lift_535},
                  ((
                    arg_549 : int,
                    arg_550 : (char, set<(set<char>, set<bool>)>, char),
                    arg_551 : (set<((bool, bool), (char, char, int))>, multiset<seq<bool>>),
                    arg_552 : bool,
                    arg_553 : seq<seq<char>>
                  ) => 'T'),
                  (
                    (
                      ((
                        arg_554 : multiset<bool>,
                        arg_555 : (bool, bool, set<(int, (char, char))>),
                        arg_556 : (seq<bool>, char)
                      ) => '/'),
                      (),
                      ()
                    ),
                    multiset{lift_235, lift_267, lift_490},
                    {lift_489, lift_476, lift_112}
                  )
                ),
                (var tmpData : set<()> := {}; tmpData),
                true
              ),
              [
                "KUSsM=+<n_d?IDnwlLFg;xOLfY&a|",
                [lift_490, lift_129, lift_129, lift_119, lift_368],
                [lift_279],
                lift_465,
                lift_265
              ],
              '|'
            ),
            (
              [
                [
                  "=$wabgv",
                  lift_270,
                  lift_270,
                  "FID%P^JJMFFkWou*~ymuYmfRq",
                  [lift_267, lift_7, lift_417]
                ],
                lift_557
              ],
              [
                multiset{lift_218, lift_84, lift_154, ()},
                lift_151,
                multiset{(), lift_36, lift_37, lift_156, ()},
                multiset{lift_73, (), lift_87, lift_156},
                lift_385
              ],
              [
                (
                  (var tmpData : set<int> := {}; tmpData),
                  ('u', {(), lift_351, lift_74, lift_36})
                )
              ]
            ),
            "\n";
        }
      }
      var methoddefvar_562, methoddefvar_563 := lift_430(
        lift_300,
        lift_463,
        multiset{lift_221, lift_121},
        lift_364
      );
      {
        lift_564 := lift_547;
        print 151636825, "\n";
      }
    }
    print 
      safeSeqRef(
        (lift_285 + [lift_476] + lift_318),
        lift_411,
        (lift_46[(lift_58, lift_22)] as int)
      ),
      "\n";
    lift_565 := lift_566.2;
    lift_573 := lift_574.2.0;
    var methoddefvar_585, methoddefvar_586 := lift_583(
      (lift_92 > lift_489),
      ((lift_306, lift_72, lift_399), '@').0,
      {lift_595, lift_595, lift_595, lift_595},
      (lift_601 - lift_603)
    );
    {
      var lift_627 := lift_581;
      var methoddefvar_605 := lift_335(lift_156, lift_486, lift_132, lift_361);
      {
        lift_606 := lift_606;
        print 'c', (), "\n";
        print 'F', "\n";
        lift_627 := lift_66;
        print 
          [
            "YLW\"Qc&<V=Q>|*bHdsr",
            lift_265,
            (var tmpData : string := []; tmpData),
            lift_265,
            "HW"
          ],
          "\n";
      }
    }
  } else {
    var lift_751 := {lift_284};
    var lift_750 := lift_718;
    var lift_744 := (
      lift_73,
      {lift_279, lift_42, lift_409, lift_539, lift_615},
      lift_621
    );
    var lift_743 := lift_529;
    var lift_733 := false;
    var lift_723 := lift_717;
    var lift_710 := true;
    var lift_701 := lift_702;
    var lift_685 := (lift_34, lift_686, lift_701);
    var lift_670 := {
      lift_666,
      lift_666,
      multiset{lift_174, lift_418, lift_284},
      lift_176,
      lift_666
    };
    var lift_657 := multiset{lift_322, lift_30};
    var lift_656 := (lift_68, lift_66, lift_299);
    var lift_653 := lift_625;
    var lift_652 := (lift_170, false, lift_540);
    var lift_651 := lift_652;
    var lift_637 := lift_638;
    var methoddefvar_628 := lift_501(
      (1163309789, "iylvdNGG&:", lift_529).2,
      lift_302.1
    );
    {
      var lift_650 := (lift_29, 1048869302, lift_651);
      var lift_649 := multiset{lift_650};
      var lift_636 := (lift_600, methoddefvar_628, lift_13);
      var lift_631 := ();
      var methoddefvar_629 := lift_335(lift_153, lift_301, lift_308, lift_99);
      {
        var lift_633 := {lift_580, lift_111, lift_478, 1676219979};
        var lift_632 := (lift_633, lift_223);
        var lift_630 := 'g';
        lift_630 := lift_104;
        lift_631 := lift_74;
        print 
          [(({727831326, -1566109775}, false), ()), (lift_632, lift_565)],
          false,
          "\n";
        print [";!m%au?rfqL@", lift_558, lift_270, lift_558], "\n";
      }
      var methoddefvar_634, methoddefvar_635 := lift_430(
        lift_301,
        lift_636,
        lift_259,
        lift_364
      );
      {
        var lift_648 := (var tmpData : multiset<(int, int, (bool, bool, bool))> := multiset{}; tmpData);
        var lift_647 := (lift_648, lift_597);
        var lift_643 := {lift_92};
        lift_637 := lift_639;
        lift_643 := lift_644;
        lift_647 := (lift_649, lift_124);
        lift_653 := lift_642;
      }
    }
    if (lift_250) {
      var lift_745 := [false, lift_700];
      var lift_742 := {lift_410};
      var lift_732 := (lift_91, true, lift_7);
      var lift_715 := (lift_572, lift_265);
      var lift_708 := lift_13;
      var lift_674 := [lift_316, lift_419, lift_71, lift_33, true];
      var lift_673 := multiset{
        lift_472,
        lift_674,
        lift_472,
        lift_472,
        lift_674
      };
      var lift_664 := (lift_84, lift_368);
      var methoddefvar_654, methoddefvar_655 := lift_430(
        1620113943,
        lift_656,
        lift_657,
        lift_658
      );
      {
        var lift_663 := lift_232;
        lift_663 := lift_619;
        lift_664 := lift_664;
        print 
          ("~Qr!PdLK~XTx$ZBsMzVX~blCc\"=s|P", (), ()),
          "?exIBNIan%/>~sf|~yE=TCR:l&|=MR",
          "\n";
      }
      if ((lift_366 || lift_28)) {
        var lift_722 := {lift_120};
        var lift_716 := (lift_154, lift_714);
        var lift_707 := {lift_24, lift_225, lift_316, lift_314, lift_316};
        var lift_675 := lift_676;
        var lift_672 := (
          (),
          multiset{lift_673, lift_673, lift_675, lift_676, lift_677},
          lift_287
        );
        var lift_669 := lift_670;
        var lift_665 := {
          (var tmpData : multiset<bool> := multiset{}; tmpData),
          lift_666,
          lift_192
        };
        lift_665 := lift_669;
        var methoddefvar_671 := lift_335(
          lift_131,
          lift_287,
          lift_121,
          lift_361
        );
        {
          lift_672 := lift_672;
          lift_685 := lift_685;
          lift_707 := {lift_660};
        }
        if (lift_600) {
          var lift_709 := "&eGr";
          print "Di=uge!&^bM", "\n";
          lift_708 := lift_646;
          lift_709 := [lift_662];
        } else {
          var lift_711 := (
            lift_176,
            multiset{lift_712, lift_712, lift_712, lift_715, lift_716},
            lift_259
          );
          lift_710 := false;
          lift_711 := lift_711;
          lift_717 := lift_717;
          print 
            [
              {(), lift_120, lift_155, lift_125, lift_153},
              lift_719,
              lift_722,
              lift_718,
              lift_723
            ],
            -1341859290,
            "\n";
        }
      } else {
        var lift_727 := [lift_176, lift_176];
        var methoddefvar_724 := lift_76(lift_152, lift_725);
        {
          var lift_726 := (lift_288, lift_98);
          print true, "\n";
          lift_726 := lift_726;
          print 
            multiset{
              [
                multiset{false, lift_135, lift_33, lift_548, lift_710},
                lift_222,
                lift_192,
                lift_222
              ],
              lift_727,
              lift_727,
              lift_727,
              lift_727
            },
            ['p', lift_559],
            "\n";
          print 
            (
              ((arg_728 : int, arg_729 : multiset<int>) => (
                multiset{'Y', lift_8, lift_625, lift_267, lift_615},
                multiset{-1259440802, lift_399, lift_121, lift_147}
              )),
              true
            ),
            'V',
            "\n";
        }
      }
      var methoddefvar_730, methoddefvar_731 := lift_179(lift_732, true);
      {
        lift_733 := false;
        print true, "\n";
        lift_734 := lift_734;
      }
      var methoddefvar_741 := lift_76(lift_86, lift_742);
      {
        lift_743 := {lift_28, lift_660};
        lift_744 := lift_744;
        lift_745 := [lift_496, lift_641, false];
        lift_746 := lift_133;
      }
      var methoddefvar_747 := lift_76(
        (var tmpData : multiset<()> := multiset{}; tmpData),
        lift_361
      );
      {
        print false, (), "\n";
        lift_748 := [lift_289];
      }
    } else {
      var methoddefvar_749 := lift_501(lift_531, -701285656);
      {
        lift_750 := lift_718;
        print 
          {
            {lift_63, lift_372, lift_135, lift_296},
            lift_528,
            lift_531,
            lift_530,
            lift_751
          },
          -984551019,
          "\n";
        lift_752 := lift_752;
        print 
          (
            'U',
            {lift_580, lift_306, lift_52, lift_746, lift_580},
            multiset{lift_691, lift_177, lift_223, lift_24}
          ),
          "\n";
      }
    }
  }
  var methoddefvar_753, methoddefvar_754 := lift_583(
    ((lift_72 as int) < |lift_705| < |lift_602|),
    lift_755.2.1,
    safeSeqRef(lift_770, lift_52, lift_771).2,
    safeSeqRef(lift_798, lift_300, lift_834).2
  );
  {
    var lift_1054 := -2023035064;
    var lift_1005 := (lift_248, lift_984);
    var lift_979 := (lift_980, lift_617);
    var lift_965 := (lift_59, lift_73, lift_949);
    var lift_964 := [
      [lift_915, lift_915, lift_915, lift_965],
      lift_930,
      lift_931
    ];
    var lift_963 := [
      [lift_915, (lift_174, lift_155, multiset{lift_911, lift_921}), lift_946],
      lift_932,
      lift_931
    ];
    var lift_900 := (lift_897, lift_155, lift_901);
    var lift_886 := (631402617, lift_570, lift_177);
    var lift_879 := (lift_285, lift_790, lift_156);
    var lift_872 := (lift_873, "z^y%QkP%F'Bs%B|U?XvA!;<pjBA>=+u>j");
    var lift_868 := (lift_616, (lift_534, lift_234, lift_66), "HmdWgzz!WD");
    var lift_867 := lift_868;
    var lift_866 := (lift_230, lift_867, lift_67);
    var lift_865 := lift_866;
    var lift_861 := lift_862;
    var lift_860 := (lift_720, lift_861, "Nz!Uj!xBuqxQ^OMnmAkWWJc");
    var lift_859 := (985150459, 'F');
    var lift_858 := lift_859;
    var lift_855 := (var tmpData : set<char> := {}; tmpData);
    print 
      (lift_220 * lift_738),
      lift_136(true, lift_844, lift_37, lift_410),
      "\n";
    var methoddefvar_847 := lift_501(lift_848, lift_97);
    {
      var lift_857 := lift_858;
      lift_855 := lift_725;
      lift_856 := lift_534;
      lift_857 := lift_859;
    }
    lift_860 := lift_865.1;
    {
      var lift_1004 := (var tmpData : multiset<multiset<bool>> := multiset{}; tmpData);
      var lift_1003 := lift_1004;
      var lift_991 := lift_992;
      var lift_967 := (lift_248, lift_475, lift_15);
      var lift_928 := (lift_174, (), lift_902);
      var lift_927 := lift_915;
      var lift_926 := [lift_927, lift_928, lift_928, lift_915, lift_928];
      var lift_899 := multiset{lift_704, lift_815, lift_644, lift_736};
      var lift_888 := ((lift_97, lift_609, lift_367), false, lift_177);
      var lift_887 := lift_888;
      var lift_884 := (lift_235, lift_476, lift_662);
      var lift_883 := [lift_884, (lift_234, lift_581, lift_35)];
      if (true) {
        var lift_871 := (lift_858, 'H', lift_409);
        lift_869 := lift_869;
        print -1843141671, "\n";
        print false, ({-18139583, lift_645}, [true, true]), "\n";
        lift_871 := (lift_859, lift_568, lift_780);
      } else {
        var lift_881 := lift_230;
        var lift_880 := ([lift_581, lift_133], lift_96, lift_153);
        lift_872 := lift_872;
        lift_877 := lift_14;
        print 1857344556, "\n";
        lift_879 := lift_880;
        lift_881 := lift_278;
      }
      if (lift_352) {
        var lift_885 := (lift_886, lift_548, lift_71);
        var lift_882 := '@';
        lift_882 := lift_559;
        lift_883 := [lift_884, lift_884, lift_884, lift_884];
        lift_885 := lift_887;
      } else {
        var lift_968 := (lift_969, lift_565);
        var lift_966 := (lift_248, lift_763, lift_95);
        var lift_929 := [lift_926, lift_930, lift_931];
        var lift_898 := lift_899;
        lift_889 := lift_889;
        print 
          [(), lift_618],
          (
            (),
            [
              [
                [
                  (
                    true,
                    (),
                    multiset{
                      multiset{{-1942374176, -1739978747}},
                      lift_898,
                      multiset{lift_702},
                      lift_899,
                      lift_898
                    }
                  ),
                  lift_900,
                  lift_900,
                  lift_915
                ],
                lift_926
              ],
              lift_929,
              lift_963,
              lift_929,
              lift_964
            ],
            (true, {lift_397, lift_398, lift_317, lift_286, lift_298})
          ),
          "\n";
        lift_966 := lift_967;
        lift_968 := lift_979;
        print -1867160292, (var tmpData : set<int> := {}; tmpData), "\n";
      }
      if (lift_680) {
        lift_991 := (lift_283, lift_694);
      } else {
        print '&', "\n";
        print 
          [
            (
              ((var tmpData : seq<bool> := []; tmpData), 'B'),
              (
                (
                  '<',
                  (
                    [false],
                    (
                      "p|s_MPYmBqY^<RGtx+G*K",
                      multiset{
                        multiset{
                          multiset{lift_314},
                          multiset{lift_178, lift_32, lift_765, lift_65, false},
                          lift_666
                        },
                        lift_1003
                      }
                    ),
                    ()
                  )
                ),
                false
              ),
              ['v', 'N', lift_104, 'g']
            ),
            (lift_1005, lift_1006, lift_1024),
            lift_1025
          ],
          "\n";
        print "Mq'Z_%YWVyP!uzXd/Lt;AkiF-", "\n";
        print 
          [
            (var tmpData : set<int> := {}; tmpData),
            lift_735,
            lift_830,
            lift_803,
            lift_906
          ],
          "\n";
      }
      lift_1054 := 428417844;
      print 
        multiset{
          (lift_1020, multiset{lift_842, lift_305, 344533039, -2091723846}, ()),
          lift_1055
        },
        true,
        "\n";
    }
    print 
      ['e', lift_623, lift_894, lift_1053, lift_56],
      safeDivide(lift_954, lift_98),
      "\n";
  }
}


