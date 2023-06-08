//
//
//
//
//
//

// Seed: 6386346810348177719
// This is a RANDOMLY GENERATED PROGRAM.
// Fuzzer: dafny
// Version: dafny, xsmith 2.0.5 (38f1d83), in Racket 8.9 (vm-type chez-scheme)
// Options: --with-print-constrained true --dafny-syntax true --seed 6386346810348177719
// Seed: 6386346810348177719
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
method lift_365 (arg_368 : int)
  returns (arg_369 : int)
  requires (true)
  ensures (true)
{
  arg_369 := 1968880350;
  {
    var lift_370 := arg_369;
    print lift_370, "\n";
    print arg_368, "\n";
  }
}

method lift_346 (arg_349 : int)
  returns (arg_350 : int)
  requires (true)
  ensures (true)
{
  arg_350 := -1607407397;
  {
    print arg_350, "\n";
  }
}

method lift_329 (arg_333 : int, arg_334 : int)
  returns (arg_335 : int, arg_336 : int)
  requires (true)
  ensures (true)
{
  arg_335 := 862338260;
  arg_336 := -517320322;
  {
    var lift_339 := '"';
    var lift_338 := (lift_339, lift_339);
    var lift_337 := lift_338;
    lift_337 := lift_338;
    print arg_335, "\n";
    print arg_333, "\n";
    print arg_334, "\n";
  }
}

method lift_295 (arg_299 : int, arg_300 : int, arg_301 : int)
  returns (arg_302 : int, arg_303 : int)
  requires (true)
  ensures (true)
{
  arg_302 := 2029697571;
  arg_303 := 1343372938;
  {
    var lift_315 := ();
    var lift_314 := lift_315;
    var lift_313 := ();
    var lift_312 := {lift_313, lift_314};
    var lift_311 := ();
    var lift_310 := ();
    var lift_309 := lift_310;
    var lift_308 := lift_309;
    var lift_307 := {lift_308, lift_311, lift_311, lift_311};
    var lift_306 := ();
    var lift_305 := ();
    var lift_304 := lift_305;
    lift_304 := lift_304;
    lift_306 := lift_306;
    lift_307 := lift_312;
    print arg_302, "\n";
  }
}

function lift_267 (
  arg_269 : (),
  arg_270 : (bool, char, char),
  arg_271 : seq<int>,
  arg_272 : (int, int),
  arg_273 : ()
) : int
{
  
  -1182028259
}

method lift_217 (arg_220 : int, arg_221 : int)
  returns (arg_222 : int)
  requires (true)
  ensures (true)
{
  arg_222 := -1921626042;
  {
    var lift_266 := true;
    var lift_265 := true;
    var lift_264 := (lift_265, arg_220);
    var lift_263 := lift_264;
    var lift_262 := lift_263;
    var lift_261 := {lift_262, (lift_266, arg_220)};
    var lift_260 := ();
    var lift_259 := multiset{lift_260, ()};
    var lift_258 := ();
    var lift_257 := multiset{lift_258};
    var lift_256 := multiset{lift_257, lift_257, lift_259, lift_259, lift_259};
    var lift_255 := ();
    var lift_254 := lift_255;
    var lift_253 := lift_254;
    var lift_252 := ();
    var lift_251 := lift_252;
    var lift_250 := (lift_251, lift_252);
    var lift_249 := true;
    var lift_248 := 1960153922;
    var lift_247 := true;
    var lift_246 := '/';
    var lift_245 := [lift_246];
    var lift_244 := (lift_245, (arg_222, arg_220, arg_222), lift_247);
    var lift_243 := {
      lift_244,
      (lift_245, (arg_220, arg_222, lift_248), lift_249),
      lift_244
    };
    var lift_242 := 983451115;
    var lift_241 := (arg_222, -2085543109, lift_242);
    var lift_240 := lift_241;
    var lift_239 := "Yq+=Ym|SVd;&xgBv%;='@u~s:w";
    var lift_238 := (lift_239, lift_240, false);
    var lift_237 := arg_222;
    var lift_236 := (arg_222, -658163984, lift_237);
    var lift_235 := lift_236;
    var lift_234 := 'D';
    var lift_233 := ([lift_234], lift_235, false);
    var lift_232 := {lift_233, lift_238};
    var lift_231 := 'H';
    var lift_230 := multiset{'H', lift_231, lift_231};
    var lift_229 := multiset{lift_230, lift_230};
    var lift_228 := 'x';
    var lift_227 := multiset{lift_228};
    var lift_226 := lift_227;
    var lift_225 := lift_226;
    var lift_224 := lift_225;
    var lift_223 := multiset{lift_224};
    lift_223 := lift_229;
    lift_232 := lift_243;
    lift_250 := (lift_252, lift_253);
    lift_256 := lift_256;
    lift_261 := lift_261;
  }
}

method lift_200 (arg_203 : int, arg_204 : int, arg_205 : int)
  returns (arg_206 : int)
  requires (true)
  ensures (true)
{
  arg_206 := 1823847705;
  {
    var lift_214 := {'a'};
    var lift_213 := lift_214;
    var lift_212 := true;
    var lift_211 := lift_212;
    var lift_210 := lift_211;
    var lift_209 := lift_210;
    var lift_208 := lift_209;
    var lift_207 := (lift_208, false, lift_213);
    lift_207 := lift_207;
    print arg_205, "\n";
    print arg_204, "\n";
    print arg_205, "\n";
  }
}

method lift_193 ()
  returns (arg_197 : int, arg_198 : int)
  requires (true)
  ensures (true)
{
  arg_197 := -1999208890;
  arg_198 := -1554646852;
  {
    var lift_199 := -1940041255;
    print arg_198, "\n";
    print arg_198, "\n";
    print lift_199, "\n";
    print lift_199, "\n";
  }
}

method lift_167 ()
  returns (arg_170 : int)
  requires (true)
  ensures (true)
{
  arg_170 := 1118754899;
  {
    var lift_176 := arg_170;
    var lift_175 := -899396023;
    var lift_174 := -351148516;
    var lift_173 := {lift_174, -1337636690, arg_170, lift_175, lift_175};
    var lift_172 := false;
    var lift_171 := (lift_172, lift_173);
    lift_171 := lift_171;
    lift_176 := 2144731259;
    print -1064212794, "\n";
  }
}

method lift_89 ()
  returns (arg_92 : int)
  requires (true)
  ensures (true)
{
  arg_92 := 1820532521;
  {
    var lift_113 := ();
    var lift_112 := lift_113;
    var lift_111 := lift_112;
    var lift_110 := false;
    var lift_109 := lift_110;
    var lift_108 := lift_109;
    var lift_107 := true;
    var lift_106 := (arg_92, lift_107, lift_108);
    var lift_105 := lift_106;
    var lift_104 := (lift_105, lift_111);
    var lift_103 := lift_104;
    var lift_102 := ();
    var lift_101 := true;
    var lift_100 := (arg_92, lift_101, lift_101);
    var lift_99 := (lift_100, lift_102);
    var lift_98 := multiset{lift_99, lift_103, lift_104, lift_104};
    var lift_97 := 324791348;
    var lift_96 := multiset{lift_97, lift_97, lift_97};
    var lift_95 := multiset{arg_92, -208029666, arg_92, arg_92, arg_92};
    var lift_94 := true;
    var lift_93 := lift_94;
    print arg_92, "\n";
    lift_93 := lift_93;
    print -1282052763, "\n";
    lift_95 := lift_96;
    lift_98 := lift_98;
  }
}

function lift_62 (arg_64 : ()) : multiset<string>
{
  var lift_67 := "mxYcc*w\"yb_tuf!Gscf|nSsDpzd=/tDN";
  var lift_66 := "Z%FRa\"eVy:";
  var lift_65 := multiset{lift_66, lift_67, lift_66};
  lift_65
}

method lift_18 (arg_21 : int, arg_22 : int, arg_23 : int)
  returns (arg_24 : int)
  requires (true)
  ensures (true)
{
  arg_24 := 738180993;
  {
    var lift_50 := false;
    var lift_49 := '/';
    var lift_48 := lift_49;
    var lift_47 := false;
    var lift_46 := lift_47;
    var lift_45 := lift_46;
    var lift_44 := (lift_45, -476446807, lift_48);
    var lift_43 := lift_44;
    var lift_42 := '"';
    var lift_41 := (lift_42, lift_42, true);
    var lift_40 := (lift_41, arg_23, lift_43);
    var lift_39 := 'v';
    var lift_38 := lift_39;
    var lift_37 := (false, arg_24, lift_38);
    var lift_36 := false;
    var lift_35 := lift_36;
    var lift_34 := lift_35;
    var lift_33 := 'Q';
    var lift_32 := 'g';
    var lift_31 := (lift_32, lift_33, lift_34);
    var lift_30 := lift_31;
    var lift_29 := (lift_30, -1426150188, lift_37);
    var lift_28 := multiset{lift_29, lift_40, lift_29};
    var lift_27 := false;
    var lift_26 := (true, lift_27);
    var lift_25 := (lift_26, lift_28);
    lift_25 := lift_25;
    lift_50 := lift_46;
  }
}

method Main () {
  var lift_381 := false;
  var lift_380 := (1606049596, lift_381);
  var lift_379 := false;
  var lift_378 := 216454121;
  var lift_377 := (lift_378, lift_379);
  var lift_376 := true;
  var lift_375 := lift_376;
  var lift_374 := -1695609787;
  var lift_373 := (lift_374, lift_375);
  var lift_372 := lift_373;
  var lift_371 := {lift_372, lift_377, lift_380, lift_377};
  var lift_364 := ();
  var lift_363 := true;
  var lift_362 := multiset{lift_363, false};
  var lift_361 := 'c';
  var lift_360 := lift_361;
  var lift_359 := (lift_360, lift_361, lift_360);
  var lift_358 := (lift_359, lift_362, lift_364);
  var lift_357 := false;
  var lift_356 := true;
  var lift_355 := multiset{lift_356, lift_357};
  var lift_354 := '!';
  var lift_353 := (lift_354, lift_354, 'd');
  var lift_344 := 510591854;
  var lift_343 := true;
  var lift_342 := '&';
  var lift_341 := (lift_342, lift_343, lift_344);
  var lift_327 := 459913898;
  var lift_326 := '_';
  var lift_325 := (lift_326, lift_327);
  var lift_324 := 932459508;
  var lift_323 := 'u';
  var lift_322 := lift_323;
  var lift_321 := (lift_322, lift_324);
  var lift_320 := multiset{lift_321, lift_321, lift_325, lift_321, lift_325};
  var lift_319 := 1937661600;
  var lift_318 := {lift_319, -1603748219};
  var lift_317 := -1776747582;
  var lift_316 := (lift_317, lift_318, lift_320);
  var lift_293 := true;
  var lift_292 := '%';
  var lift_291 := lift_292;
  var lift_290 := 'p';
  var lift_289 := 'I';
  var lift_288 := '|';
  var lift_287 := {lift_288, lift_289, lift_290, lift_291, lift_290};
  var lift_286 := ();
  var lift_285 := (lift_286, lift_286, lift_287);
  var lift_281 := 1114970394;
  var lift_280 := lift_281;
  var lift_279 := lift_280;
  var lift_278 := (lift_279, -55280665);
  var lift_276 := 'M';
  var lift_275 := false;
  var lift_274 := (lift_275, lift_276, lift_276);
  var lift_215 := 1897980112;
  var lift_190 := ();
  var lift_189 := 2070169147;
  var lift_188 := (-579861922, lift_189);
  var lift_187 := 224992050;
  var lift_186 := lift_187;
  var lift_185 := lift_186;
  var lift_184 := multiset{
    (lift_185, lift_185),
    (1751855371, -1720857355),
    lift_188
  };
  var lift_159 := 'K';
  var lift_158 := 1364316793;
  var lift_157 := (lift_158, lift_159, lift_159);
  var lift_156 := false;
  var lift_155 := (lift_156, lift_157);
  var lift_154 := 'A';
  var lift_153 := 258135949;
  var lift_152 := (lift_153, lift_154, lift_154);
  var lift_151 := true;
  var lift_150 := (lift_151, lift_152);
  var lift_149 := 'i';
  var lift_148 := 'i';
  var lift_147 := (lift_148, lift_149);
  var lift_146 := lift_147;
  var lift_145 := (
    lift_146,
    {lift_150, lift_155, lift_155, lift_155, lift_150}
  );
  var lift_144 := lift_145;
  var lift_143 := 'U';
  var lift_142 := lift_143;
  var lift_141 := lift_142;
  var lift_140 := 1947323279;
  var lift_139 := lift_140;
  var lift_138 := (lift_139, 'V', lift_141);
  var lift_137 := lift_138;
  var lift_136 := lift_137;
  var lift_135 := lift_136;
  var lift_134 := false;
  var lift_133 := (lift_134, lift_135);
  var lift_132 := 'Q';
  var lift_131 := 740438477;
  var lift_130 := lift_131;
  var lift_129 := lift_130;
  var lift_128 := lift_129;
  var lift_127 := (lift_128, lift_132, '-');
  var lift_126 := false;
  var lift_125 := (lift_126, lift_127);
  var lift_124 := lift_125;
  var lift_123 := {lift_124, (false, (lift_128, lift_132, 'J')), lift_133};
  var lift_119 := -374466833;
  var lift_88 := ();
  var lift_87 := 'G';
  var lift_86 := lift_87;
  var lift_85 := (lift_86, lift_88);
  var lift_84 := lift_85;
  var lift_83 := lift_84;
  var lift_82 := [lift_83];
  var lift_81 := ();
  var lift_80 := ('z', lift_81);
  var lift_79 := ();
  var lift_78 := ('y', lift_79);
  var lift_77 := multiset{lift_78, lift_80, lift_80};
  var lift_76 := lift_77;
  var lift_75 := lift_76;
  var lift_74 := lift_75;
  var lift_73 := lift_74;
  var lift_72 := 'O';
  var lift_71 := true;
  var lift_70 := (lift_71, lift_72);
  var lift_69 := (lift_70, lift_73);
  var lift_68 := "!I+%*Jwf&v-:d!Crn\"^-?i|f/<=";
  var lift_61 := ();
  var lift_60 := lift_61;
  var lift_59 := lift_60;
  var lift_58 := {lift_59};
  var lift_57 := lift_58;
  var lift_56 := ();
  var lift_55 := ();
  var lift_54 := {lift_55, lift_56, lift_56, lift_55, ()};
  var lift_53 := lift_54;
  var lift_52 := [lift_53, {(), lift_55}, lift_57, lift_57];
  var lift_51 := lift_52;
  var lift_17 := ();
  var lift_16 := -918762935;
  var lift_15 := '<';
  var lift_14 := lift_15;
  var lift_13 := -1433737182;
  var lift_12 := (lift_13, [lift_14, 'U', 'x', lift_15, '^']);
  var lift_11 := (lift_12, lift_15, true);
  var lift_10 := 166858610;
  var lift_9 := true;
  var lift_8 := lift_9;
  var lift_7 := (lift_8, lift_10);
  var lift_6 := 'd';
  var lift_5 := lift_6;
  var lift_4 := 'y';
  var lift_3 := (-1369764506, lift_4, lift_5);
  var lift_2 := (lift_3, lift_7, lift_11);
  var lift_1 := lift_2.2.0;
  lift_1 := safeSeqRef(
    (var tmpData : seq<(int, set<()>, (string, (int, string), seq<char>))> := []; tmpData),
    lift_16,
    (
      -327366144,
      {(), lift_17, lift_17},
      ("V@>PdlCi^^ZMqOzCK|t|!XVusx", lift_1, ":n")
    )
  ).2.1;
  var methoddefvar_20 := lift_18(
    |lift_51|,
    (lift_62(lift_59)[lift_68] as int),
    (lift_69.1[safeSeqRef(lift_82, lift_13, lift_83)] as int)
  );
  {
    var lift_183 := (lift_131, 530478314);
    var lift_182 := lift_183;
    var lift_177 := {{(), lift_61}, {lift_88, lift_55}, lift_53};
    var lift_165 := [lift_134, lift_71, false, lift_71, lift_71];
    var lift_164 := lift_165;
    var lift_160 := {(), lift_60, lift_59};
    {
      var lift_120 := true;
      var lift_118 := 2136749898;
      var lift_115 := -773256630;
      var methoddefvar_91 := lift_89();
      {
        var lift_117 := multiset{lift_13};
        var lift_116 := (lift_117, lift_61);
        var lift_114 := true;
        lift_114 := false;
        lift_115 := -157447143;
        lift_116 := lift_116;
        print lift_115, "\n";
      }
      {
        print lift_10, "\n";
        print methoddefvar_20, "\n";
        lift_118 := lift_16;
        lift_119 := lift_119;
      }
      if (lift_120) {
        var lift_122 := (lift_86, lift_5);
        var lift_121 := (lift_122, lift_123);
        lift_121 := lift_144;
        print lift_139, "\n";
        lift_160 := lift_160;
      } else {
        var lift_166 := 'z';
        var lift_163 := lift_134;
        var lift_162 := (
          {lift_129, lift_16, -1812344016, lift_130, lift_16},
          ()
        );
        var lift_161 := lift_162;
        lift_161 := lift_162;
        lift_163 := lift_151;
        print methoddefvar_20, "\n";
        lift_164 := lift_164;
        lift_166 := lift_148;
      }
      print lift_130, "\n";
    }
    {
      var lift_192 := lift_134;
      var lift_191 := lift_192;
      var lift_181 := multiset{lift_182, lift_182, lift_182};
      var methoddefvar_169 := lift_167();
      {
        var lift_180 := (methoddefvar_169, lift_140);
        var lift_179 := (lift_158, lift_153);
        var lift_178 := {
          multiset{lift_179, lift_180, lift_180, lift_179, lift_180},
          lift_181
        };
        lift_177 := lift_177;
        lift_178 := {
          lift_181,
          lift_181,
          lift_184,
          multiset{lift_182, lift_182, lift_183, lift_180}
        };
        lift_190 := lift_61;
      }
      print 167554546, "\n";
      {
        print lift_140, "\n";
        print lift_140, "\n";
      }
      lift_191 := lift_191;
      var methoddefvar_195, methoddefvar_196 := lift_193();
      {
        print lift_140, "\n";
        print lift_119, "\n";
        print lift_130, "\n";
      }
    }
  }
  {
    var lift_294 := '<';
    var lift_277 := [lift_186, lift_119, lift_129, lift_131];
    var lift_216 := 'j';
    print lift_137.0, "\n";
    {
      var methoddefvar_202 := lift_200(lift_16, lift_128, lift_140);
      {
        print lift_186, "\n";
        lift_215 := lift_128;
      }
      lift_216 := safeSeqRef(lift_68, lift_129, lift_72);
    }
    var methoddefvar_219 := lift_217(
      lift_267((), lift_274, lift_277, lift_278, lift_190),
      lift_158
    );
    {
      var lift_352 := {
        (lift_353, lift_355, lift_190),
        lift_358,
        (lift_359, lift_355, lift_59)
      };
      var lift_351 := ();
      var lift_340 := true;
      var lift_328 := (lift_86, lift_189);
      var methoddefvar_282, methoddefvar_283 := lift_193();
      {
        var lift_284 := ();
        lift_284 := ();
        lift_285 := lift_285;
        lift_293 := lift_275;
        lift_294 := '^';
      }
      var methoddefvar_297, methoddefvar_298 := lift_295(
        lift_139,
        lift_279,
        lift_158
      );
      {
        print lift_10, "\n";
        lift_316 := (
          -1764473388,
          lift_318,
          multiset{lift_325, lift_321, lift_328}
        );
        print lift_215, "\n";
      }
      var methoddefvar_331, methoddefvar_332 := lift_329(
        lift_158,
        methoddefvar_219
      );
      {
        var lift_345 := multiset{lift_61};
        print lift_131, "\n";
        print 2081480083, "\n";
        lift_340 := lift_340;
        lift_341 := (lift_141, lift_275, lift_10);
        lift_345 := lift_345;
      }
      var methoddefvar_348 := lift_346(lift_129);
      {
        lift_351 := lift_59;
        lift_352 := lift_352;
      }
      var methoddefvar_367 := lift_365(lift_131);
      {
        var lift_382 := (var tmpData : set<(int, bool)> := {}; tmpData);
        lift_371 := lift_382;
        print -1375870552, "\n";
        print lift_374, "\n";
      }
    }
  }
}


