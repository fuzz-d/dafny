// RUN: %dafny /noVerify /compile:4 /compileTarget:cs "%s" > "%t"
// RUN: %dafny /noVerify /compile:4 /compileTarget:java "%s" >> "%t"
// RUN: %dafny /noVerify /compile:4 /compileTarget:py "%s" >> "%t"
// RUN: %dafny /noVerify /compile:4 /compileTarget:js "%s" >> "%t"
// RUN: %dafny /noVerify /compile:4 /compileTarget:go "%s" >> "%t"
// RUN: %diff "%s.expect" "%t"

// Seed: 5409879631461231531
// This is a RANDOMLY GENERATED PROGRAM.
// Fuzzer: dafny
// Version: dafny, xsmith 2.0.5 (38f1d83), in Racket 8.9 (vm-type chez-scheme)
// Options: --with-print-constrained true --dafny-syntax true --seed 5409879631461231531
// Seed: 5409879631461231531
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
method lift_180 (arg_184 : int)
  returns (arg_185 : int, arg_186 : int)
  requires (true)
  ensures (true)
{
  arg_185 := 245210202;
  arg_186 := -1209493448;
  {
    var lift_190 := 1976100172;
    var lift_189 := false;
    var lift_188 := '@';
    var lift_187 := '!';
    print arg_185, "\n";
    print arg_185, "\n";
    lift_187 := lift_188;
    lift_189 := lift_189;
    print lift_190, "\n";
  }
}

method lift_163 (arg_166 : int, arg_167 : int, arg_168 : int)
  returns (arg_169 : int)
  requires (true)
  ensures (true)
{
  arg_169 := -805688907;
  {
    var lift_170 := ();
    print arg_168, "\n";
    lift_170 := ();
  }
}

function lift_157 (arg_159 : int) : bool
{
  var lift_160 := true;
  lift_160
}

method lift_148 ()
  returns (arg_151 : int)
  requires (true)
  ensures (true)
{
  arg_151 := 1823265918;
  {
    var lift_153 := arg_151;
    var lift_152 := arg_151;
    print 765482519, "\n";
    lift_152 := -1888455847;
    print arg_151, "\n";
    lift_153 := arg_151;
  }
}

method lift_108 (arg_111 : int, arg_112 : int, arg_113 : int)
  returns (arg_114 : int)
  requires (true)
  ensures (true)
{
  arg_114 := 1204875151;
  {
    var lift_136 := 'R';
    var lift_135 := lift_136;
    var lift_134 := {lift_135, lift_135};
    var lift_133 := {lift_134, {'X'}, lift_134};
    var lift_132 := 'E';
    var lift_131 := {lift_132, lift_132, lift_132};
    var lift_130 := 'W';
    var lift_129 := multiset{
      {lift_130, lift_130},
      lift_131,
      lift_131,
      lift_131,
      lift_131
    };
    var lift_128 := (lift_129, lift_133);
    var lift_127 := ();
    var lift_126 := multiset{lift_127, lift_127, lift_127, ()};
    var lift_125 := ();
    var lift_124 := ();
    var lift_123 := multiset{lift_124, lift_125, lift_124, lift_124};
    var lift_122 := {lift_123, lift_126, lift_126};
    var lift_121 := ();
    var lift_120 := multiset{lift_121};
    var lift_119 := ();
    var lift_118 := lift_119;
    var lift_117 := multiset{(), lift_118, lift_119, lift_119, lift_119};
    var lift_116 := {lift_117, lift_120};
    var lift_115 := [lift_116, lift_122, lift_122];
    lift_115 := lift_115;
    print -724331725, "\n";
    lift_128 := lift_128;
    print arg_112, "\n";
    print arg_112, "\n";
  }
}

method lift_101 ()
  returns (arg_105 : int, arg_106 : int)
  requires (true)
  ensures (true)
{
  arg_105 := 1281508780;
  arg_106 := 21360311;
  {
    var lift_107 := 968540152;
    print arg_106, "\n";
    print lift_107, "\n";
  }
}

method lift_72 (arg_76 : int, arg_77 : int, arg_78 : int)
  returns (arg_79 : int, arg_80 : int)
  requires (true)
  ensures (true)
{
  arg_79 := -29306358;
  arg_80 := 2048148347;
  {
    var lift_83 := true;
    var lift_82 := lift_83;
    var lift_81 := arg_77;
    lift_81 := lift_81;
    lift_82 := lift_82;
  }
}

method lift_62 (arg_66 : int, arg_67 : int)
  returns (arg_68 : int, arg_69 : int)
  requires (true)
  ensures (true)
{
  arg_68 := 432287739;
  arg_69 := -857378705;
  {
    print arg_68, "\n";
  }
}

method lift_35 (arg_38 : int)
  returns (arg_39 : int)
  requires (true)
  ensures (true)
{
  arg_39 := 419689221;
  {
    var lift_44 := '>';
    var lift_43 := lift_44;
    var lift_42 := multiset{'n', lift_43, lift_44};
    var lift_41 := 'B';
    var lift_40 := multiset{lift_41};
    lift_40 := lift_42;
  }
}

method Main () {
  var lift_196 := true;
  var lift_195 := 2051339992;
  var lift_194 := true;
  var lift_193 := lift_194;
  var lift_192 := (lift_193, lift_195);
  var lift_179 := 2035960726;
  var lift_178 := (lift_179, lift_179);
  var lift_177 := lift_178;
  var lift_175 := 667910966;
  var lift_174 := -1772938492;
  var lift_173 := (lift_174, lift_175);
  var lift_156 := ();
  var lift_155 := ();
  var lift_154 := lift_155;
  var lift_147 := ();
  var lift_146 := {lift_147};
  var lift_145 := ();
  var lift_99 := 'o';
  var lift_98 := false;
  var lift_97 := (lift_98, lift_99, lift_98);
  var lift_96 := -741258065;
  var lift_95 := -982274159;
  var lift_94 := [lift_95, lift_96, lift_95, 1687455854];
  var lift_93 := lift_94;
  var lift_92 := lift_93;
  var lift_91 := (lift_92, lift_97);
  var lift_90 := '+';
  var lift_89 := false;
  var lift_88 := (lift_89, lift_90, 'M');
  var lift_87 := true;
  var lift_86 := (lift_87, 'x', '>');
  var lift_85 := [lift_86, lift_88];
  var lift_71 := -1473334652;
  var lift_70 := lift_71;
  var lift_60 := (var tmpData : multiset<bool> := multiset{}; tmpData);
  var lift_54 := true;
  var lift_53 := lift_54;
  var lift_52 := lift_53;
  var lift_51 := lift_52;
  var lift_50 := lift_51;
  var lift_49 := lift_50;
  var lift_48 := lift_49;
  var lift_34 := -2132614743;
  var lift_33 := multiset{lift_34, -2011271515};
  var lift_32 := 1565072041;
  var lift_31 := -1292309395;
  var lift_30 := multiset{lift_31, lift_32, lift_31};
  var lift_29 := lift_30;
  var lift_28 := false;
  var lift_27 := (
    lift_28,
    {
      lift_29,
      lift_29,
      (var tmpData : multiset<int> := multiset{}; tmpData),
      lift_33
    }
  );
  var lift_26 := 1645459248;
  var lift_25 := (lift_26, lift_27, lift_32);
  var lift_24 := [
    lift_25,
    (lift_32, lift_27, lift_31),
    (118491532, lift_27, lift_31)
  ];
  var lift_23 := lift_24;
  var lift_22 := lift_23;
  var lift_21 := -656264050;
  var lift_20 := lift_21;
  var lift_19 := multiset{760196093, lift_20, lift_21, -332618700};
  var lift_18 := {lift_19, lift_19};
  var lift_17 := 'm';
  var lift_16 := 'N';
  var lift_15 := multiset{lift_16, lift_16, 'I', lift_17, lift_16};
  var lift_14 := -517086834;
  var lift_13 := multiset{lift_14, lift_14};
  var lift_12 := lift_13;
  var lift_11 := lift_12;
  var lift_10 := lift_11;
  var lift_9 := lift_10;
  var lift_8 := {lift_9, lift_13, lift_12};
  var lift_7 := 'J';
  var lift_6 := 63168406;
  var lift_5 := false;
  var lift_4 := (lift_5, lift_6, lift_7);
  var lift_3 := (lift_4, lift_8, lift_15);
  var lift_2 := lift_3;
  var lift_1 := (lift_2.1 + (lift_8 - lift_8) + lift_18);
  lift_1 := safeSeqRef(lift_22, lift_34, lift_25).1.1;
  var methoddefvar_37 := lift_35(
    ((lift_30[-805814609 := lengthNormalize(
      lift_14
    )])[(lift_30[lift_32] as int)] as int)
  );
  {
    var lift_59 := lift_60;
    var lift_58 := lift_59;
    var lift_57 := multiset{lift_51, lift_49, lift_51, lift_50, lift_5};
    var lift_56 := lift_57;
    var lift_55 := multiset{lift_53, lift_54, lift_5};
    var lift_47 := {
      multiset{lift_48, lift_49, lift_28, lift_54, lift_54},
      lift_55,
      lift_56,
      lift_58,
      multiset{lift_50, lift_28, lift_48, lift_54}
    };
    var lift_46 := multiset{lift_47};
    var lift_45 := (lift_17, lift_46);
    if ((lift_5 <== lift_5 <== lift_5)) {
      var lift_61 := lift_26;
      if (lift_5) {
        print lift_26, "\n";
        print methoddefvar_37, "\n";
        print lift_20, "\n";
      } else {
        print lift_34, "\n";
        lift_45 := lift_45;
        lift_61 := methoddefvar_37;
        print methoddefvar_37, "\n";
        print 213339853, "\n";
      }
      var methoddefvar_64, methoddefvar_65 := lift_62(-2118930872, lift_70);
      {
        print lift_26, "\n";
      }
    } else {
      var lift_100 := (lift_94, (lift_53, lift_16, lift_50));
      var lift_84 := (var tmpData : seq<(bool, char, char)> := []; tmpData);
      print lift_32, "\n";
      var methoddefvar_74, methoddefvar_75 := lift_72(
        lift_20,
        lift_20,
        lift_71
      );
      {
        lift_84 := lift_85;
        print methoddefvar_74, "\n";
        print lift_32, "\n";
      }
      lift_91 := lift_100;
    }
  }
  var methoddefvar_103, methoddefvar_104 := lift_101();
  {
    var lift_191 := (lift_192, lift_34, lift_93);
    var lift_176 := (lift_14, lift_98, lift_177);
    var lift_171 := -1386129339;
    var lift_162 := -752414061;
    var lift_144 := lift_145;
    var lift_143 := {(), lift_144};
    var lift_137 := 'R';
    {
      var lift_142 := lift_143;
      var lift_140 := -425608774;
      print lift_6, "\n";
      print lift_34, "\n";
      var methoddefvar_110 := lift_108(
        methoddefvar_103,
        methoddefvar_103,
        lift_70
      );
      {
        print -1195269499, "\n";
        print lift_71, "\n";
        print methoddefvar_104, "\n";
        lift_137 := lift_90;
      }
      var methoddefvar_138, methoddefvar_139 := lift_101();
      {
        var lift_141 := 'Q';
        print -1484833614, "\n";
        print lift_95, "\n";
        lift_140 := lift_34;
        lift_141 := lift_17;
      }
      lift_142 := lift_146;
    }
    var methoddefvar_150 := lift_148();
    {
      print -1286711231, "\n";
      lift_154 := lift_156;
    }
    print lift_25.0, "\n";
    print lift_14, "\n";
    if (lift_157(lift_71)) {
      {
        var lift_161 := -712071946;
        lift_161 := methoddefvar_103;
        lift_162 := lift_34;
      }
      print lift_6, "\n";
    } else {
      var methoddefvar_165 := lift_163(lift_34, 639034862, lift_171);
      {
        var lift_172 := multiset{(lift_20, lift_51, lift_173), lift_176};
        lift_172 := lift_172;
        print lift_171, "\n";
      }
      var methoddefvar_182, methoddefvar_183 := lift_180(lift_20);
      {
        lift_191 := lift_191;
        print lift_34, "\n";
        lift_196 := lift_5;
      }
    }
  }
}


