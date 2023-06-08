//
//
//
//
//
//

// Seed: 1102129027032822927
// This is a RANDOMLY GENERATED PROGRAM.
// Fuzzer: dafny
// Version: dafny, xsmith 2.0.5 (38f1d83), in Racket 8.9 (vm-type chez-scheme)
// Options: --with-print-constrained true --dafny-syntax true --seed 1102129027032822927
// Seed: 1102129027032822927
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
method lift_349 ()
  returns (arg_353 : int, arg_354 : int)
  requires (true)
  ensures (true)
{
  arg_353 := -450121135;
  arg_354 := 1476749664;
  {
    var lift_356 := -1334973434;
    var lift_355 := 188791314;
    lift_355 := arg_354;
    lift_356 := arg_354;
  }
}

method lift_294 (arg_298 : int, arg_299 : int, arg_300 : int)
  returns (arg_301 : int, arg_302 : int)
  requires (true)
  ensures (true)
{
  arg_301 := -183433387;
  arg_302 := 1057764527;
  {
    var lift_319 := {-1075688316, arg_299};
    var lift_318 := false;
    var lift_317 := lift_318;
    var lift_316 := (lift_317, arg_299);
    var lift_315 := lift_316;
    var lift_314 := lift_315;
    var lift_313 := lift_314;
    var lift_312 := 'h';
    var lift_311 := lift_312;
    var lift_310 := lift_311;
    var lift_309 := (-880309895, lift_310);
    var lift_308 := (lift_309, lift_313);
    var lift_307 := (true, arg_301);
    var lift_306 := 'u';
    var lift_305 := lift_306;
    var lift_304 := (694686683, lift_305);
    var lift_303 := (lift_304, lift_307);
    lift_303 := lift_308;
    print -1585816071, "\n";
    lift_319 := {arg_300, arg_298, arg_298, arg_302};
    print arg_299, "\n";
  }
}

method lift_240 ()
  returns (arg_243 : int)
  requires (true)
  ensures (true)
{
  arg_243 := 474131175;
  {
    var lift_290 := 'w';
    var lift_289 := lift_290;
    var lift_288 := '%';
    var lift_287 := 'N';
    var lift_286 := lift_287;
    var lift_285 := (lift_286, lift_288);
    var lift_284 := 1878961344;
    var lift_283 := [lift_284, arg_243, lift_284];
    var lift_282 := ('g', arg_243);
    var lift_281 := lift_282;
    var lift_280 := ();
    var lift_279 := lift_280;
    var lift_278 := (lift_279, lift_281, lift_280);
    var lift_277 := ();
    var lift_276 := '=';
    var lift_275 := (lift_276, arg_243);
    var lift_274 := -317999229;
    var lift_273 := 'L';
    var lift_272 := ();
    var lift_271 := (lift_272, (lift_273, lift_274), lift_272);
    var lift_270 := multiset{
      lift_271,
      (lift_272, lift_275, lift_277),
      lift_278
    };
    var lift_269 := false;
    var lift_268 := (lift_269, lift_270, lift_283);
    var lift_267 := lift_268;
    var lift_266 := lift_267;
    var lift_265 := -1728776748;
    var lift_264 := ('&', -1751963399);
    var lift_263 := ();
    var lift_262 := lift_263;
    var lift_261 := lift_262;
    var lift_260 := lift_261;
    var lift_259 := (lift_260, lift_264, lift_263);
    var lift_258 := lift_259;
    var lift_257 := lift_258;
    var lift_256 := lift_257;
    var lift_255 := 'v';
    var lift_254 := (lift_255, arg_243);
    var lift_253 := ();
    var lift_252 := (lift_253, lift_254, lift_253);
    var lift_251 := ();
    var lift_250 := -355672664;
    var lift_249 := '-';
    var lift_248 := (lift_249, lift_250);
    var lift_247 := ();
    var lift_246 := multiset{
      (lift_247, lift_248, lift_251),
      lift_252,
      lift_256,
      ((), lift_254, lift_261),
      lift_258
    };
    var lift_245 := false;
    var lift_244 := (lift_245, lift_246, [lift_250, lift_265]);
    print -258150276, "\n";
    print -786735614, "\n";
    lift_244 := lift_266;
    lift_285 := lift_285;
    lift_289 := 'T';
  }
}

method lift_224 (arg_227 : int, arg_228 : int, arg_229 : int)
  returns (arg_230 : int)
  requires (true)
  ensures (true)
{
  arg_230 := -134641450;
  {
    var lift_236 := 'z';
    var lift_235 := multiset{lift_236, lift_236, lift_236, 'U'};
    var lift_234 := lift_235;
    var lift_233 := lift_234;
    var lift_232 := 'Y';
    var lift_231 := multiset{lift_232, '-', lift_232};
    lift_231 := lift_233;
  }
}

method lift_131 (arg_135 : int, arg_136 : int)
  returns (arg_137 : int, arg_138 : int)
  requires (true)
  ensures (true)
{
  arg_137 := -26783592;
  arg_138 := -1861415826;
  {
    var lift_142 := 'E';
    var lift_141 := lift_142;
    var lift_140 := lift_141;
    var lift_139 := lift_140;
    lift_139 := lift_139;
  }
}

method lift_73 ()
  returns (arg_76 : int)
  requires (true)
  ensures (true)
{
  arg_76 := -249684104;
  {
    var lift_130 := false;
    var lift_129 := ();
    var lift_128 := 368909460;
    var lift_127 := (lift_128, 'r', lift_128);
    var lift_126 := ();
    var lift_125 := -692204768;
    var lift_124 := ();
    var lift_123 := (var tmpData : set<int> := {}; tmpData);
    var lift_122 := 1184237695;
    var lift_121 := 1592965158;
    var lift_120 := (lift_121, 'Z', lift_122);
    var lift_119 := (lift_120, lift_123, lift_124);
    var lift_118 := {
      lift_119,
      (lift_120, {lift_125, lift_125, -1226236550, arg_76}, lift_126),
      lift_119,
      lift_119,
      (lift_127, lift_123, lift_129)
    };
    var lift_117 := lift_118;
    var lift_116 := "y<y/ch+EKZdSabKvaNu|qoK'Fos!";
    var lift_115 := 'F';
    var lift_114 := ';';
    var lift_113 := multiset{lift_114, lift_115};
    var lift_112 := (lift_113, lift_116, lift_117);
    var lift_111 := ();
    var lift_110 := (var tmpData : set<int> := {}; tmpData);
    var lift_109 := 1693521279;
    var lift_108 := '@';
    var lift_107 := lift_108;
    var lift_106 := arg_76;
    var lift_105 := ((lift_106, lift_107, lift_109), lift_110, lift_111);
    var lift_104 := ();
    var lift_103 := lift_104;
    var lift_102 := lift_103;
    var lift_101 := lift_102;
    var lift_100 := 1606746613;
    var lift_99 := {arg_76, arg_76, lift_100, arg_76, arg_76};
    var lift_98 := 529405677;
    var lift_97 := 'x';
    var lift_96 := lift_97;
    var lift_95 := lift_96;
    var lift_94 := lift_95;
    var lift_93 := (arg_76, lift_94, lift_98);
    var lift_92 := (lift_93, lift_99, lift_101);
    var lift_91 := ();
    var lift_90 := '*';
    var lift_89 := -377446293;
    var lift_88 := (lift_89, lift_90, lift_89);
    var lift_87 := {(lift_88, {arg_76}, lift_91), lift_92, lift_105, lift_105};
    var lift_86 := lift_87;
    var lift_85 := lift_86;
    var lift_84 := 'p';
    var lift_83 := lift_84;
    var lift_82 := 'i';
    var lift_81 := [lift_82, lift_82, lift_83];
    var lift_80 := 'B';
    var lift_79 := lift_80;
    var lift_78 := multiset{'G', lift_79};
    var lift_77 := (lift_78, lift_81, lift_85);
    lift_77 := lift_112;
    lift_130 := lift_130;
  }
}

method lift_55 (arg_59 : int)
  returns (arg_60 : int, arg_61 : int)
  requires (true)
  ensures (true)
{
  arg_60 := -12789020;
  arg_61 := -457829433;
  {
    var lift_64 := ();
    var lift_63 := lift_64;
    var lift_62 := (var tmpData : multiset<((bool, int, bool), (bool, bool, bool), int)> := multiset{}; tmpData);
    lift_62 := (var tmpData : multiset<((bool, int, bool), (bool, bool, bool), int)> := multiset{}; tmpData);
    lift_63 := ();
  }
}

method lift_35 (arg_39 : int, arg_40 : int, arg_41 : int)
  returns (arg_42 : int, arg_43 : int)
  requires (true)
  ensures (true)
{
  arg_42 := -1585710525;
  arg_43 := 1526038437;
  {
    var lift_49 := false;
    var lift_48 := false;
    var lift_47 := lift_48;
    var lift_46 := true;
    var lift_45 := multiset{lift_46, lift_47, lift_49, lift_49, lift_49};
    var lift_44 := lift_45;
    print arg_42, "\n";
    lift_44 := lift_45;
    print arg_40, "\n";
  }
}

method lift_1 (arg_5 : int, arg_6 : int)
  returns (arg_7 : int, arg_8 : int)
  requires (true)
  ensures (true)
{
  arg_7 := 1004195262;
  arg_8 := -252418995;
  {
    var lift_9 := 'J';
    print -637062790, "\n";
    lift_9 := lift_9;
  }
}

method Main () {
  var lift_385 := 'L';
  var lift_384 := 'x';
  var lift_383 := {lift_384, lift_385};
  var lift_382 := (var tmpData : set<char> := {}; tmpData);
  var lift_381 := multiset{lift_382, lift_383};
  var lift_380 := -1957985302;
  var lift_379 := lift_380;
  var lift_378 := lift_379;
  var lift_377 := (lift_378, lift_379);
  var lift_376 := lift_377;
  var lift_375 := [lift_376];
  var lift_374 := true;
  var lift_373 := 'j';
  var lift_372 := (lift_373, lift_373, lift_374);
  var lift_369 := false;
  var lift_368 := multiset{lift_369};
  var lift_367 := (var tmpData : set<()> := {}; tmpData);
  var lift_366 := (lift_367, lift_368);
  var lift_365 := true;
  var lift_361 := true;
  var lift_360 := (true, lift_361);
  var lift_359 := [lift_360];
  var lift_347 := ();
  var lift_346 := ();
  var lift_345 := ();
  var lift_344 := multiset{lift_345, lift_346, (), lift_347, ()};
  var lift_343 := lift_344;
  var lift_342 := -2050975533;
  var lift_341 := lift_342;
  var lift_340 := lift_341;
  var lift_339 := -548342991;
  var lift_338 := lift_339;
  var lift_337 := [lift_338, lift_340, lift_339, lift_340, lift_338];
  var lift_336 := (lift_337, lift_343);
  var lift_335 := -469150388;
  var lift_334 := lift_335;
  var lift_333 := 'f';
  var lift_332 := ('Z', lift_333, lift_334);
  var lift_331 := 1077583292;
  var lift_330 := (lift_331, lift_331);
  var lift_329 := (lift_330, lift_332);
  var lift_328 := lift_329;
  var lift_292 := ();
  var lift_291 := multiset{lift_292};
  var lift_239 := 'Q';
  var lift_223 := 'r';
  var lift_221 := ();
  var lift_220 := {lift_221};
  var lift_219 := 223119635;
  var lift_218 := false;
  var lift_217 := (lift_218, lift_218, lift_219);
  var lift_212 := (var tmpData : seq<set<(bool, bool, int)>> := []; tmpData);
  var lift_210 := -845404095;
  var lift_209 := (1885470070, lift_210);
  var lift_208 := lift_209;
  var lift_207 := multiset{lift_208};
  var lift_201 := 'A';
  var lift_200 := 'T';
  var lift_199 := {lift_200, lift_200, lift_200, lift_200, lift_201};
  var lift_198 := lift_199;
  var lift_197 := [lift_198, lift_198];
  var lift_196 := 'G';
  var lift_195 := lift_196;
  var lift_194 := {lift_195};
  var lift_193 := lift_194;
  var lift_192 := lift_193;
  var lift_191 := '+';
  var lift_190 := lift_191;
  var lift_189 := '|';
  var lift_188 := {lift_189, lift_190, lift_190, '=', lift_191};
  var lift_186 := false;
  var lift_185 := lift_186;
  var lift_184 := 516671449;
  var lift_183 := {lift_184};
  var lift_182 := (lift_183, lift_185);
  var lift_181 := multiset{lift_182, lift_182};
  var lift_179 := false;
  var lift_178 := lift_179;
  var lift_177 := 1901690393;
  var lift_176 := {lift_177, lift_177};
  var lift_175 := lift_176;
  var lift_174 := lift_175;
  var lift_173 := lift_174;
  var lift_172 := lift_173;
  var lift_171 := (lift_172, lift_178);
  var lift_165 := 'z';
  var lift_164 := lift_165;
  var lift_163 := 'R';
  var lift_162 := lift_163;
  var lift_161 := [lift_162, lift_164, 'A', lift_162, lift_163];
  var lift_157 := 'M';
  var lift_156 := lift_157;
  var lift_155 := -1523600780;
  var lift_154 := lift_155;
  var lift_153 := (lift_154, 'B');
  var lift_152 := lift_153;
  var lift_147 := ();
  var lift_145 := ();
  var lift_144 := multiset{(), lift_145};
  var lift_71 := false;
  var lift_70 := lift_71;
  var lift_68 := -1844112677;
  var lift_52 := 'S';
  var lift_51 := [lift_52];
  var lift_34 := ();
  var lift_33 := ();
  var lift_32 := lift_33;
  var lift_31 := lift_32;
  var lift_30 := {lift_31, lift_34};
  var lift_29 := -1204891658;
  var lift_28 := ();
  var lift_27 := lift_28;
  var lift_26 := true;
  var lift_25 := (lift_26, lift_26);
  var lift_24 := (var tmpData : seq<int> := []; tmpData);
  var lift_23 := lift_24;
  var lift_22 := (lift_23, lift_25, lift_27);
  var lift_21 := ();
  var lift_20 := false;
  var lift_19 := lift_20;
  var lift_18 := lift_19;
  var lift_17 := (lift_18, lift_18);
  var lift_16 := -934334973;
  var lift_15 := -585885843;
  var lift_14 := [lift_15, lift_16, lift_15, lift_15];
  var lift_13 := lift_14;
  var lift_12 := (lift_13, lift_17, lift_21);
  var lift_11 := multiset{lift_12, lift_22};
  var lift_10 := lift_11;
  var methoddefvar_3, methoddefvar_4 := lift_1(
    |(lift_10[(lift_13, (lift_26, lift_19), lift_27) := lengthNormalize(
      lift_29
    )])|,
    |(lift_30 + lift_30)|
  );
  {
    var lift_65 := [methoddefvar_4, lift_29, lift_16];
    var methoddefvar_37, methoddefvar_38 := lift_35(
      methoddefvar_4,
      lift_29,
      lift_29
    );
    {
      var lift_50 := {methoddefvar_37, lift_15, -108490642, methoddefvar_4};
      lift_50 := lift_50;
      print lift_29, "\n";
    }
    {
      print methoddefvar_3, "\n";
      {
        var lift_54 := (var tmpData : seq<string> := []; tmpData);
        var lift_53 := (var tmpData : seq<char> := []; tmpData);
        print methoddefvar_3, "\n";
        print methoddefvar_3, "\n";
        lift_51 := lift_53;
        lift_54 := lift_54;
      }
      var methoddefvar_57, methoddefvar_58 := lift_55(1311502548);
      {
        print lift_15, "\n";
      }
      print lift_15, "\n";
      {
        print -315403197, "\n";
        lift_65 := lift_13;
      }
    }
  }
  {
    var lift_371 := (lift_372, lift_223, lift_152);
    var lift_364 := lift_360;
    var lift_362 := lift_359;
    var lift_358 := {lift_359, lift_359, lift_362};
    var lift_357 := lift_358;
    var lift_348 := multiset{lift_20, lift_186};
    var lift_327 := (lift_195, lift_165, lift_210);
    var lift_326 := (lift_209, lift_327);
    var lift_323 := ();
    var lift_215 := (lift_19, lift_26, lift_15);
    var lift_203 := (lift_145, 1407431344);
    var lift_180 := (lift_174, lift_179);
    var lift_150 := 1627886345;
    if ((lift_16 == |lift_10|)) {
      var lift_158 := (lift_156, lift_29);
      var lift_151 := (lift_152, [lift_156, lift_156], lift_158);
      var lift_149 := 'r';
      var lift_146 := false;
      var lift_69 := ();
      var methoddefvar_66, methoddefvar_67 := lift_35(
        lift_29,
        lift_68,
        lift_16
      );
      {
        var lift_72 := false;
        lift_69 := ();
        lift_70 := lift_72;
        print methoddefvar_66, "\n";
      }
      var methoddefvar_75 := lift_73();
      {
        print -737907324, "\n";
      }
      if (true) {
        var lift_169 := ();
        var lift_166 := (lift_164, lift_29);
        var lift_160 := ((lift_16, lift_156), lift_161, lift_166);
        var lift_148 := [lift_149];
        var lift_143 := lift_29;
        var methoddefvar_133, methoddefvar_134 := lift_131(
          lift_143,
          2093637584
        );
        {
          lift_144 := multiset{lift_34};
        }
        lift_146 := lift_70;
        if (false) {
          print lift_16, "\n";
          lift_147 := lift_31;
          print lift_16, "\n";
        } else {
          var lift_159 := lift_160;
          print lift_68, "\n";
          lift_148 := lift_148;
          print lift_150, "\n";
          print lift_68, "\n";
          lift_151 := lift_159;
        }
        var methoddefvar_167, methoddefvar_168 := lift_55(lift_150);
        {
          lift_169 := lift_69;
          print lift_68, "\n";
          print lift_155, "\n";
        }
      } else {
        var lift_170 := multiset{lift_171, lift_171, lift_180};
        if (lift_146) {
          var lift_202 := ();
          var lift_187 := [
            lift_188,
            lift_192,
            lift_194,
            {lift_195, lift_149, 'Q', lift_162, lift_189},
            (var tmpData : set<char> := {}; tmpData)
          ];
          print lift_15, "\n";
          lift_170 := lift_181;
          lift_187 := lift_197;
          lift_202 := lift_27;
        } else {
          print lift_154, "\n";
        }
      }
      print safeSeqRef(lift_24, -1739102871, lift_16), "\n";
      lift_203 := ((
        arg_204 : multiset<(int, int)>,
        arg_205 : char,
        arg_206 : ()
      ) => lift_203)(lift_207, lift_149, ());
    } else {
      var lift_320 := ();
      var lift_237 := '\'';
      var lift_216 := (lift_71, lift_179, lift_29);
      var lift_214 := {lift_215, lift_216};
      if ((lift_199 !! {lift_157, lift_201, 'X'} !! lift_193)) {
        var lift_222 := {lift_21};
        if (lift_26) {
          var lift_213 := [
            lift_214,
            {(lift_178, lift_26, lift_15), lift_217, lift_215},
            lift_214
          ];
          var lift_211 := (var tmpData : set<char> := {}; tmpData);
          print lift_15, "\n";
          lift_211 := lift_192;
          lift_212 := lift_213;
          print lift_219, "\n";
          print lift_219, "\n";
        } else {
          lift_220 := lift_222;
          lift_223 := lift_200;
        }
        var methoddefvar_226 := lift_224(lift_155, lift_155, -15686913);
        {
          print -684210954, "\n";
          lift_237 := 'n';
          print lift_68, "\n";
          print lift_177, "\n";
          print lift_68, "\n";
        }
        if (false) {
          var lift_238 := multiset{lift_31, lift_33};
          lift_238 := lift_144;
        } else {
          lift_239 := lift_196;
        }
        var methoddefvar_242 := lift_240();
        {
          var lift_293 := multiset{
            lift_221,
            lift_221,
            lift_33,
            lift_31,
            lift_27
          };
          print lift_154, "\n";
          lift_291 := lift_293;
        }
      } else {
        var methoddefvar_296, methoddefvar_297 := lift_294(
          lift_177,
          lift_155,
          lift_16
        );
        {
          print lift_68, "\n";
          print lift_155, "\n";
          print lift_16, "\n";
          print lift_219, "\n";
        }
        lift_320 := lift_21;
        var methoddefvar_321, methoddefvar_322 := lift_131(
          lift_154,
          -676353203
        );
        {
          print lift_184, "\n";
        }
        if (lift_70) {
          print lift_184, "\n";
        } else {
          print lift_210, "\n";
          lift_323 := lift_34;
        }
        print lift_155, "\n";
      }
      {
        var methoddefvar_324, methoddefvar_325 := lift_131(lift_155, lift_16);
        {
          print lift_219, "\n";
          lift_326 := lift_328;
          print lift_29, "\n";
          lift_336 := lift_336;
        }
        print lift_331, "\n";
        lift_348 := lift_348;
      }
    }
    {
      var lift_363 := lift_25;
      var methoddefvar_351, methoddefvar_352 := lift_349();
      {
        print lift_16, "\n";
        print lift_210, "\n";
        lift_357 := {[lift_363, lift_364]};
        lift_365 := lift_178;
      }
      {
        var lift_370 := (lift_367, lift_368);
        if (lift_218) {
          print lift_338, "\n";
          lift_366 := lift_370;
        } else {
          print lift_177, "\n";
        }
        print lift_338, "\n";
        print lift_184, "\n";
      }
    }
    print lift_371.2.0, "\n";
    print (lift_207[safeSeqRef(lift_375, lift_219, lift_330)] as int), "\n";
    print ('o', -1984385354).1, "\n";
  }
  print 
    (lift_209.0, ((var tmpData : set<char> := {}; tmpData) in lift_381)).0,
    "\n";
}


