//
//
//
//
//
//

// Seed: 4112709614349369329
// This is a RANDOMLY GENERATED PROGRAM.
// Fuzzer: dafny
// Version: dafny, xsmith 2.0.5 (38f1d83), in Racket 8.9 (vm-type chez-scheme)
// Options: --with-print-constrained true --dafny-syntax true --seed 4112709614349369329
// Seed: 4112709614349369329
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
method lift_294 (arg_298 : int, arg_299 : int)
  returns (arg_300 : int, arg_301 : int)
  requires (true)
  ensures (true)
{
  arg_300 := -647784489;
  arg_301 := -1514425956;
  {
    var lift_309 := (var tmpData : seq<int> := []; tmpData);
    var lift_308 := true;
    var lift_307 := (arg_298, -1013552322, lift_308);
    var lift_306 := (lift_307, lift_309);
    var lift_305 := lift_306;
    var lift_304 := 141826322;
    var lift_303 := [arg_298, arg_298, arg_298, lift_304];
    var lift_302 := ((arg_298, arg_300, false), lift_303);
    print arg_300, "\n";
    print arg_299, "\n";
    lift_302 := lift_305;
    print 411428526, "\n";
    print -2075434809, "\n";
  }
}

function lift_279 (arg_281 : int, arg_282 : seq<int>, arg_283 : char) : bool
{
  var lift_284 := true;
  lift_284
}

method lift_259 ()
  returns (arg_263 : int, arg_264 : int)
  requires (true)
  ensures (true)
{
  arg_263 := 960522024;
  arg_264 := 1910480997;
  {
    var lift_265 := 1170405765;
    print lift_265, "\n";
  }
}

method lift_169 (arg_173 : int, arg_174 : int)
  returns (arg_175 : int, arg_176 : int)
  requires (true)
  ensures (true)
{
  arg_175 := 88959641;
  arg_176 := -1796476602;
  {
    var lift_225 := true;
    var lift_224 := 'O';
    var lift_223 := (arg_176, lift_224, 1506869129);
    var lift_222 := false;
    var lift_221 := [lift_222];
    var lift_220 := (lift_221, lift_223, lift_225);
    var lift_219 := (arg_175, 'P', arg_175);
    var lift_218 := lift_219;
    var lift_217 := false;
    var lift_216 := lift_217;
    var lift_215 := ([lift_216, lift_216], lift_218, lift_217);
    var lift_214 := (var tmpData : seq<bool> := []; tmpData);
    var lift_213 := 'T';
    var lift_212 := [lift_213, lift_213, lift_213, lift_213, lift_213];
    var lift_211 := false;
    var lift_210 := multiset{lift_211, false, lift_211};
    var lift_209 := (lift_210, lift_212, lift_214);
    var lift_208 := (var tmpData : seq<bool> := []; tmpData);
    var lift_207 := (var tmpData : string := []; tmpData);
    var lift_206 := true;
    var lift_205 := multiset{lift_206, lift_206};
    var lift_204 := lift_205;
    var lift_203 := (lift_204, lift_207, lift_208);
    var lift_202 := ();
    var lift_201 := multiset{(), lift_202};
    var lift_200 := lift_201;
    var lift_199 := lift_200;
    var lift_198 := {lift_199, lift_201, lift_199};
    var lift_197 := lift_198;
    var lift_196 := ();
    var lift_195 := ();
    var lift_194 := ();
    var lift_193 := multiset{lift_194, lift_195, lift_196, (), lift_194};
    var lift_192 := lift_193;
    var lift_191 := {arg_173, arg_173};
    var lift_190 := (lift_191, lift_192, lift_197);
    var lift_189 := ();
    var lift_188 := ();
    var lift_187 := lift_188;
    var lift_186 := multiset{lift_187, lift_189, lift_189, lift_189, lift_189};
    var lift_185 := {lift_186};
    var lift_184 := lift_185;
    var lift_183 := ();
    var lift_182 := lift_183;
    var lift_181 := multiset{lift_182};
    var lift_180 := {arg_175, arg_174, arg_175, 465060694};
    var lift_179 := lift_180;
    var lift_178 := (lift_179, lift_181, lift_184);
    var lift_177 := lift_178;
    lift_177 := lift_190;
    lift_203 := lift_209;
    print arg_174, "\n";
    print arg_176, "\n";
    lift_215 := lift_220;
  }
}

method lift_132 ()
  returns (arg_135 : int)
  requires (true)
  ensures (true)
{
  arg_135 := 1672446954;
  {
    var lift_138 := 936385559;
    var lift_137 := lift_138;
    var lift_136 := -1992292669;
    print -208466811, "\n";
    print lift_136, "\n";
    print lift_137, "\n";
    print lift_137, "\n";
  }
}

function lift_111 (arg_113 : char, arg_114 : char) : int
{
  var lift_116 := 589378519;
  var lift_115 := lift_116;
  lift_115
}

function lift_106 (arg_108 : char, arg_109 : char) : int
{
  var lift_110 := -139722536;
  lift_110
}

function lift_100 (arg_102 : char, arg_103 : char) : int
{
  var lift_105 := -500637731;
  var lift_104 := lift_105;
  lift_104
}

function lift_95 (arg_97 : char, arg_98 : char) : int
{
  var lift_99 := -964202420;
  lift_99
}

method lift_80 (arg_84 : int, arg_85 : int, arg_86 : int)
  returns (arg_87 : int, arg_88 : int)
  requires (true)
  ensures (true)
{
  arg_87 := -959351181;
  arg_88 := 206430568;
  {
    print 789329981, "\n";
  }
}

method lift_63 (arg_66 : int, arg_67 : int)
  returns (arg_68 : int)
  requires (true)
  ensures (true)
{
  arg_68 := -415359396;
  {
    var lift_76 := ();
    var lift_75 := lift_76;
    var lift_74 := lift_75;
    var lift_73 := lift_74;
    var lift_72 := true;
    var lift_71 := lift_72;
    var lift_70 := '$';
    var lift_69 := '~';
    lift_69 := lift_70;
    lift_71 := lift_72;
    lift_73 := ();
  }
}

method lift_50 (arg_53 : int)
  returns (arg_54 : int)
  requires (true)
  ensures (true)
{
  arg_54 := -239928917;
  {
    var lift_61 := ();
    var lift_60 := (870667553, true, ':');
    var lift_59 := ([arg_53, arg_53], (), lift_60);
    var lift_58 := {lift_59, lift_59};
    var lift_57 := (var tmpData : multiset<bool> := multiset{}; tmpData);
    var lift_56 := lift_57;
    var lift_55 := ();
    lift_55 := ();
    lift_56 := lift_57;
    lift_58 := lift_58;
    lift_61 := lift_55;
  }
}

function lift_46 (arg_48 : char) : char
{
  
  arg_48
}

function lift_28 (
  arg_30 : multiset<char>,
  arg_31 : int,
  arg_32 : bool,
  arg_33 : multiset<int>
) : ()
{
  var lift_34 := ();
  lift_34
}

function lift_12 (
  arg_14 : (int, char, char),
  arg_15 : set<bool>,
  arg_16 : multiset<bool>
) : set<char>
{
  var lift_19 := 'j';
  var lift_18 := 'O';
  var lift_17 := {lift_18, lift_18, 'V', lift_19, lift_19};
  lift_17
}

function lift_1 (arg_3 : seq<bool>, arg_4 : set<char>, arg_5 : ()) : int
{
  
  -703372137
}

method Main () {
  var lift_340 := (var tmpData : multiset<bool> := multiset{}; tmpData);
  var lift_339 := ();
  var lift_338 := (var tmpData : multiset<bool> := multiset{}; tmpData);
  var lift_337 := ();
  var lift_336 := 153958228;
  var lift_335 := -287128113;
  var lift_334 := '&';
  var lift_333 := lift_334;
  var lift_332 := lift_333;
  var lift_331 := (lift_332, lift_335, lift_336);
  var lift_330 := lift_331;
  var lift_329 := (lift_330, lift_337, lift_338);
  var lift_328 := true;
  var lift_327 := multiset{false, lift_328, lift_328, lift_328};
  var lift_326 := ();
  var lift_325 := 85855656;
  var lift_324 := -2026035121;
  var lift_323 := 'g';
  var lift_322 := (lift_323, lift_324, lift_325);
  var lift_321 := {
    (lift_322, lift_326, lift_327),
    lift_329,
    (lift_322, lift_339, lift_340)
  };
  var lift_318 := 1621679966;
  var lift_317 := lift_318;
  var lift_316 := lift_317;
  var lift_288 := 'b';
  var lift_287 := lift_288;
  var lift_286 := 2062575413;
  var lift_285 := [1322609122, lift_286, lift_286];
  var lift_275 := 'S';
  var lift_274 := ('<', lift_275);
  var lift_270 := true;
  var lift_269 := -1196438966;
  var lift_268 := (lift_269, lift_270);
  var lift_258 := 'A';
  var lift_257 := lift_258;
  var lift_256 := lift_257;
  var lift_255 := multiset{'d', lift_256, lift_258, lift_257};
  var lift_254 := lift_255;
  var lift_253 := lift_254;
  var lift_252 := lift_253;
  var lift_251 := {
    lift_252,
    (var tmpData : multiset<char> := multiset{}; tmpData),
    lift_253
  };
  var lift_249 := ();
  var lift_243 := false;
  var lift_242 := [lift_243, lift_243, lift_243, lift_243];
  var lift_238 := true;
  var lift_237 := 'N';
  var lift_236 := 533268410;
  var lift_235 := lift_236;
  var lift_234 := (lift_235, lift_237, lift_238);
  var lift_233 := 1189233345;
  var lift_232 := (lift_233, 'Q', true);
  var lift_231 := {lift_232, lift_234};
  var lift_168 := 1585406652;
  var lift_167 := lift_168;
  var lift_166 := '\'';
  var lift_165 := lift_166;
  var lift_164 := true;
  var lift_163 := lift_164;
  var lift_162 := (lift_163, lift_165);
  var lift_161 := -1915173905;
  var lift_160 := lift_161;
  var lift_159 := (lift_160, lift_162, lift_167);
  var lift_158 := lift_159;
  var lift_152 := (var tmpData : multiset<int> := multiset{}; tmpData);
  var lift_148 := (var tmpData : set<bool> := {}; tmpData);
  var lift_147 := lift_148;
  var lift_146 := true;
  var lift_145 := false;
  var lift_144 := lift_145;
  var lift_143 := {lift_144, lift_146, lift_146, true};
  var lift_142 := false;
  var lift_141 := false;
  var lift_140 := {lift_141, lift_142, lift_142};
  var lift_130 := ();
  var lift_129 := ();
  var lift_128 := {lift_129, (), lift_130, lift_130};
  var lift_127 := (var tmpData : multiset<((), multiset<int>, char)> := multiset{}; tmpData);
  var lift_121 := '$';
  var lift_120 := lift_121;
  var lift_119 := lift_120;
  var lift_118 := 'M';
  var lift_117 := ['v', 'A', lift_118, lift_119];
  var lift_45 := 1448095788;
  var lift_44 := lift_45;
  var lift_40 := 'Z';
  var lift_39 := lift_40;
  var lift_38 := 't';
  var lift_37 := multiset{lift_38, 'n', lift_39, lift_40, 'o'};
  var lift_36 := lift_37;
  var lift_35 := lift_36;
  var lift_26 := (var tmpData : set<bool> := {}; tmpData);
  var lift_24 := 'n';
  var lift_23 := -1440223133;
  var lift_22 := (lift_23, lift_24, lift_24);
  var lift_21 := lift_22;
  var lift_20 := lift_21;
  var lift_11 := true;
  var lift_10 := lift_11;
  var lift_9 := false;
  var lift_8 := lift_9;
  var lift_7 := ('j', lift_8, 'H');
  var lift_6 := ("_<QQXo>IT", lift_7, [lift_10, lift_9, lift_8]);
  {
    var lift_93 := 543667895;
    var lift_92 := (var tmpData : seq<bool> := []; tmpData);
    var lift_91 := lift_92;
    var lift_90 := lift_91;
    var lift_77 := lift_24;
    var lift_49 := multiset{lift_23, lift_45, lift_45, lift_44};
    var lift_43 := lift_44;
    var lift_42 := multiset{lift_43, lift_44, lift_44};
    var lift_41 := -305789095;
    var lift_27 := multiset{lift_9, lift_11, lift_9};
    var lift_25 := lift_26;
    print 
      lift_1(
        lift_6.2,
        lift_12(lift_20, lift_25, lift_27),
        lift_28(lift_35, lift_41, lift_10, lift_42)
      ),
      "\n";
    print (multiset{lift_38, lift_24, lift_40}[lift_46(lift_40)] as int), "\n";
    if (((lift_42 !! lift_49) || (lift_9 <==> lift_8 <==> lift_11))) {
      {
        {
          print lift_45, "\n";
        }
      }
    } else {
      var methoddefvar_52 := lift_50(lift_23);
      {
        var lift_62 := ();
        lift_62 := ();
        print lift_45, "\n";
        print lift_44, "\n";
        print lift_44, "\n";
      }
      var methoddefvar_65 := lift_63(lift_45, lift_43);
      {
        print lift_41, "\n";
        print lift_23, "\n";
        lift_77 := lift_77;
      }
    }
    {
      var lift_79 := lift_24;
      var lift_78 := lift_24;
      lift_78 := lift_79;
    }
    {
      var lift_89 := (var tmpData : seq<seq<bool>> := []; tmpData);
      var methoddefvar_82, methoddefvar_83 := lift_80(
        lift_41,
        -773216698,
        lift_23
      );
      {
        print lift_45, "\n";
        lift_89 := [lift_90, lift_92];
      }
      print lift_93, "\n";
    }
  }
  {
    var lift_153 := 1008467577;
    var lift_151 := lift_152;
    var lift_150 := ((), lift_151, lift_121);
    var lift_131 := lift_39;
    var lift_126 := (lift_118, false);
    var lift_94 := [lift_95, lift_100, lift_106, lift_111, lift_95];
    print 
      safeSeqRef(lift_94, lift_45, lift_95)(
        lift_40,
        safeSeqRef(lift_117, lift_45, lift_119)
      ),
      "\n";
    if ((((
      arg_122 : (char, bool),
      arg_123 : multiset<((), multiset<int>, char)>,
      arg_124 : (),
      arg_125 : set<()>
    ) => lift_39)(lift_126, lift_127, (), lift_128) <= lift_46(
      lift_131
    ) < lift_20.1)) {
      var lift_154 := (var tmpData : seq<multiset<char>> := []; tmpData);
      var lift_149 := 1481129010;
      var methoddefvar_134 := lift_132();
      {
        var lift_139 := ();
        lift_139 := lift_129;
        lift_140 := lift_143;
        lift_147 := lift_148;
        print lift_45, "\n";
        lift_149 := lift_44;
      }
      print 
        (
          (var tmpData : seq<multiset<bool>> := []; tmpData),
          -1217221982,
          lift_23
        ).2,
        "\n";
      print safeSeqRef([-25889664], lift_149, lift_23), "\n";
      print (lift_127[lift_150] as int), "\n";
      lift_153 := |lift_154|;
    } else {
      var lift_157 := lift_158;
      var lift_156 := lift_157;
      var lift_155 := lift_156;
      print |lift_140|, "\n";
      print lift_23, "\n";
      print lift_155.2, "\n";
      var methoddefvar_171, methoddefvar_172 := lift_169(198895031, lift_167);
      {
        print methoddefvar_171, "\n";
        print lift_153, "\n";
        print lift_168, "\n";
        print lift_153, "\n";
      }
      var methoddefvar_226 := lift_132();
      {
        print 1521787698, "\n";
        print methoddefvar_226, "\n";
      }
    }
  }
  {
    var lift_350 := true;
    var lift_348 := lift_168;
    var lift_346 := [lift_336, lift_45, -2011112947, lift_318, lift_325];
    var lift_345 := {lift_346, lift_346, lift_285, lift_346, lift_346};
    var lift_344 := lift_329;
    var lift_343 := (lift_322, lift_249, lift_338);
    var lift_319 := {lift_160, lift_23, 351953146, -1013429186, lift_269};
    var lift_315 := false;
    var lift_313 := (lift_11, lift_129);
    var lift_293 := lift_146;
    var lift_289 := lift_160;
    var lift_277 := (lift_118, lift_275);
    var lift_276 := lift_277;
    var lift_273 := [lift_274, lift_274, (lift_166, lift_237), lift_276];
    var lift_272 := lift_273;
    var lift_250 := lift_251;
    var lift_248 := 1949407228;
    var lift_245 := {lift_161, -326226496, lift_160, lift_23, lift_23};
    var lift_244 := lift_245;
    var lift_241 := ();
    var lift_240 := lift_241;
    var lift_239 := lift_231;
    var lift_230 := [lift_231, lift_231, lift_239];
    var lift_229 := [lift_129, (), lift_130, lift_130, lift_129];
    var methoddefvar_227, methoddefvar_228 := lift_169(|lift_229|, |lift_230|);
    {
      var lift_246 := true;
      if (lift_145) {
        print methoddefvar_227, "\n";
      } else {
        lift_240 := lift_129;
        lift_242 := lift_242;
        print methoddefvar_227, "\n";
        lift_244 := {lift_168};
        lift_246 := lift_146;
      }
      var methoddefvar_247 := lift_63(lift_167, lift_236);
      {
        print lift_44, "\n";
        lift_248 := lift_160;
        lift_249 := lift_240;
      }
    }
    if ((lift_36 in (lift_250 + lift_251))) {
      var lift_342 := lift_343;
      var lift_341 := {lift_285};
      var lift_320 := (lift_9, lift_321, lift_341);
      var lift_311 := ">db@Q!M_TbGOs;I='P";
      var lift_310 := 'g';
      var lift_278 := (lift_130, lift_272);
      var lift_271 := 'X';
      var methoddefvar_261, methoddefvar_262 := lift_259();
      {
        var lift_267 := (lift_241, lift_268);
        var lift_266 := lift_267;
        print lift_23, "\n";
        lift_266 := lift_267;
        lift_271 := lift_119;
        print lift_235, "\n";
        print lift_235, "\n";
      }
      print (lift_252[lift_118] as int), "\n";
      lift_272 := lift_278.1;
      if (lift_279(lift_161, lift_285, lift_120)) {
        var lift_292 := (lift_164, lift_117);
        var lift_291 := (false, lift_117);
        var lift_290 := lift_291;
        lift_287 := lift_119;
        lift_289 := lift_160;
        {
          lift_290 := lift_292;
          lift_293 := lift_146;
        }
        var methoddefvar_296, methoddefvar_297 := lift_294(lift_168, lift_168);
        {
          lift_310 := lift_166;
          print lift_23, "\n";
          lift_311 := [lift_257];
          print lift_233, "\n";
          print 689120699, "\n";
        }
        print lift_269, "\n";
      } else {
        var lift_347 := ();
        var lift_312 := ();
        {
          lift_312 := lift_129;
          print lift_233, "\n";
          print lift_286, "\n";
          print lift_45, "\n";
          lift_313 := (false, lift_241);
        }
        {
          var lift_314 := (
            lift_117,
            false,
            [lift_286, lift_161, lift_160, lift_248]
          );
          print lift_167, "\n";
          print lift_161, "\n";
          lift_314 := lift_314;
        }
        print 1419230057, "\n";
        {
          print lift_236, "\n";
          lift_315 := lift_9;
          lift_316 := lift_45;
        }
        {
          lift_319 := {lift_44, -968199040};
          lift_320 := (
            lift_315,
            {lift_329, lift_329, lift_329, lift_342, lift_344},
            lift_345
          );
          lift_347 := ();
          print lift_335, "\n";
        }
      }
    } else {
      var lift_349 := -101934929;
      print 
        (
          lift_45,
          '<',
          ('u', true, [(), lift_129, lift_129, lift_326, lift_339])
        ).0,
        "\n";
      lift_348 := lift_318;
      lift_349 := (multiset{lift_277}[lift_274] as int);
      lift_350 := (false in lift_147);
    }
  }
}


