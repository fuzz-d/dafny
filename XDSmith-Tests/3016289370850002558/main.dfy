//
//
//
//
//
//

// Seed: 3016289370850002558
// This is a RANDOMLY GENERATED PROGRAM.
// Fuzzer: dafny
// Version: dafny, xsmith 2.0.5 (38f1d83), in Racket 8.9 (vm-type chez-scheme)
// Options: --with-print-constrained true --dafny-syntax true --seed 3016289370850002558
// Seed: 3016289370850002558
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
method lift_120 (arg_123 : int, arg_124 : int, arg_125 : int)
  returns (arg_126 : int)
  requires (true)
  ensures (true)
{
  arg_126 := 332302957;
  {
    var lift_129 := true;
    var lift_128 := true;
    var lift_127 := true;
    lift_127 := lift_127;
    print -1619428061, "\n";
    print arg_124, "\n";
    lift_128 := lift_129;
  }
}

method lift_86 (arg_89 : int, arg_90 : int)
  returns (arg_91 : int)
  requires (true)
  ensures (true)
{
  arg_91 := -1737591350;
  {
    var lift_94 := -17785765;
    var lift_93 := {arg_91, lift_94, lift_94, -56206449};
    var lift_92 := {arg_89, arg_89};
    print arg_90, "\n";
    lift_92 := lift_93;
    print lift_94, "\n";
    print arg_90, "\n";
  }
}

method lift_46 (arg_50 : int)
  returns (arg_51 : int, arg_52 : int)
  requires (true)
  ensures (true)
{
  arg_51 := -1804099647;
  arg_52 := 416938139;
  {
    var lift_73 := 'h';
    var lift_72 := -754405269;
    var lift_71 := false;
    var lift_70 := (lift_71, lift_71, lift_72);
    var lift_69 := lift_70;
    var lift_68 := [arg_52, arg_52, arg_51];
    var lift_67 := (lift_68, lift_69);
    var lift_66 := lift_67;
    var lift_65 := 'z';
    var lift_64 := true;
    var lift_63 := (lift_64, lift_65);
    var lift_62 := 'V';
    var lift_61 := lift_62;
    var lift_60 := lift_61;
    var lift_59 := (lift_60, lift_63, arg_50);
    var lift_58 := 'p';
    var lift_57 := true;
    var lift_56 := lift_57;
    var lift_55 := (lift_56, lift_58);
    var lift_54 := 'm';
    var lift_53 := (lift_54, lift_55, arg_52);
    lift_53 := lift_59;
    lift_66 := lift_67;
    print -1788683398, "\n";
    lift_73 := lift_54;
    print arg_52, "\n";
  }
}

method lift_11 (arg_15 : int, arg_16 : int, arg_17 : int)
  returns (arg_18 : int, arg_19 : int)
  requires (true)
  ensures (true)
{
  arg_18 := -682322806;
  arg_19 := 482022387;
  {
    print -1919289034, "\n";
    print arg_16, "\n";
  }
}

method Main () {
  var lift_155 := 'R';
  var lift_149 := ();
  var lift_148 := (var tmpData : set<char> := {}; tmpData);
  var lift_147 := (lift_148, lift_149);
  var lift_146 := lift_147;
  var lift_145 := ();
  var lift_144 := '>';
  var lift_143 := {'+', lift_144, lift_144};
  var lift_142 := (lift_143, lift_145);
  var lift_141 := {
    lift_142,
    lift_146,
    ((var tmpData : set<char> := {}; tmpData), lift_149),
    lift_146,
    lift_142
  };
  var lift_140 := lift_141;
  var lift_139 := '"';
  var lift_138 := 2036870147;
  var lift_137 := true;
  var lift_136 := (lift_137, lift_138, lift_139);
  var lift_135 := (lift_136, lift_140);
  var lift_118 := false;
  var lift_117 := lift_118;
  var lift_116 := {lift_117, lift_117, lift_118, lift_118};
  var lift_110 := ();
  var lift_109 := lift_110;
  var lift_108 := lift_109;
  var lift_105 := ();
  var lift_104 := lift_105;
  var lift_103 := ();
  var lift_102 := -2076032652;
  var lift_101 := lift_102;
  var lift_100 := (lift_101, lift_103, lift_104);
  var lift_99 := lift_100;
  var lift_78 := false;
  var lift_77 := [lift_78, true];
  var lift_75 := -816229954;
  var lift_74 := lift_75;
  var lift_44 := false;
  var lift_43 := lift_44;
  var lift_42 := lift_43;
  var lift_41 := lift_42;
  var lift_40 := lift_41;
  var lift_38 := '&';
  var lift_37 := lift_38;
  var lift_31 := 'x';
  var lift_30 := ();
  var lift_29 := ();
  var lift_28 := ();
  var lift_27 := [lift_28, lift_29, lift_29];
  var lift_26 := multiset{lift_27, [lift_30, lift_28]};
  var lift_25 := true;
  var lift_24 := (lift_25, lift_26, lift_31);
  var lift_23 := lift_24;
  var lift_22 := 1639814001;
  var lift_21 := lift_22;
  var lift_20 := lift_21;
  var lift_9 := ();
  var lift_8 := (lift_9, lift_9);
  var lift_7 := ();
  var lift_6 := lift_7;
  var lift_5 := (lift_6, ());
  var lift_4 := [lift_5, lift_8, (lift_7, lift_6), (lift_7, lift_7), lift_8];
  var lift_3 := lift_4;
  var lift_2 := ();
  {
    var lift_156 := 's';
    var lift_153 := lift_38;
    var lift_150 := (
      719832756,
      lift_75,
      [lift_25, lift_117, lift_43, lift_43, lift_118]
    );
    var lift_134 := (var tmpData : set<(set<char>, ())> := {}; tmpData);
    var lift_133 := (lift_41, -2121555715, '^');
    var lift_130 := -1353725440;
    var lift_115 := (lift_21, lift_116);
    var lift_114 := ('V', 'w', lift_78);
    var lift_113 := (lift_78, true);
    var lift_112 := (lift_113, lift_114);
    var lift_98 := lift_99;
    var lift_83 := (lift_41, lift_75, lift_21);
    var lift_82 := lift_83;
    var lift_81 := lift_82;
    var lift_39 := false;
    var lift_36 := lift_37;
    var lift_34 := {lift_9, lift_6, lift_30, lift_30};
    var lift_1 := lift_2;
    if ((true <== ((lift_1, lift_1) in lift_3))) {
      var lift_96 := multiset{lift_74, lift_22, lift_22, lift_74, lift_22};
      var lift_95 := (var tmpData : multiset<int> := multiset{}; tmpData);
      var lift_85 := (false, lift_75, 685422633);
      var lift_79 := (var tmpData : seq<bool> := []; tmpData);
      var lift_76 := {lift_77, lift_77, lift_77, lift_79};
      var lift_35 := {lift_31, '@', lift_36, lift_31};
      var lift_10 := ();
      lift_10 := lift_8.0;
      var methoddefvar_13, methoddefvar_14 := lift_11(
        lift_20,
        lift_20,
        lift_21
      );
      {
        var lift_33 := lift_34;
        var lift_32 := lift_33;
        lift_23 := lift_23;
        lift_32 := lift_34;
      }
      if ((lift_31 !in lift_35)) {
        var lift_45 := false;
        lift_39 := lift_40;
        lift_45 := lift_41;
        var methoddefvar_48, methoddefvar_49 := lift_46(lift_74);
        {
          var lift_84 := [lift_83, lift_85, lift_81, lift_82];
          var lift_80 := [lift_81, lift_83];
          lift_76 := lift_76;
          print methoddefvar_48, "\n";
          print lift_22, "\n";
          print methoddefvar_48, "\n";
          lift_80 := lift_84;
        }
        print lift_20, "\n";
      } else {
        var methoddefvar_88 := lift_86(lift_21, lift_22);
        {
          lift_95 := lift_96;
          print lift_22, "\n";
          print lift_21, "\n";
          print lift_74, "\n";
        }
      }
    } else {
      var lift_151 := {427866820, lift_21, 1138475228, lift_74, lift_102};
      var lift_132 := (lift_133, lift_134);
      var lift_131 := 1123831776;
      var lift_107 := {lift_74, lift_102, lift_75, lift_21};
      var lift_106 := (lift_38, lift_107);
      {
        var lift_111 := {lift_112};
        var lift_97 := (lift_22, lift_29, lift_29);
        {
          print lift_22, "\n";
          lift_97 := lift_98;
        }
        if (lift_44) {
          print lift_20, "\n";
          print lift_101, "\n";
        } else {
          print -1910244033, "\n";
          lift_106 := lift_106;
          print lift_21, "\n";
          print lift_74, "\n";
          print lift_20, "\n";
        }
        {
          lift_108 := lift_108;
        }
        {
          var lift_119 := {lift_41, lift_39, lift_118, lift_43, lift_41};
          print lift_75, "\n";
          lift_111 := lift_111;
          lift_115 := (lift_75, lift_119);
          print 524410358, "\n";
          print lift_20, "\n";
        }
      }
      {
        var lift_152 := 'S';
        var methoddefvar_122 := lift_120(lift_101, lift_74, lift_102);
        {
          lift_130 := lift_101;
        }
        if (lift_25) {
          lift_131 := lift_74;
        } else {
          lift_132 := lift_135;
          print lift_102, "\n";
          lift_150 := lift_150;
          lift_151 := {lift_75, lift_74, lift_20, lift_21};
          lift_152 := lift_153;
        }
        var methoddefvar_154 := lift_86(lift_102, lift_101);
        {
          print lift_102, "\n";
          print lift_75, "\n";
          lift_155 := lift_156;
        }
      }
    }
    print lift_75, "\n";
  }
}


