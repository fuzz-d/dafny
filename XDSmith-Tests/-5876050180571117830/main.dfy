//
//
//
//
//
//

// Seed: -5876050180571117830
// This is a RANDOMLY GENERATED PROGRAM.
// Fuzzer: dafny
// Version: dafny, xsmith 2.0.5 (38f1d83), in Racket 8.9 (vm-type chez-scheme)
// Options: --with-print-constrained true --dafny-syntax true --seed -5876050180571117830
// Seed: -5876050180571117830
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
method lift_390 (arg_393 : int, arg_394 : int, arg_395 : int)
  returns (arg_396 : int)
  requires (true)
  ensures (true)
{
  arg_396 := 1322597139;
  {
    var lift_421 := true;
    var lift_420 := 'A';
    var lift_419 := (lift_420, arg_393, lift_421);
    var lift_418 := ();
    var lift_417 := (lift_418, lift_419, lift_418);
    var lift_416 := -1769040143;
    var lift_415 := true;
    var lift_414 := (arg_393, lift_415, arg_393);
    var lift_413 := lift_414;
    var lift_412 := ';';
    var lift_411 := ('*', lift_412, 'a');
    var lift_410 := true;
    var lift_409 := (lift_410, lift_411, lift_413);
    var lift_408 := arg_393;
    var lift_407 := true;
    var lift_406 := (arg_396, lift_407, lift_408);
    var lift_405 := lift_406;
    var lift_404 := 's';
    var lift_403 := lift_404;
    var lift_402 := (lift_403, lift_403, lift_404);
    var lift_401 := true;
    var lift_400 := lift_401;
    var lift_399 := (lift_400, lift_402, lift_405);
    var lift_398 := lift_399;
    var lift_397 := multiset{lift_398, lift_399, lift_398, lift_409, lift_399};
    print arg_396, "\n";
    lift_397 := lift_397;
    lift_416 := arg_393;
    lift_417 := lift_417;
  }
}

method lift_326 (arg_330 : int)
  returns (arg_331 : int, arg_332 : int)
  requires (true)
  ensures (true)
{
  arg_331 := -1000461363;
  arg_332 := 1588202934;
  {
    print arg_331, "\n";
    print arg_332, "\n";
  }
}

method lift_312 ()
  returns (arg_315 : int)
  requires (true)
  ensures (true)
{
  arg_315 := 1581819396;
  {
    var lift_321 := false;
    var lift_320 := false;
    var lift_319 := {lift_320, lift_321, lift_320};
    var lift_318 := true;
    var lift_317 := lift_318;
    var lift_316 := {lift_317, false};
    lift_316 := lift_319;
  }
}

method lift_281 (arg_284 : int)
  returns (arg_285 : int)
  requires (true)
  ensures (true)
{
  arg_285 := -1467381349;
  {
    var lift_287 := ();
    var lift_286 := ();
    lift_286 := lift_287;
  }
}

method lift_200 ()
  returns (arg_204 : int, arg_205 : int)
  requires (true)
  ensures (true)
{
  arg_204 := 2007567965;
  arg_205 := 464280703;
  {
    var lift_209 := 1708023935;
    var lift_208 := ();
    var lift_207 := -430732316;
    var lift_206 := 1010782611;
    print lift_206, "\n";
    print lift_207, "\n";
    print arg_204, "\n";
    lift_208 := ();
    lift_209 := arg_204;
  }
}

method lift_143 (arg_146 : int, arg_147 : int, arg_148 : int)
  returns (arg_149 : int)
  requires (true)
  ensures (true)
{
  arg_149 := -1310227614;
  {
    print arg_148, "\n";
  }
}

method lift_83 (arg_86 : int, arg_87 : int)
  returns (arg_88 : int)
  requires (true)
  ensures (true)
{
  arg_88 := 1010277647;
  {
    var lift_91 := {-1960337024};
    var lift_90 := lift_91;
    var lift_89 := 2063349342;
    print -1226034969, "\n";
    print lift_89, "\n";
    print -399536726, "\n";
    lift_90 := lift_90;
  }
}

function lift_12 (
  arg_14 : (char, char, bool),
  arg_15 : (int, bool),
  arg_16 : (bool, char),
  arg_17 : (int, char)
) : multiset<((int, char, bool), (int, int, bool))>
{
  var lift_26 := (-1952983054, 1293109838, true);
  var lift_25 := '<';
  var lift_24 := lift_25;
  var lift_23 := 1963937268;
  var lift_22 := (lift_23, lift_24, false);
  var lift_21 := lift_22;
  var lift_20 := lift_21;
  var lift_19 := (lift_20, lift_26);
  var lift_18 := multiset{lift_19, (lift_20, lift_26), lift_19};
  lift_18
}

method lift_1 (arg_5 : int, arg_6 : int)
  returns (arg_7 : int, arg_8 : int)
  requires (true)
  ensures (true)
{
  arg_7 := 508674650;
  arg_8 := -1618737476;
  {
    var lift_11 := ();
    var lift_10 := lift_11;
    var lift_9 := lift_10;
    lift_9 := lift_11;
    print arg_8, "\n";
  }
}

method Main () {
  var lift_445 := true;
  var lift_444 := false;
  var lift_443 := false;
  var lift_442 := 'Z';
  var lift_441 := 'w';
  var lift_440 := lift_441;
  var lift_439 := (-1584286519, 's');
  var lift_438 := (
    lift_439,
    multiset{lift_440, lift_442, 'F', lift_441, lift_440},
    {lift_443, lift_443, lift_443, lift_444, lift_445}
  );
  var lift_437 := (var tmpData : set<(seq<char>, (bool, char))> := {}; tmpData);
  var lift_436 := ((lift_437 > lift_437 >= lift_437) !in lift_438.2);
  var lift_435 := 1410641640;
  var lift_434 := true;
  var lift_433 := lift_434;
  var lift_429 := -1696976692;
  var lift_428 := lift_429;
  var lift_427 := {lift_428};
  var lift_426 := lift_427;
  var lift_425 := 147161938;
  var lift_424 := lift_425;
  var lift_423 := {lift_424};
  var lift_389 := ();
  var lift_387 := false;
  var lift_386 := -1963908042;
  var lift_385 := 'l';
  var lift_384 := lift_385;
  var lift_383 := (lift_384, lift_386, lift_387);
  var lift_382 := true;
  var lift_381 := (true, lift_382, 'j');
  var lift_380 := (lift_381, lift_383);
  var lift_373 := 't';
  var lift_364 := 'S';
  var lift_363 := 'd';
  var lift_362 := (1442460376, lift_363, lift_364);
  var lift_361 := lift_362;
  var lift_355 := ();
  var lift_354 := false;
  var lift_353 := (-778756602, lift_354);
  var lift_352 := lift_353;
  var lift_351 := (lift_352, lift_355);
  var lift_350 := lift_351;
  var lift_342 := ();
  var lift_341 := ();
  var lift_340 := multiset{(), lift_341, (), lift_342};
  var lift_339 := lift_340;
  var lift_338 := lift_339;
  var lift_337 := ();
  var lift_336 := lift_337;
  var lift_335 := {lift_336};
  var lift_334 := (lift_335, lift_338);
  var lift_333 := lift_334;
  var lift_325 := multiset{true, true};
  var lift_311 := 2087671916;
  var lift_310 := lift_311;
  var lift_309 := lift_310;
  var lift_308 := 'P';
  var lift_307 := lift_308;
  var lift_306 := lift_307;
  var lift_305 := (lift_306, lift_309);
  var lift_303 := 'q';
  var lift_302 := ';';
  var lift_301 := lift_302;
  var lift_300 := multiset{lift_301, lift_303, lift_301, lift_301};
  var lift_296 := '$';
  var lift_295 := false;
  var lift_294 := true;
  var lift_293 := {lift_294, lift_295};
  var lift_292 := lift_293;
  var lift_291 := (lift_292, lift_296);
  var lift_278 := 'Q';
  var lift_277 := lift_278;
  var lift_276 := false;
  var lift_275 := lift_276;
  var lift_274 := 1922873625;
  var lift_273 := lift_274;
  var lift_272 := 'N';
  var lift_271 := (lift_272, lift_273, lift_275);
  var lift_270 := lift_271;
  var lift_269 := (lift_270, lift_277);
  var lift_263 := 724831737;
  var lift_262 := false;
  var lift_261 := lift_262;
  var lift_260 := lift_261;
  var lift_259 := lift_260;
  var lift_258 := (lift_259, lift_263);
  var lift_257 := 1392108044;
  var lift_256 := lift_257;
  var lift_255 := '<';
  var lift_254 := (lift_255, lift_256, 'J');
  var lift_253 := -654255029;
  var lift_252 := lift_253;
  var lift_251 := false;
  var lift_250 := (lift_251, lift_252);
  var lift_249 := lift_250;
  var lift_248 := 1869968229;
  var lift_247 := 'u';
  var lift_246 := lift_247;
  var lift_245 := ((lift_246, lift_248, lift_246), lift_249);
  var lift_244 := multiset{lift_245, lift_245, lift_245, (lift_254, lift_258)};
  var lift_239 := -2133673155;
  var lift_238 := 'a';
  var lift_237 := (lift_238, lift_239, lift_239);
  var lift_236 := lift_237;
  var lift_235 := [lift_236];
  var lift_234 := lift_235;
  var lift_223 := (var tmpData : set<(int, (), (int, int, int))> := {}; tmpData);
  var lift_221 := ();
  var lift_220 := multiset{lift_221};
  var lift_219 := lift_220;
  var lift_218 := lift_219;
  var lift_216 := ();
  var lift_215 := ();
  var lift_214 := multiset{lift_215, lift_216};
  var lift_212 := true;
  var lift_211 := ();
  var lift_199 := true;
  var lift_198 := lift_199;
  var lift_197 := lift_198;
  var lift_196 := ('"', false, lift_197);
  var lift_195 := true;
  var lift_194 := 'y';
  var lift_193 := -999445635;
  var lift_192 := (lift_193, lift_194, lift_195);
  var lift_191 := (lift_192, lift_196);
  var lift_189 := false;
  var lift_187 := 'c';
  var lift_186 := lift_187;
  var lift_185 := {'i', lift_186};
  var lift_184 := lift_185;
  var lift_181 := -404863394;
  var lift_180 := multiset{lift_181, 1881743467, lift_181, lift_181};
  var lift_179 := lift_180;
  var lift_171 := ();
  var lift_166 := 'z';
  var lift_163 := true;
  var lift_162 := lift_163;
  var lift_161 := '~';
  var lift_160 := lift_161;
  var lift_159 := (lift_160, lift_162);
  var lift_158 := true;
  var lift_157 := 'E';
  var lift_156 := multiset{(lift_157, lift_158), lift_159, lift_159};
  var lift_155 := false;
  var lift_154 := 'u';
  var lift_153 := (lift_154, lift_155);
  var lift_152 := multiset{('o', false), lift_153, lift_153, lift_153};
  var lift_138 := 603578063;
  var lift_137 := 'D';
  var lift_136 := (lift_137, lift_138);
  var lift_133 := 'i';
  var lift_132 := [lift_133];
  var lift_131 := lift_132;
  var lift_130 := lift_131;
  var lift_129 := multiset{lift_130, lift_130, "@PXNAIC:C^jJ=DB&ghe+@"};
  var lift_127 := 'i';
  var lift_126 := 'B';
  var lift_125 := multiset{lift_126, lift_126, lift_126};
  var lift_124 := (lift_125, 'H');
  var lift_123 := '>';
  var lift_122 := -1815001511;
  var lift_121 := (lift_122, lift_123, lift_122);
  var lift_120 := false;
  var lift_119 := (lift_120, lift_121, lift_124);
  var lift_118 := lift_119;
  var lift_117 := lift_118;
  var lift_116 := lift_117;
  var lift_115 := ';';
  var lift_114 := lift_115;
  var lift_113 := 'R';
  var lift_112 := multiset{lift_113, '~', lift_114};
  var lift_111 := false;
  var lift_110 := (lift_111, 385207855, lift_112);
  var lift_109 := lift_110;
  var lift_108 := 'l';
  var lift_107 := multiset{lift_108, lift_108, lift_108, lift_108, lift_108};
  var lift_106 := lift_107;
  var lift_105 := -2144364734;
  var lift_104 := (false, lift_105, lift_106);
  var lift_103 := [lift_104, lift_109, lift_104, lift_109];
  var lift_102 := 'N';
  var lift_101 := lift_102;
  var lift_100 := (lift_101, ());
  var lift_98 := 773327484;
  var lift_97 := -976689168;
  var lift_96 := [lift_97, lift_97, lift_98, lift_97, lift_98];
  var lift_79 := 'I';
  var lift_78 := 'w';
  var lift_77 := multiset{lift_78, lift_79, '@'};
  var lift_74 := (var tmpData : multiset<bool> := multiset{}; tmpData);
  var lift_73 := false;
  var lift_71 := 721350459;
  var lift_70 := lift_71;
  var lift_65 := 'K';
  var lift_64 := true;
  var lift_63 := -922529050;
  var lift_62 := ('!', lift_63, lift_64);
  var lift_61 := lift_62;
  var lift_60 := (lift_61, lift_65);
  var lift_59 := lift_60;
  var lift_58 := lift_59;
  var lift_57 := 1057325117;
  var lift_56 := 'e';
  var lift_55 := (lift_56, lift_57, false);
  var lift_54 := multiset{(lift_55, 'C'), lift_58, lift_60};
  var lift_53 := false;
  var lift_52 := -702557878;
  var lift_51 := (lift_52, lift_53);
  var lift_50 := true;
  var lift_49 := false;
  var lift_48 := -1727879408;
  var lift_47 := lift_48;
  var lift_46 := lift_47;
  var lift_45 := (lift_46, lift_49);
  var lift_44 := [
    lift_45,
    (lift_48, lift_49),
    (lift_46, lift_50),
    lift_45,
    lift_51
  ];
  var lift_43 := lift_44;
  var lift_42 := lift_43;
  var lift_41 := 'Z';
  var lift_40 := lift_41;
  var lift_39 := lift_40;
  var lift_38 := lift_39;
  var lift_37 := 1860183756;
  var lift_36 := (lift_37, lift_38);
  var lift_35 := lift_36;
  var lift_34 := 'B';
  var lift_33 := true;
  var lift_32 := (lift_33, lift_34);
  var lift_31 := lift_32;
  var lift_30 := 1424995493;
  var lift_29 := (lift_30, true);
  var lift_28 := true;
  var lift_27 := '\'';
  var methoddefvar_3, methoddefvar_4 := lift_1(
    |lift_12((lift_27, lift_27, lift_28), lift_29, lift_31, lift_35)|,
    |safeSeqSubseq(lift_42, lift_46, lift_52)|
  );
  {
    var lift_99 := ();
    var lift_92 := [methoddefvar_4, lift_57, -231689562, lift_30];
    var lift_81 := 'X';
    var lift_80 := (var tmpData : set<(int, seq<int>)> := {}; tmpData);
    var lift_72 := multiset{lift_73, lift_28, lift_33, lift_49, lift_64};
    var lift_68 := multiset{lift_39, lift_34, lift_65};
    print (lift_54[((lift_34, lift_47, lift_49), lift_40)] as int), "\n";
    var methoddefvar_66, methoddefvar_67 := lift_1(lift_46, lift_37);
    {
      var lift_69 := lift_33;
      print lift_30, "\n";
      lift_68 := lift_68;
      lift_69 := lift_64;
      lift_70 := lift_57;
      print methoddefvar_3, "\n";
    }
    if ((lift_72 == lift_72 < lift_74)) {
      var lift_76 := (lift_77, lift_33, lift_80);
      var lift_75 := lift_76;
      {
        var lift_82 := [lift_63];
        print lift_71, "\n";
        lift_75 := lift_75;
        lift_81 := lift_41;
        print lift_52, "\n";
        lift_82 := [lift_57, methoddefvar_4];
      }
      var methoddefvar_85 := lift_83(-988763507, lift_47);
      {
        print methoddefvar_3, "\n";
      }
      print lift_47, "\n";
    } else {
      {
        print -109843762, "\n";
      }
      print methoddefvar_3, "\n";
      {
        var lift_95 := (lift_40, lift_96);
        var lift_94 := lift_95;
        var lift_93 := (-966418158, lift_81);
        print -1195730770, "\n";
        lift_92 := lift_92;
        lift_93 := lift_35;
        lift_94 := lift_95;
      }
    }
    lift_99 := lift_100.1;
  }
  if ((safeSeqRef(lift_103, lift_105, lift_110).2 !! lift_116.2.0)) {
    var lift_280 := {lift_30, lift_46, lift_274};
    var lift_279 := (lift_280, lift_215, lift_60);
    var lift_268 := false;
    var lift_267 := false;
    var lift_228 := {lift_162, lift_64, lift_197, lift_50, lift_64};
    var lift_225 := [true, true, true];
    var lift_224 := [lift_155];
    var lift_217 := (lift_218, false, true);
    var lift_182 := {lift_52, lift_71, -1101984848, 1715920871, lift_98};
    var lift_178 := (lift_179, lift_64, lift_182);
    var lift_172 := ();
    var lift_170 := ();
    var lift_142 := (lift_73, lift_111);
    var lift_141 := (lift_48, lift_120, lift_63);
    var lift_140 := (lift_141, lift_142, false);
    var lift_139 := [false, true, lift_120, lift_64, lift_33];
    var lift_135 := (lift_136, lift_139);
    var lift_128 := 'n';
    {
      var lift_177 := lift_178;
      var lift_169 := {lift_170, lift_171, lift_172, lift_172, lift_172};
      var lift_168 := (var tmpData : seq<bool> := []; tmpData);
      var lift_167 := (lift_168, lift_169);
      var lift_164 := lift_152;
      var lift_134 := true;
      lift_127 := lift_128;
      if (("QXJr" !in lift_129)) {
        var lift_150 := (lift_111, lift_62, lift_121);
        {
          lift_134 := lift_28;
          lift_135 := lift_135;
          print lift_46, "\n";
        }
        lift_140 := lift_140;
        var methoddefvar_145 := lift_143(lift_71, lift_63, lift_63);
        {
          lift_150 := lift_150;
        }
      } else {
        var lift_174 := [false, lift_49, lift_49, lift_33];
        var lift_151 := multiset{
          lift_152,
          lift_156,
          multiset{lift_153, lift_159, lift_153},
          lift_152,
          lift_164
        };
        {
          var lift_173 := (lift_174, lift_169);
          var lift_165 := ();
          lift_151 := lift_151;
          lift_165 := lift_165;
          lift_166 := lift_38;
          lift_167 := lift_173;
        }
        var methoddefvar_175 := lift_83(lift_37, lift_47);
        {
          var lift_176 := (lift_101, lift_78);
          lift_176 := lift_176;
          print lift_71, "\n";
        }
        print -222167728, "\n";
        {
          var lift_183 := lift_53;
          lift_177 := lift_177;
          lift_183 := lift_33;
        }
      }
    }
    print |(lift_43 + lift_44 + lift_44)|, "\n";
    {
      var lift_240 := ();
      var lift_230 := ();
      var lift_229 := lift_228;
      var lift_226 := lift_216;
      var lift_222 := lift_157;
      var lift_213 := (lift_214, true, false);
      if (((var tmpData : set<char> := {}; tmpData) <= lift_184 < {
        'c',
        lift_133
      })) {
        var lift_190 := ();
        if (lift_73) {
          var lift_188 := '&';
          print lift_122, "\n";
          lift_188 := 'Q';
          lift_189 := lift_162;
          print lift_47, "\n";
          print lift_37, "\n";
        } else {
          lift_190 := lift_190;
          print lift_63, "\n";
          print lift_98, "\n";
        }
        print lift_57, "\n";
        {
          lift_191 := lift_191;
          print lift_71, "\n";
        }
      } else {
        var lift_210 := ();
        var methoddefvar_202, methoddefvar_203 := lift_200();
        {
          print lift_57, "\n";
          lift_210 := lift_210;
          print lift_30, "\n";
          lift_211 := ();
          lift_212 := lift_64;
        }
      }
      {
        {
          print lift_181, "\n";
          lift_213 := lift_217;
          print lift_52, "\n";
          lift_222 := 'K';
        }
      }
      if (lift_117.0) {
        if (lift_73) {
          print lift_193, "\n";
          print 1677570522, "\n";
        } else {
          lift_223 := lift_223;
          lift_224 := lift_225;
          lift_226 := lift_211;
        }
        print lift_46, "\n";
      } else {
        var lift_233 := (lift_130, lift_53);
        var lift_227 := 1689811148;
        if (true) {
          print lift_105, "\n";
          print lift_46, "\n";
          lift_227 := 2082638214;
          print lift_98, "\n";
          lift_228 := lift_229;
        } else {
          var lift_231 := true;
          lift_230 := lift_230;
          lift_231 := lift_197;
          print lift_97, "\n";
          print 1425702312, "\n";
          print lift_37, "\n";
        }
        {
          var lift_232 := (lift_131, lift_28);
          print lift_122, "\n";
          print lift_181, "\n";
          lift_232 := lift_233;
        }
        print lift_47, "\n";
        lift_234 := lift_234;
        lift_240 := lift_215;
      }
    }
    var methoddefvar_241 := lift_83(|lift_44|, |lift_185|);
    {
      var lift_266 := lift_221;
      var lift_264 := 828879792;
      var lift_243 := lift_244;
      {
        print lift_46, "\n";
      }
      var methoddefvar_242 := lift_83(lift_52, lift_98);
      {
        var lift_265 := -19013965;
        lift_243 := lift_244;
        print lift_57, "\n";
        print lift_105, "\n";
        lift_264 := lift_265;
        lift_266 := lift_172;
      }
      lift_267 := false;
      lift_268 := lift_195;
    }
    print 
      ((lift_54[lift_269 := lengthNormalize(lift_181)])[lift_279.2] as int),
      "\n";
  } else {
    var lift_432 := false;
    var lift_431 := lift_28;
    var lift_430 := lift_120;
    var lift_377 := (lift_28, lift_120, lift_102);
    var lift_376 := (true, lift_120, 'z');
    var lift_375 := [lift_376, lift_376, lift_377, lift_376, lift_377];
    var lift_374 := (var tmpData : seq<(bool, bool, char)> := []; tmpData);
    var lift_370 := (lift_32, lift_196, lift_189);
    var lift_369 := ('=', lift_370, lift_57);
    var lift_368 := (lift_301, lift_50, lift_294);
    var lift_367 := ((lift_197, lift_277), lift_368, lift_261);
    var lift_366 := ('B', lift_367, lift_47);
    var lift_365 := [lift_366];
    var lift_360 := (
      lift_335,
      lift_361,
      ((lift_120, lift_102), lift_196, lift_28)
    );
    var lift_359 := lift_360;
    var lift_358 := lift_359.2;
    var lift_322 := false;
    var lift_299 := multiset{1008763722, lift_256};
    var lift_298 := (lift_292, lift_296);
    if (lift_49) {
      var lift_324 := {lift_325, lift_74, multiset{lift_197}};
      var lift_323 := ();
      var lift_304 := (lift_305, lift_197);
      var lift_297 := multiset{lift_298, lift_298};
      var methoddefvar_283 := lift_281(lift_70);
      {
        var lift_290 := lift_291;
        var lift_289 := ({lift_64, lift_251, lift_162}, lift_166);
        var lift_288 := multiset{lift_289, lift_290};
        lift_288 := lift_297;
      }
      print (multiset{false, lift_197}[false] as int), "\n";
      {
        lift_299 := lift_179;
        lift_300 := lift_106;
        print lift_37, "\n";
        lift_304 := lift_304;
        var methoddefvar_314 := lift_312();
        {
          lift_322 := lift_198;
          lift_323 := lift_216;
        }
      }
      print 
        (multiset{
          (var tmpData : set<multiset<bool>> := {}; tmpData),
          lift_324,
          lift_324,
          lift_324
        }[{
          lift_74,
          lift_74,
          (var tmpData : multiset<bool> := multiset{}; tmpData)
        }] as int),
        "\n";
    } else {
      var lift_348 := (lift_48, lift_276, lift_101);
      var lift_347 := lift_348;
      var lift_346 := multiset{
        lift_335,
        {lift_221, lift_342, lift_215, lift_341},
        lift_335,
        lift_335
      };
      var lift_345 := (true, lift_346, lift_347);
      var lift_344 := lift_345;
      print (lift_296 as int), "\n";
      print safeSeqRef(lift_96, lift_71, lift_57), "\n";
      var methoddefvar_328, methoddefvar_329 := lift_326(lift_256);
      {
        print 1859035356, "\n";
      }
      {
        var lift_357 := (var tmpData : set<()> := {}; tmpData);
        var lift_356 := ();
        var lift_349 := (lift_51, lift_211);
        var lift_343 := false;
        if (lift_198) {
          lift_333 := lift_333;
          lift_343 := lift_64;
          lift_344 := lift_344;
          lift_349 := lift_350;
          lift_356 := lift_341;
        } else {
          print lift_310, "\n";
          lift_357 := lift_357;
        }
      }
    }
    lift_358 := safeSeqRef(lift_365, lift_52, lift_369).1;
    var methoddefvar_371 := lift_281((lift_156[lift_153] as int));
    {
      var lift_379 := (lift_377, lift_270);
      var lift_378 := multiset{lift_342, ()};
      var lift_372 := true;
      {
        lift_372 := lift_261;
        lift_373 := lift_123;
        lift_374 := lift_375;
        lift_378 := (var tmpData : multiset<()> := multiset{}; tmpData);
        lift_379 := lift_380;
      }
      {
        var lift_388 := -513313959;
        print lift_71, "\n";
        print lift_30, "\n";
        lift_388 := lift_252;
      }
      lift_389 := lift_216;
    }
    var methoddefvar_392 := lift_390(
      (multiset{lift_28}[lift_111] as int),
      (lift_113 as int),
      |lift_44|
    );
    {
      var lift_422 := (lift_423, lift_221);
      lift_422 := (lift_426, ());
      {
        lift_430 := lift_430;
        lift_431 := lift_260;
        lift_432 := true;
      }
      if (lift_262) {
        print lift_424, "\n";
        lift_433 := lift_251;
      } else {
        lift_435 := methoddefvar_392;
      }
    }
    print lift_252, "\n";
  }
  lift_436 := (((lift_41 > lift_160) || !(lift_28)) <== !((lift_303 in lift_130)));
}


