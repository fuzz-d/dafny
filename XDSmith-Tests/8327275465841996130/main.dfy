// RUN: %dafny /noVerify /compile:4 /compileTarget:cs "%s" > "%t"
// RUN: %dafny /noVerify /compile:4 /compileTarget:java "%s" >> "%t"
// RUN: %dafny /noVerify /compile:4 /compileTarget:py "%s" >> "%t"
// RUN: %dafny /noVerify /compile:4 /compileTarget:js "%s" >> "%t"
// RUN: %dafny /noVerify /compile:4 /compileTarget:go "%s" >> "%t"
// RUN: %diff "%s.expect" "%t"

// Seed: 8327275465841996130
// This is a RANDOMLY GENERATED PROGRAM.
// Fuzzer: dafny
// Version: dafny, xsmith 2.0.5 (38f1d83), in Racket 8.9 (vm-type chez-scheme)
// Options: --with-print-constrained true --dafny-syntax true --seed 8327275465841996130
// Seed: 8327275465841996130
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
method lift_216 (arg_220 : int, arg_221 : int)
  returns (arg_222 : int, arg_223 : int)
  requires (true)
  ensures (true)
{
  arg_222 := -2140182895;
  arg_223 := 1072368411;
  {
    var lift_272 := false;
    var lift_271 := [lift_272];
    var lift_270 := -41104975;
    var lift_269 := true;
    var lift_268 := lift_269;
    var lift_267 := lift_268;
    var lift_266 := [lift_267, lift_268];
    var lift_265 := true;
    var lift_264 := 'r';
    var lift_263 := (lift_264, arg_223, lift_265);
    var lift_262 := lift_263;
    var lift_261 := lift_262;
    var lift_260 := (lift_261, lift_266);
    var lift_259 := multiset{lift_260, lift_260, lift_260, lift_260};
    var lift_258 := (var tmpData : set<seq<int>> := {}; tmpData);
    var lift_257 := lift_258;
    var lift_256 := 'F';
    var lift_255 := true;
    var lift_254 := (lift_255, lift_256, lift_256);
    var lift_253 := lift_254;
    var lift_252 := ();
    var lift_251 := (lift_252, lift_253);
    var lift_250 := lift_251;
    var lift_249 := '&';
    var lift_248 := true;
    var lift_247 := (lift_248, lift_249, lift_249);
    var lift_246 := lift_247;
    var lift_245 := ((), lift_246);
    var lift_244 := multiset{lift_245, lift_250, lift_250};
    var lift_243 := (lift_244, lift_257, (false, arg_220, lift_248));
    var lift_242 := true;
    var lift_241 := (lift_242, arg_223, lift_242);
    var lift_240 := lift_241;
    var lift_239 := 130129187;
    var lift_238 := [arg_223, lift_239, arg_221, 798861662];
    var lift_237 := {lift_238};
    var lift_236 := 'F';
    var lift_235 := false;
    var lift_234 := (lift_235, 'o', lift_236);
    var lift_233 := lift_234;
    var lift_232 := lift_233;
    var lift_231 := lift_232;
    var lift_230 := ();
    var lift_229 := lift_230;
    var lift_228 := lift_229;
    var lift_227 := (lift_228, lift_231);
    var lift_226 := lift_227;
    var lift_225 := multiset{lift_226};
    var lift_224 := (lift_225, lift_237, lift_240);
    print arg_220, "\n";
    print arg_223, "\n";
    lift_224 := lift_243;
    lift_259 := multiset{
      lift_260,
      lift_260,
      ((lift_249, lift_270, lift_235), lift_271)
    };
  }
}

method lift_191 ()
  returns (arg_194 : int)
  requires (true)
  ensures (true)
{
  arg_194 := -201981384;
  {
    var lift_208 := "ZicI*VURj?NLyNe%DMk-J!&g=";
    var lift_207 := "r\"eLS/w^dMJKCp~TPiVcmH_";
    var lift_206 := [lift_207, "mnKECVmz|HHPEXZnsTL", lift_208];
    var lift_205 := '=';
    var lift_204 := 'T';
    var lift_203 := "*!_j$kXK<r";
    var lift_202 := [
      lift_203,
      [lift_204, lift_204, 'v', lift_204, lift_205],
      lift_203
    ];
    var lift_201 := 498067778;
    var lift_200 := true;
    var lift_199 := lift_200;
    var lift_198 := lift_199;
    var lift_197 := lift_198;
    var lift_196 := lift_197;
    var lift_195 := 'j';
    lift_195 := 'L';
    lift_196 := lift_198;
    print lift_201, "\n";
    lift_202 := lift_206;
  }
}

method lift_183 (arg_187 : int)
  returns (arg_188 : int, arg_189 : int)
  requires (true)
  ensures (true)
{
  arg_188 := 937588880;
  arg_189 := 931502960;
  {
    print arg_189, "\n";
  }
}

method lift_164 ()
  returns (arg_168 : int, arg_169 : int)
  requires (true)
  ensures (true)
{
  arg_168 := -11901531;
  arg_169 := -1141362178;
  {
    var lift_176 := ();
    var lift_175 := ();
    var lift_174 := multiset{(), ()};
    var lift_173 := lift_174;
    var lift_172 := ();
    var lift_171 := ();
    var lift_170 := multiset{lift_171, lift_171, lift_172, lift_172, ()};
    lift_170 := lift_173;
    lift_175 := lift_176;
  }
}

method lift_143 ()
  returns (arg_147 : int, arg_148 : int)
  requires (true)
  ensures (true)
{
  arg_147 := -1496275159;
  arg_148 := 678404958;
  {
    var lift_154 := (var tmpData : multiset<(set<int>, int, multiset<char>)> := multiset{}; tmpData);
    var lift_153 := 'O';
    var lift_152 := lift_153;
    var lift_151 := (lift_152, lift_154);
    var lift_150 := 'y';
    var lift_149 := ();
    lift_149 := ();
    lift_150 := lift_150;
    lift_151 := lift_151;
  }
}

method lift_133 (arg_136 : int)
  returns (arg_137 : int)
  requires (true)
  ensures (true)
{
  arg_137 := -1470635775;
  {
    var lift_138 := 394646442;
    print lift_138, "\n";
    print arg_136, "\n";
  }
}

function lift_109 (
  arg_111 : (int, int, char),
  arg_112 : set<bool>,
  arg_113 : (char, int)
) : int
{
  var lift_115 := -2066559706;
  var lift_114 := lift_115;
  lift_114
}

function lift_99 (
  arg_101 : char,
  arg_102 : int,
  arg_103 : int,
  arg_104 : bool
) : bool
{
  var lift_105 := true;
  lift_105
}

function lift_93 (
  arg_95 : char,
  arg_96 : int,
  arg_97 : int,
  arg_98 : bool
) : bool
{
  
  arg_98
}

function lift_70 (arg_72 : ()) : seq<int>
{
  var lift_77 := -1578874490;
  var lift_76 := lift_77;
  var lift_75 := lift_76;
  var lift_74 := 963386353;
  var lift_73 := [lift_74, lift_75, lift_76];
  lift_73
}

function lift_50 (
  arg_52 : int,
  arg_53 : char,
  arg_54 : bool,
  arg_55 : char,
  arg_56 : bool
) : (multiset<bool>, char)
{
  var lift_62 := '+';
  var lift_61 := false;
  var lift_60 := true;
  var lift_59 := lift_60;
  var lift_58 := multiset{lift_59, lift_61};
  var lift_57 := (lift_58, lift_62);
  lift_57
}

method Main () {
  var lift_278 := 1738261995;
  var lift_277 := lift_278;
  var lift_276 := multiset{lift_277};
  var lift_275 := lift_276;
  var lift_274 := lift_275;
  var lift_213 := -1163370208;
  var lift_212 := '^';
  var lift_211 := multiset{(lift_212, lift_213, lift_213)};
  var lift_182 := 1614451158;
  var lift_181 := 72911996;
  var lift_180 := 208366362;
  var lift_179 := {lift_180, lift_180, lift_181, lift_181, lift_182};
  var lift_178 := lift_179;
  var lift_163 := 'f';
  var lift_162 := lift_163;
  var lift_161 := lift_162;
  var lift_160 := (lift_161, -1873196119);
  var lift_159 := true;
  var lift_158 := -20298666;
  var lift_157 := 'X';
  var lift_156 := (lift_157, lift_158, lift_159);
  var lift_155 := (lift_156, lift_160);
  var lift_139 := ();
  var lift_132 := -1400551896;
  var lift_131 := '\'';
  var lift_130 := (lift_131, lift_132);
  var lift_129 := [lift_130];
  var lift_128 := true;
  var lift_127 := {false, false, lift_128, lift_128};
  var lift_126 := false;
  var lift_125 := false;
  var lift_124 := {lift_125, lift_126};
  var lift_123 := 285926244;
  var lift_122 := 'a';
  var lift_121 := (lift_122, lift_123);
  var lift_120 := 'j';
  var lift_119 := -384673655;
  var lift_118 := 1751416023;
  var lift_117 := lift_118;
  var lift_116 := (lift_117, lift_119, lift_120);
  var lift_108 := -2004973828;
  var lift_107 := [lift_108];
  var lift_106 := lift_107;
  var lift_92 := [lift_93, lift_93, lift_99];
  var lift_91 := false;
  var lift_90 := false;
  var lift_89 := 's';
  var lift_88 := lift_89;
  var lift_87 := lift_88;
  var lift_86 := lift_87;
  var lift_85 := (lift_86, lift_90, lift_91);
  var lift_84 := -836657947;
  var lift_83 := (lift_84, false, lift_85);
  var lift_82 := "gIq;bMu*|FDAwrf>!\"jEZQ/@j";
  var lift_81 := 'q';
  var lift_80 := lift_81;
  var lift_79 := {'x', 'm', lift_80};
  var lift_78 := ();
  var lift_69 := true;
  var lift_68 := lift_69;
  var lift_67 := lift_68;
  var lift_66 := true;
  var lift_65 := lift_66;
  var lift_64 := (lift_65, lift_67);
  var lift_63 := (var tmpData : multiset<((int, bool, char), set<int>)> := multiset{}; tmpData);
  var lift_49 := (lift_50, lift_63, lift_64);
  var lift_48 := lift_49;
  var lift_47 := -346187263;
  var lift_46 := lift_47;
  var lift_45 := 't';
  var lift_44 := true;
  var lift_43 := lift_44;
  var lift_42 := lift_43;
  var lift_41 := multiset{lift_42, lift_42, lift_42, lift_42};
  var lift_40 := lift_41;
  var lift_39 := lift_40;
  var lift_38 := lift_39;
  var lift_37 := (lift_38, lift_45);
  var lift_36 := (lift_37, {lift_46});
  var lift_35 := lift_36.0;
  var lift_34 := '"';
  var lift_33 := 1565273748;
  var lift_32 := lift_33;
  var lift_31 := 'E';
  var lift_30 := (lift_31, lift_32, lift_31);
  var lift_29 := lift_30;
  var lift_28 := lift_29;
  var lift_27 := true;
  var lift_26 := lift_27;
  var lift_25 := lift_26;
  var lift_24 := lift_25;
  var lift_23 := lift_24;
  var lift_22 := [lift_23, lift_27, lift_26, lift_25, lift_24];
  var lift_21 := (lift_22, lift_28, ['t', lift_34]);
  var lift_20 := 244306473;
  var lift_19 := 'G';
  var lift_18 := lift_19;
  var lift_17 := true;
  var lift_16 := lift_17;
  var lift_15 := false;
  var lift_14 := lift_15;
  var lift_13 := lift_14;
  var lift_12 := [lift_13, lift_16, lift_14, lift_15];
  var lift_11 := multiset{lift_12, lift_12};
  var lift_10 := lift_11;
  var lift_9 := (lift_10, lift_18, lift_20);
  var lift_8 := 1118697119;
  var lift_7 := lift_8;
  var lift_6 := false;
  var lift_5 := -1694722593;
  var lift_4 := (lift_5, lift_6, lift_7);
  var lift_3 := (lift_4, 2124758315, lift_9);
  var lift_2 := lift_3;
  var lift_1 := lift_2;
  print (lift_1.2.0[lift_21.0] as int), "\n";
  lift_35 := (-1765942556, lift_48).1.0(
    safeSeqRef(lift_70(lift_78), lift_4.2, |lift_79|),
    lift_29.0,
    (lift_30.0 !in lift_82),
    lift_83.2.0,
    safeSeqRef(lift_92, 1561321838, lift_93)(
      (lift_45, (), ()).0,
      lift_46,
      safeSeqRef(lift_106, lift_32, lift_32),
      (lift_38 <= multiset{
        lift_91,
        lift_42,
        lift_65,
        lift_6,
        lift_24
      } == lift_38)
    )
  );
  print 
    safeSeqRef(
      safeSeqTake(
        safeSeqSet(
          [lift_20, lift_33, lift_8, 1125308505, lift_20],
          lift_8,
          1142191130
        ),
        lift_109(lift_116, (var tmpData : set<bool> := {}; tmpData), lift_121)
      ),
      ((lift_10[lift_22 := lengthNormalize(lift_46)])[safeSeqSubseq(
        [lift_26],
        lift_20,
        lift_118
      )] as int),
      lift_109(
        lift_116,
        (lift_124 - lift_127),
        safeSeqRef(lift_129, lift_8, lift_130)
      )
    ),
    "\n";
  var methoddefvar_135 := lift_133(|lift_70(lift_139)|);
  {
    var lift_273 := 'K';
    var lift_215 := (lift_79, lift_181);
    var lift_214 := (var tmpData : multiset<multiset<(char, int, int)>> := multiset{}; tmpData);
    var lift_210 := lift_211;
    var lift_209 := multiset{lift_210, lift_210};
    var lift_142 := lift_78;
    var lift_141 := 'D';
    if ((true || true)) {
      var lift_140 := lift_139;
      lift_140 := lift_78;
      if (lift_17) {
        lift_141 := lift_120;
        print lift_20, "\n";
      } else {
        lift_142 := ();
        print lift_33, "\n";
      }
      var methoddefvar_145, methoddefvar_146 := lift_143();
      {
        lift_155 := lift_155;
        print lift_108, "\n";
        print lift_32, "\n";
      }
      var methoddefvar_166, methoddefvar_167 := lift_164();
      {
        var lift_177 := ();
        print methoddefvar_166, "\n";
        lift_177 := lift_142;
        print methoddefvar_167, "\n";
        lift_178 := lift_179;
      }
    } else {
      var methoddefvar_185, methoddefvar_186 := lift_183(lift_158);
      {
        var lift_190 := lift_13;
        print lift_158, "\n";
        print lift_47, "\n";
        print -261959605, "\n";
        lift_190 := lift_6;
      }
    }
    var methoddefvar_193 := lift_191();
    {
      lift_209 := lift_214;
      lift_215 := lift_215;
      print lift_32, "\n";
    }
    var methoddefvar_218, methoddefvar_219 := lift_216(lift_123, lift_182);
    {
      lift_273 := 'x';
      lift_274 := lift_275;
    }
    print |lift_210|, "\n";
  }
}


