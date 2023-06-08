// RUN: %dafny /noVerify /compile:4 /compileTarget:cs "%s" > "%t"
// RUN: %dafny /noVerify /compile:4 /compileTarget:java "%s" >> "%t"
// RUN: %dafny /noVerify /compile:4 /compileTarget:py "%s" >> "%t"
// RUN: %dafny /noVerify /compile:4 /compileTarget:js "%s" >> "%t"
// RUN: %dafny /noVerify /compile:4 /compileTarget:go "%s" >> "%t"
// RUN: %diff "%s.expect" "%t"

// Seed: -8752821771467890361
// This is a RANDOMLY GENERATED PROGRAM.
// Fuzzer: dafny
// Version: dafny, xsmith 2.0.5 (38f1d83), in Racket 8.9 (vm-type chez-scheme)
// Options: --with-print-constrained true --dafny-syntax true --seed -8752821771467890361
// Seed: -8752821771467890361
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
function lift_291 (
  arg_293 : char,
  arg_294 : char,
  arg_295 : bool,
  arg_296 : char
) : int
{
  var lift_297 := 1054430653;
  lift_297
}

function lift_284 (
  arg_286 : char,
  arg_287 : char,
  arg_288 : bool,
  arg_289 : char
) : int
{
  var lift_290 := 1015667440;
  lift_290
}

method lift_196 ()
  returns (arg_199 : int)
  requires (true)
  ensures (true)
{
  arg_199 := -1580998630;
  {
    var lift_218 := ();
    var lift_217 := lift_218;
    var lift_216 := -1267544272;
    var lift_215 := lift_216;
    var lift_214 := (1258030719, lift_215);
    var lift_213 := ();
    var lift_212 := lift_213;
    var lift_211 := lift_212;
    var lift_210 := (lift_211, lift_214);
    var lift_209 := lift_210;
    var lift_208 := -1163447109;
    var lift_207 := -584664290;
    var lift_206 := (lift_207, lift_208);
    var lift_205 := ();
    var lift_204 := (lift_205, lift_206);
    var lift_203 := (arg_199, arg_199);
    var lift_202 := ();
    var lift_201 := {
      (lift_202, lift_203),
      lift_204,
      lift_204,
      lift_204,
      lift_209
    };
    var lift_200 := lift_201;
    lift_200 := lift_200;
    lift_217 := lift_211;
    print lift_208, "\n";
    print lift_207, "\n";
  }
}

function lift_158 () : (int, char, bool)
{
  var lift_163 := false;
  var lift_162 := '&';
  var lift_161 := 837911130;
  var lift_160 := lift_161;
  (lift_160, lift_162, lift_163)
}

method lift_143 (arg_147 : int, arg_148 : int, arg_149 : int)
  returns (arg_150 : int, arg_151 : int)
  requires (true)
  ensures (true)
{
  arg_150 := 2008336175;
  arg_151 := 1793212665;
  {
    var lift_157 := (1853730427, arg_147);
    var lift_156 := false;
    var lift_155 := true;
    var lift_154 := [lift_155, lift_156];
    var lift_153 := lift_154;
    var lift_152 := (lift_153, lift_157);
    lift_152 := lift_152;
  }
}

method lift_112 (arg_115 : int)
  returns (arg_116 : int)
  requires (true)
  ensures (true)
{
  arg_116 := -2142818272;
  {
    var lift_123 := true;
    var lift_122 := '"';
    var lift_121 := lift_122;
    var lift_120 := (lift_121, lift_123);
    var lift_119 := lift_120;
    var lift_118 := multiset{lift_119, (lift_121, true), lift_120};
    var lift_117 := {lift_118};
    lift_117 := lift_117;
  }
}

function lift_107 (arg_109 : ()) : (int, int)
{
  var lift_111 := 1326074460;
  var lift_110 := (lift_111, lift_111);
  lift_110
}

method lift_77 ()
  returns (arg_81 : int, arg_82 : int)
  requires (true)
  ensures (true)
{
  arg_81 := 607769140;
  arg_82 := 1473271476;
  {
    var lift_99 := true;
    var lift_98 := false;
    var lift_97 := [lift_98, lift_99, lift_99, lift_99];
    var lift_96 := lift_97;
    var lift_95 := 'U';
    var lift_94 := false;
    var lift_93 := (lift_94, lift_95);
    var lift_92 := lift_93;
    var lift_91 := 'W';
    var lift_90 := multiset{('c', lift_91)};
    var lift_89 := 'k';
    var lift_88 := lift_89;
    var lift_87 := lift_88;
    var lift_86 := lift_87;
    var lift_85 := (lift_86, lift_89);
    var lift_84 := multiset{lift_85, lift_85};
    var lift_83 := 807411023;
    lift_83 := arg_82;
    lift_84 := lift_90;
    lift_92 := lift_92;
    lift_96 := lift_97;
    print arg_82, "\n";
  }
}

method lift_65 (arg_69 : int, arg_70 : int, arg_71 : int)
  returns (arg_72 : int, arg_73 : int)
  requires (true)
  ensures (true)
{
  arg_72 := 776118562;
  arg_73 := 700423843;
  {
    print arg_70, "\n";
    print arg_69, "\n";
    print arg_72, "\n";
    print 200678887, "\n";
  }
}

function lift_16 (arg_18 : set<int>) : multiset<(int, (int, bool))>
{
  var lift_19 := (var tmpData : multiset<(int, (int, bool))> := multiset{}; tmpData);
  lift_19
}

method Main () {
  var lift_363 := true;
  var lift_362 := multiset{'e'};
  var lift_361 := ();
  var lift_360 := lift_361;
  var lift_359 := (lift_360, lift_362, lift_363);
  var lift_357 := [186267139];
  var lift_356 := ';';
  var lift_355 := lift_356;
  var lift_354 := lift_355;
  var lift_353 := (lift_354, lift_357);
  var lift_352 := lift_353;
  var lift_351 := 'O';
  var lift_350 := lift_351;
  var lift_349 := 'D';
  var lift_348 := lift_349;
  var lift_347 := {lift_348, lift_350, lift_351};
  var lift_343 := false;
  var lift_342 := lift_343;
  var lift_341 := -986621554;
  var lift_340 := '~';
  var lift_339 := 'B';
  var lift_338 := 'B';
  var lift_337 := [lift_338, lift_339, lift_338, lift_339, lift_340];
  var lift_336 := (lift_337, lift_341, lift_342);
  var lift_335 := true;
  var lift_334 := 1263731450;
  var lift_333 := 'M';
  var lift_332 := lift_333;
  var lift_331 := lift_332;
  var lift_330 := [lift_331, '*', lift_331];
  var lift_329 := (lift_330, lift_334, lift_335);
  var lift_328 := {lift_329, lift_336, lift_336, lift_329};
  var lift_327 := lift_328;
  var lift_326 := lift_327;
  var lift_325 := [lift_326];
  var lift_324 := lift_325;
  var lift_323 := lift_324;
  var lift_322 := 171508523;
  var lift_321 := lift_322;
  var lift_320 := lift_321;
  var lift_319 := '_';
  var lift_318 := [lift_319, 'L'];
  var lift_317 := false;
  var lift_316 := lift_317;
  var lift_315 := false;
  var lift_314 := -277226704;
  var lift_313 := "Z%";
  var lift_312 := (lift_313, lift_314, lift_315);
  var lift_311 := {
    lift_312,
    (lift_313, lift_314, lift_316),
    (lift_313, lift_314, false),
    (lift_318, lift_320, lift_317)
  };
  var lift_309 := false;
  var lift_308 := multiset{lift_309, lift_309};
  var lift_307 := lift_308;
  var lift_306 := 'S';
  var lift_305 := (lift_306, lift_306);
  var lift_304 := false;
  var lift_303 := (lift_304, (), lift_305);
  var lift_302 := 'D';
  var lift_301 := 1437373992;
  var lift_300 := lift_301;
  var lift_299 := lift_300;
  var lift_298 := (lift_291, lift_299, lift_302);
  var lift_283 := [lift_284, lift_284, lift_284, lift_284];
  var lift_282 := lift_283;
  var lift_281 := false;
  var lift_280 := lift_281;
  var lift_279 := 'K';
  var lift_278 := lift_279;
  var lift_270 := -29944758;
  var lift_269 := lift_270;
  var lift_268 := '$';
  var lift_267 := (lift_268, lift_269);
  var lift_263 := -646239228;
  var lift_262 := true;
  var lift_261 := false;
  var lift_260 := '~';
  var lift_259 := (lift_260, lift_261);
  var lift_258 := (lift_259, lift_262, lift_263);
  var lift_252 := ();
  var lift_251 := lift_252;
  var lift_250 := ();
  var lift_249 := multiset{lift_250, lift_251, lift_251, lift_250};
  var lift_248 := lift_249;
  var lift_246 := 1035723004;
  var lift_245 := lift_246;
  var lift_244 := ();
  var lift_243 := lift_244;
  var lift_242 := (lift_243, lift_245);
  var lift_240 := false;
  var lift_238 := false;
  var lift_235 := ();
  var lift_234 := true;
  var lift_233 := 'X';
  var lift_232 := (lift_233, lift_233, lift_234);
  var lift_231 := (true, true);
  var lift_230 := lift_231;
  var lift_229 := (lift_230, lift_232, lift_235);
  var lift_224 := 'U';
  var lift_223 := false;
  var lift_222 := (lift_223, lift_224, 1762636766);
  var lift_195 := (var tmpData : seq<seq<int>> := []; tmpData);
  var lift_194 := lift_195;
  var lift_193 := lift_194;
  var lift_192 := lift_193;
  var lift_191 := -1382318018;
  var lift_190 := [lift_191];
  var lift_189 := (var tmpData : seq<int> := []; tmpData);
  var lift_188 := lift_189;
  var lift_187 := [lift_188, lift_188, lift_190];
  var lift_186 := lift_187;
  var lift_185 := {
    lift_186,
    lift_192,
    (var tmpData : seq<seq<int>> := []; tmpData),
    lift_194,
    lift_186
  };
  var lift_182 := -1688445514;
  var lift_181 := lift_182;
  var lift_180 := [lift_181, lift_181];
  var lift_179 := -1786066990;
  var lift_178 := lift_179;
  var lift_177 := [lift_178];
  var lift_176 := lift_177;
  var lift_175 := [lift_176, lift_177, lift_180, lift_176];
  var lift_173 := 1543214730;
  var lift_172 := -1452703613;
  var lift_171 := [lift_172, lift_173, lift_173, lift_173];
  var lift_164 := -348169675;
  var lift_141 := 1148250520;
  var lift_140 := multiset{lift_141};
  var lift_139 := lift_140;
  var lift_138 := lift_139;
  var lift_137 := 'y';
  var lift_136 := (lift_137, lift_138);
  var lift_135 := lift_136;
  var lift_134 := ();
  var lift_128 := '+';
  var lift_127 := 'T';
  var lift_126 := {lift_127, lift_127, lift_128};
  var lift_105 := false;
  var lift_104 := 65219607;
  var lift_103 := 'x';
  var lift_102 := lift_103;
  var lift_101 := (lift_102, lift_104, lift_105);
  var lift_100 := (lift_101, lift_105);
  var lift_75 := false;
  var lift_64 := ();
  var lift_63 := 21413978;
  var lift_62 := 'm';
  var lift_61 := 592185328;
  var lift_60 := (lift_61, -1829978178, true);
  var lift_59 := (lift_60, lift_62, lift_61);
  var lift_52 := true;
  var lift_51 := ('q', lift_52);
  var lift_49 := true;
  var lift_48 := ('>', lift_49);
  var lift_40 := false;
  var lift_39 := -350827109;
  var lift_38 := (lift_39, (lift_39, lift_40));
  var lift_37 := multiset{lift_38};
  var lift_36 := lift_37;
  var lift_35 := false;
  var lift_34 := -1153676149;
  var lift_33 := lift_34;
  var lift_32 := (lift_33, lift_35);
  var lift_31 := 2064998120;
  var lift_30 := lift_31;
  var lift_29 := (lift_30, lift_32);
  var lift_28 := lift_29;
  var lift_27 := lift_28;
  var lift_26 := lift_27;
  var lift_25 := lift_26;
  var lift_24 := lift_25;
  var lift_23 := lift_24;
  var lift_22 := multiset{lift_23, lift_25};
  var lift_21 := [
    lift_22,
    lift_36,
    lift_22,
    multiset{lift_29, (lift_39, lift_32), (lift_33, lift_32)},
    multiset{lift_25, lift_23, (lift_31, lift_32)}
  ];
  var lift_20 := (var tmpData : set<int> := {}; tmpData);
  var lift_15 := true;
  var lift_14 := lift_15;
  var lift_13 := [lift_14, lift_15];
  var lift_12 := lift_13;
  var lift_11 := ();
  var lift_10 := 'e';
  var lift_9 := [lift_10, lift_10, lift_10, lift_10];
  var lift_8 := [
    (var tmpData : string := []; tmpData),
    "x\"'r",
    lift_9,
    "Ys/v/zpHyT\"K|;a?E/|YRvJSl;iQtu"
  ];
  var lift_7 := {lift_8, lift_8};
  var lift_6 := lift_7;
  var lift_5 := (lift_6, "I@nZPpxL+pZrRZF?LDvA^jxhN", lift_11);
  var lift_4 := 1121658110;
  var lift_3 := lift_4;
  var lift_2 := lift_3;
  var lift_1 := "eHq-Si&G";
  if (((safeSeqSlice2(lift_1, -402149612, lift_2) !in lift_5.0) <== (safeSeqRef(
    lift_12,
    lift_3,
    lift_14
  ) ==> lift_14) <== (lift_16(lift_20) !! safeSeqRef(
    lift_21,
    lift_2,
    multiset{lift_27, lift_27, (lift_4, lift_32), lift_26, lift_26}
  )))) {
    var lift_76 := -56706701;
    var lift_74 := (var tmpData : seq<int> := []; tmpData);
    var lift_50 := lift_48;
    var lift_47 := {lift_48, lift_50, lift_51, lift_51, lift_51};
    {
      var lift_58 := -813664834;
      var lift_57 := (lift_58, lift_39, true);
      var lift_56 := (lift_57, lift_10, 969124855);
      var lift_55 := {lift_56, lift_59};
      var lift_54 := lift_55;
      var lift_46 := lift_47;
      var lift_44 := ';';
      var lift_43 := lift_44;
      var lift_42 := (lift_43, lift_40);
      {
        var lift_53 := "KyQMhvtjnBtYIob&Vu&B%d";
        var lift_45 := (lift_10, true);
        var lift_41 := {lift_42, lift_45, lift_42, (lift_10, lift_40), lift_45};
        lift_41 := lift_46;
        if (false) {
          lift_53 := lift_9;
          lift_54 := lift_54;
        } else {
          print lift_4, "\n";
          lift_63 := lift_2;
          lift_64 := lift_11;
          print 555786467, "\n";
          print lift_58, "\n";
        }
      }
    }
    var methoddefvar_67, methoddefvar_68 := lift_65(
      safeSeqRef(lift_74, lift_63, lift_3),
      lift_59.2,
      lift_31
    );
    {
      if (lift_14) {
        lift_75 := true;
        lift_76 := lift_31;
        print lift_33, "\n";
      } else {
        print lift_33, "\n";
        print lift_76, "\n";
        print lift_3, "\n";
      }
    }
  } else {
    var lift_142 := lift_135;
    var lift_129 := 'v';
    var methoddefvar_79, methoddefvar_80 := lift_77();
    {
      var lift_106 := (lift_101, lift_52);
      {
        print methoddefvar_79, "\n";
        lift_100 := lift_106;
      }
    }
    print lift_107(()).1, "\n";
    print |safeSeqSlice1Colon(lift_8, lift_34)|, "\n";
    var methoddefvar_114 := lift_112(lift_34);
    {
      var lift_131 := ();
      var lift_130 := multiset{lift_131};
      var lift_125 := lift_126;
      var lift_124 := ();
      lift_124 := lift_11;
      {
        var lift_133 := ();
        var lift_132 := multiset{lift_64, lift_133, (), lift_134};
        lift_125 := lift_126;
        print lift_4, "\n";
        lift_129 := lift_127;
        lift_130 := lift_132;
        lift_135 := lift_142;
      }
    }
  }
  var methoddefvar_145, methoddefvar_146 := lift_143(
    lift_158().0,
    safeSeqRef(
      safeSeqSubseq([lift_164, lift_34], lift_39, lift_61),
      (lift_33, multiset{(), lift_64, ()}, 'K').0,
      ('^' as int)
    ),
    lift_63
  );
  {
    var lift_276 := 1938942397;
    var lift_275 := -1986380383;
    var lift_274 := 'P';
    var lift_273 := multiset{lift_274, lift_10, lift_224, 'y'};
    var lift_266 := lift_267;
    var lift_265 := (lift_128, lift_263);
    var lift_264 := (true, 'g', lift_265);
    var lift_257 := lift_258;
    var lift_256 := {
      (lift_51, lift_223, lift_179),
      lift_257,
      (lift_51, lift_75, lift_246),
      (lift_48, false, lift_173)
    };
    var lift_255 := lift_256;
    var lift_254 := (lift_249, lift_255);
    var lift_253 := (var tmpData : set<((char, bool), bool, int)> := {}; tmpData);
    var lift_241 := lift_242;
    var lift_239 := 'v';
    var lift_227 := (lift_40, true, -262921086);
    var lift_221 := [lift_222, (true, 'z', lift_141)];
    var lift_219 := 1236998113;
    var lift_183 := (var tmpData : seq<seq<int>> := []; tmpData);
    var lift_174 := [[lift_164, 102519263, lift_33]];
    var lift_170 := lift_171;
    var lift_169 := 1813645028;
    {
      var lift_237 := multiset{lift_105, lift_40, lift_40, lift_238};
      var lift_236 := (lift_227, lift_237, multiset{lift_229, lift_229});
      var lift_228 := (var tmpData : multiset<bool> := multiset{}; tmpData);
      var lift_226 := (lift_227, lift_228, multiset{lift_229});
      var lift_220 := ();
      var lift_184 := lift_185;
      var lift_168 := [lift_61, lift_3, lift_4, lift_141, lift_169];
      var lift_167 := {
        [lift_168, lift_170, lift_171],
        lift_174,
        lift_174,
        lift_175,
        lift_183
      };
      var lift_166 := [lift_103];
      var lift_165 := 'I';
      {
        print lift_31, "\n";
      }
      {
        print lift_3, "\n";
        lift_165 := lift_62;
        print lift_141, "\n";
        lift_166 := lift_1;
      }
      {
        lift_167 := lift_184;
      }
      var methoddefvar_198 := lift_196();
      {
        var lift_225 := [
          lift_222,
          (false, lift_103, lift_181),
          lift_222,
          (lift_14, lift_137, methoddefvar_198)
        ];
        lift_219 := -1540681235;
        lift_220 := lift_64;
        print lift_4, "\n";
        lift_221 := lift_225;
        lift_226 := lift_236;
      }
      lift_239 := lift_239;
    }
    if ((lift_238 <== lift_105 <== lift_240)) {
      lift_241 := (lift_243, lift_33);
    } else {
      var lift_277 := 'w';
      var lift_272 := multiset{lift_239, lift_62};
      var lift_247 := (lift_248, lift_253);
      if (lift_49) {
        lift_247 := lift_254;
        lift_264 := (lift_223, lift_10, lift_266);
        print lift_3, "\n";
      } else {
        var lift_271 := (var tmpData : set<((bool, int), bool)> := {}; tmpData);
        print lift_30, "\n";
        lift_271 := lift_271;
        lift_272 := lift_273;
      }
      lift_275 := 545256157;
      if (lift_75) {
        print lift_33, "\n";
      } else {
        lift_276 := -969542638;
      }
      if (lift_234) {
        lift_277 := lift_127;
      } else {
        print lift_104, "\n";
        print lift_63, "\n";
        print lift_169, "\n";
        lift_278 := lift_274;
        lift_280 := lift_52;
      }
      print lift_270, "\n";
    }
  }
  print 
    safeSeqRef(
      (lift_282 + lift_282 + [lift_291, lift_291, lift_291]),
      lift_182,
      lift_298.0
    )(
      lift_100.0.0,
      lift_303.2.1,
      (safeSeqRef(
        (var tmpData : seq<bool> := []; tmpData),
        lift_301,
        lift_280
      ) ==> (lift_63 < lift_173) ==> (true !in lift_307)),
      lift_305.1
    ),
    "\n";
  {
    var lift_358 := (lift_260, lift_189);
    var lift_310 := (lift_9, lift_182, lift_223);
    print 
      safeSeqRef(
        safeSeqSubseq(
          [lift_269, lift_172, lift_263, lift_178, lift_4],
          lift_269,
          lift_182
        ),
        |lift_139|,
        (
          "gP<GTVXYJ-=<Cgydns",
          lift_300,
          [
            [
              {("k\"N&PqeyT>eygqps<%*fMLto:%^yHn+@Y", lift_301, true), lift_310}
            ],
            [lift_311],
            lift_323,
            lift_324
          ]
        ).1
      ),
      "\n";
    print |(lift_138[lift_269 := lengthNormalize(lift_33)])|, "\n";
    var methoddefvar_344 := lift_112(lift_314);
    {
      var methoddefvar_345, methoddefvar_346 := lift_77();
      {
        print lift_263, "\n";
        lift_347 := lift_126;
      }
      if (lift_309) {
        lift_352 := lift_358;
      } else {
        lift_359 := lift_359;
        print lift_30, "\n";
      }
    }
  }
}


