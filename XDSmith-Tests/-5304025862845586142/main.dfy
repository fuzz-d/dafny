// RUN: %dafny /noVerify /compile:4 /compileTarget:cs "%s" > "%t"
// RUN: %dafny /noVerify /compile:4 /compileTarget:java "%s" >> "%t"
// RUN: %dafny /noVerify /compile:4 /compileTarget:py "%s" >> "%t"
// RUN: %dafny /noVerify /compile:4 /compileTarget:js "%s" >> "%t"
// RUN: %dafny /noVerify /compile:4 /compileTarget:go "%s" >> "%t"
// RUN: %diff "%s.expect" "%t"

// Seed: -5304025862845586142
// This is a RANDOMLY GENERATED PROGRAM.
// Fuzzer: dafny
// Version: dafny, xsmith 2.0.5 (38f1d83), in Racket 8.9 (vm-type chez-scheme)
// Options: --with-print-constrained true --dafny-syntax true --seed -5304025862845586142
// Seed: -5304025862845586142
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
function lift_453 (
  arg_455 : bool,
  arg_456 : multiset<int>,
  arg_457 : char,
  arg_458 : int
) : int
{
  
  arg_458
}

method lift_414 (arg_418 : int, arg_419 : int, arg_420 : int)
  returns (arg_421 : int, arg_422 : int)
  requires (true)
  ensures (true)
{
  arg_421 := 732716933;
  arg_422 := 1118826435;
  {
    var lift_425 := 'Q';
    var lift_424 := lift_425;
    var lift_423 := multiset{lift_424, lift_424, lift_424};
    print arg_419, "\n";
    lift_423 := lift_423;
    print arg_420, "\n";
    print -332318176, "\n";
  }
}

method lift_365 (arg_368 : int)
  returns (arg_369 : int)
  requires (true)
  ensures (true)
{
  arg_369 := 1227025872;
  {
    var lift_385 := true;
    var lift_384 := lift_385;
    var lift_383 := (var tmpData : set<()> := {}; tmpData);
    var lift_382 := 869033971;
    var lift_381 := (var tmpData : multiset<bool> := multiset{}; tmpData);
    var lift_380 := (lift_381, lift_382, lift_383);
    var lift_379 := ();
    var lift_378 := {lift_379, (), lift_379, lift_379, ()};
    var lift_377 := lift_378;
    var lift_376 := lift_377;
    var lift_375 := lift_376;
    var lift_374 := false;
    var lift_373 := multiset{lift_374, lift_374};
    var lift_372 := (lift_373, arg_368, lift_375);
    var lift_371 := lift_372;
    var lift_370 := (var tmpData : set<int> := {}; tmpData);
    print arg_368, "\n";
    lift_370 := lift_370;
    lift_371 := lift_380;
    lift_384 := true;
  }
}

method lift_320 ()
  returns (arg_323 : int)
  requires (true)
  ensures (true)
{
  arg_323 := 1961056800;
  {
    print arg_323, "\n";
  }
}

method lift_277 (arg_281 : int, arg_282 : int)
  returns (arg_283 : int, arg_284 : int)
  requires (true)
  ensures (true)
{
  arg_283 := -875982009;
  arg_284 := -1691050917;
  {
    var lift_303 := (-1867895044, arg_281);
    var lift_302 := ('F', lift_303);
    var lift_301 := (arg_283, arg_283);
    var lift_300 := 'n';
    var lift_299 := (lift_300, lift_301);
    var lift_298 := {lift_299, lift_302, lift_299};
    var lift_297 := (arg_282, -1203093092);
    var lift_296 := lift_297;
    var lift_295 := 'H';
    var lift_294 := (lift_295, lift_296);
    var lift_293 := (arg_282, arg_281);
    var lift_292 := 'h';
    var lift_291 := lift_292;
    var lift_290 := (lift_291, lift_293);
    var lift_289 := lift_290;
    var lift_288 := {lift_289, lift_294};
    var lift_287 := lift_288;
    var lift_286 := (lift_287, arg_282, 638521433);
    var lift_285 := lift_286;
    lift_285 := (lift_298, arg_283, arg_281);
  }
}

function lift_247 (
  arg_249 : set<seq<(char, int)>>,
  arg_250 : seq<char>
) : (set<bool>, (), bool)
{
  var lift_258 := false;
  var lift_257 := ();
  var lift_256 := lift_257;
  var lift_255 := true;
  var lift_254 := false;
  var lift_253 := false;
  var lift_252 := {lift_253, lift_254, true, lift_255, lift_253};
  var lift_251 := (lift_252, lift_256, lift_258);
  lift_251
}

method lift_223 (arg_227 : int, arg_228 : int, arg_229 : int)
  returns (arg_230 : int, arg_231 : int)
  requires (true)
  ensures (true)
{
  arg_230 := -117908072;
  arg_231 := 392277877;
  {
    print arg_230, "\n";
    print arg_229, "\n";
  }
}

method lift_200 (arg_203 : int, arg_204 : int)
  returns (arg_205 : int)
  requires (true)
  ensures (true)
{
  arg_205 := -1148928921;
  {
    var lift_217 := 'Y';
    var lift_216 := lift_217;
    var lift_215 := '>';
    var lift_214 := lift_215;
    var lift_213 := (lift_214, arg_203);
    var lift_212 := '+';
    var lift_211 := false;
    var lift_210 := 'L';
    var lift_209 := (lift_210, arg_205);
    var lift_208 := ();
    var lift_207 := (lift_208, lift_209, (lift_211, lift_210, lift_212));
    var lift_206 := ();
    lift_206 := lift_206;
    print arg_205, "\n";
    lift_207 := (lift_208, lift_213, (false, lift_210, lift_216));
    print arg_205, "\n";
  }
}

method lift_162 ()
  returns (arg_165 : int)
  requires (true)
  ensures (true)
{
  arg_165 := -313951865;
  {
    var lift_168 := 1104573547;
    var lift_167 := (var tmpData : seq<int> := []; tmpData);
    var lift_166 := (var tmpData : seq<int> := []; tmpData);
    lift_166 := lift_167;
    lift_168 := 1957445693;
  }
}

method lift_122 ()
  returns (arg_126 : int, arg_127 : int)
  requires (true)
  ensures (true)
{
  arg_126 := 1690663565;
  arg_127 := -741805682;
  {
    var lift_140 := (var tmpData : multiset<seq<()>> := multiset{}; tmpData);
    var lift_139 := lift_140;
    var lift_138 := (var tmpData : multiset<seq<()>> := multiset{}; tmpData);
    var lift_137 := lift_138;
    var lift_136 := 'o';
    var lift_135 := {lift_136};
    var lift_134 := lift_135;
    var lift_133 := false;
    var lift_132 := lift_133;
    var lift_131 := (lift_132, lift_134, lift_137);
    var lift_130 := (var tmpData : multiset<()> := multiset{}; tmpData);
    var lift_129 := true;
    var lift_128 := (lift_129, lift_130);
    lift_128 := lift_128;
    print 2139865961, "\n";
    lift_131 := (false, lift_135, lift_139);
    print arg_126, "\n";
  }
}

function lift_55 (
  arg_57 : (string, (char, bool)),
  arg_58 : (char, int, int),
  arg_59 : (set<(char, bool)>, ()),
  arg_60 : (char, multiset<char>)
) : string
{
  
  "?XydrY/\""
}

method Main () {
  var lift_447 := true;
  var lift_446 := true;
  var lift_445 := (lift_446, 'z');
  var lift_444 := (lift_445, multiset{lift_447});
  var lift_443 := 'w';
  var lift_442 := false;
  var lift_441 := lift_442;
  var lift_440 := lift_441;
  var lift_439 := (lift_440, lift_443);
  var lift_438 := lift_439;
  var lift_437 := (lift_438, multiset{lift_442});
  var lift_436 := {lift_437, lift_444};
  var lift_435 := lift_436;
  var lift_434 := lift_435;
  var lift_431 := -2139307452;
  var lift_430 := -889456925;
  var lift_429 := -1448932730;
  var lift_428 := {lift_429, lift_430, lift_430, lift_430, lift_431};
  var lift_427 := lift_428;
  var lift_413 := 968843801;
  var lift_412 := [lift_413, lift_413];
  var lift_411 := -806864799;
  var lift_410 := lift_411;
  var lift_409 := -294979446;
  var lift_408 := [lift_409, lift_410, lift_409];
  var lift_407 := 1091741385;
  var lift_406 := 1004109138;
  var lift_405 := [lift_406, lift_407, lift_407, lift_406];
  var lift_404 := multiset{lift_405, lift_408, lift_412, lift_405};
  var lift_401 := (var tmpData : multiset<((bool, char, int), seq<int>)> := multiset{}; tmpData);
  var lift_400 := lift_401;
  var lift_399 := -1893999162;
  var lift_398 := [lift_399];
  var lift_387 := ();
  var lift_386 := lift_387;
  var lift_364 := ();
  var lift_363 := lift_364;
  var lift_362 := ();
  var lift_361 := {lift_362, lift_363, lift_362};
  var lift_360 := false;
  var lift_359 := lift_360;
  var lift_356 := ();
  var lift_354 := 'd';
  var lift_353 := lift_354;
  var lift_352 := 495575675;
  var lift_351 := lift_352;
  var lift_350 := (lift_351, lift_351, lift_353);
  var lift_349 := lift_350;
  var lift_348 := '@';
  var lift_347 := lift_348;
  var lift_346 := -881570140;
  var lift_345 := 1443937081;
  var lift_344 := (lift_345, lift_346, lift_347);
  var lift_343 := '?';
  var lift_342 := 647591060;
  var lift_341 := multiset{(lift_342, 138356696, lift_343), lift_344, lift_349};
  var lift_340 := 't';
  var lift_339 := lift_340;
  var lift_338 := (true, lift_339, lift_340);
  var lift_337 := lift_338;
  var lift_336 := [lift_337, lift_337, lift_338, lift_338];
  var lift_334 := 'E';
  var lift_333 := lift_334;
  var lift_332 := false;
  var lift_331 := lift_332;
  var lift_330 := lift_331;
  var lift_329 := lift_330;
  var lift_328 := lift_329;
  var lift_327 := (lift_328, lift_333, lift_333);
  var lift_326 := lift_327;
  var lift_318 := -1422469754;
  var lift_317 := [lift_318, lift_318, 531523999, lift_318, -1511096674];
  var lift_314 := false;
  var lift_313 := 'p';
  var lift_312 := (lift_313, lift_314, lift_313);
  var lift_311 := ();
  var lift_310 := (lift_311, lift_312);
  var lift_309 := 'Y';
  var lift_308 := true;
  var lift_307 := ('v', lift_308, lift_309);
  var lift_306 := lift_307;
  var lift_305 := ();
  var lift_304 := multiset{(lift_305, lift_306), lift_310};
  var lift_274 := 298732060;
  var lift_273 := '~';
  var lift_272 := (lift_273, lift_274);
  var lift_271 := 573723876;
  var lift_270 := '?';
  var lift_269 := (lift_270, lift_271);
  var lift_268 := 1512270897;
  var lift_267 := 'g';
  var lift_266 := [(lift_267, lift_268), lift_269, lift_269, lift_269];
  var lift_265 := lift_266;
  var lift_263 := -1231910581;
  var lift_262 := 'A';
  var lift_261 := (lift_262, lift_263);
  var lift_244 := 63183435;
  var lift_243 := ();
  var lift_242 := lift_243;
  var lift_241 := {lift_242, lift_243};
  var lift_240 := lift_241;
  var lift_239 := lift_240;
  var lift_238 := lift_239;
  var lift_237 := 'g';
  var lift_236 := true;
  var lift_235 := lift_236;
  var lift_234 := (lift_235, lift_237);
  var lift_233 := (var tmpData : seq<int> := []; tmpData);
  var lift_232 := (lift_233, lift_234, lift_238);
  var lift_222 := '$';
  var lift_220 := 'B';
  var lift_219 := lift_220;
  var lift_218 := lift_219;
  var lift_197 := 'Q';
  var lift_194 := -1220011283;
  var lift_193 := lift_194;
  var lift_192 := (lift_193, 1832300383);
  var lift_191 := lift_192;
  var lift_190 := ();
  var lift_189 := -2105522538;
  var lift_188 := (lift_189, lift_190, lift_191);
  var lift_187 := -756252244;
  var lift_186 := (lift_187, lift_187);
  var lift_185 := ();
  var lift_184 := -1858570283;
  var lift_183 := multiset{(lift_184, lift_185, lift_186), lift_188};
  var lift_182 := 1282090453;
  var lift_181 := -1147987248;
  var lift_180 := [lift_181, lift_182, lift_181, lift_182, lift_181];
  var lift_179 := (lift_180, lift_183);
  var lift_174 := ();
  var lift_161 := 'M';
  var lift_160 := lift_161;
  var lift_159 := true;
  var lift_158 := (lift_159, lift_160);
  var lift_157 := false;
  var lift_149 := '-';
  var lift_148 := true;
  var lift_147 := lift_148;
  var lift_146 := (lift_147, lift_149, 'v');
  var lift_121 := -1610680361;
  var lift_120 := lift_121;
  var lift_119 := -633861041;
  var lift_118 := multiset{lift_119, lift_120};
  var lift_113 := 1417435896;
  var lift_112 := multiset{lift_113};
  var lift_109 := false;
  var lift_108 := lift_109;
  var lift_107 := {lift_108, lift_109};
  var lift_106 := -246675455;
  var lift_105 := (lift_106, lift_107, lift_108);
  var lift_104 := false;
  var lift_103 := false;
  var lift_102 := lift_103;
  var lift_101 := false;
  var lift_100 := [lift_101, lift_102, lift_104, lift_102, lift_102];
  var lift_96 := false;
  var lift_95 := multiset{lift_96, lift_96};
  var lift_94 := false;
  var lift_93 := true;
  var lift_92 := false;
  var lift_91 := multiset{lift_92, lift_93, lift_94, false};
  var lift_90 := {lift_91, lift_95};
  var lift_89 := lift_90;
  var lift_88 := 'G';
  var lift_87 := -247067946;
  var lift_86 := lift_87;
  var lift_85 := (lift_86, true, lift_88);
  var lift_84 := 106306823;
  var lift_83 := (lift_84, lift_85, lift_89);
  var lift_80 := 'Z';
  var lift_79 := ['Q', lift_80, 'D'];
  var lift_78 := '?';
  var lift_77 := 'v';
  var lift_76 := [lift_77, lift_78, lift_77, '_', lift_78];
  var lift_75 := [lift_76, lift_76, lift_79];
  var lift_74 := {lift_75};
  var lift_73 := lift_74;
  var lift_67 := 1172156796;
  var lift_66 := -1880297485;
  var lift_65 := [lift_66, lift_67, lift_66];
  var lift_64 := 1207759537;
  var lift_63 := ["*MnmVD+$i"];
  var lift_62 := lift_63;
  var lift_61 := lift_62;
  var lift_54 := (lift_55, lift_61);
  var lift_53 := 'G';
  var lift_52 := [lift_53];
  var lift_51 := lift_52;
  var lift_50 := lift_51;
  var lift_45 := (var tmpData : seq<char> := []; tmpData);
  var lift_44 := lift_45;
  var lift_43 := 'y';
  var lift_42 := (('S', lift_43), lift_44);
  var lift_41 := ();
  var lift_40 := ();
  var lift_39 := {lift_40, lift_41};
  var lift_38 := 'D';
  var lift_37 := (lift_38, lift_38);
  var lift_36 := 'l';
  var lift_35 := 'm';
  var lift_34 := (lift_35, lift_36);
  var lift_33 := [lift_34, lift_37];
  var lift_32 := -1883607502;
  var lift_31 := (lift_32, lift_33, lift_32);
  var lift_30 := lift_31;
  var lift_29 := lift_30;
  var lift_28 := lift_29;
  var lift_27 := ';';
  var lift_26 := -1799561003;
  var lift_25 := false;
  var lift_24 := (lift_25, lift_26, lift_27);
  var lift_23 := true;
  var lift_22 := (lift_23, lift_24, lift_28);
  var lift_21 := false;
  var lift_20 := lift_21;
  var lift_19 := false;
  var lift_18 := multiset{lift_19, lift_19, lift_20};
  var lift_17 := 1851865300;
  var lift_16 := 'j';
  var lift_15 := ((lift_16, lift_17), lift_18);
  var lift_14 := true;
  var lift_13 := multiset{lift_14, true};
  var lift_12 := 951347266;
  var lift_11 := '"';
  var lift_10 := (lift_11, lift_12);
  var lift_9 := (lift_10, lift_13);
  var lift_8 := multiset{lift_9, lift_15};
  var lift_7 := 'h';
  var lift_6 := (lift_7, '!');
  var lift_5 := 'K';
  var lift_4 := (lift_5, lift_5);
  var lift_3 := '/';
  var lift_2 := [(lift_3, lift_3), lift_4, lift_6];
  var lift_1 := safeSeqSubseq(
    (lift_2 + lift_2),
    (lift_8[lift_15] as int),
    lift_17
  );
  lift_1 := (lift_22.2.1 + safeSeqSet(
    safeSeqTake([lift_4, lift_34, lift_4], lift_12),
    |lift_39|,
    lift_42.0
  ) + safeSeqSubseq(
    lift_33,
    (
      [
        (
          ((
            arg_46 : (seq<char>, (char, bool)),
            arg_47 : (char, int, int),
            arg_48 : (set<(char, bool)>, ()),
            arg_49 : (char, multiset<char>)
          ) => "<~GC*sV\"\"^gKyEN:MraZT>~"),
          ["IhAWV=A-PQbvH~lOL\"sbAkLI$ugGElT", lift_50, lift_50, lift_50]
        ),
        lift_54
      ],
      lift_64
    ).1,
    safeSeqRef(lift_65, -1409289091, lift_64)
  ));
  if ((safeSeqDrop(safeSeqSubseq(lift_63, lift_17, lift_12), lift_10.1) in (
    (
      [1316629917, lift_32],
      ((
        arg_68 : int,
        arg_69 : (),
        arg_70 : (),
        arg_71 : (),
        arg_72 : ()
      ) => -1021944715),
      lift_73
    ),
    (
      ((arg_81 : bool) => 1655443705),
      "ZnoMVg+@GuQ<a:@O'MdQn",
      (var tmpData : set<char> := {}; tmpData)
    )
  ).0.2)) {
    var lift_99 := [false, lift_14, lift_23];
    var lift_98 := lift_99;
    var lift_97 := [{lift_95, lift_18, multiset{lift_14, lift_14, lift_94}}];
    var lift_82 := lift_83.2;
    lift_82 := safeSeqRef(
      (
        (
          "-WF!ussAfq_WWiy~UW!s",
          -1083103660,
          multiset{lift_93, lift_21, lift_19, lift_92}
        ),
        lift_97,
        ()
      ).1,
      (
        multiset{
          [lift_96, lift_20, lift_92, lift_96, lift_93],
          (var tmpData : seq<bool> := []; tmpData),
          [lift_92, false, lift_92, lift_19, lift_14],
          lift_98,
          lift_100
        },
        lift_67
      ).1,
      lift_82
    );
  } else {
    var lift_275 := (lift_161, lift_106);
    var lift_264 := lift_265;
    var lift_260 := [lift_261];
    var lift_259 := (var tmpData : seq<(char, int)> := []; tmpData);
    var lift_246 := lift_247(
      {lift_259, lift_260, lift_264, lift_265, [lift_272, lift_269, lift_275]},
      lift_76
    );
    var lift_199 := (lift_121, lift_38, 'U');
    var lift_198 := (lift_199, lift_27);
    var lift_178 := (lift_120, lift_26);
    var lift_177 := ();
    var lift_176 := (lift_106, lift_177, lift_178);
    var lift_175 := (lift_86, lift_26);
    var lift_173 := lift_174;
    var lift_172 := (lift_64, lift_173, lift_175);
    var lift_171 := lift_172;
    var lift_156 := (true, lift_106, lift_157);
    var lift_155 := (lift_156, lift_158);
    var lift_153 := 816704075;
    var lift_150 := (lift_104, lift_88, lift_43);
    var lift_145 := ([lift_36, lift_36, lift_88, lift_35], lift_146, lift_41);
    var lift_141 := ();
    var lift_117 := lift_118;
    var lift_116 := lift_117;
    var lift_115 := multiset{lift_12};
    var lift_114 := (var tmpData : multiset<int> := multiset{}; tmpData);
    var lift_111 := [lift_112, lift_114, lift_115, lift_114, lift_116];
    var lift_110 := lift_111;
    if (((lift_16 as int) == |lift_39|)) {
      lift_105 := lift_105;
      print (lift_53 as int), "\n";
    } else {
      var lift_245 := lift_43;
      var lift_221 := (var tmpData : multiset<()> := multiset{}; tmpData);
      var lift_170 := multiset{
        lift_171,
        lift_172,
        (lift_66, lift_40, lift_175),
        lift_171,
        lift_176
      };
      var lift_169 := (lift_65, lift_170);
      var lift_154 := multiset{lift_155};
      var lift_144 := {lift_145, (lift_51, lift_150, ()), lift_145, lift_145};
      var lift_143 := lift_144;
      print |lift_73|, "\n";
      if ((multiset{lift_67, lift_87} in lift_110)) {
        var lift_151 := lift_144;
        var methoddefvar_124, methoddefvar_125 := lift_122();
        {
          lift_141 := lift_141;
          print methoddefvar_124, "\n";
        }
        {
          var lift_152 := lift_153;
          var lift_142 := ';';
          print lift_84, "\n";
          lift_142 := lift_38;
          lift_143 := lift_151;
          print lift_26, "\n";
          lift_152 := 2057797063;
        }
        lift_154 := lift_154;
      } else {
        var methoddefvar_164 := lift_162();
        {
          print lift_86, "\n";
          lift_169 := lift_179;
        }
        var methoddefvar_195, methoddefvar_196 := lift_122();
        {
          lift_197 := lift_11;
          lift_198 := lift_198;
          print lift_84, "\n";
        }
        var methoddefvar_202 := lift_200(lift_194, lift_193);
        {
          print 892214840, "\n";
          lift_218 := lift_53;
        }
        lift_221 := multiset{lift_177, (), lift_177, lift_177, lift_41};
        lift_222 := lift_160;
      }
      var methoddefvar_225, methoddefvar_226 := lift_223(
        lift_119,
        808323511,
        lift_153
      );
      {
        lift_232 := lift_232;
        print lift_121, "\n";
        print lift_181, "\n";
        lift_244 := lift_64;
        lift_245 := lift_5;
      }
    }
    lift_246 := lift_246;
  }
  var methoddefvar_276 := lift_162();
  {
    var lift_448 := 'p';
    var lift_433 := ({lift_194, lift_410}, lift_434, lift_427);
    var lift_403 := multiset{lift_233, lift_233, lift_233, lift_317, lift_233};
    var lift_402 := {lift_403, lift_404, lift_403};
    var lift_397 := multiset{lift_398, lift_65, lift_398};
    var lift_393 := ((), lift_197, lift_318);
    var lift_392 := multiset{lift_393};
    var lift_391 := true;
    var lift_355 := lift_118;
    var lift_335 := lift_336;
    var lift_325 := [lift_326, lift_326];
    var lift_324 := [
      lift_325,
      [(lift_147, 'L', lift_27), lift_326, lift_327, lift_327, lift_146],
      lift_325,
      lift_335,
      [lift_327, (lift_148, 'K', lift_270), lift_337, lift_326]
    ];
    var lift_316 := lift_310;
    var lift_315 := multiset{lift_316, lift_316};
    var methoddefvar_279, methoddefvar_280 := lift_277(-436070855, lift_187);
    {
      var lift_319 := {
        -1109022410,
        lift_187,
        methoddefvar_276,
        methoddefvar_280
      };
      lift_304 := lift_315;
      lift_317 := [954346740, methoddefvar_276];
      lift_319 := lift_319;
    }
    var methoddefvar_322 := lift_320();
    {
      print lift_64, "\n";
    }
    if (([
      (lift_14, lift_262, lift_270),
      lift_146,
      lift_146,
      lift_146
    ] in lift_324)) {
      if (lift_159) {
        lift_341 := multiset{lift_350, lift_350, lift_349};
        lift_355 := lift_112;
        lift_356 := lift_356;
        print lift_12, "\n";
      } else {
        var lift_358 := multiset{lift_64, lift_274, -643516702};
        var lift_357 := (var tmpData : multiset<int> := multiset{}; tmpData);
        print lift_26, "\n";
        lift_357 := lift_358;
        lift_359 := lift_102;
        print lift_64, "\n";
      }
    } else {
      var lift_388 := false;
      lift_361 := lift_240;
      var methoddefvar_367 := lift_365(lift_12);
      {
        lift_386 := lift_311;
        lift_388 := true;
      }
      var methoddefvar_389, methoddefvar_390 := lift_122();
      {
        print lift_119, "\n";
      }
    }
    if (lift_157) {
      var lift_450 := 'd';
      var lift_432 := (var tmpData : set<((bool, char), multiset<bool>)> := {}; tmpData);
      var lift_426 := (lift_427, lift_432, lift_427);
      var lift_396 := {lift_397};
      var lift_395 := (lift_396, lift_400);
      if (lift_308) {
        print lift_181, "\n";
        print lift_87, "\n";
        print lift_263, "\n";
        print lift_67, "\n";
        print lift_113, "\n";
      } else {
        var lift_394 := lift_395;
        print lift_194, "\n";
        lift_391 := lift_308;
        lift_392 := lift_392;
        print lift_263, "\n";
        lift_394 := (lift_402, lift_401);
      }
      var methoddefvar_416, methoddefvar_417 := lift_414(
        lift_184,
        lift_87,
        1008920302
      );
      {
        var lift_449 := 1845937190;
        lift_426 := lift_433;
        lift_448 := lift_353;
        lift_449 := lift_274;
      }
      {
        print lift_345, "\n";
        lift_450 := '+';
      }
    } else {
      {
        var lift_452 := [lift_40, (), lift_362];
        var lift_451 := ();
        lift_451 := lift_190;
        print methoddefvar_276, "\n";
        lift_452 := lift_452;
      }
    }
    print lift_453(lift_157, lift_355, lift_36, -1451046057), "\n";
  }
}


