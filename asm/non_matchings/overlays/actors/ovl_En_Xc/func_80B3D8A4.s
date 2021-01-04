.late_rodata
glabel D_80B42228
    .float 0.01

.text
glabel func_80B3D8A4
/* 016C4 80B3D8A4 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 016C8 80B3D8A8 AFB00028 */  sw      $s0, 0x0028($sp)
/* 016CC 80B3D8AC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 016D0 80B3D8B0 10C00030 */  beq     $a2, $zero, .L80B3D974
/* 016D4 80B3D8B4 AFBF002C */  sw      $ra, 0x002C($sp)
/* 016D8 80B3D8B8 3C040601 */  lui     $a0, %hi(D_06012FD0)                ## $a0 = 06010000
/* 016DC 80B3D8BC 0C028800 */  jal     Animation_GetLastFrame

/* 016E0 80B3D8C0 24842FD0 */  addiu   $a0, $a0, %lo(D_06012FD0)           ## $a0 = 06012FD0
/* 016E4 80B3D8C4 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 016E8 80B3D8C8 3C01C100 */  lui     $at, 0xC100                ## $at = C1000000
/* 016EC 80B3D8CC 44814000 */  mtc1    $at, $f8                   ## $f8 = -8.00
/* 016F0 80B3D8D0 468021A0 */  cvt.s.w $f6, $f4
/* 016F4 80B3D8D4 3C050601 */  lui     $a1, %hi(D_06012FD0)                ## $a1 = 06010000
/* 016F8 80B3D8D8 24A52FD0 */  addiu   $a1, $a1, %lo(D_06012FD0)           ## $a1 = 06012FD0
/* 016FC 80B3D8DC 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 01700 80B3D8E0 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 01704 80B3D8E4 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 01708 80B3D8E8 E7A60010 */  swc1    $f6, 0x0010($sp)
/* 0170C 80B3D8EC AFA00014 */  sw      $zero, 0x0014($sp)
/* 01710 80B3D8F0 0C029468 */  jal     Animation_Change

/* 01714 80B3D8F4 E7A80018 */  swc1    $f8, 0x0018($sp)
/* 01718 80B3D8F8 44805000 */  mtc1    $zero, $f10                ## $f10 = 0.00
/* 0171C 80B3D8FC 240E0003 */  addiu   $t6, $zero, 0x0003         ## $t6 = 00000003
/* 01720 80B3D900 AE0E0260 */  sw      $t6, 0x0260($s0)           ## 00000260
/* 01724 80B3D904 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01728 80B3D908 0C2CF277 */  jal     func_80B3C9DC
/* 0172C 80B3D90C E60A0268 */  swc1    $f10, 0x0268($s0)          ## 00000268
/* 01730 80B3D910 3C028016 */  lui     $v0, %hi(gGameInfo)
/* 01734 80B3D914 2442FA90 */  addiu   $v0, %lo(gGameInfo)
/* 01738 80B3D918 8C4F0000 */  lw      $t7, 0x0000($v0)           ## 8015FA90
/* 0173C 80B3D91C 3C0180B4 */  lui     $at, %hi(D_80B42228)       ## $at = 80B40000
/* 01740 80B3D920 C4202228 */  lwc1    $f0, %lo(D_80B42228)($at)
/* 01744 80B3D924 85F81456 */  lh      $t8, 0x1456($t7)           ## 00001456
/* 01748 80B3D928 3C014150 */  lui     $at, 0x4150                ## $at = 41500000
/* 0174C 80B3D92C 44811000 */  mtc1    $at, $f2                   ## $f2 = 13.00
/* 01750 80B3D930 44988000 */  mtc1    $t8, $f16                  ## $f16 = 0.00
/* 01754 80B3D934 00000000 */  nop
/* 01758 80B3D938 468084A0 */  cvt.s.w $f18, $f16
/* 0175C 80B3D93C 46009102 */  mul.s   $f4, $f18, $f0
/* 01760 80B3D940 46022180 */  add.s   $f6, $f4, $f2
/* 01764 80B3D944 46003207 */  neg.s   $f8, $f6
/* 01768 80B3D948 E608006C */  swc1    $f8, 0x006C($s0)           ## 0000006C
/* 0176C 80B3D94C 8C590000 */  lw      $t9, 0x0000($v0)           ## 8015FA90
/* 01770 80B3D950 87281456 */  lh      $t0, 0x1456($t9)           ## 00001456
/* 01774 80B3D954 44885000 */  mtc1    $t0, $f10                  ## $f10 = 0.00
/* 01778 80B3D958 00000000 */  nop
/* 0177C 80B3D95C 46805420 */  cvt.s.w $f16, $f10
/* 01780 80B3D960 46008482 */  mul.s   $f18, $f16, $f0
/* 01784 80B3D964 46029100 */  add.s   $f4, $f18, $f2
/* 01788 80B3D968 46002187 */  neg.s   $f6, $f4
/* 0178C 80B3D96C 10000003 */  beq     $zero, $zero, .L80B3D97C
/* 01790 80B3D970 E6060070 */  swc1    $f6, 0x0070($s0)           ## 00000070
.L80B3D974:
/* 01794 80B3D974 0C2CF233 */  jal     func_80B3C8CC
/* 01798 80B3D978 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80B3D97C:
/* 0179C 80B3D97C 8FBF002C */  lw      $ra, 0x002C($sp)
/* 017A0 80B3D980 8FB00028 */  lw      $s0, 0x0028($sp)
/* 017A4 80B3D984 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 017A8 80B3D988 03E00008 */  jr      $ra
/* 017AC 80B3D98C 00000000 */  nop
