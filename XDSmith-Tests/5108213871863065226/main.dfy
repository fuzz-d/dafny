//
//
//
//
//
//

// Seed: 5108213871863065226
// This is a RANDOMLY GENERATED PROGRAM.
// Fuzzer: dafny
// Version: dafny, xsmith 2.0.5 (38f1d83), in Racket 8.9 (vm-type chez-scheme)
// Options: --with-print-constrained true --dafny-syntax true --seed 5108213871863065226
// Seed: 5108213871863065226
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
method lift_352 (arg_355 : int, arg_356 : int, arg_357 : int)
  returns (arg_358 : int)
  requires (true)
  ensures (true)
{
  arg_358 := -107305494;
  {
    var lift_359 := -1187711057;
    lift_359 := arg_355;
  }
}

method lift_275 ()
  returns (arg_279 : int, arg_280 : int)
  requires (true)
  ensures (true)
{
  arg_279 := -679312470;
  arg_280 := -697911727;
  {
    var lift_294 := 'J';
    var lift_293 := false;
    var lift_292 := lift_293;
    var lift_291 := (lift_292, lift_294, lift_294);
    var lift_290 := lift_291;
    var lift_289 := lift_290;
    var lift_288 := lift_289;
    var lift_287 := 'u';
    var lift_286 := lift_287;
    var lift_285 := lift_286;
    var lift_284 := true;
    var lift_283 := (lift_284, lift_285, lift_287);
    var lift_282 := (lift_283, 'V');
    var lift_281 := ();
    lift_281 := ();
    lift_282 := (lift_288, lift_287);
  }
}

method lift_236 (arg_240 : int, arg_241 : int)
  returns (arg_242 : int, arg_243 : int)
  requires (true)
  ensures (true)
{
  arg_242 := 1675555397;
  arg_243 := 218425744;
  {
    var lift_263 := '$';
    var lift_262 := true;
    var lift_261 := lift_262;
    var lift_260 := [false, lift_261, lift_261];
    var lift_259 := false;
    var lift_258 := [true, lift_259, false, lift_259, lift_259];
    var lift_257 := [lift_258, lift_258, lift_260, lift_260];
    var lift_256 := false;
    var lift_255 := true;
    var lift_254 := lift_255;
    var lift_253 := [lift_254, lift_255, lift_256];
    var lift_252 := lift_253;
    var lift_251 := false;
    var lift_250 := [true, lift_251];
    var lift_249 := [lift_250, [lift_251], lift_252, lift_253, lift_253];
    var lift_248 := false;
    var lift_247 := lift_248;
    var lift_246 := (lift_247, 1416905894);
    var lift_245 := (-1269851343, lift_246);
    var lift_244 := lift_245;
    print arg_241, "\n";
    print -1262170343, "\n";
    lift_244 := lift_245;
    lift_249 := lift_257;
    lift_263 := lift_263;
  }
}

function lift_230 (arg_232 : char, arg_233 : bool) : ()
{
  var lift_234 := ();
  lift_234
}

function lift_197 (
  arg_199 : bool,
  arg_200 : char,
  arg_201 : char,
  arg_202 : int,
  arg_203 : bool
) : int
{
  
  -1143012420
}

function lift_193 (
  arg_195 : multiset<((), (int, int))>,
  arg_196 : set<()>
) : ((bool, char, char, int, bool) -> int)
{
  
  lift_197
}

method lift_179 (arg_183 : int)
  returns (arg_184 : int, arg_185 : int)
  requires (true)
  ensures (true)
{
  arg_184 := 1787029486;
  arg_185 := 204719673;
  {
    var lift_187 := 'W';
    var lift_186 := ();
    lift_186 := lift_186;
    lift_187 := lift_187;
  }
}

function lift_134 (
  arg_136 : seq<bool>,
  arg_137 : int,
  arg_138 : char,
  arg_139 : (bool, char, bool),
  arg_140 : bool
) : set<string>
{
  var lift_145 := "_BUXc/^M=V%;AVtyen-rW!%gBDQYt_Er|K>;y";
  var lift_144 := 'z';
  var lift_143 := [lift_144];
  var lift_142 := lift_143;
  var lift_141 := {lift_142, lift_145, lift_145};
  lift_141
}

method lift_76 ()
  returns (arg_79 : int)
  requires (true)
  ensures (true)
{
  arg_79 := 1196482472;
  {
    var lift_105 := ();
    var lift_104 := false;
    var lift_103 := (arg_79, lift_104, lift_105);
    var lift_102 := ();
    var lift_101 := false;
    var lift_100 := lift_101;
    var lift_99 := lift_100;
    var lift_98 := 2119043954;
    var lift_97 := lift_98;
    var lift_96 := (lift_97, lift_99, lift_102);
    var lift_95 := 327699485;
    var lift_94 := 'V';
    var lift_93 := (lift_94, lift_95, arg_79);
    var lift_92 := ();
    var lift_91 := 'T';
    var lift_90 := ('*', arg_79, lift_91);
    var lift_89 := (lift_90, lift_92, {lift_93, lift_93});
    var lift_88 := (var tmpData : set<(char, int, int)> := {}; tmpData);
    var lift_87 := ();
    var lift_86 := 'n';
    var lift_85 := lift_86;
    var lift_84 := arg_79;
    var lift_83 := lift_84;
    var lift_82 := 'S';
    var lift_81 := (lift_82, lift_83, lift_85);
    var lift_80 := (lift_81, lift_87, lift_88);
    lift_80 := lift_89;
    lift_96 := lift_103;
  }
}

method lift_23 ()
  returns (arg_27 : int, arg_28 : int)
  requires (true)
  ensures (true)
{
  arg_27 := 329691289;
  arg_28 := -1995111699;
  {
    var lift_66 := (var tmpData : seq<()> := []; tmpData);
    var lift_65 := ();
    var lift_64 := ();
    var lift_63 := [lift_64, lift_65, (), lift_64, lift_65];
    var lift_62 := multiset{lift_63, lift_66};
    var lift_61 := lift_62;
    var lift_60 := lift_61;
    var lift_59 := false;
    var lift_58 := multiset{false, lift_59};
    var lift_57 := 't';
    var lift_56 := lift_57;
    var lift_55 := lift_56;
    var lift_54 := lift_55;
    var lift_53 := ('S', true, lift_54);
    var lift_52 := multiset{lift_53};
    var lift_51 := (lift_52, lift_58, lift_60);
    var lift_50 := ();
    var lift_49 := multiset{[lift_50]};
    var lift_48 := false;
    var lift_47 := true;
    var lift_46 := true;
    var lift_45 := true;
    var lift_44 := multiset{lift_45, lift_46, lift_47, lift_48};
    var lift_43 := false;
    var lift_42 := ':';
    var lift_41 := lift_42;
    var lift_40 := lift_41;
    var lift_39 := lift_40;
    var lift_38 := (lift_39, lift_43, lift_42);
    var lift_37 := lift_38;
    var lift_36 := multiset{lift_37};
    var lift_35 := (lift_36, lift_44, lift_49);
    var lift_34 := lift_35;
    var lift_33 := -1329406742;
    var lift_32 := 'O';
    var lift_31 := multiset{lift_32};
    var lift_30 := ();
    var lift_29 := (lift_30, lift_31);
    lift_29 := lift_29;
    print lift_33, "\n";
    print -1832960671, "\n";
    lift_34 := lift_51;
  }
}

method lift_1 (arg_4 : int, arg_5 : int)
  returns (arg_6 : int)
  requires (true)
  ensures (true)
{
  arg_6 := -975582144;
  {
    var lift_13 := 'U';
    var lift_12 := true;
    var lift_11 := lift_12;
    var lift_10 := lift_11;
    var lift_9 := false;
    var lift_8 := false;
    var lift_7 := false;
    lift_7 := lift_8;
    lift_9 := lift_8;
    lift_10 := true;
    lift_13 := 'j';
  }
}

method Main () {
  var lift_389 := 'R';
  var lift_388 := -555924375;
  var lift_387 := false;
  var lift_386 := lift_387;
  var lift_385 := (lift_386, lift_388);
  var lift_384 := (lift_385, lift_388);
  var lift_383 := lift_384;
  var lift_382 := (lift_383, lift_389);
  var lift_381 := lift_382;
  var lift_380 := lift_381.0;
  var lift_376 := true;
  var lift_375 := -1819252477;
  var lift_374 := lift_375;
  var lift_373 := lift_374;
  var lift_372 := (lift_373, lift_376);
  var lift_371 := {lift_372};
  var lift_367 := -8231860;
  var lift_365 := ();
  var lift_364 := ();
  var lift_363 := {lift_364, lift_364, lift_365, lift_365, lift_365};
  var lift_362 := lift_363;
  var lift_351 := false;
  var lift_350 := lift_351;
  var lift_349 := true;
  var lift_348 := (true, lift_349);
  var lift_347 := (false, lift_348, lift_350);
  var lift_346 := lift_347;
  var lift_345 := lift_346;
  var lift_344 := false;
  var lift_343 := (lift_344, true);
  var lift_342 := false;
  var lift_341 := (lift_342, lift_343, lift_342);
  var lift_340 := {lift_341, lift_341, lift_345, lift_341, lift_346};
  var lift_339 := ();
  var lift_338 := (lift_339, lift_340);
  var lift_337 := true;
  var lift_336 := false;
  var lift_335 := (lift_336, lift_337);
  var lift_334 := (false, lift_335, false);
  var lift_333 := true;
  var lift_332 := lift_333;
  var lift_331 := lift_332;
  var lift_330 := (lift_331, lift_332);
  var lift_329 := true;
  var lift_328 := (lift_329, lift_330, lift_332);
  var lift_327 := {lift_328, lift_334, lift_334};
  var lift_326 := lift_327;
  var lift_325 := lift_326;
  var lift_324 := lift_325;
  var lift_320 := '/';
  var lift_319 := -1346313042;
  var lift_318 := lift_319;
  var lift_317 := (lift_318, lift_320, 'O');
  var lift_316 := lift_317;
  var lift_315 := (lift_316, 'b');
  var lift_308 := -2096033063;
  var lift_307 := 'L';
  var lift_306 := (lift_307, lift_307, lift_308);
  var lift_301 := true;
  var lift_300 := 'r';
  var lift_299 := (lift_300, lift_301, lift_301);
  var lift_298 := lift_299;
  var lift_274 := 584997818;
  var lift_273 := ':';
  var lift_272 := (var tmpData : set<char> := {}; tmpData);
  var lift_271 := lift_272;
  var lift_270 := '-';
  var lift_269 := {lift_270, lift_270, lift_270};
  var lift_268 := lift_269;
  var lift_267 := {lift_268, lift_271, {lift_273}, lift_269, lift_268};
  var lift_266 := (lift_267, lift_274);
  var lift_229 := ();
  var lift_228 := lift_229;
  var lift_227 := lift_228;
  var lift_224 := ();
  var lift_223 := true;
  var lift_222 := '<';
  var lift_221 := (lift_222, lift_223);
  var lift_218 := '/';
  var lift_217 := "R?upaJO-%we~<trcZ=qFTx\"vLlrvybA=>";
  var lift_216 := (var tmpData : multiset<((bool, char, char), (bool, bool), ())> := multiset{}; tmpData);
  var lift_215 := (lift_216, lift_217, lift_218);
  var lift_214 := (var tmpData : seq<()> := []; tmpData);
  var lift_213 := ();
  var lift_210 := -76933541;
  var lift_209 := (lift_210, lift_210);
  var lift_208 := ();
  var lift_207 := (lift_208, lift_209);
  var lift_206 := lift_207;
  var lift_192 := -1232689169;
  var lift_191 := lift_192;
  var lift_190 := 1476110837;
  var lift_189 := (lift_190, lift_191);
  var lift_188 := lift_189;
  var lift_177 := -1449562748;
  var lift_176 := [1561119353, lift_177];
  var lift_170 := '\'';
  var lift_169 := lift_170;
  var lift_166 := false;
  var lift_165 := 'm';
  var lift_164 := (lift_165, lift_166);
  var lift_157 := (var tmpData : seq<char> := []; tmpData);
  var lift_156 := {"nHJFhn\"l!>zH", ":z:<BEH;", lift_157, lift_157};
  var lift_155 := true;
  var lift_154 := lift_155;
  var lift_153 := lift_154;
  var lift_152 := lift_153;
  var lift_151 := 's';
  var lift_150 := false;
  var lift_149 := lift_150;
  var lift_148 := (lift_149, lift_151, lift_152);
  var lift_147 := true;
  var lift_146 := [lift_147, false, true];
  var lift_130 := -919159561;
  var lift_129 := -216978490;
  var lift_128 := {2026847745, lift_129, lift_129, lift_130};
  var lift_127 := -228787981;
  var lift_126 := '/';
  var lift_125 := lift_126;
  var lift_124 := lift_125;
  var lift_123 := '~';
  var lift_122 := ['X', lift_123, 'n', '$', lift_124];
  var lift_121 := (var tmpData : string := []; tmpData);
  var lift_120 := lift_121;
  var lift_119 := {lift_120, lift_122};
  var lift_118 := lift_119;
  var lift_117 := (lift_118, (lift_127, lift_126), lift_128);
  var lift_114 := '$';
  var lift_113 := lift_114;
  var lift_75 := -2095640929;
  var lift_74 := -498686176;
  var lift_73 := true;
  var lift_72 := lift_73;
  var lift_71 := lift_72;
  var lift_70 := [lift_71, lift_72];
  var lift_69 := (lift_70, lift_74, lift_75);
  var lift_22 := -484483356;
  var lift_21 := -428894458;
  var lift_20 := [lift_21, lift_22, lift_22, lift_22, lift_21];
  var lift_19 := false;
  var lift_18 := [lift_19, lift_19, lift_19, lift_19, true];
  var lift_17 := -920875588;
  var lift_16 := lift_17;
  var lift_15 := '_';
  var lift_14 := (lift_15, (lift_16, lift_16), lift_18);
  var methoddefvar_3 := lift_1(
    (lift_14.0 as int),
    safeSeqRef(
      safeSeqDrop(lift_20, lift_21),
      safeSeqRef((var tmpData : seq<int> := []; tmpData), lift_22, lift_22),
      1201385648
    )
  );
  {
    var lift_112 := 'S';
    var lift_111 := {lift_112, lift_15};
    var lift_110 := lift_111;
    var lift_107 := false;
    var lift_106 := (lift_17, lift_107);
    var lift_68 := -1553239246;
    {
      print -1587581925, "\n";
      var methoddefvar_25, methoddefvar_26 := lift_23();
      {
        print methoddefvar_3, "\n";
      }
      var methoddefvar_67 := lift_1(lift_22, lift_17);
      {
        print lift_22, "\n";
        print methoddefvar_3, "\n";
        print lift_68, "\n";
        lift_69 := lift_69;
      }
    }
    var methoddefvar_78 := lift_76();
    {
      var lift_109 := {lift_15};
      var lift_108 := lift_109;
      print lift_74, "\n";
      lift_106 := lift_106;
      lift_108 := lift_110;
      lift_113 := lift_112;
    }
    if ((lift_19, (var tmpData : seq<set<int>> := []; tmpData), false).0) {
      var lift_116 := ();
      var lift_115 := lift_116;
      {
        lift_115 := lift_115;
        print -787063493, "\n";
      }
      lift_117 := (lift_119, (lift_21, lift_112), lift_128);
      print lift_75, "\n";
    } else {
      var methoddefvar_131, methoddefvar_132 := lift_23();
      {
        print lift_130, "\n";
      }
      var methoddefvar_133 := lift_1(lift_74, methoddefvar_3);
      {
        print lift_17, "\n";
        print lift_75, "\n";
        print lift_21, "\n";
      }
    }
  }
  if ((lift_118 > (lift_134(
    lift_146,
    lift_75,
    'K',
    lift_148,
    lift_19
  ) + lift_156 + ((var tmpData : set<seq<char>> := {}; tmpData) * lift_118 * lift_118)))) {
    var lift_296 := [lift_21, 1351970922];
    var lift_295 := (
      lift_296,
      multiset{lift_152, lift_72, false, lift_150},
      (var tmpData : seq<bool> := []; tmpData)
    );
    var lift_265 := [lift_176, lift_20];
    var lift_264 := lift_265;
    var lift_226 := (lift_221, lift_224, lift_221);
    var lift_225 := (lift_221, lift_208, lift_221);
    var lift_220 := lift_221;
    var lift_219 := {(lift_220, lift_224, (lift_169, lift_153))};
    var lift_212 := ();
    var lift_211 := {lift_208, lift_212, lift_208, lift_213, lift_213};
    var lift_205 := lift_206;
    var lift_204 := multiset{((), lift_189), lift_205};
    var lift_178 := [lift_130, lift_130, -2096120132];
    var lift_175 := ();
    var lift_174 := (lift_164, lift_175, lift_164);
    var lift_173 := (lift_114, lift_155);
    var lift_168 := (lift_113, lift_147);
    var lift_167 := ();
    var lift_163 := (lift_164, lift_167, lift_168);
    var lift_161 := (var tmpData : set<((char, bool), (), (char, bool))> := {}; tmpData);
    var lift_160 := [-2105026980, lift_21, lift_75];
    var methoddefvar_158 := lift_76();
    {
      var lift_172 := lift_173;
      var lift_171 := lift_167;
      var lift_162 := {
        lift_163,
        ((lift_169, lift_71), lift_171, lift_172),
        lift_174,
        lift_163
      };
      print lift_127, "\n";
      print lift_17, "\n";
      var methoddefvar_159 := lift_76();
      {
        print -1750227259, "\n";
        lift_160 := lift_20;
        lift_161 := lift_162;
      }
      lift_176 := lift_178;
    }
    var methoddefvar_181, methoddefvar_182 := lift_179(lift_188.0);
    {
      print lift_75, "\n";
    }
    print 
      lift_193(lift_204, lift_211)(
        (lift_204 !! multiset{
          lift_207,
          lift_207,
          lift_207,
          (lift_167, lift_188)
        }),
        safeSeqRef(lift_157, lift_22, lift_123),
        safeSeqRef(lift_122, 76885926, lift_113),
        lift_188.1,
        (() !in lift_214)
      ),
      "\n";
    print (lift_215.2 as int), "\n";
    if (((lift_161 - lift_219) == (lift_219 - {
      lift_225,
      lift_225,
      lift_163,
      lift_225,
      lift_226
    }))) {
      var lift_235 := ();
      lift_227 := lift_230(lift_170, false);
      lift_235 := lift_225.1;
      print |[(), lift_224, lift_175, lift_213]|, "\n";
    } else {
      var methoddefvar_238, methoddefvar_239 := lift_236(lift_191, lift_17);
      {
        print methoddefvar_238, "\n";
        lift_264 := lift_264;
      }
      lift_266 := lift_266;
      var methoddefvar_277, methoddefvar_278 := lift_275();
      {
        print lift_210, "\n";
        lift_295 := lift_295;
      }
    }
  } else {
    var lift_390 := (lift_385, lift_367);
    var lift_370 := {lift_308};
    var lift_369 := (lift_70, lift_176);
    var lift_361 := [
      {lift_228, (), lift_227, lift_224, lift_227},
      lift_362,
      (var tmpData : set<()> := {}; tmpData)
    ];
    var lift_314 := multiset{
      lift_315,
      lift_315,
      lift_315,
      (lift_316, lift_124),
      lift_315
    };
    var lift_305 := multiset{lift_306, lift_306, lift_306, lift_306, lift_306};
    if (((lift_269 == lift_269 == lift_271) in safeSeqDrop(
      lift_146,
      lift_191
    ))) {
      var lift_366 := false;
      var lift_313 := [lift_123];
      var lift_311 := (var tmpData : set<(int, bool)> := {}; tmpData);
      var lift_310 := "dbpITGyo^'yX@\"J&H:~vFss*&'";
      var lift_309 := (lift_222, lift_16, lift_192);
      var lift_304 := (lift_305, lift_309, (lift_310, lift_298, lift_311));
      var lift_303 := (var tmpData : set<(int, bool)> := {}; tmpData);
      var lift_302 := lift_303;
      var lift_297 := ([lift_125, lift_151, lift_165, '>'], lift_298, lift_302);
      lift_297 := lift_304.2;
      print |lift_216|, "\n";
      print lift_69.2, "\n";
      if ((lift_272 !! (var tmpData : set<char> := {}; tmpData))) {
        if (lift_73) {
          print lift_74, "\n";
        } else {
          print lift_308, "\n";
          print lift_75, "\n";
          print lift_192, "\n";
          print lift_17, "\n";
        }
        {
          print lift_274, "\n";
          print lift_177, "\n";
          print lift_192, "\n";
        }
        if (false) {
          print lift_210, "\n";
        } else {
          var lift_312 := 'e';
          print lift_130, "\n";
          print lift_192, "\n";
          lift_312 := lift_170;
        }
      } else {
        var lift_360 := ((), lift_336, lift_339);
        {
          lift_313 := [lift_125];
          print lift_177, "\n";
          lift_314 := lift_314;
        }
        var methoddefvar_321, methoddefvar_322 := lift_23();
        {
          var lift_323 := (lift_224, lift_324);
          print lift_21, "\n";
          print lift_22, "\n";
          print lift_191, "\n";
          lift_323 := lift_338;
        }
        var methoddefvar_354 := lift_352(lift_192, lift_127, lift_130);
        {
          print lift_129, "\n";
          lift_360 := (lift_229, lift_337, lift_208);
          print lift_308, "\n";
          lift_361 := lift_361;
          print lift_319, "\n";
        }
        print -646696704, "\n";
        if (lift_73) {
          lift_366 := lift_336;
        } else {
          lift_367 := lift_210;
          print lift_74, "\n";
        }
      }
      var methoddefvar_368 := lift_352(1852859342, lift_191, lift_190);
      {
        lift_369 := lift_369;
        lift_370 := lift_128;
        print lift_22, "\n";
      }
    } else {
      var lift_379 := (-1582519653, lift_150);
      var lift_378 := (lift_192, lift_376);
      var lift_377 := {lift_378, (lift_130, true), lift_379, lift_378};
      lift_371 := (lift_371 - lift_377 - lift_371);
    }
    lift_380 := (
      ((), (), {(), lift_208, lift_364, (), lift_365}),
      lift_390,
      multiset{1601664231, lift_130}
    ).1;
  }
}


