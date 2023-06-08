//
//
//
//
//
//

// Seed: 7493767136803197157
// This is a RANDOMLY GENERATED PROGRAM.
// Fuzzer: dafny
// Version: dafny, xsmith 2.0.5 (38f1d83), in Racket 8.9 (vm-type chez-scheme)
// Options: --with-print-constrained true --dafny-syntax true --seed 7493767136803197157
// Seed: 7493767136803197157
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
function lift_224 (arg_226 : (char, bool, bool)) : seq<bool>
{
  
  [false]
}

function lift_203 (arg_205 : (int, int, bool)) : (bool, char, char)
{
  var lift_208 := '+';
  var lift_207 := '=';
  var lift_206 := (false, lift_207, lift_208);
  lift_206
}

function lift_194 (
  arg_196 : bool,
  arg_197 : char,
  arg_198 : char
) : ((char, char, char) -> int)
{
  var lift_202 := 1121378925;
  ((arg_199 : char, arg_200 : char, arg_201 : char) => lift_202)
}

method lift_139 (arg_142 : int, arg_143 : int)
  returns (arg_144 : int)
  requires (true)
  ensures (true)
{
  arg_144 := 1851654073;
  {
    var lift_145 := {arg_144};
    lift_145 := lift_145;
  }
}

method lift_123 (arg_126 : int, arg_127 : int, arg_128 : int)
  returns (arg_129 : int)
  requires (true)
  ensures (true)
{
  arg_129 := -2077675971;
  {
    var lift_138 := ();
    var lift_137 := ();
    var lift_136 := ();
    var lift_135 := {lift_136, lift_137, lift_138, lift_136, lift_138};
    var lift_134 := ();
    var lift_133 := {(), lift_134, lift_134, lift_134, lift_134};
    var lift_132 := arg_128;
    var lift_131 := false;
    var lift_130 := false;
    lift_130 := lift_131;
    print arg_126, "\n";
    print 1475738399, "\n";
    lift_132 := arg_127;
    lift_133 := lift_135;
  }
}

method lift_104 (arg_107 : int, arg_108 : int, arg_109 : int)
  returns (arg_110 : int)
  requires (true)
  ensures (true)
{
  arg_110 := -341531401;
  {
    print arg_109, "\n";
  }
}

method lift_94 ()
  returns (arg_98 : int, arg_99 : int)
  requires (true)
  ensures (true)
{
  arg_98 := -1119315023;
  arg_99 := -773604407;
  {
    var lift_103 := 'Z';
    var lift_102 := 'U';
    var lift_101 := 'n';
    var lift_100 := multiset{lift_101, lift_101, lift_102};
    lift_100 := multiset{lift_103, lift_102, lift_102};
  }
}

method lift_65 ()
  returns (arg_68 : int)
  requires (true)
  ensures (true)
{
  arg_68 := 2076989478;
  {
    var lift_80 := -193062931;
    var lift_79 := true;
    var lift_78 := 'f';
    var lift_77 := true;
    var lift_76 := (lift_77, lift_78);
    var lift_75 := {lift_76, lift_76};
    var lift_74 := lift_75;
    var lift_73 := (var tmpData : seq<int> := []; tmpData);
    var lift_72 := false;
    var lift_71 := (lift_72, lift_73, lift_74);
    var lift_70 := lift_71;
    var lift_69 := lift_70;
    lift_69 := (lift_79, lift_73, lift_74);
    print lift_80, "\n";
    print 1125058274, "\n";
  }
}

function lift_30 (arg_32 : char, arg_33 : bool, arg_34 : bool) : int
{
  var lift_35 := 961189000;
  lift_35
}

method lift_1 (arg_5 : int, arg_6 : int)
  returns (arg_7 : int, arg_8 : int)
  requires (true)
  ensures (true)
{
  arg_7 := 1604063513;
  arg_8 := 1710323894;
  {
    var lift_17 := true;
    var lift_16 := (var tmpData : seq<(bool, char)> := []; tmpData);
    var lift_15 := '>';
    var lift_14 := true;
    var lift_13 := (lift_14, lift_15);
    var lift_12 := ':';
    var lift_11 := false;
    var lift_10 := [(lift_11, lift_12), lift_13, lift_13];
    var lift_9 := -2139447515;
    lift_9 := 1063206250;
    lift_10 := lift_16;
    lift_17 := false;
    print arg_7, "\n";
  }
}

method Main () {
  var lift_237 := ();
  var lift_236 := false;
  var lift_235 := (lift_236, lift_237);
  var lift_234 := false;
  var lift_233 := lift_234;
  var lift_232 := (lift_233, ());
  var lift_231 := multiset{lift_232, lift_235, lift_235, lift_235, lift_232};
  var lift_230 := (var tmpData : multiset<(bool, ())> := multiset{}; tmpData);
  var lift_229 := 'J';
  var lift_228 := (lift_229, true, true);
  var lift_227 := lift_228;
  var lift_223 := 1678310871;
  var lift_222 := lift_223;
  var lift_221 := multiset{lift_222, lift_223, lift_222, -935720699};
  var lift_220 := 2088350695;
  var lift_219 := lift_220;
  var lift_218 := ();
  var lift_217 := ();
  var lift_216 := multiset{lift_217, lift_218};
  var lift_215 := lift_216;
  var lift_214 := lift_215;
  var lift_213 := (lift_214, lift_219, lift_221);
  var lift_193 := 1851230710;
  var lift_192 := ('I', lift_193);
  var lift_191 := 1653261771;
  var lift_190 := 'V';
  var lift_189 := (lift_190, lift_191);
  var lift_188 := multiset{lift_189, (lift_190, -8097025), lift_189, lift_192};
  var lift_187 := (lift_188, lift_194, {lift_191, lift_193});
  var lift_181 := 'x';
  var lift_180 := true;
  var lift_179 := false;
  var lift_178 := (lift_179, lift_180, lift_181);
  var lift_177 := false;
  var lift_176 := true;
  var lift_175 := false;
  var lift_174 := (lift_175, lift_176, lift_177);
  var lift_173 := 't';
  var lift_172 := '@';
  var lift_171 := lift_172;
  var lift_170 := ((lift_171, lift_173), lift_174, lift_178);
  var lift_169 := -1936104831;
  var lift_168 := lift_169;
  var lift_167 := (lift_168, 1298434108);
  var lift_166 := lift_167;
  var lift_165 := ();
  var lift_164 := lift_165;
  var lift_163 := (lift_164, false, lift_166);
  var lift_162 := -157577950;
  var lift_161 := (lift_162, lift_162);
  var lift_160 := lift_161;
  var lift_159 := ();
  var lift_158 := (lift_159, true, lift_160);
  var lift_157 := 918826083;
  var lift_156 := (lift_157, lift_157);
  var lift_155 := false;
  var lift_154 := ();
  var lift_153 := {
    (lift_154, lift_155, lift_156),
    lift_158,
    lift_158,
    lift_163
  };
  var lift_152 := 1320657362;
  var lift_151 := lift_152;
  var lift_150 := (lift_151, lift_152);
  var lift_149 := ();
  var lift_148 := lift_149;
  var lift_147 := lift_148;
  var lift_146 := {(lift_147, false, lift_150)};
  var lift_121 := 'm';
  var lift_120 := lift_121;
  var lift_118 := false;
  var lift_117 := lift_118;
  var lift_116 := true;
  var lift_115 := [lift_116, lift_116, lift_117];
  var lift_114 := lift_115;
  var lift_113 := lift_114;
  var lift_92 := 654130732;
  var lift_91 := 'v';
  var lift_90 := lift_91;
  var lift_89 := (false, lift_90, lift_92);
  var lift_88 := [lift_89];
  var lift_87 := 'J';
  var lift_86 := lift_87;
  var lift_84 := -396757870;
  var lift_83 := false;
  var lift_82 := (lift_83, lift_84, 'm');
  var lift_81 := (-976714601, lift_82);
  var lift_63 := 'K';
  var lift_61 := ();
  var lift_60 := ();
  var lift_59 := multiset{lift_60, lift_61};
  var lift_58 := lift_59;
  var lift_57 := ();
  var lift_56 := ();
  var lift_55 := multiset{lift_56, (), lift_56, lift_56, lift_57};
  var lift_54 := ();
  var lift_53 := lift_54;
  var lift_52 := lift_53;
  var lift_51 := lift_52;
  var lift_50 := 'o';
  var lift_49 := "g_^Euf%TVL!'I^^N@%@V";
  var lift_48 := lift_49;
  var lift_47 := lift_48;
  var lift_46 := 475564848;
  var lift_45 := -1352961084;
  var lift_44 := 845915490;
  var lift_43 := [lift_44, lift_45, lift_45, lift_46, 216994560];
  var lift_42 := -1181041526;
  var lift_41 := -1096475789;
  var lift_40 := lift_41;
  var lift_39 := [lift_40, lift_42, lift_41];
  var lift_38 := 675445156;
  var lift_37 := 789133423;
  var lift_36 := {
    (var tmpData : seq<int> := []; tmpData),
    [lift_37, lift_38, 1275097245, lift_38, lift_38],
    lift_39,
    lift_43
  };
  var lift_29 := (lift_30, lift_36);
  var lift_28 := lift_29;
  var lift_27 := (var tmpData : seq<set<bool>> := []; tmpData);
  var lift_26 := true;
  var lift_25 := lift_26;
  var lift_24 := {lift_25};
  var lift_23 := true;
  var lift_22 := lift_23;
  var lift_21 := lift_22;
  var lift_20 := lift_21;
  var lift_19 := true;
  var lift_18 := [{lift_19, lift_20}, lift_24, lift_24, lift_24, lift_24];
  var methoddefvar_3, methoddefvar_4 := lift_1(
    |(lift_18 + lift_27 + (var tmpData : seq<set<bool>> := []; tmpData))|,
    lift_28.0(
      safeSeqRef(lift_47, lift_38, lift_50),
      (multiset{(), lift_51, lift_51, lift_53} !in [
        multiset{lift_53, lift_54, ()},
        lift_55,
        lift_58
      ]),
      (725058060 == lift_41 <= lift_42)
    )
  );
  {
    var lift_182 := multiset{2058441019};
    var lift_122 := lift_46;
    var lift_119 := -732084883;
    var lift_85 := (lift_46, (lift_20, lift_37, lift_86));
    var lift_64 := multiset{lift_38, lift_40};
    var lift_62 := {
      lift_47,
      [lift_63, lift_50, lift_50],
      [lift_63, lift_63],
      lift_48
    };
    if ((['c'] in lift_62)) {
      lift_64 := lift_64;
    } else {
      var lift_93 := {lift_47};
      var methoddefvar_67 := lift_65();
      {
        lift_81 := lift_85;
        print lift_84, "\n";
      }
      print lift_41, "\n";
      {
        print lift_45, "\n";
        lift_88 := lift_88;
      }
      lift_93 := lift_93;
    }
    var methoddefvar_96, methoddefvar_97 := lift_94();
    {
      print -579759426, "\n";
      print lift_42, "\n";
      print lift_40, "\n";
    }
    var methoddefvar_106 := lift_104(lift_46, lift_45, lift_45);
    {
      var lift_112 := (lift_113, lift_41);
      var lift_111 := lift_112;
      print lift_37, "\n";
      lift_111 := lift_111;
      lift_119 := lift_119;
      lift_120 := lift_121;
      lift_122 := lift_40;
    }
    {
      {
        print lift_45, "\n";
      }
      var methoddefvar_125 := lift_123(-425005805, methoddefvar_4, lift_84);
      {
        print lift_45, "\n";
        print lift_42, "\n";
      }
      var methoddefvar_141 := lift_139(lift_122, lift_119);
      {
        print lift_92, "\n";
        lift_146 := lift_153;
        print lift_119, "\n";
        lift_170 := lift_170;
      }
      print lift_45, "\n";
      lift_182 := lift_182;
    }
    print 
      (
        (
          ((
            arg_183 : (set<()>, multiset<()>),
            arg_184 : (),
            arg_185 : multiset<seq<bool>>,
            arg_186 : set<((char, int, char), multiset<int>, int)>
          ) => 'Q'),
          ">J"
        ),
        methoddefvar_3,
        "TmvNIWq>|~NcMEtxkFk:OqJSQ>eU"
      ).1,
      "\n";
  }
  print 
    lift_187.1(
      (lift_23 && lift_118),
      safeSeqRef(lift_48, lift_41, lift_91),
      safeSeqRef(lift_48, lift_92, lift_121)
    )(
      lift_203((lift_92, lift_46, false)).1,
      lift_91,
      (
        ((
          arg_209 : multiset<()>,
          arg_210 : seq<bool>,
          arg_211 : multiset<(bool, ())>,
          arg_212 : int
        ) => lift_90),
        ("Lc\"yV<;", -883612731, 1942404868),
        (
          false,
          (
            (
              {
                (var tmpData : multiset<()> := multiset{}; tmpData),
                lift_55,
                (var tmpData : multiset<()> := multiset{}; tmpData),
                lift_55
              },
              ';',
              true
            ),
            {'|', 'R'}
          )
        )
      ).0(
        lift_213.0,
        lift_224(lift_227),
        (multiset{(lift_118, lift_159)} - lift_230 - lift_231),
        |lift_27|
      )
    ),
    "\n";
}


