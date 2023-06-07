//
//
//
//
//
//

// Seed: 2613994093981022155
// This is a RANDOMLY GENERATED PROGRAM.
// Fuzzer: dafny
// Version: dafny, xsmith 2.0.5 (38f1d83), in Racket 8.9 (vm-type chez-scheme)
// Options: --dafny-syntax true --seed 2613994093981022155
// Seed: 2613994093981022155
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
function lift_1120 (
  arg_1122 : char,
  arg_1123 : seq<bool>,
  arg_1124 : char,
  arg_1125 : seq<int>,
  arg_1126 : multiset<bool>
) : int
{
  var lift_1127 := 1340293236;
  lift_1127
}

function lift_1115 () : char
{
  var lift_1117 := 'r';
  lift_1117
}

function lift_1084 (arg_1086 : char) : multiset<bool>
{
  var lift_1089 := true;
  var lift_1088 := false;
  var lift_1087 := lift_1088;
  multiset{lift_1087, false, lift_1089, true}
}

function lift_1078 (
  arg_1080 : (char, int),
  arg_1081 : (int, bool),
  arg_1082 : int,
  arg_1083 : int
) : ((char) -> multiset<bool>)
{
  
  lift_1084
}

function lift_1014 (arg_1016 : ()) : char
{
  var lift_1017 := 'p';
  lift_1017
}

function lift_980 (
  arg_982 : (char, char),
  arg_983 : bool,
  arg_984 : multiset<()>,
  arg_985 : seq<char>,
  arg_986 : multiset<int>
) : (set<multiset<char>>, bool, bool)
{
  var lift_993 := false;
  var lift_992 := lift_993;
  var lift_991 := multiset{'O'};
  var lift_990 := lift_991;
  var lift_989 := {lift_990, lift_991, lift_990};
  var lift_988 := (lift_989, lift_992, lift_992);
  var lift_987 := lift_988;
  lift_987
}

method lift_681 (arg_684 : (), arg_685 : multiset<(char, ())>)
  returns (arg_686 : int)
  requires (true)
  ensures (true)
{
  arg_686 := 1627004788;
  {
    var lift_689 := true;
    var lift_688 := lift_689;
    var lift_687 := true;
    lift_687 := lift_688;
  }
}

method lift_645 (
  arg_649 : int,
  arg_650 : set<seq<bool>>,
  arg_651 : int,
  arg_652 : ()
)
  returns (arg_653 : bool, arg_654 : char)
  requires (true)
  ensures (true)
{
  arg_653 := false;
  arg_654 := 'Q';
  {
    var lift_675 := false;
    var lift_674 := (var tmpData : set<()> := {}; tmpData);
    var lift_673 := (lift_674, arg_651, lift_675);
    var lift_672 := multiset{arg_651, arg_649, arg_651, 1051828897, arg_649};
    var lift_671 := 2084465065;
    var lift_670 := (true, lift_671, arg_653);
    var lift_669 := '+';
    var lift_668 := (lift_669, arg_653);
    var lift_667 := lift_668;
    var lift_666 := (arg_649, lift_667, lift_670);
    var lift_665 := lift_666;
    var lift_664 := arg_653;
    var lift_663 := (lift_664, -1502953203, arg_653);
    var lift_662 := false;
    var lift_661 := arg_654;
    var lift_660 := (lift_661, lift_662);
    var lift_659 := (arg_651, lift_660, lift_663);
    var lift_658 := lift_659;
    var lift_657 := multiset{lift_658, lift_665, lift_659, lift_666};
    var lift_656 := lift_657;
    var lift_655 := "_=lZvRi?:&lTWJPj~H<^R:|@YWD";
    lift_655 := "kiEYK?s";
    lift_656 := lift_657;
    lift_672 := lift_672;
    lift_673 := lift_673;
  }
}

function lift_411 (arg_413 : char, arg_414 : multiset<()>) : ()
{
  var lift_415 := ();
  lift_415
}

method lift_397 (arg_400 : (), arg_401 : int, arg_402 : bool)
  returns (arg_403 : bool)
  requires (true)
  ensures (true)
{
  arg_403 := false;
  {
    var lift_423 := (var tmpData : set<string> := {}; tmpData);
    var lift_422 := multiset{arg_402, true, arg_402, arg_403};
    var lift_421 := (
      lift_422,
      arg_400,
      multiset{arg_402, false, arg_403, false}
    );
    var lift_420 := lift_421;
    var lift_419 := multiset{arg_403, arg_403, arg_403, arg_403};
    var lift_418 := multiset{false, arg_402, arg_402};
    var lift_417 := lift_418;
    var lift_416 := (lift_417, arg_400, lift_419);
    var lift_410 := (var tmpData : multiset<seq<char>> := multiset{}; tmpData);
    var lift_409 := (lift_410, lift_411);
    var lift_408 := lift_409;
    var lift_405 := 1117716557;
    var lift_404 := ();
    lift_404 := lift_404;
    lift_405 := 222426640;
    print 
      [
        (
          multiset{
            "^Ah&QbN|OeNLAqxC'LBa!de",
            "=hq?ED\"sj-AALGIRghr\"!q|wGz/tgMTG;C!T=*"
          },
          ((arg_406 : char, arg_407 : multiset<()>) => ())
        ),
        lift_408
      ],
      "\n";
    print 
      (
        (
          [
            (multiset{arg_402, true, arg_402, true}, (), multiset{arg_403}),
            lift_416,
            lift_420,
            (lift_417, arg_400, lift_422),
            lift_420
          ],
          false,
          '>'
        ),
        "=J?b+wlw@-yw%%&L?Ty+W/q-HyF",
        {{"p="}, lift_423}
      ),
      false,
      "\n";
  }
}

method lift_314 (arg_317 : (), arg_318 : (char, bool))
  returns (arg_319 : int)
  requires (true)
  ensures (true)
{
  arg_319 := 1960263892;
  {
    var lift_330 := 1756139157;
    var lift_329 := '^';
    var lift_328 := (arg_319, lift_329, lift_330);
    var lift_327 := 'I';
    var lift_326 := {lift_327};
    var lift_325 := lift_326;
    var lift_324 := 'i';
    var lift_323 := multiset{{lift_324}, {lift_324}, lift_325};
    var lift_322 := 334442453;
    var lift_321 := multiset{lift_322, arg_319, arg_319, arg_319};
    var lift_320 := (lift_321, lift_323, lift_328);
    lift_320 := lift_320;
    print (), false, "\n";
  }
}

method lift_288 (
  arg_292 : int,
  arg_293 : multiset<int>,
  arg_294 : (),
  arg_295 : (),
  arg_296 : (bool, bool, int)
)
  returns (arg_297 : int, arg_298 : char)
  requires (true)
  ensures (true)
{
  arg_297 := -1355719403;
  arg_298 := 'W';
  {
    var lift_309 := ";$Tg_g%vq:|-&_cve~_e";
    var lift_308 := (var tmpData : string := []; tmpData);
    var lift_307 := "pg>A/ESDAMNaLp<^";
    var lift_306 := {lift_307, lift_307, lift_308};
    var lift_305 := [lift_306];
    var lift_304 := lift_305;
    var lift_303 := [arg_298, 'I'];
    var lift_302 := {lift_303, lift_303, lift_303, lift_303};
    var lift_301 := [lift_302, {"!G+A-FK^!@sR~g"}];
    var lift_300 := lift_301;
    var lift_299 := "IZs?-Yc<'es-aj>SJl%Qb?AS=^";
    print 
      [
        [
          (var tmpData : set<seq<char>> := {}; tmpData),
          (var tmpData : set<string> := {}; tmpData),
          {
            "KB<caoCEWhlNOceEyD>bUFY",
            "Kn>Z-zN%&Do*V%~lC$+bQcrR|YKHjOvs~i",
            lift_299,
            "Tp"
          }
        ],
        lift_300,
        lift_304
      ],
      ((), 486690157, ["susjIM$+*JcrB", lift_309, lift_309]),
      "\n";
    print ((arg_310 : seq<multiset<int>>) => true), (), "\n";
  }
}

function lift_284 () : ()
{
  var lift_286 := ();
  lift_286
}

method lift_263 (arg_267 : multiset<char>)
  returns (arg_268 : int, arg_269 : bool)
  requires (true)
  ensures (true)
{
  arg_268 := 1165311207;
  arg_269 := true;
  {
    var lift_276 := 'G';
    var lift_275 := '~';
    var lift_274 := [lift_275, lift_275, lift_276, lift_275];
    var lift_273 := 'w';
    var lift_272 := '|';
    var lift_271 := [
      "XoI/FjLrppZ'ra?mlI<lDhwo&@=;X*NvW|FcbWU",
      ['/', lift_272, lift_272, lift_273, 'T'],
      lift_274,
      lift_274,
      ['n', lift_273, lift_272, 'z', lift_273]
    ];
    var lift_270 := lift_271;
    lift_270 := lift_270;
    print -937882021, "\n";
  }
}

function lift_227 (
  arg_229 : int,
  arg_230 : char,
  arg_231 : char
) : multiset<int>
{
  var lift_234 := -1881520133;
  var lift_233 := -898355662;
  var lift_232 := multiset{lift_233, lift_234, 1999118596, lift_233};
  lift_232
}

function lift_210 (
  arg_212 : int,
  arg_213 : char,
  arg_214 : char
) : multiset<int>
{
  var lift_218 := -665862001;
  var lift_217 := lift_218;
  var lift_216 := lift_217;
  var lift_215 := multiset{lift_216, lift_218};
  lift_215
}

method lift_103 (
  arg_107 : (),
  arg_108 : set<(char, seq<bool>, char)>,
  arg_109 : bool,
  arg_110 : int
)
  returns (arg_111 : bool, arg_112 : int)
  requires (true)
  ensures (true)
{
  arg_111 := false;
  arg_112 := 839563397;
  {
    var lift_142 := "Ud/B+D";
    var lift_141 := {
      lift_142,
      lift_142,
      lift_142,
      "NfLAos@iotW",
      "~n!yRSPO|sfd<"
    };
    var lift_140 := lift_141;
    var lift_139 := lift_140;
    var lift_138 := lift_139;
    var lift_137 := (var tmpData : seq<char> := []; tmpData);
    var lift_136 := lift_137;
    var lift_135 := '$';
    var lift_134 := '*';
    var lift_133 := ['u', lift_134, lift_135];
    var lift_132 := lift_133;
    var lift_131 := {lift_132, lift_136, lift_137, lift_137, lift_133};
    var lift_130 := lift_131;
    var lift_129 := 'A';
    var lift_128 := '?';
    var lift_127 := '%';
    var lift_126 := [lift_127, lift_128, lift_129];
    var lift_125 := lift_126;
    var lift_124 := (var tmpData : seq<seq<bool>> := []; tmpData);
    var lift_113 := false;
    lift_113 := true;
    print 
      (
        (
          (
            ((
              arg_114 : int,
              arg_115 : char,
              arg_116 : bool,
              arg_117 : set<int>,
              arg_118 : set<(set<char>, bool)>
            ) => false),
            'z',
            -1056511722
          ),
          multiset{arg_112, 1866498707}
        ),
        (),
        ((
          arg_119 : (string, bool),
          arg_120 : ((char, char), multiset<()>, int),
          arg_121 : set<bool>,
          arg_122 : (bool, set<((), (), char)>, bool),
          arg_123 : seq<(bool, int)>
        ) => multiset{arg_112, arg_110})
      ),
      "\n";
    lift_124 := lift_124;
    print 
      {
        {
          "qDCr=$pQ/u",
          "LNY-r'PO!",
          "+/+r>v'AiczE|R-qQ<Y+TK\"oCSs*fR@NT",
          lift_125
        },
        lift_130,
        lift_131,
        lift_138,
        lift_139
      },
      (true, (var tmpData : set<set<(int, char, char)>> := {}; tmpData)),
      "\n";
    print 
      (),
      (
        '+',
        true,
        (
          [
            ['F', lift_134, lift_129, lift_135],
            lift_132,
            "\"MVCEC<dn^lp_TRM~+nvZ;&K\"SwgH%>f",
            lift_132,
            lift_126
          ],
          (var tmpData : seq<(char, int, bool)> := []; tmpData)
        )
      ),
      "\n";
  }
}

method lift_85 (arg_88 : char, arg_89 : seq<bool>)
  returns (arg_90 : char)
  requires (true)
  ensures (true)
{
  arg_90 := 'v';
  {
    var lift_91 := 1680455505;
    lift_91 := -486537193;
  }
}

function lift_62 (arg_64 : seq<char>) : set<seq<char>>
{
  var lift_68 := 'y';
  var lift_67 := '\'';
  var lift_66 := [lift_67, lift_67, lift_68];
  var lift_65 := {lift_66, lift_66};
  lift_65
}

method lift_42 (
  arg_46 : char,
  arg_47 : multiset<char>,
  arg_48 : bool,
  arg_49 : char
)
  returns (arg_50 : int, arg_51 : int)
  requires (true)
  ensures (true)
{
  arg_50 := 1669407752;
  arg_51 := 1508990847;
  {
    var lift_53 := multiset{arg_46, arg_49, arg_49, arg_46};
    var lift_52 := lift_53;
    print 
      ({arg_47, lift_52, lift_53}, 1235528740, "/gOspbAk-@\"WtfaLh&jRc"),
      "\n";
  }
}

function lift_37 () : ((int) -> bool)
{
  var lift_41 := false;
  var lift_40 := lift_41;
  ((arg_39 : int) => lift_40)
}

function lift_14 (arg_16 : int) : bool
{
  var lift_17 := false;
  lift_17
}

method Main () {
  var lift_1215 := -2008332664;
  var lift_1210 := 1089328227;
  var lift_1203 := -1019220207;
  var lift_1202 := true;
  var lift_1201 := -1328470156;
  var lift_1200 := (lift_1201, (lift_1202, lift_1203, lift_1202));
  var lift_1199 := false;
  var lift_1198 := -689047759;
  var lift_1197 := lift_1198;
  var lift_1196 := true;
  var lift_1195 := (lift_1196, lift_1197, lift_1199);
  var lift_1194 := lift_1195;
  var lift_1190 := false;
  var lift_1189 := 292323971;
  var lift_1188 := lift_1189;
  var lift_1187 := lift_1188;
  var lift_1186 := false;
  var lift_1185 := lift_1186;
  var lift_1184 := (lift_1185, lift_1187, lift_1190);
  var lift_1183 := -537380623;
  var lift_1182 := (lift_1183, lift_1184);
  var lift_1181 := lift_1182;
  var lift_1180 := lift_1181;
  var lift_1179 := {lift_1180};
  var lift_1174 := 'd';
  var lift_1173 := lift_1174;
  var lift_1172 := (var tmpData : seq<int> := []; tmpData);
  var lift_1171 := (lift_1172, lift_1173);
  var lift_1170 := lift_1171;
  var lift_1169 := multiset{
    lift_1170,
    lift_1171,
    lift_1170,
    (lift_1172, lift_1174)
  };
  var lift_1168 := -625015683;
  var lift_1167 := 'A';
  var lift_1166 := (lift_1167, lift_1168, lift_1167);
  var lift_1165 := (lift_1166, lift_1169);
  var lift_1164 := '@';
  var lift_1163 := ';';
  var lift_1162 := -863043432;
  var lift_1161 := lift_1162;
  var lift_1160 := lift_1161;
  var lift_1159 := -836408095;
  var lift_1158 := [lift_1159, lift_1160];
  var lift_1157 := lift_1158;
  var lift_1156 := (lift_1157, (lift_1163, lift_1164, lift_1161), lift_1165);
  var lift_1155 := lift_1156;
  var lift_1154 := lift_1155;
  var lift_1153 := ((var tmpData : seq<int> := []; tmpData), '$');
  var lift_1152 := 'I';
  var lift_1151 := -1209010766;
  var lift_1150 := lift_1151;
  var lift_1149 := 593885915;
  var lift_1148 := [lift_1149, lift_1150, lift_1151];
  var lift_1147 := (lift_1148, lift_1152);
  var lift_1146 := [2058947377];
  var lift_1145 := (lift_1146, 'i');
  var lift_1144 := multiset{lift_1145, lift_1147, lift_1153, lift_1153};
  var lift_1143 := 275302894;
  var lift_1142 := lift_1143;
  var lift_1141 := 's';
  var lift_1140 := ((lift_1141, lift_1142, '*'), lift_1144);
  var lift_1139 := lift_1140;
  var lift_1128 := false;
  var lift_1114 := '?';
  var lift_1113 := 'w';
  var lift_1112 := lift_1113;
  var lift_1111 := 'k';
  var lift_1110 := multiset{lift_1111, lift_1112, lift_1112, lift_1114};
  var lift_1109 := lift_1110;
  var lift_1108 := lift_1109;
  var lift_1107 := (';', lift_1108);
  var lift_1092 := true;
  var lift_1091 := 1418578389;
  var lift_1090 := (lift_1091, lift_1092);
  var lift_1075 := true;
  var lift_1064 := false;
  var lift_1063 := {lift_1064, true, lift_1064};
  var lift_1062 := multiset{lift_1063};
  var lift_1053 := ();
  var lift_1052 := lift_1053;
  var lift_1045 := (var tmpData : seq<(bool, char)> := []; tmpData);
  var lift_1043 := ';';
  var lift_1042 := lift_1043;
  var lift_1041 := [lift_1042];
  var lift_1040 := [lift_1041, lift_1041, "yuzcQD-$?"];
  var lift_1033 := false;
  var lift_1032 := lift_1033;
  var lift_1031 := lift_1032;
  var lift_1030 := lift_1031;
  var lift_1029 := ();
  var lift_1026 := ();
  var lift_1025 := lift_1026;
  var lift_1024 := multiset{(), lift_1025, lift_1026, lift_1025};
  var lift_1023 := false;
  var lift_1022 := lift_1023;
  var lift_1021 := (lift_1022, lift_1024);
  var lift_1020 := 375750688;
  var lift_1012 := false;
  var lift_1011 := false;
  var lift_1010 := 1261486333;
  var lift_1009 := lift_1010;
  var lift_1008 := lift_1009;
  var lift_1007 := lift_1008;
  var lift_1006 := (var tmpData : seq<set<seq<int>>> := []; tmpData);
  var lift_1005 := (lift_1006, lift_1007, multiset{lift_1011, lift_1012, true});
  var lift_1003 := 1399167879;
  var lift_1002 := 1969965536;
  var lift_1001 := [lift_1002, lift_1003, lift_1003];
  var lift_1000 := {lift_1001};
  var lift_999 := [lift_1000, lift_1000, lift_1000, lift_1000];
  var lift_979 := 'k';
  var lift_978 := 'p';
  var lift_977 := multiset{lift_978, lift_979, lift_978};
  var lift_976 := lift_977;
  var lift_975 := {lift_976, lift_977};
  var lift_972 := ();
  var lift_971 := 'x';
  var lift_970 := lift_971;
  var lift_969 := (
    lift_970,
    [lift_972, (), lift_972],
    (var tmpData : set<((bool, int), (int, bool, bool))> := {}; tmpData)
  );
  var lift_968 := lift_969;
  var lift_967 := lift_968.1;
  var lift_964 := ();
  var lift_963 := -1795603147;
  var lift_962 := lift_963;
  var lift_961 := lift_962;
  var lift_960 := false;
  var lift_959 := lift_960;
  var lift_958 := (lift_959, lift_961);
  var lift_957 := lift_958;
  var lift_956 := lift_957;
  var lift_955 := (lift_956, lift_964);
  var lift_954 := ();
  var lift_953 := -1201132494;
  var lift_952 := true;
  var lift_951 := (lift_952, lift_953);
  var lift_950 := (lift_951, lift_954);
  var lift_946 := (var tmpData : seq<seq<bool>> := []; tmpData);
  var lift_945 := lift_946;
  var lift_944 := false;
  var lift_943 := {lift_944, lift_944};
  var lift_942 := [lift_943, lift_943, lift_943, lift_943];
  var lift_941 := "g:tz";
  var lift_940 := (lift_941, lift_942, lift_945);
  var lift_939 := 1443291458;
  var lift_938 := 1310087373;
  var lift_937 := [1312937340, lift_938, lift_939, lift_938, lift_939];
  var lift_936 := lift_937;
  var lift_935 := (lift_936, lift_940);
  var lift_929 := 'c';
  var lift_928 := [lift_929];
  var lift_927 := ();
  var lift_926 := (var tmpData : set<bool> := {}; tmpData);
  var lift_925 := (lift_926, lift_927, lift_928);
  var lift_924 := lift_925;
  var lift_920 := 'H';
  var lift_919 := 1663707958;
  var lift_918 := (lift_919, lift_920);
  var lift_917 := (2029780759, lift_918);
  var lift_915 := ();
  var lift_914 := 1278817824;
  var lift_913 := lift_914;
  var lift_912 := lift_913;
  var lift_911 := 'M';
  var lift_910 := true;
  var lift_909 := 'i';
  var lift_908 := (lift_909, lift_910, lift_911);
  var lift_907 := (lift_908, lift_912, lift_915);
  var lift_906 := lift_907;
  var lift_898 := -1761819638;
  var lift_897 := -707691554;
  var lift_896 := [[lift_897, lift_897, lift_898, lift_897]];
  var lift_892 := -1962044236;
  var lift_891 := 'A';
  var lift_890 := {'V', 'a', lift_891, lift_891};
  var lift_889 := (lift_890, lift_892, lift_891);
  var lift_886 := ();
  var lift_885 := false;
  var lift_884 := lift_885;
  var lift_883 := [lift_884, lift_885, lift_884, lift_885];
  var lift_882 := lift_883;
  var lift_870 := -2105386937;
  var lift_869 := 420183546;
  var lift_868 := {lift_869, lift_869, lift_870, lift_869, 2059760430};
  var lift_867 := lift_868;
  var lift_866 := 1026116061;
  var lift_865 := lift_866;
  var lift_864 := lift_865;
  var lift_863 := 264502554;
  var lift_862 := {lift_863, lift_864};
  var lift_860 := {()};
  var lift_859 := [lift_860];
  var lift_849 := 'S';
  var lift_842 := ();
  var lift_841 := {lift_842, lift_842, lift_842};
  var lift_840 := ();
  var lift_839 := {lift_840, ()};
  var lift_830 := 'b';
  var lift_829 := (lift_830, lift_830);
  var lift_827 := 335239788;
  var lift_823 := ();
  var lift_822 := 1584263233;
  var lift_821 := lift_822;
  var lift_820 := 'Z';
  var lift_819 := (lift_820, lift_821);
  var lift_818 := lift_819;
  var lift_817 := true;
  var lift_816 := lift_817;
  var lift_815 := lift_816;
  var lift_814 := lift_815;
  var lift_813 := lift_814;
  var lift_812 := lift_813;
  var lift_811 := lift_812;
  var lift_810 := 'l';
  var lift_809 := (lift_810, false);
  var lift_808 := lift_809;
  var lift_807 := (lift_808, lift_811, lift_812);
  var lift_806 := multiset{lift_807};
  var lift_805 := false;
  var lift_804 := false;
  var lift_803 := [false, lift_804, lift_804, lift_804, lift_805];
  var lift_802 := (lift_803, lift_806, lift_818);
  var lift_801 := lift_802;
  var lift_798 := false;
  var lift_797 := 'M';
  var lift_796 := lift_797;
  var lift_795 := (lift_796, lift_798);
  var lift_784 := multiset{false};
  var lift_783 := "V:\"qqUpy|";
  var lift_782 := (lift_783, lift_784);
  var lift_780 := ();
  var lift_779 := lift_780;
  var lift_778 := lift_779;
  var lift_777 := multiset{lift_778};
  var lift_776 := lift_777;
  var lift_775 := (var tmpData : multiset<()> := multiset{}; tmpData);
  var lift_774 := ();
  var lift_773 := ();
  var lift_772 := multiset{lift_773, lift_774, lift_773, lift_774};
  var lift_771 := {lift_772, lift_772, lift_775, lift_776};
  var lift_770 := lift_771;
  var lift_769 := lift_770;
  var lift_765 := -391127787;
  var lift_764 := false;
  var lift_763 := lift_764;
  var lift_762 := (lift_763, lift_763, lift_765);
  var lift_758 := 'f';
  var lift_757 := ();
  var lift_756 := ("f!lswTXN|Ca_eJE+vCrJPD+emMb@<'J\"AzM%", lift_757, lift_758);
  var lift_751 := false;
  var lift_750 := multiset{lift_751};
  var lift_749 := lift_750;
  var lift_746 := false;
  var lift_745 := lift_746;
  var lift_744 := lift_745;
  var lift_743 := multiset{lift_744, lift_744, true};
  var lift_733 := ();
  var lift_732 := lift_733;
  var lift_731 := ((), lift_732);
  var lift_730 := lift_731;
  var lift_729 := lift_730;
  var lift_717 := -1191193140;
  var lift_715 := 'n';
  var lift_714 := lift_715;
  var lift_713 := '*';
  var lift_712 := multiset{lift_713, lift_713, lift_714};
  var lift_711 := false;
  var lift_710 := {false, lift_711, lift_711, lift_711, false};
  var lift_703 := false;
  var lift_702 := -1612883714;
  var lift_701 := (lift_702, true);
  var lift_700 := [lift_701];
  var lift_699 := 516225957;
  var lift_698 := ();
  var lift_697 := lift_698;
  var lift_696 := ':';
  var lift_695 := (lift_696, lift_697);
  var lift_694 := ();
  var lift_693 := lift_694;
  var lift_692 := '/';
  var lift_691 := (lift_692, lift_693);
  var lift_690 := multiset{lift_691, lift_695, lift_691, ('/', lift_698)};
  var lift_638 := 'P';
  var lift_637 := 1453390287;
  var lift_636 := (lift_637, lift_638);
  var lift_635 := (lift_636, lift_638, lift_638);
  var lift_634 := '*';
  var lift_633 := lift_634;
  var lift_632 := -1804645580;
  var lift_631 := (lift_632, lift_633);
  var lift_630 := (lift_631, lift_634, 'f');
  var lift_624 := (var tmpData : set<seq<int>> := {}; tmpData);
  var lift_623 := 'q';
  var lift_622 := 9254249;
  var lift_621 := (lift_622, lift_623);
  var lift_620 := lift_621;
  var lift_617 := ();
  var lift_616 := multiset{lift_617, lift_617, ()};
  var lift_615 := lift_616;
  var lift_614 := (lift_615 + (var tmpData : multiset<()> := multiset{}; tmpData));
  var lift_613 := 156912416;
  var lift_609 := 'G';
  var lift_608 := true;
  var lift_607 := true;
  var lift_606 := [lift_607];
  var lift_605 := (lift_606, (lift_608, lift_609), lift_607);
  var lift_604 := {lift_605, lift_605, lift_605};
  var lift_603 := '~';
  var lift_602 := false;
  var lift_601 := (lift_602, lift_603);
  var lift_600 := (var tmpData : seq<bool> := []; tmpData);
  var lift_599 := (lift_600, lift_601, lift_602);
  var lift_598 := lift_599;
  var lift_597 := lift_598;
  var lift_596 := lift_597;
  var lift_595 := false;
  var lift_594 := true;
  var lift_593 := (lift_594, '=');
  var lift_592 := (var tmpData : seq<bool> := []; tmpData);
  var lift_591 := lift_592;
  var lift_590 := lift_591;
  var lift_589 := lift_590;
  var lift_588 := lift_589;
  var lift_587 := {(lift_588, lift_593, lift_595), lift_596};
  var lift_586 := lift_587;
  var lift_582 := 1211451113;
  var lift_581 := lift_582;
  var lift_579 := '_';
  var lift_574 := false;
  var lift_573 := false;
  var lift_572 := lift_573;
  var lift_571 := ();
  var lift_570 := (lift_571, {lift_572, lift_574, lift_572});
  var lift_569 := false;
  var lift_568 := true;
  var lift_567 := {false, lift_568, lift_568, lift_568, lift_569};
  var lift_566 := lift_567;
  var lift_565 := ();
  var lift_564 := (lift_565, lift_566);
  var lift_561 := true;
  var lift_560 := true;
  var lift_559 := multiset{lift_560, false, lift_561, lift_561, true};
  var lift_558 := true;
  var lift_557 := lift_558;
  var lift_556 := true;
  var lift_555 := 'c';
  var lift_554 := (true, lift_555);
  var lift_553 := (lift_554, multiset{lift_556, lift_557, true});
  var lift_550 := ();
  var lift_549 := 'V';
  var lift_548 := lift_549;
  var lift_547 := [lift_548, lift_549, lift_549];
  var lift_546 := 1868742896;
  var lift_545 := multiset{-227802561, lift_546, lift_546, lift_546};
  var lift_544 := (lift_545, lift_547, lift_550);
  var lift_543 := ();
  var lift_542 := lift_543;
  var lift_541 := 'A';
  var lift_540 := 'Q';
  var lift_539 := -1953863631;
  var lift_538 := lift_539;
  var lift_537 := multiset{lift_538, lift_539, lift_538};
  var lift_536 := (
    lift_537,
    ['T', lift_540, lift_540, lift_541, lift_540],
    lift_542
  );
  var lift_522 := '<';
  var lift_518 := ();
  var lift_517 := lift_518;
  var lift_516 := 'd';
  var lift_515 := lift_516;
  var lift_514 := ();
  var lift_513 := (lift_514, lift_515, lift_517);
  var lift_512 := 't';
  var lift_511 := ();
  var lift_510 := lift_511;
  var lift_509 := (lift_510, lift_512, lift_511);
  var lift_505 := true;
  var lift_504 := {lift_505};
  var lift_503 := lift_504;
  var lift_502 := {true};
  var lift_501 := {lift_502, lift_502, lift_502, lift_503};
  var lift_497 := false;
  var lift_496 := 'L';
  var lift_495 := (lift_496, lift_497);
  var lift_494 := true;
  var lift_493 := (lift_494, lift_495);
  var lift_490 := false;
  var lift_489 := 'Y';
  var lift_488 := (lift_489, lift_490);
  var lift_480 := 502413875;
  var lift_479 := 't';
  var lift_478 := lift_479;
  var lift_477 := lift_478;
  var lift_476 := (lift_477, lift_480, lift_478);
  var lift_475 := 549544601;
  var lift_474 := ((), lift_475, lift_476);
  var lift_471 := ();
  var lift_465 := 2117347101;
  var lift_464 := 1470439583;
  var lift_463 := 372053500;
  var lift_462 := [lift_463, lift_464, lift_463, lift_465, lift_464];
  var lift_461 := lift_462;
  var lift_460 := lift_461;
  var lift_459 := '^';
  var lift_458 := {'?', lift_459};
  var lift_457 := (lift_458, lift_459, lift_460);
  var lift_454 := ();
  var lift_453 := ();
  var lift_452 := multiset{lift_453, lift_454, ()};
  var lift_451 := false;
  var lift_450 := ();
  var lift_449 := (lift_450, lift_451, lift_450);
  var lift_448 := multiset{lift_449, lift_449, lift_449, lift_449};
  var lift_447 := lift_448;
  var lift_446 := (lift_447, lift_452);
  var lift_445 := lift_446;
  var lift_444 := false;
  var lift_443 := ();
  var lift_442 := (lift_443, false, lift_443);
  var lift_441 := multiset{lift_442, (lift_443, lift_444, lift_443)};
  var lift_440 := lift_441;
  var lift_439 := lift_440;
  var lift_430 := 'Q';
  var lift_429 := lift_430;
  var lift_428 := (true, -1852165448, lift_429);
  var lift_388 := 't';
  var lift_387 := 639719656;
  var lift_384 := 'h';
  var lift_383 := lift_384;
  var lift_382 := [lift_383];
  var lift_381 := lift_382;
  var lift_380 := false;
  var lift_379 := -2063559189;
  var lift_378 := (lift_379, lift_380);
  var lift_377 := true;
  var lift_376 := lift_377;
  var lift_375 := lift_376;
  var lift_374 := false;
  var lift_373 := (-458038506, lift_374);
  var lift_372 := lift_373;
  var lift_371 := 'O';
  var lift_370 := true;
  var lift_369 := (lift_370, lift_371);
  var lift_368 := lift_369;
  var lift_367 := lift_368;
  var lift_366 := (lift_367, lift_372, lift_375);
  var lift_365 := {lift_366, (lift_367, lift_378, lift_375), lift_366};
  var lift_364 := lift_365;
  var lift_363 := lift_364;
  var lift_362 := lift_363;
  var lift_352 := (var tmpData : multiset<int> := multiset{}; tmpData);
  var lift_350 := true;
  var lift_349 := lift_350;
  var lift_348 := false;
  var lift_347 := lift_348;
  var lift_346 := [lift_347, lift_349, false, lift_350, lift_350];
  var lift_345 := lift_346;
  var lift_344 := 'x';
  var lift_343 := (lift_344, lift_345, lift_344);
  var lift_342 := (var tmpData : seq<bool> := []; tmpData);
  var lift_341 := 'i';
  var lift_340 := lift_341;
  var lift_339 := lift_340;
  var lift_338 := lift_339;
  var lift_337 := (lift_338, lift_342, lift_339);
  var lift_336 := multiset{lift_337, lift_343, ('V', lift_346, lift_338)};
  var lift_335 := (var tmpData : seq<(char, int, bool)> := []; tmpData);
  var lift_334 := lift_335;
  var lift_333 := lift_334;
  var lift_283 := 'y';
  var lift_282 := lift_283;
  var lift_281 := lift_282;
  var lift_280 := lift_281;
  var lift_279 := 'G';
  var lift_278 := multiset{'>', lift_279, lift_280, lift_280};
  var lift_277 := lift_278;
  var lift_262 := ();
  var lift_261 := multiset{lift_262, lift_262};
  var lift_260 := false;
  var lift_259 := '<';
  var lift_258 := (lift_259, lift_260);
  var lift_257 := 'l';
  var lift_256 := lift_257;
  var lift_255 := lift_256;
  var lift_254 := (('Z', lift_255), lift_258, lift_261);
  var lift_251 := 'p';
  var lift_250 := ('?', lift_251);
  var lift_244 := false;
  var lift_243 := lift_244;
  var lift_242 := ();
  var lift_241 := lift_242;
  var lift_240 := (lift_241, lift_241, lift_243);
  var lift_239 := (lift_240, lift_242);
  var lift_238 := lift_239;
  var lift_237 := lift_238;
  var lift_236 := lift_237;
  var lift_235 := lift_236;
  var lift_226 := (var tmpData : multiset<()> := multiset{}; tmpData);
  var lift_225 := lift_226;
  var lift_224 := lift_225;
  var lift_223 := (lift_224, lift_227, lift_235);
  var lift_222 := false;
  var lift_221 := ();
  var lift_220 := (lift_221, lift_221, lift_222);
  var lift_194 := false;
  var lift_193 := false;
  var lift_192 := multiset{lift_193, lift_194};
  var lift_187 := 'i';
  var lift_186 := 'w';
  var lift_185 := {lift_186, '|', lift_187, 'D'};
  var lift_183 := 'R';
  var lift_182 := {lift_183, lift_183, lift_183, 'X'};
  var lift_181 := (lift_182, true);
  var lift_175 := ();
  var lift_174 := lift_175;
  var lift_173 := (lift_174, -548530739);
  var lift_170 := ();
  var lift_169 := ();
  var lift_168 := lift_169;
  var lift_167 := {lift_168};
  var lift_162 := false;
  var lift_161 := ('F', '\'', lift_162);
  var lift_154 := 'l';
  var lift_153 := false;
  var lift_152 := true;
  var lift_151 := [lift_152, lift_153];
  var lift_150 := 'C';
  var lift_149 := (lift_150, lift_151, lift_150);
  var lift_148 := true;
  var lift_147 := [lift_148];
  var lift_146 := '\'';
  var lift_145 := (lift_146, lift_147, lift_146);
  var lift_144 := {
    lift_145,
    lift_149,
    lift_149,
    lift_145,
    (lift_154, lift_151, lift_150)
  };
  var lift_96 := ();
  var lift_84 := 'X';
  var lift_83 := [lift_84];
  var lift_82 := 'L';
  var lift_81 := '^';
  var lift_80 := {[lift_81, 'v', lift_81, lift_82], lift_83};
  var lift_79 := lift_80;
  var lift_78 := 'I';
  var lift_77 := ();
  var lift_76 := (lift_77, lift_78, lift_79);
  var lift_75 := (var tmpData : string := []; tmpData);
  var lift_74 := "?W&!$cB";
  var lift_73 := {lift_74, lift_75};
  var lift_72 := lift_73;
  var lift_71 := lift_72;
  var lift_70 := lift_71;
  var lift_69 := "|NmQ^mjQqc\"BNy+-B";
  var lift_61 := (var tmpData : seq<int> := []; tmpData);
  var lift_59 := 'T';
  var lift_58 := lift_59;
  var lift_57 := 'J';
  var lift_56 := multiset{lift_57, lift_58};
  var lift_55 := lift_56;
  var lift_36 := 1529793276;
  var lift_35 := true;
  var lift_34 := -1115066439;
  var lift_33 := ('B', lift_34, lift_35);
  var lift_32 := 'g';
  var lift_31 := ();
  var lift_30 := lift_31;
  var lift_29 := false;
  var lift_28 := 1184995111;
  var lift_27 := (lift_28, lift_29);
  var lift_26 := (lift_27, lift_30, (lift_32, lift_28, lift_29));
  var lift_25 := lift_26;
  var lift_24 := multiset{lift_25, (lift_27, lift_31, lift_33)};
  var lift_23 := 'P';
  var lift_22 := 'u';
  var lift_21 := lift_22;
  var lift_20 := lift_21;
  var lift_19 := ('g', lift_20, lift_23);
  var lift_18 := (lift_19, lift_24, lift_36);
  var lift_13 := false;
  var lift_12 := 391680702;
  var lift_11 := lift_12;
  var lift_10 := lift_11;
  var lift_9 := 1543346434;
  var lift_8 := [lift_9, lift_10];
  var lift_7 := (lift_8, lift_13, lift_14);
  var lift_6 := (var tmpData : multiset<seq<bool>> := multiset{}; tmpData);
  var lift_5 := lift_6;
  var lift_4 := lift_5;
  var lift_3 := lift_4;
  var lift_2 := false;
  var lift_1 := lift_2;
  if (((lift_1 && (lift_3 !! lift_4)) ==> lift_7.2(lift_18.2) ==> lift_37()(
    |lift_6|
  ))) {
    var lift_253 := (lift_146, lift_13);
    var lift_252 := lift_253;
    var lift_249 := (
      lift_250,
      lift_252,
      (var tmpData : multiset<()> := multiset{}; tmpData)
    );
    var lift_166 := {lift_167, lift_167};
    var lift_165 := {lift_8};
    var lift_164 := lift_165;
    var lift_160 := lift_161;
    var lift_159 := lift_160;
    var lift_158 := lift_151;
    var lift_157 := (lift_146, lift_154, lift_35);
    var lift_156 := lift_157;
    var lift_155 := (lift_153, lift_156, lift_158);
    var lift_143 := lift_144;
    var lift_101 := (lift_10, lift_11, multiset{{lift_83, lift_69}, lift_72});
    var lift_92 := [lift_1, lift_13, lift_29, lift_29];
    var lift_60 := |multiset{lift_8, lift_61}|;
    var lift_54 := multiset{lift_23, '|'};
    var methoddefvar_44, methoddefvar_45 := lift_42(
      (lift_32, '"', ((), (var tmpData : seq<bool> := []; tmpData))).0,
      (lift_54 + lift_55 + lift_55),
      (lift_23 == lift_58),
      lift_21
    );
    {
      {
        print -310908527, "\n";
      }
    }
    lift_60 := |lift_62(lift_69)|;
    if ((({
      "kXGbWe$RB!og*'%~>^CJLokdAQw",
      lift_69
    } + lift_70 + lift_71) == lift_76.2 == (
      -1404663308,
      "HYaVSw-VITyYOgvp*J;wpyI",
      lift_70
    ).2)) {
      var lift_163 := (lift_28, lift_164);
      var lift_102 := 1175176711;
      var lift_100 := lift_101;
      var methoddefvar_87 := lift_85(lift_82, lift_92);
      {
        print "+ykUr", true, "\n";
      }
      var methoddefvar_93, methoddefvar_94 := lift_42(
        lift_82,
        lift_54,
        lift_2,
        lift_81
      );
      {
        var lift_95 := ();
        print 
          (
            [(), lift_95, lift_96, lift_30, lift_30],
            (
              {lift_75},
              true,
              ((
                arg_97 : (),
                arg_98 : int,
                arg_99 : (multiset<int>, set<(int, (int, char))>)
              ) => ((multiset{true}, 2012561274, -1823892181), 'F'))
            )
          ),
          890519526,
          "\n";
        lift_100 := lift_100;
        lift_102 := lift_60;
      }
      var methoddefvar_105, methoddefvar_106 := lift_103(
        lift_30,
        lift_143,
        lift_13,
        lift_102
      );
      {
        lift_155 := (true, lift_159, lift_151);
        print 
          [(1774646004, {lift_61, lift_61, lift_61}), lift_163, lift_163],
          {lift_11, lift_9, methoddefvar_106, lift_34},
          "\n";
        print ':', "\n";
        lift_166 := lift_166;
      }
    } else {
      var lift_311 := multiset{lift_9, lift_34, lift_9, lift_9, -1832158825};
      var lift_246 := (lift_224, lift_227, lift_238);
      var lift_209 := multiset{lift_174, lift_169};
      var lift_200 := {((), lift_169, lift_2)};
      var lift_199 := (var tmpData : set<((), (), bool)> := {}; tmpData);
      var lift_198 := [lift_199, lift_200];
      var lift_191 := lift_192;
      var lift_190 := false;
      var lift_189 := multiset{lift_2, lift_148, lift_162, lift_162, lift_190};
      var lift_188 := [
        lift_189,
        multiset{true, lift_29, lift_148, lift_162, lift_162},
        lift_191
      ];
      var lift_180 := ();
      var lift_179 := multiset{lift_162, lift_35};
      var lift_178 := (var tmpData : multiset<bool> := multiset{}; tmpData);
      var lift_172 := multiset{
        lift_173,
        lift_173,
        lift_173,
        lift_173,
        ((), lift_28)
      };
      var lift_171 := (lift_172, (true, lift_2), lift_31);
      lift_170 := lift_171.2;
      var methoddefvar_176, methoddefvar_177 := lift_103(
        lift_30,
        lift_144,
        lift_2,
        lift_60
      );
      {
        var lift_184 := (lift_185, lift_152);
        lift_178 := lift_179;
        print [false, lift_35, lift_35, true, lift_162], "\n";
        print false, "\n";
        lift_180 := lift_175;
        lift_181 := lift_184;
      }
      if ((lift_179 !in lift_188)) {
        var lift_201 := (var tmpData : seq<set<((), (), bool)>> := []; tmpData);
        var lift_196 := (var tmpData : seq<bool> := []; tmpData);
        var methoddefvar_195 := lift_85('a', lift_196);
        {
          var lift_197 := ();
          lift_197 := lift_169;
          lift_198 := lift_201;
        }
      } else {
        var lift_312 := (false, lift_194, 1901611480);
        var lift_247 := ();
        var lift_245 := [
          lift_223,
          lift_246,
          (lift_225, lift_210, lift_236),
          lift_223
        ];
        var lift_219 := (lift_220, lift_77);
        var methoddefvar_202, methoddefvar_203 := lift_42(
          lift_78,
          multiset{'R', lift_58},
          lift_152,
          lift_78
        );
        {
          var lift_208 := (lift_209, lift_210, lift_219);
          var lift_207 := lift_208;
          print 
            (),
            (
              'D',
              [
                [
                  (
                    multiset{lift_170, (), lift_175, (), lift_180},
                    ((
                      arg_204 : int,
                      arg_205 : char,
                      arg_206 : char
                    ) => multiset{1408768485, lift_10, lift_9}),
                    (((), (), false), ())
                  ),
                  lift_207,
                  lift_207,
                  lift_223,
                  lift_208
                ],
                lift_245,
                lift_245
              ],
              150538841
            ),
            "\n";
          lift_247 := lift_247;
          print 
            (
              (var tmpData : multiset<multiset<()>> := multiset{}; tmpData),
              true,
              (var tmpData : set<(bool, char)> := {}; tmpData)
            ),
            "\n";
        }
        var methoddefvar_248 := lift_85(lift_57, lift_158);
        {
          print 
            (
              (
                "e>>:A\"Nu!b;@Jer@EDqGS",
                {lift_70},
                (var tmpData : seq<int> := []; tmpData)
              ),
              "I;Pm"
            ),
            "\n";
          print true, "\n";
          print 
            multiset{"*v-GW^KLjRwHtJ<Kvu/$/gN\"RTrCLO^%/Oe:", lift_83},
            "\n";
          print 593536141, "\n";
          lift_249 := lift_254;
        }
        print 
          true,
          (
            (),
            (
              [
                (var tmpData : seq<bool> := []; tmpData),
                lift_92,
                lift_158,
                lift_151,
                lift_147
              ],
              -1032500321,
              (var tmpData : seq<char> := []; tmpData)
            )
          ),
          "\n";
        var methoddefvar_265, methoddefvar_266 := lift_263(lift_277);
        {
          var lift_287 := ();
          print "tpY*~&g%hNwQ|>L", "\n";
          print (), [(() => ()), lift_284], "\n";
          lift_287 := lift_170;
          print multiset{[false, false], lift_92, lift_151, lift_158}, "\n";
        }
        var methoddefvar_290, methoddefvar_291 := lift_288(
          lift_28,
          lift_311,
          lift_262,
          lift_175,
          lift_312
        );
        {
          var lift_313 := true;
          lift_313 := lift_244;
        }
      }
    }
  } else {
    var lift_643 := (lift_174, 912712398);
    var lift_641 := (lift_349, lift_162);
    var lift_640 := lift_641;
    var lift_626 := (var tmpData : set<()> := {}; tmpData);
    var lift_611 := {lift_464, lift_480, lift_28, lift_582, lift_36};
    var lift_585 := {
      (lift_78, lift_147, lift_430),
      lift_149,
      lift_149,
      lift_337,
      lift_145
    };
    var lift_576 := (var tmpData : multiset<char> := multiset{}; tmpData);
    var lift_563 := (var tmpData : multiset<char> := multiset{}; tmpData);
    var lift_508 := multiset{
      lift_509,
      (lift_241, 'C', lift_221),
      lift_513,
      lift_513,
      (lift_450, lift_341, lift_168)
    };
    var lift_487 := (lift_194, lift_488);
    var lift_486 := {lift_487};
    var lift_485 := (lift_486, lift_387);
    var lift_481 := (lift_170, lift_10, lift_476);
    var lift_469 := [()];
    var lift_468 := (lift_281, lift_380);
    var lift_455 := [-1708074702, lift_10];
    var lift_438 := (lift_439, lift_261);
    var lift_435 := ();
    var lift_434 := {lift_379, lift_12, lift_12, lift_10};
    var lift_361 := (lift_347, lift_341);
    var lift_360 := (lift_361, (lift_11, lift_1), lift_1);
    var lift_357 := (lift_10, lift_2);
    var lift_356 := (true, 'I');
    var lift_351 := (lift_244, lift_352);
    var methoddefvar_316 := lift_314(lift_220.0, ([false], lift_258).1);
    {
      var methoddefvar_331, methoddefvar_332 := lift_42(
        lift_251,
        lift_277,
        lift_148,
        lift_187
      );
      {
        print false, "\n";
        print {[(lift_81, 449045082, lift_153), lift_33], lift_333}, "\n";
      }
    }
    if (((lift_149 !in lift_336) || lift_351.0)) {
      var lift_437 := false;
      var lift_431 := (lift_29, lift_10, lift_186);
      var lift_393 := 1281810805;
      var lift_359 := lift_360;
      var lift_358 := lift_11;
      if ((lift_5 < (var tmpData : multiset<seq<bool>> := multiset{}; tmpData))) {
        var lift_355 := (lift_356, lift_357, lift_193);
        {
          var lift_354 := {
            lift_355,
            (lift_356, (lift_358, lift_35), lift_2),
            lift_359,
            lift_360,
            lift_359
          };
          var lift_353 := 1122996521;
          lift_353 := lift_34;
          lift_354 := lift_362;
          print (), 1746368656, "\n";
          print 
            -540742720,
            multiset{
              multiset{"ex=&r<atKPKl'tql", lift_74, lift_83},
              multiset{
                lift_381,
                (var tmpData : string := []; tmpData),
                lift_382,
                lift_74,
                lift_74
              }
            },
            "\n";
          print 'g', "\n";
        }
        if (true) {
          print "xbPc:U%$Kk!fB~chLqbm%c&~W!", "\n";
          print (), (var tmpData : set<int> := {}; tmpData), "\n";
          print 
            ((
              arg_385 : set<set<set<bool>>>,
              arg_386 : ((char, int), set<char>)
            ) => -1209079154),
            "\n";
          lift_387 := 1864480482;
        } else {
          lift_388 := lift_256;
        }
        {
          var lift_396 := 'M';
          print 
            (
              (),
              multiset{lift_221, lift_241, lift_262},
              (
                ((
                  arg_389 : ((), char),
                  arg_390 : (char, multiset<char>),
                  arg_391 : int,
                  arg_392 : (multiset<()>, (bool, bool, char), multiset<set<char>>)
                ) => multiset{arg_391, lift_393, 2054997572, lift_387}),
                ((arg_394 : bool, arg_395 : multiset<int>) => multiset{
                  'H',
                  lift_371,
                  lift_388,
                  'y',
                  lift_371
                }),
                (false, 1917309378)
              )
            ),
            ('b', ()),
            "\n";
          lift_396 := lift_256;
        }
      } else {
        var lift_427 := lift_428;
        var methoddefvar_399 := lift_397(lift_221, lift_379, true);
        {
          var lift_426 := [lift_427];
          var lift_425 := [lift_379];
          var lift_424 := [lift_61, lift_61, lift_425];
          lift_424 := [
            [lift_12],
            lift_8,
            [lift_387, -623274266, lift_12, lift_9],
            lift_8
          ];
          lift_426 := [lift_431];
        }
        var methoddefvar_432, methoddefvar_433 := lift_42(
          lift_338,
          lift_56,
          lift_152,
          lift_341
        );
        {
          lift_434 := lift_434;
          print 't', "\n";
        }
      }
      lift_435 := lift_241;
      print 
        safeSeqTake(
          ["IErgCyVp~qC>pq", lift_75, lift_75, lift_75, lift_74],
          lift_34
        ),
        "\n";
      var methoddefvar_436 := lift_314(lift_77, lift_258);
      {
        lift_437 := lift_350;
        lift_438 := lift_445;
      }
    } else {
      var lift_500 := lift_465;
      var lift_499 := (lift_244, lift_488);
      var lift_498 := (lift_194, lift_468);
      var lift_492 := {lift_493, lift_498, lift_493, lift_493, lift_499};
      var lift_466 := (lift_185, lift_341, lift_460);
      var lift_456 := lift_457;
      if ((-1772909175 !in lift_455)) {
        var lift_473 := lift_474;
        lift_456 := lift_466;
        var methoddefvar_467 := lift_397(lift_31, lift_464, lift_1);
        {
          print 548828754, multiset{863632544, lift_9}, "\n";
          print 'K', "\n";
          print ((), 'E'), true, "\n";
        }
        if (lift_376) {
          var lift_470 := ();
          print "KpU'$cEq>wQ?NmZxMNqJx@VS!_x+k", "\n";
          print 
            {lift_258, lift_258, lift_468, (lift_150, lift_350), lift_258},
            "\n";
          lift_469 := [lift_242, lift_96, (), lift_169, lift_454];
          lift_470 := ();
          lift_471 := lift_450;
        } else {
          var lift_472 := multiset{
            lift_473,
            lift_473,
            lift_474,
            lift_473,
            lift_481
          };
          lift_472 := lift_472;
          print (), "|H", "\n";
        }
      } else {
        var lift_506 := 'Y';
        if (lift_2) {
          var lift_482 := lift_379;
          print false, "\n";
          lift_482 := lift_379;
        } else {
          var lift_491 := (lift_492, lift_379);
          var lift_484 := ([lift_251, lift_282, lift_22, lift_146], 'T');
          var lift_483 := ([lift_384, lift_283, 'E'], lift_20);
          lift_483 := lift_484;
          lift_485 := lift_491;
        }
        print -1250172795, {'%', 'd', lift_282, lift_32}, "\n";
        if (lift_152) {
          lift_500 := -501703964;
          print 
            (var tmpData : seq<set<bool>> := []; tmpData),
            (
              {
                {
                  {lift_497, lift_377, false, lift_13},
                  {true, lift_370, lift_370, true, true}
                },
                lift_501
              },
              '-',
              multiset{lift_283, lift_371, lift_388}
            ),
            "\n";
          lift_506 := lift_496;
        } else {
          var lift_507 := lift_508;
          print "Ph;=poFHobICWx;", "\n";
          print (), "y_Ik|lmmH%@=;*:E&RZu", "\n";
          lift_507 := lift_507;
          print "FhRBh>>Un=G<+Xls~Un/@kGz<Uln", 'W', "\n";
          print {false, lift_348, lift_451, lift_244}, "\n";
        }
      }
      {
        var lift_531 := {lift_279, lift_259, 'Q', lift_515, lift_183};
        var lift_530 := (lift_278, lift_372, lift_531);
        print ((arg_519 : bool, arg_520 : bool, arg_521 : char) => ()), "\n";
        lift_522 := lift_20;
        print 
          (
            (
              (
                ['&'],
                multiset{'>'},
                multiset{
                  "j;k-+Vv?kqV",
                  "Bfd--zjQ<v>ovW!nADklzAtTBa^",
                  "jzbi=st|O$hEgnJnG\"D:*\"uGgf'v",
                  lift_381,
                  lift_83
                }
              ),
              (false, -1819564054)
            ),
            ('+', ()),
            'C'
          ),
          (
            1498313278,
            (
              249586920,
              ((
                arg_523 : (bool, (int, bool, bool)),
                arg_524 : char,
                arg_525 : int,
                arg_526 : ((char, int, char), int, (char, int)),
                arg_527 : bool
              ) => ";i@\"O&@")
            )
          ),
          "\n";
        var methoddefvar_528, methoddefvar_529 := lift_263(
          multiset{lift_340, lift_256}
        );
        {
          print 
            true,
            multiset{
              (
                (var tmpData : multiset<char> := multiset{}; tmpData),
                lift_372,
                {':'}
              ),
              (multiset{lift_259, lift_23}, lift_378, lift_182),
              (lift_55, lift_357, lift_458),
              lift_530
            },
            "\n";
          print true, "\n";
        }
      }
    }
    {
      var lift_612 := (lift_150, lift_611);
      var lift_610 := (lift_496, lift_611);
      var lift_578 := false;
      var lift_552 := lift_192;
      var lift_551 := (lift_356, lift_552);
      {
        var lift_533 := ();
        var lift_532 := [lift_9];
        lift_532 := lift_455;
        lift_533 := lift_168;
      }
      var methoddefvar_534, methoddefvar_535 := lift_263(lift_278);
      {
        var lift_562 := (lift_554, lift_552);
        lift_536 := lift_544;
        print 
          ((), ()),
          multiset{-630864413, -286981415, lift_9, lift_463, lift_546},
          "\n";
        print 
          multiset{
            (lift_361, multiset{lift_222}),
            lift_551,
            lift_553,
            (lift_554, lift_559),
            lift_562
          },
          (multiset{lift_150, lift_84}, true, ";RvA~zG"),
          "\n";
        lift_563 := lift_563;
        print (), "\n";
      }
      {
        print {"hB/VukQIJHMzXzxy&Zm~:p+hZS$dHL*n"}, "\n";
      }
      if ((lift_374 ==> lift_244 ==> false)) {
        var lift_575 := (lift_576, "dCQ'$>//p!^WlXYW$WKcPowtw%");
        print 
          [
            [false],
            [lift_375, lift_29, false, lift_350, lift_243],
            lift_151,
            lift_151,
            [lift_505]
          ],
          (
            [
              ((), {false, true, lift_35, lift_497}),
              lift_564,
              lift_570,
              (lift_242, {lift_29, lift_451, lift_572})
            ],
            multiset{
              (multiset{'t', lift_344}, "YY&uI|DOmbH-Lx-SIv>=xaOrR"),
              lift_575,
              lift_575,
              (lift_278, lift_547)
            },
            (var tmpData : set<(bool, (char, int, char))> := {}; tmpData)
          ),
          "\n";
      } else {
        var lift_580 := 'b';
        {
          var lift_577 := (var tmpData : seq<(bool, bool, char)> := []; tmpData);
          lift_577 := [(lift_148, lift_578, lift_338)];
        }
        {
          lift_579 := lift_255;
          lift_580 := lift_150;
          lift_581 := lift_9;
        }
        print -1494157101, multiset{lift_366}, "\n";
      }
      var methoddefvar_583, methoddefvar_584 := lift_103(
        lift_169,
        lift_585,
        true,
        lift_36
      );
      {
        lift_586 := lift_604;
        print 
          (var tmpData : multiset<((int, bool, bool), int)> := multiset{}; tmpData),
          ["/iMl'pF_Fn&TZWAl<zGxNvR", lift_547, lift_75],
          "\n";
        lift_610 := lift_612;
        print false, (), "\n";
        lift_613 := 1053732873;
      }
    }
    lift_614 := lift_225;
    {
      var lift_639 := lift_635;
      var lift_629 := (lift_620, 'A', lift_489);
      var lift_628 := multiset{
        lift_629,
        lift_630,
        lift_635,
        lift_639,
        ((lift_632, 'k'), lift_186, lift_187)
      };
      var lift_625 := [lift_346, lift_592, lift_606];
      var methoddefvar_618 := lift_397(lift_514, lift_34, lift_556);
      {
        var lift_619 := (lift_182, lift_620, lift_624);
        lift_619 := lift_619;
        print 
          multiset{
            [
              [lift_349, lift_377],
              lift_342,
              [lift_594, lift_607, lift_497, lift_572]
            ],
            lift_625,
            lift_625,
            lift_625
          },
          {lift_167, lift_167, lift_626},
          "\n";
      }
      var methoddefvar_627 := lift_397(lift_543, lift_28, lift_558);
      {
        var lift_644 := (lift_542, lift_463);
        var lift_642 := lift_640;
        print 
          (var tmpData : multiset<char> := multiset{}; tmpData),
          -1300706383,
          "\n";
        lift_628 := lift_628;
        lift_640 := lift_642;
        lift_643 := lift_644;
      }
    }
  }
  {
    var lift_748 := [lift_749, lift_192, lift_750, lift_750];
    var lift_736 := {lift_343, lift_337, lift_337, lift_145, lift_343};
    var lift_735 := lift_343;
    var lift_734 := {
      (lift_713, lift_147, lift_548),
      lift_735,
      lift_337,
      lift_149,
      lift_337
    };
    var lift_725 := (lift_711, true, lift_465);
    var lift_719 := (lift_162, true);
    var lift_707 := true;
    {
      var lift_726 := ":$S+:kKitCf=aVvPbE|fhHmbp";
      var lift_709 := ();
      var lift_705 := lift_545;
      var lift_704 := {(), lift_170, lift_30};
      var lift_676 := {lift_590};
      if ((lift_622 > lift_36)) {
        var methoddefvar_647, methoddefvar_648 := lift_645(
          465101294,
          lift_676,
          lift_582,
          lift_517
        );
        {
          print 
            (
              'T',
              ((
                arg_677 : bool,
                arg_678 : seq<bool>,
                arg_679 : int,
                arg_680 : multiset<int>
              ) => ((), {()}))
            ),
            "p?<eyoaYx",
            "\n";
        }
        var methoddefvar_683 := lift_681(lift_242, lift_690);
        {
          print 
            ("jq=kVNoiyGaZwcZgSzu", (), 'y'),
            ({(), (), lift_242, lift_542}, 823004589),
            "\n";
        }
        lift_699 := lift_538;
        if (true) {
          lift_700 := lift_700;
          lift_703 := lift_244;
          print multiset{lift_573}, ";k!IaEJMOu|Vf^o:HPloSpxPQP^@uBkVRgI", "\n";
          lift_704 := (var tmpData : set<()> := {}; tmpData);
        } else {
          lift_705 := multiset{lift_465, lift_637, lift_702};
        }
      } else {
        var methoddefvar_706 := lift_85('Y', lift_589);
        {
          var lift_708 := lift_282;
          lift_707 := lift_594;
          lift_708 := 'l';
        }
        lift_709 := lift_174;
        lift_710 := {true, false, lift_573, lift_370};
      }
      print (lift_56 <= lift_55 <= lift_712), "\n";
      print (lift_9 * lift_702), "\n";
      var methoddefvar_716 := lift_397(lift_697, -95809910, true);
      {
        var lift_722 := (lift_347, lift_602);
        var lift_721 := (lift_558, lift_631, lift_722);
        var lift_720 := lift_721;
        var lift_718 := (lift_222, lift_631, lift_719);
        lift_717 := lift_9;
        print (), (), "\n";
        print "=&A+|j|xD;qr\"-dwW'yi_+-mg_r/", "\n";
        lift_718 := lift_720;
      }
      var methoddefvar_723, methoddefvar_724 := lift_288(
        lift_622,
        lift_545,
        lift_697,
        lift_542,
        lift_725
      );
      {
        print {lift_550, lift_697}, "\n";
        print (), "\n";
        print 
          [
            "DCm;GzFEcpiLFkV%M$A?!=rf:UU-NR&jr",
            lift_74,
            lift_74,
            lift_75,
            lift_69
          ],
          "\n";
        print 
          {
            [lift_20, lift_186, lift_383, lift_638, lift_82],
            lift_74,
            "uzz~|%dGz\"w^Mc",
            lift_726
          },
          "\n";
        print 
          [
            {
              ['^', lift_384],
              lift_726,
              ">p-EH_rtL;PyEC!YBOE|H$mxlpudqnM%cd|",
              [lift_22, lift_692, lift_548, lift_283],
              [lift_251, lift_623]
            },
            lift_71,
            lift_79,
            lift_71,
            lift_73
          ],
          {lift_703, lift_497, lift_568, lift_243},
          "\n";
      }
    }
    var methoddefvar_727, methoddefvar_728 := lift_103(
      lift_729.0,
      (lift_144 - lift_734 - lift_736),
      !(false),
      |lift_345|
    );
    {
      print 
        ((
          arg_737 : set<(multiset<char>, int, int)>,
          arg_738 : ((), set<(int, (bool, int, char))>),
          arg_739 : (seq<bool>, seq<int>, multiset<seq<()>>),
          arg_740 : ()
        ) => 'r'),
        "\n";
      print 
        (),
        ("md%ODjTjxP<DZr=WFK\"p&\"gVQvLzmDp*y%'rn", -525108170, ()),
        "\n";
      var methoddefvar_741, methoddefvar_742 := lift_42(
        '|',
        multiset{'>', lift_713, lift_713, 'Q', 'V'},
        lift_574,
        lift_57
      );
      {
        var lift_747 := lift_748;
        print 
          "iUxj%<;;j|$zy%ue>o!FS=IjV-uR'H?xv/ccvP\"",
          ("BIYpPmP\"zHKl%", (), ()),
          "\n";
        print 
          multiset{
            [(var tmpData : multiset<bool> := multiset{}; tmpData), lift_192],
            (var tmpData : seq<multiset<bool>> := []; tmpData),
            [lift_743],
            lift_747,
            lift_747
          },
          -1611385673,
          "\n";
        print 
          multiset{false, lift_243, true},
          ((
            arg_752 : char,
            arg_753 : (),
            arg_754 : int,
            arg_755 : char
          ) => false),
          "\n";
        lift_756 := (lift_381, lift_30, lift_82);
      }
    }
  }
  if (lift_573) {
    var lift_949 := (
      [lift_496, lift_496, lift_22, lift_183],
      lift_774,
      lift_865
    );
    var lift_948 := {lift_949};
    var lift_934 := (var tmpData : seq<int> := []; tmpData);
    var lift_931 := 'v';
    var lift_930 := lift_860;
    var lift_921 := true;
    var lift_916 := lift_917;
    var lift_905 := lift_906;
    var lift_904 := ('Y', lift_561, lift_341);
    var lift_903 := (lift_904, 1291184724, ());
    var lift_902 := lift_903;
    var lift_901 := multiset{lift_902, lift_903, lift_905, lift_906, lift_905};
    var lift_888 := (lift_182, lift_379, lift_251);
    var lift_794 := multiset{
      (lift_795, lift_595, lift_194),
      (lift_795, lift_569, lift_444)
    };
    var lift_787 := -609427958;
    var lift_785 := lift_464;
    var lift_759 := [lift_74, lift_69, lift_381, lift_381, lift_74];
    if ((("rxO;DF+@r_-aRG" !in lift_759) ==> (lift_569 <==> lift_374 <==> lift_746) ==> (lift_57 > lift_59 >= lift_280))) {
      var lift_834 := ('v', lift_538);
      var lift_831 := false;
      var lift_788 := ();
      var lift_786 := 'v';
      var methoddefvar_760, methoddefvar_761 := lift_288(
        lift_637,
        lift_352,
        (),
        lift_617,
        lift_762
      );
      {
        print false, 'V', "\n";
      }
      if (safeSeqRef(lift_147, lift_9, lift_497)) {
        var lift_828 := false;
        var lift_824 := false;
        var lift_800 := lift_801;
        var lift_791 := 'E';
        var lift_781 := (lift_75, lift_192);
        var methoddefvar_766, methoddefvar_767 := lift_263(lift_55);
        {
          var lift_768 := multiset{lift_622, lift_10, methoddefvar_766};
          lift_768 := lift_545;
          print (), 1367976271, "\n";
          print 
            {(), lift_242, lift_698, lift_443},
            multiset{
              "awY<UrqSBP!Xni'caLv=MBFXSg%TRWyFU+'O",
              [lift_609, lift_489, lift_477, lift_84, lift_388]
            },
            "\n";
        }
        if (lift_370) {
          print 
            (var tmpData : multiset<set<set<int>>> := multiset{}; tmpData),
            'v',
            "\n";
          lift_769 := lift_771;
          print 
            "Y:+Qq_",
            [
              ("Nn:J/Ae*in!efEvGuCsV=RtTkGJBARr_+", multiset{false}),
              lift_781,
              ((var tmpData : seq<char> := []; tmpData), lift_192),
              lift_782,
              lift_782
            ],
            "\n";
          lift_785 := lift_702;
        } else {
          lift_786 := lift_549;
          lift_787 := lift_702;
          print ((), 'G'), "\n";
          lift_788 := lift_175;
          print 
            true,
            ((
              arg_789 : (seq<int>, set<(int, (), (int, char, bool))>),
              arg_790 : seq<set<int>>
            ) => 'B'),
            "\n";
        }
        if (lift_347) {
          var lift_799 := lift_800;
          var lift_793 := (lift_606, lift_794, (lift_696, lift_632));
          var lift_792 := (-2138485341, lift_504, lift_560);
          lift_791 := 'N';
          lift_792 := lift_792;
          lift_793 := lift_799;
          lift_823 := lift_450;
          print 
            (
              -1958644342,
              "m>:/Y_rv~Vh-'%qIBOe<lfF'@rjlGC",
              ('"', {true, lift_444, lift_745, lift_35, true})
            ),
            "\n";
        } else {
          lift_824 := lift_444;
        }
        var methoddefvar_825, methoddefvar_826 := lift_103(
          lift_732,
          lift_144,
          lift_243,
          lift_632
        );
        {
          print (), {true, lift_764, true, lift_816, lift_148}, "\n";
          lift_827 := lift_475;
          lift_828 := lift_375;
          print 'c', "\n";
        }
      } else {
        var lift_833 := 100923301;
        if (true) {
          print false, [true, lift_798], "\n";
          lift_829 := lift_829;
        } else {
          var lift_832 := multiset{lift_384, lift_478};
          print 
            [
              multiset{'*', lift_183, lift_633, lift_496, lift_692},
              lift_278,
              lift_277
            ],
            "\n";
          lift_831 := true;
          lift_832 := lift_56;
        }
        if (lift_798) {
          print "_ch|_^zft<wxIxtBg|n$", true, "\n";
          lift_833 := lift_34;
          print multiset{lift_543}, false, "\n";
          lift_834 := lift_834;
        } else {
          print {590368185, lift_463, lift_539, lift_538, lift_717}, "\n";
        }
        var methoddefvar_835, methoddefvar_836 := lift_42(
          '^',
          lift_712,
          true,
          lift_384
        );
        {
          var lift_838 := 'p';
          var lift_837 := -490392919;
          lift_837 := -1217971994;
          lift_838 := lift_696;
        }
        lift_839 := lift_841;
      }
    } else {
      var lift_881 := {lift_882, lift_590};
      var lift_878 := [
        [lift_256, lift_430, lift_797],
        "%lA=F^+'xVq<y?d&BF:o+kfN<-H",
        [lift_20],
        lift_381,
        "<PIRK:tG&fVKyN?@?tcJ"
      ];
      var lift_877 := lift_350;
      var lift_875 := -522131152;
      var lift_852 := (lift_592, lift_710);
      var lift_845 := [lift_278, lift_712, lift_278, lift_278];
      var lift_844 := lift_845;
      {
        var lift_848 := (lift_36, lift_28);
        var lift_847 := ((lift_764, 'J'), lift_744, lift_848);
        var lift_846 := 753144667;
        print multiset{lift_383, lift_283, '-'}, "\n";
        var methoddefvar_843 := lift_85(
          '!',
          [lift_746, false, lift_380, false]
        );
        {
          print 
            (
              (),
              [[multiset{'<'}, lift_278, lift_712, lift_56], lift_844],
              multiset{lift_222, lift_744, lift_380}
            ),
            "\n";
          lift_846 := lift_699;
          print -1383632483, ';', "\n";
        }
        {
          lift_847 := lift_847;
        }
        lift_849 := lift_638;
        var methoddefvar_850, methoddefvar_851 := lift_263(lift_277);
        {
          lift_852 := (lift_591, lift_502);
          print 1706985407, "\n";
        }
      }
      if ((-1228605196 > lift_465)) {
        var lift_876 := lift_616;
        var lift_873 := '!';
        var lift_858 := (var tmpData : seq<set<()>> := []; tmpData);
        {
          print 
            "MZU%h;$P$twd!^!A'<K_;xe",
            ((
              arg_853 : char,
              arg_854 : (bool, char),
              arg_855 : ((int, char, char), multiset<((), (), bool)>),
              arg_856 : seq<(char, bool, char)>,
              arg_857 : ()
            ) => "'N"),
            "\n";
          print (var tmpData : seq<multiset<char>> := []; tmpData), "\n";
          lift_858 := lift_859;
          print 886539278, "\n";
        }
        print 
          (
            ((arg_861 : ()) => ((), ())),
            multiset{
              {-1778888227, -350714201, lift_785, lift_465, lift_785},
              lift_862,
              lift_867,
              lift_867
            }
          ),
          "\n";
        var methoddefvar_871, methoddefvar_872 := lift_645(
          lift_821,
          {
            lift_803,
            lift_589,
            lift_345,
            (var tmpData : seq<bool> := []; tmpData)
          },
          lift_717,
          lift_778
        );
        {
          var lift_874 := [lift_574, lift_798, false];
          print 
            {(), lift_169, (), lift_518},
            multiset{
              "ZMopxni@VXvHdf+_n+k^gUXpyTuYhNCy?%Offr",
              lift_69,
              "r%JKg"
            },
            "\n";
          lift_873 := lift_186;
          lift_874 := [lift_751];
          print 
            {(var tmpData : set<seq<char>> := {}; tmpData), lift_79, lift_79},
            false,
            "\n";
          lift_875 := lift_699;
        }
        {
          lift_876 := lift_772;
          lift_877 := lift_573;
          lift_878 := lift_878;
        }
      } else {
        var methoddefvar_879, methoddefvar_880 := lift_645(
          1269337493,
          lift_881,
          -1922922498,
          ()
        );
        {
          var lift_887 := lift_453;
          lift_886 := ();
          lift_887 := lift_842;
          lift_888 := lift_889;
          print 'g', 'Z', "\n";
        }
      }
    }
    {
      var lift_966 := 1720373639;
      var lift_933 := {lift_8, lift_934, lift_461};
      var lift_932 := lift_933;
      var lift_923 := lift_924;
      var lift_900 := lift_901;
      var lift_895 := lift_896;
      var methoddefvar_893, methoddefvar_894 := lift_288(
        -202217182,
        lift_537,
        lift_571,
        (),
        lift_762
      );
      {
        var lift_899 := lift_900;
        lift_895 := lift_895;
        lift_899 := lift_899;
        print 
          multiset{
            (var tmpData : set<()> := {}; tmpData),
            {(), lift_221, lift_886, (), ()}
          },
          "\n";
        print {1457099516, lift_613, lift_863, 143536136}, (), "\n";
      }
      if ((lift_186 < lift_909 == lift_280)) {
        var lift_922 := {lift_758};
        lift_916 := lift_916;
        lift_921 := lift_490;
        if (false) {
          lift_922 := lift_890;
          lift_923 := lift_924;
          print -1279941835, "\n";
          print "@C><&H$HPQWIXhe", "\n";
          lift_930 := lift_167;
        } else {
          var lift_947 := (lift_937, lift_940);
          lift_931 := lift_183;
          print 
            [(var tmpData : set<seq<int>> := {}; tmpData), lift_624, lift_932],
            multiset{[lift_547], lift_759, lift_759, lift_759, lift_759},
            "\n";
          print 
            [
              (
                [-1826156059, 965939465],
                (
                  (var tmpData : string := []; tmpData),
                  [(var tmpData : set<bool> := {}; tmpData)],
                  [[false, lift_763, lift_497, lift_1], lift_590, lift_147]
                )
              ),
              lift_935,
              lift_947,
              lift_935,
              lift_935
            ],
            "\n";
        }
        lift_948 := lift_948;
        lift_950 := lift_955;
      } else {
        var lift_965 := (var tmpData : multiset<int> := multiset{}; tmpData);
        {
          lift_965 := lift_545;
        }
      }
      lift_966 := |lift_537|;
    }
    lift_967 := lift_967;
  } else {
    var lift_1205 := 'o';
    var lift_1193 := lift_1194;
    var lift_1192 := (lift_11, lift_1193);
    var lift_1191 := {lift_1192, lift_1180, lift_1200, lift_1181};
    var lift_1178 := (lift_823, lift_1160, lift_541);
    var lift_1138 := (var tmpData : seq<multiset<bool>> := []; tmpData);
    var lift_1135 := lift_890;
    var lift_1098 := ('b', lift_954);
    var lift_1077 := [multiset{lift_243, lift_243}, lift_192];
    var lift_1076 := safeSeqRef(lift_1077, lift_822, lift_750);
    var lift_1066 := (var tmpData : multiset<set<bool>> := multiset{}; tmpData);
    var lift_1056 := 1570287015;
    var lift_1054 := lift_778;
    var lift_1047 := lift_542;
    var lift_1004 := {
      [lift_869, lift_464],
      lift_1001,
      lift_460,
      lift_462,
      lift_461
    };
    var lift_995 := [lift_250, lift_250, lift_829];
    var lift_974 := (lift_975, lift_815, lift_815);
    var lift_973 := (lift_776, lift_8, lift_56);
    if ((lift_973.2 == lift_277)) {
      var lift_1019 := ();
      var lift_1013 := '|';
      lift_974 := lift_980(
        ('$', 'h'),
        lift_746,
        multiset{()},
        (var tmpData : string := []; tmpData),
        lift_352
      );
      var methoddefvar_994 := lift_85(lift_32, lift_346);
      {
        var lift_998 := lift_999;
        var lift_997 := (lift_998, lift_581, lift_784);
        var lift_996 := [lift_829];
        lift_995 := lift_996;
        print 
          [
            (
              [(var tmpData : set<seq<int>> := {}; tmpData), {lift_461}],
              -968208516,
              multiset{true, lift_602, lift_560, lift_711, lift_594}
            ),
            lift_997,
            ([lift_1004], lift_897, lift_743),
            (lift_999, lift_1003, lift_559),
            lift_1005
          ],
          "\n";
        print 
          multiset{
            (
              {2135022275, lift_464, lift_866, lift_822, lift_582},
              lift_971,
              ('?', lift_891)
            )
          },
          'Z',
          "\n";
        print (), "\n";
      }
      lift_1013 := lift_1014(lift_77);
      print safeSeqDrop(lift_590, lift_539), "\n";
      var methoddefvar_1018 := lift_85('_', lift_151);
      {
        lift_1019 := lift_454;
        print "uYi", {lift_541, lift_549, lift_388, lift_603, lift_23}, "\n";
        lift_1020 := lift_765;
        print (false, 954936834), "\n";
      }
    } else {
      var lift_1072 := 'Q';
      var lift_1069 := 't';
      var lift_1067 := multiset{
        lift_566,
        lift_566,
        lift_710,
        lift_504,
        lift_566
      };
      var lift_1065 := (lift_55, lift_1066);
      var lift_1060 := (var tmpData : seq<(char, bool, char)> := []; tmpData);
      var lift_1055 := multiset{lift_349, lift_1031, true};
      var lift_1051 := -1888604668;
      var lift_1050 := (lift_547, lift_21);
      var lift_1046 := [lift_369, lift_601, lift_554, (lift_243, lift_150)];
      var lift_1039 := [lift_382, lift_783, lift_941];
      var lift_1027 := [lift_1021];
      lift_1021 := safeSeqRef(
        lift_1027,
        -1944072160,
        (true, multiset{lift_964, lift_927, (), lift_517, lift_565})
      );
      var methoddefvar_1028 := lift_314(lift_617, lift_495);
      {
        print {-1282178374, lift_622, 1826893531}, "\n";
        print {lift_479}, "\n";
        lift_1029 := lift_964;
      }
      if ((lift_804 || lift_751)) {
        var lift_1034 := 'Y';
        if (lift_573) {
          lift_1030 := lift_569;
          print "O-", "\n";
          print [';', '>', lift_59], "\n";
        } else {
          lift_1034 := lift_713;
        }
      } else {
        var lift_1057 := true;
        var lift_1049 := lift_1050;
        var lift_1048 := lift_1049;
        var lift_1044 := multiset{lift_1045, lift_1046, lift_1046, lift_1046};
        print 
          (
            564584524,
            (
              multiset{
                multiset{lift_758},
                multiset{lift_515, '?', lift_978, lift_633},
                lift_712,
                multiset{lift_796},
                lift_277
              },
              131692855,
              (
                [(var tmpData : seq<char> := []; tmpData)],
                (1402704000, '?', 'F'),
                (
                  'g',
                  (
                    (
                      (
                        ((
                          arg_1035 : ((int, int, char), multiset<()>, seq<int>),
                          arg_1036 : char,
                          arg_1037 : (char, (char, char, char), multiset<bool>),
                          arg_1038 : char
                        ) => -976108995),
                        ()
                      ),
                      ()
                    ),
                    ['x', lift_259, lift_81, lift_633]
                  ),
                  true
                )
              )
            )
          ),
          [
            [
              ['E', lift_911],
              lift_382,
              lift_382,
              lift_83,
              [lift_555, lift_283, lift_489, lift_146, lift_459]
            ],
            lift_1039,
            lift_1040
          ],
          "\n";
        lift_1044 := lift_1044;
        {
          lift_1047 := ();
          print {lift_388, lift_609, 'G', 'f'}, "\n";
          lift_1048 := lift_1048;
          print (var tmpData : seq<set<()>> := []; tmpData), "\n";
          lift_1051 := lift_864;
        }
        if (lift_244) {
          print 
            (
              (var tmpData : multiset<int> := multiset{}; tmpData),
              (var tmpData : multiset<((char, int), char)> := multiset{}; tmpData)
            ),
            "\n";
          lift_1052 := lift_697;
          print 1356843854, "\n";
          print false, -346865106, "\n";
          print (993307905, '@', {lift_866, lift_863, lift_387}), "\n";
        } else {
          lift_1054 := lift_823;
          lift_1055 := lift_749;
          lift_1056 := lift_613;
          print -1613827742, -996131864, "\n";
          lift_1057 := lift_370;
        }
        var methoddefvar_1058, methoddefvar_1059 := lift_103(
          lift_617,
          {lift_145, (lift_1042, lift_591, lift_549), lift_149},
          true,
          lift_892
        );
        {
          var lift_1061 := false;
          lift_1060 := (var tmpData : seq<(char, bool, char)> := []; tmpData);
          print {lift_927, lift_31, lift_242, lift_1054}, "\n";
          print (-258674650, {lift_220}, 748166361), true, "\n";
          print {lift_772, lift_776}, "\n";
          lift_1061 := lift_505;
        }
      }
      {
        print 
          [{1376277517, lift_12, lift_622}, lift_867],
          [
            (
              multiset{lift_146, lift_1043, lift_279, lift_978, 'D'},
              multiset{(var tmpData : set<bool> := {}; tmpData), lift_504}
            ),
            (multiset{lift_820, lift_929, lift_522, lift_920}, lift_1062),
            lift_1065,
            (lift_278, lift_1067)
          ],
          "\n";
        var methoddefvar_1068 := lift_397(lift_780, lift_539, lift_244);
        {
          lift_1069 := lift_911;
        }
        var methoddefvar_1070 := lift_314(lift_823, lift_795);
        {
          var lift_1071 := 958113091;
          lift_1071 := lift_912;
          lift_1072 := lift_344;
          print 
            ((arg_1073 : set<((bool, bool), seq<bool>)>, arg_1074 : string) => [
              {lift_1041, arg_1074},
              lift_72,
              lift_71,
              lift_73
            ]),
            "\n";
          lift_1075 := lift_573;
        }
      }
    }
    lift_1076 := lift_1078(lift_818, lift_1090, lift_9, lift_10)(
      (
        lift_150,
        ((
          arg_1093 : (),
          arg_1094 : multiset<set<()>>,
          arg_1095 : ((), ()),
          arg_1096 : ()
        ) => {lift_505, lift_711, lift_1012, lift_558, lift_805}),
        [
          [true, lift_1032, lift_711, true],
          lift_590,
          lift_606,
          [lift_148, lift_711, lift_813, lift_1032, lift_594],
          lift_590
        ]
      ).0
    );
    var methoddefvar_1097 := lift_681(
      lift_513.2,
      (lift_690 - multiset{lift_691, lift_691, lift_1098, lift_695})
    );
    {
      var methoddefvar_1099, methoddefvar_1100 := lift_42(
        lift_633,
        lift_277,
        lift_193,
        lift_251
      );
      {
        print 
          (
            ((
              arg_1101 : set<set<int>>,
              arg_1102 : (),
              arg_1103 : set<(seq<int>, char, set<int>)>,
              arg_1104 : int
            ) => 1307924851),
            (var tmpData : seq<int> := []; tmpData)
          ),
          "\n";
      }
    }
    var methoddefvar_1105, methoddefvar_1106 := lift_42(
      lift_509.1,
      lift_1107.1,
      (lift_280 >= lift_338),
      lift_1115()
    );
    {
      var lift_1118 := lift_914;
      if (lift_607) {
        print -939382058, -949150421, "\n";
        lift_1118 := lift_613;
      } else {
        var lift_1119 := (lift_453, lift_909);
        lift_1119 := (lift_511, lift_512);
        print (), "\n";
        print "$KeDJ~M>A;qm_AA'yZXpkv'Zb?FuneSdpV", "\n";
      }
      print 
        multiset{{false, lift_817, lift_350}, lift_502, lift_502, lift_567},
        '_',
        "\n";
    }
    if ((lift_33.1 < lift_1120(
      '<',
      [lift_376],
      lift_251,
      lift_461,
      lift_559
    ))) {
      var lift_1206 := {lift_623, lift_479, lift_280};
      var lift_1137 := (var tmpData : seq<multiset<bool>> := []; tmpData);
      var lift_1136 := (
        lift_866,
        multiset{lift_1077, lift_1077, lift_1077, lift_1137, lift_1138},
        lift_944
      );
      var lift_1129 := -347946218;
      lift_1128 := (lift_555 == lift_283 == lift_251);
      {
        var lift_1132 := {
          [lift_574, lift_815, lift_243, lift_944, lift_1011],
          lift_600,
          lift_600
        };
        lift_1129 := lift_464;
        var methoddefvar_1130, methoddefvar_1131 := lift_645(
          lift_539,
          lift_1132,
          lift_953,
          lift_954
        );
        {
          print {863119721, lift_1020, lift_699, lift_379, -956706959}, "\n";
          print 
            {['\'', '\''], lift_928, lift_783, lift_928, "nEy//Ej~_Xa!UFI="},
            "\n";
        }
        var methoddefvar_1133, methoddefvar_1134 := lift_42(
          lift_1043,
          lift_1109,
          lift_560,
          lift_810
        );
        {
          print 'E', 1822895992, "\n";
          lift_1135 := lift_890;
          lift_1136 := lift_1136;
          print true, "\n";
        }
      }
      lift_1139 := lift_1154.2;
      var methoddefvar_1175, methoddefvar_1176 := lift_288(
        lift_475,
        lift_545,
        lift_174,
        lift_1025,
        lift_762
      );
      {
        var lift_1177 := (lift_927, 704012199, lift_340);
        print 
          ("@kw~Zx/|ARRT&N!'", ()),
          (
            (
              {lift_1171},
              "<''qnJzk/*jN\"pzH:IQtf^U$sN^|wPszT*G?\"",
              multiset{(), lift_169}
            ),
            multiset{(lift_692, ()), lift_1098, lift_691, lift_691},
            {(lift_774, lift_9, 'Z'), lift_1177, lift_1178}
          ),
          "\n";
      }
      if ((lift_1109 <= lift_55 == lift_278)) {
        var lift_1207 := lift_1135;
        print "/xXz?XAL>n\"=sDE", "\n";
        {
          var lift_1204 := [
            (var tmpData : multiset<bool> := multiset{}; tmpData),
            lift_750
          ];
          lift_1179 := lift_1191;
          lift_1204 := lift_1137;
        }
        {
          var lift_1208 := lift_31;
          lift_1205 := lift_920;
          print -1384787231, "\n";
          lift_1206 := lift_1207;
          lift_1208 := lift_733;
        }
      } else {
        var lift_1209 := false;
        lift_1209 := false;
        lift_1210 := lift_717;
      }
    } else {
      var lift_1214 := lift_697;
      var lift_1213 := ();
      var lift_1212 := multiset{('+', lift_1213), lift_1098};
      var methoddefvar_1211 := lift_681(lift_927, lift_1212);
      {
        lift_1214 := lift_617;
        print "mHOXfLaf", "\n";
        print "$s'qED!qhv@p", "\n";
        lift_1215 := lift_1142;
        print 
          {-1586619337},
          multiset{
            "ji$pCIOQ:z:Uzj",
            "rh~R_\"khLL<dL",
            "RUJF!:CZjX|ClAHt-qMO!AggY~OLmCkl&RuIBnH",
            lift_75,
            lift_382
          },
          "\n";
      }
      print (lift_815 <==> lift_607), "\n";
    }
  }
}


