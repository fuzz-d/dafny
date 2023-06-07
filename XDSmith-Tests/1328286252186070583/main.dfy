//
//
//
//
//
//

// Seed: 1328286252186070583
// This is a RANDOMLY GENERATED PROGRAM.
// Fuzzer: dafny
// Version: dafny, xsmith 2.0.5 (38f1d83), in Racket 8.9 (vm-type chez-scheme)
// Options: --dafny-syntax true --seed 1328286252186070583
// Seed: 1328286252186070583
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
method lift_101 (arg_105 : char)
  returns (arg_106 : bool, arg_107 : bool)
  requires (true)
  ensures (true)
{
  arg_106 := false;
  arg_107 := true;
  {
    var lift_126 := true;
    var lift_125 := ();
    var lift_124 := arg_105;
    var lift_123 := arg_105;
    var lift_122 := multiset{lift_123, lift_123, lift_124};
    var lift_121 := 'b';
    var lift_120 := 'V';
    var lift_119 := {
      multiset{arg_105, lift_120, lift_120, lift_121, lift_121},
      lift_122
    };
    var lift_118 := lift_119;
    var lift_117 := lift_118;
    var lift_116 := multiset{arg_105};
    var lift_115 := 'j';
    var lift_114 := {
      multiset{arg_105, arg_105, arg_105},
      multiset{lift_115, '~'},
      (var tmpData : multiset<char> := multiset{}; tmpData),
      lift_116,
      lift_116
    };
    var lift_113 := lift_114;
    var lift_112 := {lift_113, {lift_116}, lift_117};
    var lift_111 := lift_112;
    var lift_110 := (lift_111, lift_125, arg_107);
    var lift_109 := ();
    var lift_108 := lift_109;
    lift_108 := lift_108;
    print (var tmpData : multiset<char> := multiset{}; tmpData), "\n";
    print 
      (
        1922143785,
        false,
        ((-259330183, "xN<BtE-XxHaHk'zdSLTBQJOdzX-ZiM$GP:$>"), (296852437, '>'))
      ),
      's',
      "\n";
    lift_110 := lift_110;
    print 
      (
        true,
        "$\"vD~=EVZiylN&X$DQjycavforpaY~lHV",
        {true, arg_106, arg_107, arg_106, lift_126}
      ),
      -1740112313,
      "\n";
  }
}

method lift_60 (arg_63 : multiset<bool>, arg_64 : int)
  returns (arg_65 : bool)
  requires (true)
  ensures (true)
{
  arg_65 := true;
  {
    var lift_73 := ();
    var lift_72 := lift_73;
    var lift_71 := lift_72;
    var lift_70 := lift_71;
    var lift_69 := lift_70;
    var lift_68 := (var tmpData : seq<bool> := []; tmpData);
    var lift_67 := multiset{lift_68, lift_68};
    var lift_66 := [lift_67];
    lift_66 := lift_66;
    lift_69 := lift_71;
  }
}

method lift_1 (
  arg_4 : (bool, int, char),
  arg_5 : set<((), (bool, int), multiset<char>)>
)
  returns (arg_6 : int)
  requires (true)
  ensures (true)
{
  arg_6 := -736118644;
  {
    var lift_10 := false;
    var lift_9 := true;
    var lift_8 := true;
    var lift_7 := 297234281;
    print 'b', [true], "\n";
    lift_7 := lift_7;
    print (), "\n";
    lift_8 := lift_9;
    lift_10 := false;
  }
}

method Main () {
  var lift_151 := true;
  var lift_150 := lift_151;
  var lift_149 := 'C';
  var lift_148 := lift_149;
  var lift_147 := (lift_148, lift_148, lift_150);
  var lift_144 := '<';
  var lift_143 := '-';
  var lift_142 := 'l';
  var lift_141 := {lift_142, lift_143, lift_144, lift_143};
  var lift_140 := (var tmpData : multiset<int> := multiset{}; tmpData);
  var lift_139 := (lift_140, lift_141);
  var lift_133 := ();
  var lift_132 := (lift_133, 'L', true);
  var lift_131 := 'v';
  var lift_130 := lift_131;
  var lift_129 := [lift_130];
  var lift_128 := lift_129;
  var lift_127 := [lift_128, lift_128];
  var lift_100 := 'n';
  var lift_99 := multiset{lift_100, lift_100};
  var lift_98 := '$';
  var lift_97 := 'u';
  var lift_96 := multiset{lift_97, lift_97, lift_98, lift_97, lift_98};
  var lift_95 := lift_96;
  var lift_94 := 'G';
  var lift_93 := lift_94;
  var lift_92 := '!';
  var lift_91 := [
    multiset{lift_92, lift_93},
    lift_95,
    multiset{'Q', lift_97, 'J', lift_92, lift_94},
    lift_99,
    lift_99
  ];
  var lift_90 := 'W';
  var lift_89 := 'b';
  var lift_88 := multiset{'o', lift_89, lift_90, lift_89, lift_89};
  var lift_87 := [lift_88, lift_88, lift_88];
  var lift_86 := 'r';
  var lift_85 := lift_86;
  var lift_84 := lift_85;
  var lift_83 := lift_84;
  var lift_82 := multiset{lift_83};
  var lift_81 := [lift_82, lift_82, lift_82, lift_82, lift_82];
  var lift_80 := {lift_81, lift_87, lift_91};
  var lift_77 := false;
  var lift_76 := true;
  var lift_75 := multiset{lift_76, lift_76, lift_77, lift_77, lift_76};
  var lift_74 := lift_75;
  var lift_59 := (var tmpData : set<()> := {}; tmpData);
  var lift_58 := lift_59;
  var lift_57 := lift_58;
  var lift_56 := 'p';
  var lift_55 := multiset{lift_56, lift_56, 'r', '~'};
  var lift_54 := 1215118579;
  var lift_53 := false;
  var lift_52 := (lift_53, lift_54);
  var lift_51 := ();
  var lift_50 := lift_51;
  var lift_49 := (lift_50, lift_52, lift_55);
  var lift_48 := {lift_49, lift_49, lift_49, lift_49};
  var lift_47 := ();
  var lift_46 := lift_47;
  var lift_45 := (lift_46, lift_48, lift_57);
  var lift_44 := 'J';
  var lift_43 := lift_44;
  var lift_42 := multiset{'z', 'n', lift_43};
  var lift_41 := lift_42;
  var lift_40 := 'I';
  var lift_39 := 'y';
  var lift_38 := 'Y';
  var lift_37 := multiset{lift_38, lift_39, lift_40};
  var lift_36 := 1505784158;
  var lift_35 := true;
  var lift_34 := (lift_35, lift_36);
  var lift_33 := ();
  var lift_32 := (lift_33, lift_34, lift_37);
  var lift_31 := 'M';
  var lift_30 := lift_31;
  var lift_29 := multiset{'J', 'g', lift_30, lift_31, lift_31};
  var lift_28 := -257344291;
  var lift_27 := false;
  var lift_26 := ();
  var lift_25 := (lift_26, (lift_27, lift_28), lift_29);
  var lift_24 := 'A';
  var lift_23 := -392867990;
  var lift_22 := false;
  var lift_21 := (lift_22, lift_23);
  var lift_20 := ();
  var lift_19 := {
    (lift_20, lift_21, multiset{lift_24, 'R', 'Z'}),
    lift_25,
    lift_32,
    (lift_26, lift_21, lift_41),
    lift_25
  };
  var lift_18 := lift_19;
  var lift_17 := (var tmpData : set<((), (bool, int), multiset<char>)> := {}; tmpData);
  var lift_16 := [
    lift_17,
    (var tmpData : set<((), (bool, int), multiset<char>)> := {}; tmpData)
  ];
  var lift_15 := '+';
  var lift_14 := -1310649934;
  var lift_13 := true;
  var lift_12 := lift_13;
  var lift_11 := (lift_12, lift_14, lift_15);
  var methoddefvar_3 := lift_1(
    lift_11,
    safeSeqRef(safeSeqSet(lift_16, lift_14, lift_18), lift_28, lift_45.1)
  );
  {
    var lift_78 := lift_25;
    var methoddefvar_62 := lift_60(lift_74, -182590061);
    {
      var lift_79 := 1384395422;
      print "'YL!skMEJ@pYT|mZ+FJ_VjLAVqmzD!OSB@p~^", "\n";
      print 
        multiset{lift_32, (lift_46, (lift_53, lift_54), lift_41), lift_78},
        (multiset{lift_25, lift_49}, ()),
        "\n";
      lift_79 := lift_23;
      print 
        "|T\"x;;M/x=>=ux&uCli~RyRTm<=+l",
        [(true, -138499222, '^'), lift_11, (lift_13, methoddefvar_3, lift_30)],
        "\n";
      print 'V', "\n";
    }
    print 
      ([lift_29, multiset{lift_43}, lift_55, lift_29, lift_55] in lift_80),
      (lift_54 < 1564919127 <= methoddefvar_3),
      "\n";
    {
      print (), "\n";
    }
  }
  var methoddefvar_103, methoddefvar_104 := lift_101(
    safeSeqRef(
      safeSeqRef(lift_127, lift_54, lift_129),
      (lift_131 as int),
      lift_132.1
    )
  );
  {
    var lift_136 := multiset{methoddefvar_103, lift_77};
    var methoddefvar_134, methoddefvar_135 := lift_101(lift_85);
    {
      var lift_146 := (lift_44, lift_31, lift_89);
      var lift_145 := multiset{lift_89, lift_143, lift_130, lift_83};
      var lift_138 := {lift_56, lift_31, lift_15, lift_85, '&'};
      var lift_137 := (multiset{lift_36, lift_36, lift_23}, lift_138);
      print 
        (
          ((multiset{'P'}, (), -1551725518), 671656350, -1930470468),
          (
            (
              "R&dD=yFB&|kT@&",
              (),
              (
                -1659278626,
                (
                  multiset{
                    multiset{lift_76, true, lift_76, lift_27, lift_76},
                    lift_136
                  },
                  (true, -1398358834, {false}),
                  (
                    [false, true, true, lift_76, methoddefvar_134],
                    multiset{"c=@d", "u:G*O"}
                  )
                ),
                ()
              )
            ),
            ()
          )
        ),
        "\n";
      lift_137 := lift_139;
      lift_145 := lift_42;
      print 
        (
          multiset{
            ((lift_40, 'F', lift_142), (lift_93, lift_90, methoddefvar_135)),
            (lift_146, lift_147)
          },
          {
            lift_11,
            (methoddefvar_104, lift_28, 'I'),
            lift_11,
            lift_11,
            lift_11
          },
          ()
        ),
        1866022714,
        "\n";
      print '&', "\n";
    }
  }
}


