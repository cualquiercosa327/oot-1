glabel func_80B332B4
/* 01024 80B332B4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01028 80B332B8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0102C 80B332BC 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 01030 80B332C0 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 01034 80B332C4 AFA70018 */  sw      $a3, 0x0018($sp)           
/* 01038 80B332C8 0C02927F */  jal     SkelAnime_Update
              
/* 0103C 80B332CC 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 01040 80B332D0 8FA70018 */  lw      $a3, 0x0018($sp)           
/* 01044 80B332D4 2405C000 */  addiu   $a1, $zero, 0xC000         ## $a1 = FFFFC000
/* 01048 80B332D8 24060400 */  addiu   $a2, $zero, 0x0400         ## $a2 = 00000400
/* 0104C 80B332DC 0C01DE2B */  jal     Math_ScaledStepToS
              
/* 01050 80B332E0 24E400B4 */  addiu   $a0, $a3, 0x00B4           ## $a0 = 000000B4
/* 01054 80B332E4 8FA70018 */  lw      $a3, 0x0018($sp)           
/* 01058 80B332E8 84EE00B8 */  lh      $t6, 0x00B8($a3)           ## 000000B8
/* 0105C 80B332EC 84E20194 */  lh      $v0, 0x0194($a3)           ## 00000194
/* 01060 80B332F0 25CF1000 */  addiu   $t7, $t6, 0x1000           ## $t7 = 00001000
/* 01064 80B332F4 10400004 */  beq     $v0, $zero, .L80B33308     
/* 01068 80B332F8 A4EF00B8 */  sh      $t7, 0x00B8($a3)           ## 000000B8
/* 0106C 80B332FC 2458FFFF */  addiu   $t8, $v0, 0xFFFF           ## $t8 = FFFFFFFF
/* 01070 80B33300 A4F80194 */  sh      $t8, 0x0194($a3)           ## 00000194
/* 01074 80B33304 84E20194 */  lh      $v0, 0x0194($a3)           ## 00000194
.L80B33308:
/* 01078 80B33308 10400005 */  beq     $v0, $zero, .L80B33320     
/* 0107C 80B3330C 00000000 */  nop
/* 01080 80B33310 94F90088 */  lhu     $t9, 0x0088($a3)           ## 00000088
/* 01084 80B33314 33280010 */  andi    $t0, $t9, 0x0010           ## $t0 = 00000000
/* 01088 80B33318 51000004 */  beql    $t0, $zero, .L80B3332C     
/* 0108C 80B3331C 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B33320:
/* 01090 80B33320 0C2CC9EC */  jal     func_80B327B0              
/* 01094 80B33324 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 01098 80B33328 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B3332C:
/* 0109C 80B3332C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 010A0 80B33330 03E00008 */  jr      $ra                        
/* 010A4 80B33334 00000000 */  nop
