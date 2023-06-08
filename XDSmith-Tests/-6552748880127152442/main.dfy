// RUN: %dafny /noVerify /compile:4 /compileTarget:cs "%s" > "%t"
// RUN: %dafny /noVerify /compile:4 /compileTarget:java "%s" >> "%t"
// RUN: %dafny /noVerify /compile:4 /compileTarget:py "%s" >> "%t"
// RUN: %dafny /noVerify /compile:4 /compileTarget:js "%s" >> "%t"
// RUN: %dafny /noVerify /compile:4 /compileTarget:go "%s" >> "%t"
// RUN: %diff "%s.expect" "%t"

// Seed: -6552748880127152442
// This is a RANDOMLY GENERATED PROGRAM.
// Fuzzer: dafny
// Version: dafny, xsmith 2.0.5 (38f1d83), in Racket 8.9 (vm-type chez-scheme)
// Options: --with-print-constrained true --dafny-syntax true --seed -6552748880127152442
// Seed: -6552748880127152442
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
method lift_320 (arg_323 : int, arg_324 : int, arg_325 : int)
  returns (arg_326 : int)
  requires (true)
  ensures (true)
{
  arg_326 := -1177512250;
  {
    var lift_341 := 514512750;
    var lift_340 := true;
    var lift_339 := true;
    var lift_338 := {true, true, lift_339, lift_339, lift_340};
    var lift_337 := false;
    var lift_336 := 'P';
    var lift_335 := lift_336;
    var lift_334 := 'Q';
    var lift_333 := (lift_334, lift_335, lift_337);
    var lift_332 := arg_325;
    var lift_331 := ('w', lift_332, arg_325);
    var lift_330 := lift_331;
    var lift_329 := (lift_330, lift_333);
    var lift_328 := 'H';
    var lift_327 := lift_328;
    lift_327 := lift_328;
    lift_329 := (lift_330, lift_333);
    lift_338 := lift_338;
    print arg_323, "\n";
    lift_341 := arg_324;
  }
}

method lift_283 (arg_287 : int)
  returns (arg_288 : int, arg_289 : int)
  requires (true)
  ensures (true)
{
  arg_288 := 1292622741;
  arg_289 := -783770637;
  {
    var lift_301 := (var tmpData : set<()> := {}; tmpData);
    var lift_300 := lift_301;
    var lift_299 := (lift_300, arg_289);
    var lift_298 := ();
    var lift_297 := ();
    var lift_296 := ();
    var lift_295 := lift_296;
    var lift_294 := {lift_295, lift_297, lift_298};
    var lift_293 := (lift_294, arg_287);
    var lift_292 := true;
    var lift_291 := false;
    var lift_290 := 'p';
    lift_290 := lift_290;
    lift_291 := lift_292;
    lift_293 := lift_299;
    print -1906603953, "\n";
  }
}

function lift_278 (arg_280 : char, arg_281 : ()) : int
{
  
  158488455
}

method lift_255 ()
  returns (arg_259 : int, arg_260 : int)
  requires (true)
  ensures (true)
{
  arg_259 := -165024770;
  arg_260 := 2086941761;
  {
    var lift_268 := 1449682950;
    var lift_267 := (-1824884418, 812692830, arg_259);
    var lift_266 := [lift_267, lift_267];
    var lift_265 := arg_259;
    var lift_264 := (lift_265, arg_259, arg_260);
    var lift_263 := 1053711371;
    var lift_262 := (arg_259, lift_263, arg_259);
    var lift_261 := [lift_262, lift_262, lift_264, lift_262];
    print 1834309979, "\n";
    lift_261 := lift_266;
    print lift_268, "\n";
  }
}

method lift_208 ()
  returns (arg_212 : int, arg_213 : int)
  requires (true)
  ensures (true)
{
  arg_212 := -1353587480;
  arg_213 := -1734514049;
  {
    var lift_216 := 1505990110;
    var lift_215 := [arg_212, lift_216, 1062352415];
    var lift_214 := [arg_212];
    lift_214 := lift_215;
  }
}

method lift_194 (arg_198 : int, arg_199 : int, arg_200 : int)
  returns (arg_201 : int, arg_202 : int)
  requires (true)
  ensures (true)
{
  arg_201 := 2014913800;
  arg_202 := -936875521;
  {
    var lift_205 := true;
    var lift_204 := false;
    var lift_203 := ();
    lift_203 := ();
    lift_204 := lift_205;
  }
}

method lift_173 (arg_176 : int)
  returns (arg_177 : int)
  requires (true)
  ensures (true)
{
  arg_177 := 1343693844;
  {
    var lift_191 := true;
    var lift_190 := lift_191;
    var lift_189 := lift_190;
    var lift_188 := ();
    var lift_187 := lift_188;
    var lift_186 := lift_187;
    var lift_185 := (lift_186, true, ());
    var lift_184 := true;
    var lift_183 := ();
    var lift_182 := lift_183;
    var lift_181 := lift_182;
    var lift_180 := lift_181;
    var lift_179 := (lift_180, lift_184, lift_181);
    var lift_178 := multiset{lift_179, lift_185, lift_179};
    lift_178 := lift_178;
    print arg_176, "\n";
    print arg_177, "\n";
    lift_189 := lift_189;
    print arg_176, "\n";
  }
}

function lift_165 (arg_167 : char) : (char, seq<int>)
{
  var lift_172 := -1703863114;
  var lift_171 := [lift_172];
  var lift_170 := 'w';
  var lift_169 := (lift_170, lift_171);
  var lift_168 := lift_169;
  lift_168
}

method lift_136 ()
  returns (arg_139 : int)
  requires (true)
  ensures (true)
{
  arg_139 := 1620286506;
  {
    var lift_149 := 'b';
    var lift_148 := lift_149;
    var lift_147 := lift_148;
    var lift_146 := lift_147;
    var lift_145 := lift_146;
    var lift_144 := lift_145;
    var lift_143 := 'J';
    var lift_142 := lift_143;
    var lift_141 := {lift_142, lift_142, 'b'};
    var lift_140 := ();
    print arg_139, "\n";
    lift_140 := lift_140;
    print arg_139, "\n";
    lift_141 := {'E', 'K', lift_143, lift_144, lift_148};
  }
}

method lift_76 (arg_80 : int, arg_81 : int, arg_82 : int)
  returns (arg_83 : int, arg_84 : int)
  requires (true)
  ensures (true)
{
  arg_83 := 1797564501;
  arg_84 := 1829150900;
  {
    var lift_130 := false;
    var lift_129 := ('N', false, lift_130);
    var lift_128 := lift_129;
    var lift_127 := lift_128;
    var lift_126 := '/';
    var lift_125 := [lift_126];
    var lift_124 := false;
    var lift_123 := (lift_124, lift_125, lift_127);
    var lift_122 := lift_123;
    var lift_121 := false;
    var lift_120 := lift_121;
    var lift_119 := '*';
    var lift_118 := (lift_119, lift_120, lift_121);
    var lift_117 := false;
    var lift_116 := (lift_117, (var tmpData : string := []; tmpData), lift_118);
    var lift_115 := true;
    var lift_114 := lift_115;
    var lift_113 := false;
    var lift_112 := lift_113;
    var lift_111 := lift_112;
    var lift_110 := 'V';
    var lift_109 := (lift_110, lift_111, lift_114);
    var lift_108 := lift_109;
    var lift_107 := 'g';
    var lift_106 := 'T';
    var lift_105 := [lift_106, lift_107, lift_106, lift_107, lift_106];
    var lift_104 := true;
    var lift_103 := {
      (lift_104, lift_105, lift_108),
      lift_116,
      lift_116,
      lift_122
    };
    var lift_102 := lift_103;
    var lift_101 := lift_102;
    var lift_100 := lift_101;
    var lift_99 := lift_100;
    var lift_98 := ();
    var lift_97 := lift_98;
    var lift_96 := lift_97;
    var lift_95 := (arg_80, 454697085);
    var lift_94 := ((), lift_95, lift_96);
    var lift_93 := ();
    var lift_92 := (arg_80, arg_81);
    var lift_91 := lift_92;
    var lift_90 := ();
    var lift_89 := multiset{(lift_90, lift_91, lift_93), lift_94};
    var lift_88 := lift_89;
    var lift_87 := (lift_88, lift_99);
    var lift_86 := false;
    var lift_85 := false;
    print arg_80, "\n";
    lift_85 := lift_86;
    lift_87 := lift_87;
  }
}

method lift_62 ()
  returns (arg_66 : int, arg_67 : int)
  requires (true)
  ensures (true)
{
  arg_66 := 464315327;
  arg_67 := 1913083592;
  {
    var lift_73 := false;
    var lift_72 := true;
    var lift_71 := (lift_72, lift_73);
    var lift_70 := true;
    var lift_69 := true;
    var lift_68 := [(lift_69, lift_70), lift_71, lift_71];
    lift_68 := lift_68;
    print -100527470, "\n";
  }
}

function lift_37 () : multiset<int>
{
  var lift_39 := -1297236169;
  multiset{lift_39}
}

function lift_33 () : multiset<int>
{
  var lift_36 := -586835633;
  var lift_35 := multiset{-2073094469, lift_36};
  lift_35
}

method lift_1 (arg_5 : int, arg_6 : int)
  returns (arg_7 : int, arg_8 : int)
  requires (true)
  ensures (true)
{
  arg_7 := 1838613005;
  arg_8 := -497676355;
  {
    var lift_21 := ();
    var lift_20 := ();
    var lift_19 := 's';
    var lift_18 := -802680423;
    var lift_17 := (arg_7, lift_18);
    var lift_16 := lift_17;
    var lift_15 := (lift_16, ());
    var lift_14 := ();
    var lift_13 := lift_14;
    var lift_12 := (arg_7, arg_7);
    var lift_11 := (lift_12, lift_13);
    var lift_10 := multiset{lift_11, lift_15, ((-1371640670, arg_5), lift_13)};
    var lift_9 := 292514943;
    print arg_7, "\n";
    lift_9 := arg_8;
    lift_10 := lift_10;
    lift_19 := lift_19;
    lift_20 := lift_21;
  }
}

method Main () {
  var lift_357 := -747204985;
  var lift_356 := -1561724063;
  var lift_355 := {lift_356, -453598865, lift_357, lift_356, lift_356};
  var lift_354 := -663743693;
  var lift_353 := {lift_354};
  var lift_352 := lift_353;
  var lift_351 := [
    lift_352,
    lift_355,
    lift_353,
    {lift_357, lift_354},
    (var tmpData : set<int> := {}; tmpData)
  ];
  var lift_350 := -1110526025;
  var lift_349 := 1203562573;
  var lift_348 := [lift_349, lift_350, -1397685006];
  var lift_347 := lift_348;
  var lift_345 := 36399808;
  var lift_344 := lift_345;
  var lift_343 := lift_344;
  var lift_342 := [1984667209, lift_343, lift_344];
  var lift_318 := '=';
  var lift_317 := (true, -2030913501);
  var lift_316 := lift_317;
  var lift_315 := (lift_316, lift_318);
  var lift_314 := lift_315;
  var lift_308 := 910160375;
  var lift_307 := '~';
  var lift_306 := (lift_307, lift_308);
  var lift_305 := lift_306;
  var lift_274 := '%';
  var lift_273 := ':';
  var lift_272 := (lift_273, lift_274);
  var lift_271 := 'F';
  var lift_270 := (lift_271, lift_271);
  var lift_269 := multiset{lift_270, lift_270, lift_270, lift_272};
  var lift_254 := ();
  var lift_252 := false;
  var lift_251 := -582504617;
  var lift_250 := 1047435769;
  var lift_249 := true;
  var lift_248 := lift_249;
  var lift_247 := (lift_248, {lift_250, lift_251, lift_251});
  var lift_246 := lift_247;
  var lift_245 := {lift_246, lift_246};
  var lift_244 := 209390957;
  var lift_243 := {lift_244};
  var lift_242 := true;
  var lift_241 := (lift_242, lift_243);
  var lift_240 := 457497213;
  var lift_239 := lift_240;
  var lift_238 := {10592100, lift_239, -211335057};
  var lift_237 := (true, lift_238);
  var lift_236 := -1683786489;
  var lift_235 := {lift_236};
  var lift_234 := (false, lift_235);
  var lift_233 := {lift_234, lift_237, lift_241, lift_234};
  var lift_232 := (var tmpData : set<int> := {}; tmpData);
  var lift_231 := false;
  var lift_230 := (lift_231, lift_232);
  var lift_229 := lift_230;
  var lift_228 := 1373501436;
  var lift_227 := -70401535;
  var lift_226 := {274992962, lift_227, lift_227, lift_228, lift_227};
  var lift_225 := false;
  var lift_224 := (lift_225, lift_226);
  var lift_223 := 1889617531;
  var lift_222 := {678995738, lift_223, lift_223};
  var lift_221 := true;
  var lift_220 := lift_221;
  var lift_219 := lift_220;
  var lift_218 := {(lift_219, lift_222), lift_224, lift_229};
  var lift_217 := [lift_218, lift_233, lift_233, lift_245, lift_233];
  var lift_164 := -1448376384;
  var lift_163 := 'Y';
  var lift_162 := (lift_163, [lift_164]);
  var lift_161 := false;
  var lift_160 := 493447765;
  var lift_159 := (lift_160, lift_161);
  var lift_157 := 216357879;
  var lift_156 := false;
  var lift_155 := (lift_156, lift_157);
  var lift_154 := lift_155;
  var lift_135 := 1299649235;
  var lift_134 := -964325136;
  var lift_133 := 988289401;
  var lift_132 := {lift_133, lift_134, lift_135, 1552318388};
  var lift_131 := lift_132;
  var lift_59 := (var tmpData : set<()> := {}; tmpData);
  var lift_56 := true;
  var lift_55 := multiset{lift_56};
  var lift_54 := ();
  var lift_53 := lift_54;
  var lift_52 := lift_53;
  var lift_51 := true;
  var lift_50 := lift_51;
  var lift_49 := -1203008237;
  var lift_48 := lift_49;
  var lift_47 := 1783190898;
  var lift_46 := (lift_47, lift_48, lift_50);
  var lift_45 := lift_46;
  var lift_44 := 'T';
  var lift_43 := 1900485843;
  var lift_42 := -702577654;
  var lift_41 := (lift_42, lift_43, lift_44);
  var lift_40 := (lift_41, lift_45, lift_52);
  var lift_30 := 703112862;
  var lift_29 := lift_30;
  var lift_28 := (false, lift_29, lift_30);
  var lift_27 := 636759104;
  var lift_26 := (lift_27, lift_28);
  var lift_25 := lift_26;
  var lift_24 := -1784328238;
  var lift_23 := ';';
  var lift_22 := [lift_23];
  var methoddefvar_3, methoddefvar_4 := lift_1(
    (safeSeqRef(lift_22, lift_24, 't') as int),
    lift_25.1.1
  );
  {
    var lift_32 := lift_23;
    var lift_31 := 'X';
    print ("SDI?lSZ&HQ:GKuGTt", -365323498, ()).1, "\n";
    print lift_28.1, "\n";
    lift_31 := lift_32;
  }
  print |(lift_33() - lift_37())|, "\n";
  {
    var lift_358 := false;
    var lift_319 := multiset{lift_48};
    var lift_313 := multiset{lift_314};
    var lift_310 := (lift_23, lift_306, lift_44);
    var lift_309 := lift_310;
    var lift_304 := lift_305;
    var lift_303 := ('b', lift_304, lift_163);
    var lift_302 := lift_47;
    var lift_282 := 'c';
    var lift_253 := [
      lift_59,
      lift_59,
      {lift_53},
      {lift_53, (), lift_254, lift_54, lift_254},
      lift_59
    ];
    var lift_207 := (var tmpData : seq<multiset<int>> := []; tmpData);
    var lift_206 := '>';
    var lift_158 := (false, lift_159, lift_155);
    var lift_153 := (lift_50, (lift_43, true), lift_154);
    var lift_150 := '_';
    var lift_61 := {lift_50, lift_50};
    var lift_60 := -83689578;
    var lift_58 := true;
    var lift_57 := multiset{lift_58, lift_50, lift_56};
    print lift_40.1.0, "\n";
    if (((lift_44 < lift_44) <==> (lift_55 <= (var tmpData : multiset<bool> := multiset{}; tmpData) <= lift_57) <==> ((
      
    ) in lift_59))) {
      var lift_152 := multiset{lift_153, lift_153, lift_153, lift_158};
      var lift_151 := lift_152;
      var lift_75 := (var tmpData : seq<(int, char)> := []; tmpData);
      var lift_74 := lift_50;
      lift_60 := |lift_61|;
      print lift_49, "\n";
      var methoddefvar_64, methoddefvar_65 := lift_62();
      {
        lift_74 := lift_56;
        print lift_27, "\n";
        lift_75 := lift_75;
      }
      var methoddefvar_78, methoddefvar_79 := lift_76(
        lift_42,
        lift_29,
        lift_30
      );
      {
        lift_131 := lift_132;
      }
      var methoddefvar_138 := lift_136();
      {
        print lift_135, "\n";
        print lift_135, "\n";
        lift_150 := lift_23;
        lift_151 := multiset{lift_158, lift_153};
      }
    } else {
      var lift_275 := (lift_29, lift_222);
      var lift_193 := [lift_52];
      lift_162 := lift_165(lift_23);
      {
        var methoddefvar_175 := lift_173(lift_49);
        {
          var lift_192 := (var tmpData : multiset<()> := multiset{}; tmpData);
          print lift_160, "\n";
          print lift_24, "\n";
          lift_192 := lift_192;
          print lift_135, "\n";
          lift_193 := lift_193;
        }
        var methoddefvar_196, methoddefvar_197 := lift_194(
          lift_49,
          lift_30,
          lift_157
        );
        {
          print lift_24, "\n";
          print methoddefvar_196, "\n";
          print 585584451, "\n";
        }
        {
          lift_206 := lift_23;
          lift_207 := lift_207;
        }
      }
      var methoddefvar_210, methoddefvar_211 := lift_208();
      {
        lift_217 := (var tmpData : seq<set<(bool, set<int>)>> := []; tmpData);
      }
      lift_252 := ({lift_52, lift_54, lift_52} in lift_253);
      var methoddefvar_257, methoddefvar_258 := lift_255();
      {
        lift_269 := lift_269;
        print lift_240, "\n";
        lift_275 := lift_275;
      }
    }
    var methoddefvar_276, methoddefvar_277 := lift_1(
      756227024,
      lift_278(lift_282, lift_52)
    );
    {
      var lift_346 := lift_347;
      var lift_312 := lift_313;
      var lift_311 := (lift_312, lift_319, lift_58);
      var methoddefvar_285, methoddefvar_286 := lift_283(2072858985);
      {
        lift_302 := lift_240;
      }
      {
        lift_303 := lift_309;
        lift_311 := lift_311;
      }
      var methoddefvar_322 := lift_320(lift_24, lift_43, lift_223);
      {
        lift_342 := lift_346;
        lift_351 := lift_351;
        print lift_357, "\n";
        lift_358 := lift_50;
      }
    }
  }
}


