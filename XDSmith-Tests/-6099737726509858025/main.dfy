//
//
//
//
//
//

// Seed: -6099737726509858025
// This is a RANDOMLY GENERATED PROGRAM.
// Fuzzer: dafny
// Version: dafny, xsmith 2.0.5 (38f1d83), in Racket 8.9 (vm-type chez-scheme)
// Options: --with-print-constrained true --dafny-syntax true --seed -6099737726509858025
// Seed: -6099737726509858025
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
method lift_271 (arg_274 : int, arg_275 : int)
  returns (arg_276 : int)
  requires (true)
  ensures (true)
{
  arg_276 := 1125376258;
  {
    var lift_291 := '<';
    var lift_290 := false;
    var lift_289 := 'Q';
    var lift_288 := multiset{lift_289, lift_289, lift_289};
    var lift_287 := ();
    var lift_286 := (lift_287, lift_288, lift_290);
    var lift_285 := lift_286;
    var lift_284 := lift_285;
    var lift_283 := lift_284;
    var lift_282 := lift_283;
    var lift_281 := lift_282;
    var lift_280 := lift_281;
    var lift_279 := lift_280;
    var lift_278 := lift_279;
    var lift_277 := arg_275;
    print arg_275, "\n";
    print lift_277, "\n";
    print arg_276, "\n";
    lift_278 := lift_278;
    lift_291 := lift_289;
  }
}

method lift_232 (arg_235 : int)
  returns (arg_236 : int)
  requires (true)
  ensures (true)
{
  arg_236 := -206842232;
  {
    var lift_238 := ();
    var lift_237 := 'Y';
    lift_237 := lift_237;
    print arg_235, "\n";
    lift_238 := ();
  }
}

method lift_210 (arg_213 : int, arg_214 : int, arg_215 : int)
  returns (arg_216 : int)
  requires (true)
  ensures (true)
{
  arg_216 := -1077708445;
  {
    var lift_223 := multiset{arg_213, arg_216, 650461709, arg_215, arg_215};
    var lift_222 := multiset{1063039624, arg_215, arg_214, arg_215, arg_213};
    var lift_221 := [
      lift_222,
      lift_222,
      (var tmpData : multiset<int> := multiset{}; tmpData),
      lift_223,
      lift_222
    ];
    var lift_220 := 413266111;
    var lift_219 := arg_216;
    var lift_218 := multiset{1208975347, arg_215, arg_215, arg_214, lift_219};
    var lift_217 := [
      lift_218,
      lift_218,
      lift_218,
      lift_218,
      multiset{arg_216, arg_213, -1633317304, lift_220}
    ];
    lift_217 := lift_221;
    print arg_216, "\n";
  }
}

function lift_143 (arg_145 : (), arg_146 : (), arg_147 : ()) : char
{
  var lift_150 := '-';
  var lift_149 := lift_150;
  var lift_148 := lift_149;
  lift_148
}

function lift_134 (
  arg_136 : char,
  arg_137 : bool,
  arg_138 : bool,
  arg_139 : bool
) : bool
{
  var lift_142 := false;
  var lift_141 := lift_142;
  var lift_140 := lift_141;
  lift_140
}

function lift_113 (
  arg_115 : bool,
  arg_116 : bool,
  arg_117 : bool,
  arg_118 : bool,
  arg_119 : bool
) : int
{
  
  -2112497860
}

method lift_54 ()
  returns (arg_58 : int, arg_59 : int)
  requires (true)
  ensures (true)
{
  arg_58 := -1646131804;
  arg_59 := -1564458251;
  {
    var lift_68 := false;
    var lift_67 := 'x';
    var lift_66 := lift_67;
    var lift_65 := (91083059, lift_66);
    var lift_64 := 'K';
    var lift_63 := (lift_64, lift_65, lift_68);
    var lift_62 := lift_63;
    var lift_61 := lift_62;
    var lift_60 := (var tmpData : multiset<bool> := multiset{}; tmpData);
    lift_60 := lift_60;
    lift_61 := lift_61;
  }
}

method lift_16 (arg_20 : int, arg_21 : int)
  returns (arg_22 : int, arg_23 : int)
  requires (true)
  ensures (true)
{
  arg_22 := -1427336360;
  arg_23 := -244548707;
  {
    print arg_23, "\n";
  }
}

function lift_3 (arg_5 : (), arg_6 : (), arg_7 : char) : (int, int, int)
{
  var lift_11 := 920523216;
  var lift_10 := lift_11;
  var lift_9 := -268322118;
  var lift_8 := (lift_9, lift_9, lift_10);
  lift_8
}

method Main () {
  var lift_376 := -1335492686;
  var lift_375 := lift_376;
  var lift_374 := 306121028;
  var lift_373 := -794599252;
  var lift_372 := [lift_373, lift_374, lift_375];
  var lift_371 := lift_372;
  var lift_370 := lift_371;
  var lift_369 := lift_370;
  var lift_368 := lift_369;
  var lift_367 := 'R';
  var lift_366 := lift_367;
  var lift_365 := lift_366;
  var lift_364 := ();
  var lift_363 := multiset{lift_364};
  var lift_362 := (lift_363, lift_365, lift_368);
  var lift_360 := true;
  var lift_359 := 'w';
  var lift_358 := (lift_359, lift_359, lift_360);
  var lift_357 := 1058514062;
  var lift_356 := false;
  var lift_355 := 'K';
  var lift_354 := ();
  var lift_353 := (lift_354, (lift_355, lift_356, lift_357), lift_358);
  var lift_352 := lift_353;
  var lift_346 := (var tmpData : multiset<(bool, bool)> := multiset{}; tmpData);
  var lift_345 := lift_346;
  var lift_344 := lift_345;
  var lift_343 := lift_344;
  var lift_342 := multiset{lift_343, lift_345};
  var lift_341 := lift_342;
  var lift_340 := lift_341;
  var lift_339 := 1658194914;
  var lift_338 := (lift_339, ());
  var lift_335 := true;
  var lift_334 := true;
  var lift_333 := ('!', true);
  var lift_332 := (
    lift_333,
    lift_334,
    multiset{lift_334, lift_334, lift_334, lift_335, false}
  );
  var lift_331 := multiset{lift_332, lift_332};
  var lift_328 := true;
  var lift_327 := true;
  var lift_326 := ();
  var lift_325 := (lift_326, lift_327, lift_328);
  var lift_322 := false;
  var lift_321 := lift_322;
  var lift_319 := false;
  var lift_318 := lift_319;
  var lift_317 := true;
  var lift_316 := {lift_317, lift_317, lift_317, lift_318, lift_319};
  var lift_311 := -837841422;
  var lift_307 := 1429995011;
  var lift_306 := lift_307;
  var lift_305 := lift_306;
  var lift_304 := 764574261;
  var lift_303 := ('<', lift_304, lift_305);
  var lift_301 := 639506172;
  var lift_300 := 'p';
  var lift_299 := lift_300;
  var lift_298 := lift_299;
  var lift_297 := (lift_298, lift_301, -553891377);
  var lift_269 := true;
  var lift_268 := (-107016559, lift_269);
  var lift_266 := 'O';
  var lift_265 := lift_266;
  var lift_264 := ('L', lift_265);
  var lift_263 := 'n';
  var lift_262 := lift_263;
  var lift_261 := {lift_262};
  var lift_260 := (lift_261, lift_264);
  var lift_259 := true;
  var lift_258 := -1641053985;
  var lift_257 := 'b';
  var lift_256 := true;
  var lift_255 := (lift_256, lift_257, lift_258);
  var lift_254 := (lift_255, [lift_256, lift_256, lift_259], lift_259);
  var lift_253 := lift_254;
  var lift_251 := 1808898871;
  var lift_250 := -672037579;
  var lift_249 := multiset{lift_250, lift_251};
  var lift_248 := true;
  var lift_247 := (lift_248, lift_249, 'Y');
  var lift_245 := -889632231;
  var lift_244 := false;
  var lift_243 := -662093250;
  var lift_242 := (lift_243, lift_244, lift_245);
  var lift_230 := 'H';
  var lift_229 := lift_230;
  var lift_228 := ();
  var lift_227 := lift_228;
  var lift_226 := ();
  var lift_225 := {lift_226, lift_226, lift_227, ()};
  var lift_224 := (lift_225, lift_229, lift_228);
  var lift_202 := '$';
  var lift_201 := 156057297;
  var lift_200 := false;
  var lift_199 := (lift_200, lift_201, lift_202);
  var lift_196 := 'Q';
  var lift_195 := lift_196;
  var lift_194 := false;
  var lift_193 := (lift_194, -1918527508, lift_195);
  var lift_192 := ':';
  var lift_191 := (1130836649, lift_192, '&');
  var lift_190 := -1583464249;
  var lift_189 := (lift_190, lift_191, lift_193);
  var lift_185 := ();
  var lift_184 := lift_185;
  var lift_183 := multiset{lift_184, (), lift_184};
  var lift_182 := [lift_183];
  var lift_181 := -1305243623;
  var lift_180 := [lift_181];
  var lift_179 := false;
  var lift_178 := lift_179;
  var lift_177 := true;
  var lift_176 := [lift_177, lift_178, lift_178];
  var lift_175 := 'B';
  var lift_174 := ({lift_175, lift_175, '$'}, lift_176, lift_180);
  var lift_173 := 814153280;
  var lift_172 := lift_173;
  var lift_171 := 221614531;
  var lift_170 := {lift_171, lift_171, lift_172};
  var lift_169 := -1764201854;
  var lift_168 := lift_169;
  var lift_167 := {lift_168};
  var lift_166 := lift_167;
  var lift_165 := {lift_166, lift_170, {lift_172, lift_173}, lift_167};
  var lift_164 := lift_165;
  var lift_163 := 81016357;
  var lift_162 := lift_163;
  var lift_161 := {lift_162, lift_162, lift_163, lift_162};
  var lift_160 := lift_161;
  var lift_159 := true;
  var lift_158 := false;
  var lift_157 := (lift_158, lift_159);
  var lift_156 := false;
  var lift_155 := true;
  var lift_154 := (lift_155, lift_156);
  var lift_153 := multiset{lift_154, lift_157};
  var lift_152 := lift_153;
  var lift_151 := {lift_152};
  var lift_133 := false;
  var lift_132 := lift_133;
  var lift_131 := (lift_132, 'U', lift_134);
  var lift_130 := lift_131;
  var lift_129 := lift_130;
  var lift_128 := '_';
  var lift_127 := lift_128;
  var lift_126 := lift_127;
  var lift_125 := 'j';
  var lift_124 := ();
  var lift_123 := ();
  var lift_122 := {lift_123, lift_123, lift_123};
  var lift_121 := (lift_122, lift_124, (lift_125, lift_125, lift_126));
  var lift_120 := 'd';
  var lift_112 := 468488610;
  var lift_111 := lift_112;
  var lift_110 := [lift_111, lift_112, lift_112, lift_111];
  var lift_109 := lift_110;
  var lift_108 := 48680713;
  var lift_107 := -2024524050;
  var lift_106 := 1187601500;
  var lift_105 := [lift_106, lift_107, lift_108, lift_106, -52980839];
  var lift_104 := -1345143171;
  var lift_103 := lift_104;
  var lift_102 := -253019416;
  var lift_101 := multiset{
    [lift_102, lift_103, lift_103, lift_103],
    lift_105,
    [lift_107],
    lift_109
  };
  var lift_100 := lift_101;
  var lift_99 := (lift_100, lift_112, (lift_113, lift_120));
  var lift_96 := -1486469413;
  var lift_95 := -1753297957;
  var lift_94 := (lift_95, lift_96);
  var lift_88 := ();
  var lift_87 := ();
  var lift_86 := [lift_87, lift_88];
  var lift_85 := lift_86;
  var lift_84 := multiset{lift_85};
  var lift_82 := '%';
  var lift_81 := 'R';
  var lift_80 := ['$', lift_81, lift_82];
  var lift_75 := -523768639;
  var lift_74 := true;
  var lift_73 := (lift_74, lift_75);
  var lift_72 := ();
  var lift_71 := -383182401;
  var lift_70 := (lift_71, lift_72, lift_73);
  var lift_69 := lift_70;
  var lift_53 := true;
  var lift_52 := false;
  var lift_51 := (lift_52, lift_53);
  var lift_50 := lift_51;
  var lift_49 := multiset{lift_50, lift_50, lift_50, lift_50};
  var lift_48 := lift_49;
  var lift_47 := {
    lift_48,
    lift_48,
    multiset{lift_51, lift_51, lift_51, lift_51},
    lift_49
  };
  var lift_45 := 'm';
  var lift_44 := false;
  var lift_43 := (lift_44, lift_45);
  var lift_42 := ();
  var lift_41 := (lift_42, lift_43);
  var lift_40 := 'U';
  var lift_39 := lift_40;
  var lift_38 := lift_39;
  var lift_37 := false;
  var lift_36 := (lift_37, lift_38);
  var lift_35 := lift_36;
  var lift_34 := ();
  var lift_33 := (lift_34, lift_35);
  var lift_32 := lift_33;
  var lift_29 := -784894592;
  var lift_28 := 465854376;
  var lift_27 := multiset{1045686292, lift_28, lift_29, lift_28};
  var lift_26 := false;
  var lift_25 := ();
  var lift_24 := (lift_25, (lift_26, -1957611831, true), lift_27);
  var lift_15 := 775507366;
  var lift_14 := 'w';
  var lift_13 := lift_14;
  var lift_12 := ();
  var lift_2 := -1337817484;
  var lift_1 := !((lift_2 >= lift_2 > 73416086));
  lift_1 := (lift_3(lift_12, lift_12, lift_13).1 == lift_15);
  var methoddefvar_18, methoddefvar_19 := lift_16(|lift_24.2|, lift_29);
  {
    var lift_98 := [lift_88, lift_72, lift_42];
    var lift_97 := (methoddefvar_18, -1114280044);
    var lift_89 := 'm';
    var lift_46 := lift_47;
    var lift_31 := multiset{
      lift_32,
      (lift_12, lift_35),
      (lift_12, lift_36),
      (lift_12, (false, lift_38)),
      lift_41
    };
    var lift_30 := (lift_31, lift_2, lift_46);
    print lift_30.1, "\n";
    print (lift_31[lift_41] as int), "\n";
    var methoddefvar_56, methoddefvar_57 := lift_54();
    {
      var lift_83 := lift_84;
      var lift_79 := '-';
      var lift_78 := [[lift_79, lift_45, lift_45, lift_45], lift_80];
      var lift_77 := "c<%U@oC!*|?MN<dYng'/$Y";
      var lift_76 := lift_77;
      lift_69 := lift_69;
      print methoddefvar_18, "\n";
      lift_76 := lift_76;
      lift_78 := lift_78;
      lift_83 := lift_84;
    }
    {
      var lift_91 := 1322732559;
      lift_89 := lift_81;
      {
        var lift_93 := multiset{lift_94, lift_97, lift_97};
        var lift_92 := [lift_87];
        var lift_90 := multiset{lift_91, lift_75, lift_15, lift_29};
        print lift_28, "\n";
        print lift_71, "\n";
        lift_90 := lift_27;
        lift_92 := [lift_88, lift_87, lift_88, (), lift_87];
        lift_93 := multiset{lift_97};
      }
    }
    print (lift_84[lift_98] as int), "\n";
  }
  print 
    lift_99.2.0(
      ({(), ()} == lift_121.0),
      lift_129.2(
        lift_143(lift_87, (), lift_25),
        (lift_122 >= {lift_25}),
        (lift_52 || lift_1),
        (lift_37 && lift_74)
      ),
      (lift_47 < (lift_151 - lift_47 - lift_151) == {lift_153}),
      ((lift_160 - lift_161) !in ({
        {lift_95, lift_29, lift_15, lift_163, lift_111}
      } - lift_164)),
      ((lift_39 as int) !in lift_174.2)
    ),
    "\n";
  {
    var lift_378 := lift_75;
    var lift_351 := lift_352;
    var lift_337 := multiset{lift_338, lift_338};
    var lift_330 := (lift_120, lift_331);
    var lift_320 := {lift_132, lift_321, lift_256};
    var lift_309 := ();
    var lift_308 := 694561422;
    var lift_302 := lift_303;
    var lift_296 := multiset{lift_297, lift_297, lift_297};
    var lift_293 := lift_110;
    var lift_292 := {lift_184, lift_226, lift_25, lift_227};
    var lift_267 := (lift_178, lift_268);
    var lift_252 := lift_247;
    var lift_246 := multiset{lift_247, lift_252};
    var lift_241 := lift_242;
    var lift_240 := multiset{lift_228, lift_228, lift_124};
    var lift_239 := (lift_240, lift_241, lift_246);
    var lift_231 := lift_224;
    var lift_209 := -1861229156;
    var lift_198 := (lift_103, lift_13, lift_81);
    var lift_197 := (-1064444778, lift_198, lift_199);
    var lift_188 := multiset{lift_189, lift_197};
    var lift_186 := (var tmpData : multiset<string> := multiset{}; tmpData);
    if ((multiset(lift_85) in lift_182)) {
      var lift_206 := {
        [lift_190, lift_111, lift_190, lift_163],
        lift_105,
        lift_105,
        [lift_95, lift_75, lift_168]
      };
      if ((multiset{"<&hL;s%", lift_80} == lift_186)) {
        {
          var lift_187 := -2077817993;
          lift_187 := lift_96;
          print lift_169, "\n";
          lift_188 := lift_188;
        }
        var methoddefvar_203, methoddefvar_204 := lift_16(lift_95, lift_75);
        {
          var lift_205 := true;
          print methoddefvar_203, "\n";
          print -909129988, "\n";
          lift_205 := true;
          print 817684859, "\n";
          lift_206 := lift_206;
        }
        var methoddefvar_207, methoddefvar_208 := lift_54();
        {
          print lift_75, "\n";
          print lift_106, "\n";
          print lift_172, "\n";
          lift_209 := lift_172;
        }
        print lift_111, "\n";
        var methoddefvar_212 := lift_210(lift_75, lift_75, lift_2);
        {
          lift_224 := lift_231;
        }
      } else {
        var methoddefvar_234 := lift_232(lift_112);
        {
          print 1562128851, "\n";
          print 1795862150, "\n";
          print lift_112, "\n";
          lift_239 := lift_239;
          print lift_163, "\n";
        }
      }
    } else {
      var lift_295 := {
        lift_296,
        multiset{
          lift_302,
          lift_303,
          (lift_13, lift_75, 2092178192),
          lift_302,
          (lift_298, lift_111, lift_171)
        }
      };
      var lift_294 := [
        lift_295,
        {
          lift_296,
          multiset{lift_297, lift_297, (lift_230, lift_250, lift_168), lift_303}
        },
        lift_295,
        lift_295,
        lift_295
      ];
      if (lift_253.2) {
        var lift_270 := (lift_200, lift_268);
        {
          lift_260 := lift_260;
          print 113479278, "\n";
          print lift_245, "\n";
          print lift_104, "\n";
        }
        print lift_112, "\n";
        lift_267 := lift_270;
      } else {
        var methoddefvar_273 := lift_271(326857614, lift_190);
        {
          lift_292 := {lift_25, lift_34, (), lift_228};
          print lift_108, "\n";
          print -871259231, "\n";
          print -793408587, "\n";
        }
        if (lift_74) {
          print 973848014, "\n";
          print lift_172, "\n";
          print lift_108, "\n";
          lift_293 := (var tmpData : seq<int> := []; tmpData);
          lift_294 := lift_294;
        } else {
          lift_308 := lift_258;
          print 1296264758, "\n";
        }
      }
      lift_309 := lift_224.2;
      var methoddefvar_310 := lift_232(lift_250);
      {
        print lift_15, "\n";
        print lift_71, "\n";
        lift_311 := lift_102;
      }
    }
    if ((safeSeqRef(lift_80, 492805542, lift_126) < lift_131.1)) {
      var lift_324 := lift_325;
      var lift_315 := lift_316;
      var lift_314 := (lift_315, lift_40);
      var lift_313 := lift_314;
      var lift_312 := multiset{lift_313, (lift_320, lift_192), lift_313};
      if ((lift_159 ==> lift_194 ==> lift_177)) {
        var lift_347 := [false];
        var lift_336 := lift_337;
        var lift_323 := {(lift_87, lift_74, lift_133), lift_324};
        {
          var lift_329 := lift_330;
          lift_312 := multiset{lift_314, lift_313, lift_313};
          lift_323 := lift_323;
          lift_329 := lift_329;
          lift_336 := lift_336;
          lift_340 := lift_342;
        }
        lift_347 := lift_176;
      } else {
        var lift_349 := lift_175;
        var methoddefvar_348 := lift_232(lift_250);
        {
          print lift_107, "\n";
          print lift_75, "\n";
          lift_349 := lift_257;
        }
      }
      print lift_113(lift_159, lift_334, lift_132, lift_334, lift_74), "\n";
    } else {
      {
        var lift_350 := false;
        lift_350 := lift_156;
        lift_351 := lift_353;
      }
      var methoddefvar_361 := lift_271(lift_181, lift_163);
      {
        var lift_377 := (lift_183, lift_263, lift_105);
        print lift_111, "\n";
        lift_362 := lift_377;
        lift_378 := lift_339;
      }
    }
  }
  print |(lift_247.1[lift_172 := lengthNormalize(lift_69.0)])|, "\n";
}


