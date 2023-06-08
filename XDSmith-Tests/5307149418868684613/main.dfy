// RUN: %dafny /noVerify /compile:4 /compileTarget:cs "%s" > "%t"
// RUN: %dafny /noVerify /compile:4 /compileTarget:java "%s" >> "%t"
// RUN: %dafny /noVerify /compile:4 /compileTarget:py "%s" >> "%t"
// RUN: %dafny /noVerify /compile:4 /compileTarget:js "%s" >> "%t"
// RUN: %dafny /noVerify /compile:4 /compileTarget:go "%s" >> "%t"
// RUN: %diff "%s.expect" "%t"

// Seed: 5307149418868684613
// This is a RANDOMLY GENERATED PROGRAM.
// Fuzzer: dafny
// Version: dafny, xsmith 2.0.5 (38f1d83), in Racket 8.9 (vm-type chez-scheme)
// Options: --with-print-constrained true --dafny-syntax true --seed 5307149418868684613
// Seed: 5307149418868684613
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
function lift_189 (arg_191 : char) : set<int>
{
  var lift_194 := -766096106;
  var lift_193 := {lift_194, lift_194, lift_194, lift_194};
  var lift_192 := lift_193;
  lift_192
}

function lift_117 (
  
) : (((char, int, char, int, int) -> (string, set<()>, char)), bool, char)
{
  var lift_131 := 'R';
  var lift_130 := true;
  var lift_129 := 's';
  var lift_128 := ();
  var lift_127 := lift_128;
  var lift_126 := {lift_127, lift_127};
  var lift_125 := "xQ&N@kqoPfj^/exluNTM";
  var lift_124 := (lift_125, lift_126, lift_129);
  (
    ((
      arg_119 : char,
      arg_120 : int,
      arg_121 : char,
      arg_122 : int,
      arg_123 : int
    ) => lift_124),
    lift_130,
    lift_131
  )
}

function lift_79 (
  arg_81 : (),
  arg_82 : (int, char, bool),
  arg_83 : multiset<set<(bool, int)>>,
  arg_84 : seq<char>,
  arg_85 : multiset<bool>
) : (int, (string, set<()>, char))
{
  var lift_94 := 'S';
  var lift_93 := lift_94;
  var lift_92 := ();
  var lift_91 := ();
  var lift_90 := {lift_91, lift_92};
  var lift_89 := "$nDGvn@QRglE*HqAqfNvRYwAAf;&";
  var lift_88 := (lift_89, lift_90, lift_93);
  var lift_87 := 198146328;
  var lift_86 := (lift_87, lift_88);
  lift_86
}

function lift_55 (
  arg_57 : bool,
  arg_58 : bool,
  arg_59 : bool,
  arg_60 : bool
) : int
{
  var lift_61 := 598092861;
  lift_61
}

function lift_50 (
  arg_52 : (),
  arg_53 : bool,
  arg_54 : char
) : ((bool, bool, bool, bool) -> int)
{
  
  lift_55
}

function lift_40 (arg_42 : char) : int
{
  var lift_43 := 1837015245;
  lift_43
}

function lift_36 (arg_38 : char) : int
{
  var lift_39 := 1364458569;
  lift_39
}

method lift_1 (arg_4 : int, arg_5 : int, arg_6 : int)
  returns (arg_7 : int)
  requires (true)
  ensures (true)
{
  arg_7 := -640986644;
  {
    var lift_34 := 'p';
    var lift_33 := lift_34;
    var lift_32 := multiset{lift_33};
    var lift_31 := [-36167140, arg_4];
    var lift_30 := '%';
    var lift_29 := (lift_30, lift_31, lift_32);
    var lift_28 := lift_29;
    var lift_27 := lift_28;
    var lift_26 := 'T';
    var lift_25 := multiset{lift_26};
    var lift_24 := (var tmpData : seq<int> := []; tmpData);
    var lift_23 := lift_24;
    var lift_22 := 'l';
    var lift_21 := (lift_22, lift_23, lift_25);
    var lift_20 := 'C';
    var lift_19 := 'J';
    var lift_18 := multiset{lift_19, 'V', lift_20};
    var lift_17 := lift_18;
    var lift_16 := (var tmpData : seq<int> := []; tmpData);
    var lift_15 := lift_16;
    var lift_14 := lift_15;
    var lift_13 := 's';
    var lift_12 := lift_13;
    var lift_11 := (lift_12, lift_14, lift_17);
    var lift_10 := multiset{lift_11, lift_21, lift_21, lift_21, lift_27};
    var lift_9 := lift_10;
    var lift_8 := '*';
    lift_8 := lift_8;
    print arg_4, "\n";
    lift_9 := lift_10;
    print arg_5, "\n";
  }
}

method Main () {
  var lift_199 := 'b';
  var lift_198 := lift_199;
  var lift_197 := 'O';
  var lift_196 := [lift_197, lift_198];
  var lift_195 := 'A';
  var lift_188 := |lift_189(lift_195)|;
  var lift_187 := ();
  var lift_186 := ();
  var lift_185 := multiset{lift_186, lift_187, lift_187};
  var lift_184 := lift_185;
  var lift_183 := false;
  var lift_182 := -972904637;
  var lift_181 := (lift_182, lift_183);
  var lift_180 := true;
  var lift_179 := lift_180;
  var lift_178 := 2056916438;
  var lift_177 := lift_178;
  var lift_176 := (lift_177, lift_179);
  var lift_175 := 1893630426;
  var lift_174 := multiset{[(lift_175, false), lift_176, lift_181, lift_176]};
  var lift_173 := 1348487560;
  var lift_172 := 'e';
  var lift_171 := (lift_172, lift_173);
  var lift_170 := 'x';
  var lift_169 := false;
  var lift_168 := (lift_169, lift_170, 359894423);
  var lift_167 := (lift_168, lift_171, lift_174);
  var lift_166 := false;
  var lift_165 := 'L';
  var lift_164 := (lift_165, lift_166);
  var lift_163 := {lift_164, lift_164};
  var lift_162 := lift_163;
  var lift_161 := {lift_162, (var tmpData : set<(char, bool)> := {}; tmpData)};
  var lift_160 := lift_161;
  var lift_159 := (var tmpData : set<(char, bool)> := {}; tmpData);
  var lift_158 := true;
  var lift_157 := '\'';
  var lift_156 := lift_157;
  var lift_155 := (lift_156, lift_158);
  var lift_154 := lift_155;
  var lift_153 := lift_154;
  var lift_152 := lift_153;
  var lift_151 := 'e';
  var lift_150 := (lift_151, false);
  var lift_149 := lift_150;
  var lift_148 := {lift_149, lift_150, lift_152};
  var lift_147 := true;
  var lift_146 := ':';
  var lift_145 := lift_146;
  var lift_144 := (lift_145, lift_147);
  var lift_143 := true;
  var lift_142 := ':';
  var lift_141 := (lift_142, lift_143);
  var lift_140 := {
    {lift_141, lift_144, lift_144},
    lift_148,
    lift_148,
    lift_159,
    {lift_153, lift_154, lift_155}
  };
  var lift_139 := [lift_140, {lift_159, lift_148}, lift_140, lift_160];
  var lift_138 := 't';
  var lift_137 := 'o';
  var lift_136 := lift_137;
  var lift_135 := 607198216;
  var lift_134 := ('Y', lift_135);
  var lift_133 := -844974926;
  var lift_132 := (
    (lift_133, lift_133),
    lift_134,
    (lift_136, 655206661, lift_138)
  );
  var lift_116 := false;
  var lift_115 := lift_116;
  var lift_114 := false;
  var lift_113 := multiset{lift_114, lift_115};
  var lift_112 := 's';
  var lift_111 := lift_112;
  var lift_110 := 'l';
  var lift_109 := [lift_110, 'P', lift_110, lift_111, lift_110];
  var lift_108 := 1461336595;
  var lift_107 := lift_108;
  var lift_106 := false;
  var lift_105 := (lift_106, lift_107);
  var lift_104 := lift_105;
  var lift_103 := (var tmpData : set<(bool, int)> := {}; tmpData);
  var lift_102 := lift_103;
  var lift_101 := multiset{
    lift_102,
    {lift_104, lift_104, lift_105, lift_104, lift_104},
    lift_102,
    lift_102
  };
  var lift_100 := true;
  var lift_99 := lift_100;
  var lift_98 := '+';
  var lift_97 := (957224358, lift_98, lift_99);
  var lift_96 := lift_97;
  var lift_95 := ();
  var lift_78 := lift_79(lift_95, lift_96, lift_101, lift_109, lift_113).1;
  var lift_77 := ();
  var lift_76 := multiset{lift_77, lift_77, lift_77, lift_77};
  var lift_75 := -1087843462;
  var lift_74 := 'D';
  var lift_73 := {lift_74, lift_74, lift_74};
  var lift_72 := lift_73;
  var lift_71 := 684895656;
  var lift_70 := false;
  var lift_69 := lift_70;
  var lift_68 := lift_69;
  var lift_67 := lift_68;
  var lift_66 := lift_67;
  var lift_65 := [false, lift_66];
  var lift_64 := true;
  var lift_63 := lift_64;
  var lift_62 := ();
  var lift_49 := 522382157;
  var lift_48 := true;
  var lift_47 := 'B';
  var lift_46 := (lift_47, lift_48, -720671616);
  var lift_45 := [lift_46];
  var lift_44 := 'B';
  var lift_35 := [lift_36, lift_40, lift_40];
  var methoddefvar_3 := lift_1(
    safeSeqRef(lift_35, -189216657, lift_36)(
      (true, lift_44, ((-1067226890, (), 906089750), 1698626942)).1
    ),
    safeSeqRef(lift_45, lift_49, lift_46).2,
    lift_50(lift_62, lift_63, lift_47)(
      safeSeqRef(lift_65, lift_71, false),
      (lift_71 > lift_71),
      ('R' !in lift_72),
      (lift_75 == lift_71 < lift_71)
    )
  );
  {
    print |lift_76|, "\n";
  }
  lift_78 := lift_117().0(
    lift_132.2.2,
    |safeSeqRef(lift_139, -1804848429, lift_161)|,
    lift_136,
    lift_167.0.2,
    |(lift_76 + lift_184)|
  );
  lift_188 := |[
    safeSeqSet("mtw/DeaQOpN'xAzzq^&KoPa|qxfSnH", lift_178, '>'),
    "HyL/sd^y-",
    safeSeqSubseq(lift_196, lift_108, -206523288),
    lift_78.0,
    lift_109
  ]|;
}


