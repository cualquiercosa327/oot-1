glabel func_80B44058
/* 00008 80B44058 44866000 */  mtc1    $a2, $f12                  ## $f12 = 0.00
/* 0000C 80B4405C 44801000 */  mtc1    $zero, $f2                 ## $f2 = 0.00
/* 00010 80B44060 27BDFFB8 */  addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
/* 00014 80B44064 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00018 80B44068 46026032 */  c.eq.s  $f12, $f2                  
/* 0001C 80B4406C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00020 80B44070 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00024 80B44074 AFA5004C */  sw      $a1, 0x004C($sp)           
/* 00028 80B44078 4500001B */  bc1f    .L80B440E8                 
/* 0002C 80B4407C 26020024 */  addiu   $v0, $s0, 0x0024           ## $v0 = 00000024
/* 00030 80B44080 C4840068 */  lwc1    $f4, 0x0068($a0)           ## 00000068
/* 00034 80B44084 3C01BF80 */  lui     $at, 0xBF80                ## $at = BF800000
/* 00038 80B44088 4604103E */  c.le.s  $f2, $f4                   
/* 0003C 80B4408C 00000000 */  nop
/* 00040 80B44090 45020006 */  bc1fl   .L80B440AC                 
/* 00044 80B44094 44816000 */  mtc1    $at, $f12                  ## $f12 = -1.00
/* 00048 80B44098 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 0004C 80B4409C 44816000 */  mtc1    $at, $f12                  ## $f12 = 1.00
/* 00050 80B440A0 10000004 */  beq     $zero, $zero, .L80B440B4   
/* 00054 80B440A4 860E001C */  lh      $t6, 0x001C($s0)           ## 0000001C
/* 00058 80B440A8 44816000 */  mtc1    $at, $f12                  ## $f12 = 1.00
.L80B440AC:
/* 0005C 80B440AC 00000000 */  nop
/* 00060 80B440B0 860E001C */  lh      $t6, 0x001C($s0)           ## 0000001C
.L80B440B4:
/* 00064 80B440B4 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 00068 80B440B8 05C20008 */  bltzl   $t6, .L80B440DC            
/* 0006C 80B440BC 44814000 */  mtc1    $at, $f8                   ## $f8 = 30.00
/* 00070 80B440C0 3C014234 */  lui     $at, 0x4234                ## $at = 42340000
/* 00074 80B440C4 44813000 */  mtc1    $at, $f6                   ## $f6 = 45.00
/* 00078 80B440C8 00000000 */  nop
/* 0007C 80B440CC 46066302 */  mul.s   $f12, $f12, $f6            
/* 00080 80B440D0 10000006 */  beq     $zero, $zero, .L80B440EC   
/* 00084 80B440D4 8C590000 */  lw      $t9, 0x0000($v0)           ## 00000024
/* 00088 80B440D8 44814000 */  mtc1    $at, $f8                   ## $f8 = 45.00
.L80B440DC:
/* 0008C 80B440DC 00000000 */  nop
/* 00090 80B440E0 46086302 */  mul.s   $f12, $f12, $f8            
/* 00094 80B440E4 00000000 */  nop
.L80B440E8:
/* 00098 80B440E8 8C590000 */  lw      $t9, 0x0000($v0)           ## 00000024
.L80B440EC:
/* 0009C 80B440EC 27AF0030 */  addiu   $t7, $sp, 0x0030           ## $t7 = FFFFFFE8
/* 000A0 80B440F0 ADF90000 */  sw      $t9, 0x0000($t7)           ## FFFFFFE8
/* 000A4 80B440F4 8C580004 */  lw      $t8, 0x0004($v0)           ## 00000028
/* 000A8 80B440F8 ADF80004 */  sw      $t8, 0x0004($t7)           ## FFFFFFEC
/* 000AC 80B440FC 8C590008 */  lw      $t9, 0x0008($v0)           ## 0000002C
/* 000B0 80B44100 ADF90008 */  sw      $t9, 0x0008($t7)           ## FFFFFFF0
/* 000B4 80B44104 96080088 */  lhu     $t0, 0x0088($s0)           ## 00000088
/* 000B8 80B44108 A7A80044 */  sh      $t0, 0x0044($sp)           
/* 000BC 80B4410C 86040032 */  lh      $a0, 0x0032($s0)           ## 00000032
/* 000C0 80B44110 E7AC0050 */  swc1    $f12, 0x0050($sp)          
/* 000C4 80B44114 0C01DE1C */  jal     Math_SinS
              ## sins?
/* 000C8 80B44118 AFA20028 */  sw      $v0, 0x0028($sp)           
/* 000CC 80B4411C C7AC0050 */  lwc1    $f12, 0x0050($sp)          
/* 000D0 80B44120 460C0282 */  mul.s   $f10, $f0, $f12            
/* 000D4 80B44124 E7AA0040 */  swc1    $f10, 0x0040($sp)          
/* 000D8 80B44128 0C01DE0D */  jal     Math_CosS
              ## coss?
/* 000DC 80B4412C 86040032 */  lh      $a0, 0x0032($s0)           ## 00000032
/* 000E0 80B44130 C7AC0050 */  lwc1    $f12, 0x0050($sp)          
/* 000E4 80B44134 C6100024 */  lwc1    $f16, 0x0024($s0)          ## 00000024
/* 000E8 80B44138 C7B20040 */  lwc1    $f18, 0x0040($sp)          
/* 000EC 80B4413C 460C0202 */  mul.s   $f8, $f0, $f12             
/* 000F0 80B44140 C606002C */  lwc1    $f6, 0x002C($s0)           ## 0000002C
/* 000F4 80B44144 46128100 */  add.s   $f4, $f16, $f18            
/* 000F8 80B44148 44801000 */  mtc1    $zero, $f2                 ## $f2 = 0.00
/* 000FC 80B4414C 2409001C */  addiu   $t1, $zero, 0x001C         ## $t1 = 0000001C
/* 00100 80B44150 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00104 80B44154 E6040024 */  swc1    $f4, 0x0024($s0)           ## 00000024
/* 00108 80B44158 46083280 */  add.s   $f10, $f6, $f8             
/* 0010C 80B4415C 44061000 */  mfc1    $a2, $f2                   
/* 00110 80B44160 44071000 */  mfc1    $a3, $f2                   
/* 00114 80B44164 E60A002C */  swc1    $f10, 0x002C($s0)          ## 0000002C
/* 00118 80B44168 AFA90014 */  sw      $t1, 0x0014($sp)           
/* 0011C 80B4416C 8FA4004C */  lw      $a0, 0x004C($sp)           
/* 00120 80B44170 0C00B92D */  jal     Actor_UpdateBgCheckInfo              
/* 00124 80B44174 E7A20010 */  swc1    $f2, 0x0010($sp)           
/* 00128 80B44178 27AB0030 */  addiu   $t3, $sp, 0x0030           ## $t3 = FFFFFFE8
/* 0012C 80B4417C 8D6D0000 */  lw      $t5, 0x0000($t3)           ## FFFFFFE8
/* 00130 80B44180 8FAA0028 */  lw      $t2, 0x0028($sp)           
/* 00134 80B44184 AD4D0000 */  sw      $t5, 0x0000($t2)           ## 00000000
/* 00138 80B44188 8D6C0004 */  lw      $t4, 0x0004($t3)           ## FFFFFFEC
/* 0013C 80B4418C AD4C0004 */  sw      $t4, 0x0004($t2)           ## 00000004
/* 00140 80B44190 8D6D0008 */  lw      $t5, 0x0008($t3)           ## FFFFFFF0
/* 00144 80B44194 AD4D0008 */  sw      $t5, 0x0008($t2)           ## 00000008
/* 00148 80B44198 87AE0044 */  lh      $t6, 0x0044($sp)           
/* 0014C 80B4419C 96030088 */  lhu     $v1, 0x0088($s0)           ## 00000088
/* 00150 80B441A0 A60E0088 */  sh      $t6, 0x0088($s0)           ## 00000088
/* 00154 80B441A4 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00158 80B441A8 30630001 */  andi    $v1, $v1, 0x0001           ## $v1 = 00000000
/* 0015C 80B441AC 2C630001 */  sltiu   $v1, $v1, 0x0001           
/* 00160 80B441B0 00031400 */  sll     $v0, $v1, 16               
/* 00164 80B441B4 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 00168 80B441B8 27BD0048 */  addiu   $sp, $sp, 0x0048           ## $sp = 00000000
/* 0016C 80B441BC 03E00008 */  jr      $ra                        
/* 00170 80B441C0 00021403 */  sra     $v0, $v0, 16               
