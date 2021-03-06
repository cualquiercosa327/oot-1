.late_rodata
glabel D_80B2A0F4
    .float 0.3

.text
glabel func_80B292D0
/* 00330 80B292D0 27BDFF48 */  addiu   $sp, $sp, 0xFF48           ## $sp = FFFFFF48
/* 00334 80B292D4 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 00338 80B292D8 44810000 */  mtc1    $at, $f0                   ## $f0 = 50.00
/* 0033C 80B292DC AFB3005C */  sw      $s3, 0x005C($sp)           
/* 00340 80B292E0 AFBF0074 */  sw      $ra, 0x0074($sp)           
/* 00344 80B292E4 AFBE0070 */  sw      $s8, 0x0070($sp)           
/* 00348 80B292E8 AFB7006C */  sw      $s7, 0x006C($sp)           
/* 0034C 80B292EC AFB60068 */  sw      $s6, 0x0068($sp)           
/* 00350 80B292F0 AFB50064 */  sw      $s5, 0x0064($sp)           
/* 00354 80B292F4 AFB40060 */  sw      $s4, 0x0060($sp)           
/* 00358 80B292F8 AFB20058 */  sw      $s2, 0x0058($sp)           
/* 0035C 80B292FC AFB10054 */  sw      $s1, 0x0054($sp)           
/* 00360 80B29300 AFB00050 */  sw      $s0, 0x0050($sp)           
/* 00364 80B29304 F7BE0048 */  sdc1    $f30, 0x0048($sp)          
/* 00368 80B29308 F7BC0040 */  sdc1    $f28, 0x0040($sp)          
/* 0036C 80B2930C F7BA0038 */  sdc1    $f26, 0x0038($sp)          
/* 00370 80B29310 F7B80030 */  sdc1    $f24, 0x0030($sp)          
/* 00374 80B29314 F7B60028 */  sdc1    $f22, 0x0028($sp)          
/* 00378 80B29318 F7B40020 */  sdc1    $f20, 0x0020($sp)          
/* 0037C 80B2931C 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 00380 80B29320 44812000 */  mtc1    $at, $f4                   ## $f4 = 100.00
/* 00384 80B29324 00809825 */  or      $s3, $a0, $zero            ## $s3 = 00000000
/* 00388 80B29328 8C910118 */  lw      $s1, 0x0118($a0)           ## 00000118
/* 0038C 80B2932C 00A0F025 */  or      $s8, $a1, $zero            ## $s8 = 00000000
/* 00390 80B29330 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00394 80B29334 240E0004 */  addiu   $t6, $zero, 0x0004         ## $t6 = 00000004
/* 00398 80B29338 44060000 */  mfc1    $a2, $f0                   
/* 0039C 80B2933C 44070000 */  mfc1    $a3, $f0                   
/* 003A0 80B29340 AFAE0014 */  sw      $t6, 0x0014($sp)           
/* 003A4 80B29344 02602825 */  or      $a1, $s3, $zero            ## $a1 = 00000000
/* 003A8 80B29348 0C00B92D */  jal     Actor_UpdateBgCheckInfo              
/* 003AC 80B2934C E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 003B0 80B29350 966F0088 */  lhu     $t7, 0x0088($s3)           ## 00000088
/* 003B4 80B29354 31F80001 */  andi    $t8, $t7, 0x0001           ## $t8 = 00000000
/* 003B8 80B29358 5300007C */  beql    $t8, $zero, .L80B2954C     
/* 003BC 80B2935C 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 003C0 80B29360 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 003C4 80B29364 C6680060 */  lwc1    $f8, 0x0060($s3)           ## 00000060
/* 003C8 80B29368 3C014680 */  lui     $at, 0x4680                ## $at = 46800000
/* 003CC 80B2936C 4606403E */  c.le.s  $f8, $f6                   
/* 003D0 80B29370 00000000 */  nop
/* 003D4 80B29374 45020075 */  bc1fl   .L80B2954C                 
/* 003D8 80B29378 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 003DC 80B2937C 4481A000 */  mtc1    $at, $f20                  ## $f20 = 50.00
/* 003E0 80B29380 0C00CFC8 */  jal     Rand_CenteredFloat
              
/* 003E4 80B29384 4600A306 */  mov.s   $f12, $f20                 
/* 003E8 80B29388 E6600158 */  swc1    $f0, 0x0158($s3)           ## 00000158
/* 003EC 80B2938C 0C00CFC8 */  jal     Rand_CenteredFloat
              
/* 003F0 80B29390 4600A306 */  mov.s   $f12, $f20                 
/* 003F4 80B29394 E660015C */  swc1    $f0, 0x015C($s3)           ## 0000015C
/* 003F8 80B29398 C66C0024 */  lwc1    $f12, 0x0024($s3)          ## 00000024
/* 003FC 80B2939C 0C03F494 */  jal     Math_FAtan2F              
/* 00400 80B293A0 C66E002C */  lwc1    $f14, 0x002C($s3)          ## 0000002C
/* 00404 80B293A4 46000506 */  mov.s   $f20, $f0                  
/* 00408 80B293A8 0C0400A4 */  jal     sinf
              
/* 0040C 80B293AC 46000306 */  mov.s   $f12, $f0                  
/* 00410 80B293B0 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 00414 80B293B4 44815000 */  mtc1    $at, $f10                  ## $f10 = 10.00
/* 00418 80B293B8 4600A306 */  mov.s   $f12, $f20                 
/* 0041C 80B293BC 460A0402 */  mul.s   $f16, $f0, $f10            
/* 00420 80B293C0 0C041184 */  jal     cosf
              
/* 00424 80B293C4 E670005C */  swc1    $f16, 0x005C($s3)          ## 0000005C
/* 00428 80B293C8 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 0042C 80B293CC 44819000 */  mtc1    $at, $f18                  ## $f18 = 10.00
/* 00430 80B293D0 3C01BF00 */  lui     $at, 0xBF00                ## $at = BF000000
/* 00434 80B293D4 44814000 */  mtc1    $at, $f8                   ## $f8 = -0.50
/* 00438 80B293D8 46120102 */  mul.s   $f4, $f0, $f18             
/* 0043C 80B293DC C6660060 */  lwc1    $f6, 0x0060($s3)           ## 00000060
/* 00440 80B293E0 8679001C */  lh      $t9, 0x001C($s3)           ## 0000001C
/* 00444 80B293E4 3C078013 */  lui     $a3, %hi(D_801333E0)
/* 00448 80B293E8 46083282 */  mul.s   $f10, $f6, $f8             
/* 0044C 80B293EC 33280001 */  andi    $t0, $t9, 0x0001           ## $t0 = 00000000
/* 00450 80B293F0 24E733E0 */  addiu   $a3, %lo(D_801333E0)
/* 00454 80B293F4 E6640064 */  swc1    $f4, 0x0064($s3)           ## 00000064
/* 00458 80B293F8 24043927 */  addiu   $a0, $zero, 0x3927         ## $a0 = 00003927
/* 0045C 80B293FC 266500E4 */  addiu   $a1, $s3, 0x00E4           ## $a1 = 000000E4
/* 00460 80B29400 11000007 */  beq     $t0, $zero, .L80B29420     
/* 00464 80B29404 E66A0060 */  swc1    $f10, 0x0060($s3)          ## 00000060
/* 00468 80B29408 3C098013 */  lui     $t1, %hi(D_801333E8)
/* 0046C 80B2940C 252933E8 */  addiu   $t1, %lo(D_801333E8)
/* 00470 80B29410 AFA90014 */  sw      $t1, 0x0014($sp)           
/* 00474 80B29414 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 00478 80B29418 0C03DCE3 */  jal     Audio_PlaySoundGeneral
              
/* 0047C 80B2941C AFA70010 */  sw      $a3, 0x0010($sp)           
.L80B29420:
/* 00480 80B29420 3C014348 */  lui     $at, 0x4348                ## $at = 43480000
/* 00484 80B29424 4481F000 */  mtc1    $at, $f30                  ## $f30 = 200.00
/* 00488 80B29428 3C0142A0 */  lui     $at, 0x42A0                ## $at = 42A00000
/* 0048C 80B2942C 4481E000 */  mtc1    $at, $f28                  ## $f28 = 80.00
/* 00490 80B29430 3C0180B3 */  lui     $at, %hi(D_80B2A0F4)       ## $at = 80B30000
/* 00494 80B29434 C43AA0F4 */  lwc1    $f26, %lo(D_80B2A0F4)($at) 
/* 00498 80B29438 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 0049C 80B2943C 4481C000 */  mtc1    $at, $f24                  ## $f24 = 1.00
/* 004A0 80B29440 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 004A4 80B29444 4481B000 */  mtc1    $at, $f22                  ## $f22 = 20.00
/* 004A8 80B29448 3C014100 */  lui     $at, 0x4100                ## $at = 41000000
/* 004AC 80B2944C 26341970 */  addiu   $s4, $s1, 0x1970           ## $s4 = 00001970
/* 004B0 80B29450 3C1680B3 */  lui     $s6, %hi(D_80B2A038)       ## $s6 = 80B30000
/* 004B4 80B29454 3C1580B3 */  lui     $s5, %hi(D_80B2A02C)       ## $s5 = 80B30000
/* 004B8 80B29458 4481A000 */  mtc1    $at, $f20                  ## $f20 = 8.00
/* 004BC 80B2945C 26B5A02C */  addiu   $s5, $s5, %lo(D_80B2A02C)  ## $s5 = 80B2A02C
/* 004C0 80B29460 26D6A038 */  addiu   $s6, $s6, %lo(D_80B2A038)  ## $s6 = 80B2A038
/* 004C4 80B29464 27B10098 */  addiu   $s1, $sp, 0x0098           ## $s1 = FFFFFFE0
/* 004C8 80B29468 00008025 */  or      $s0, $zero, $zero          ## $s0 = 00000000
/* 004CC 80B2946C 27B70080 */  addiu   $s7, $sp, 0x0080           ## $s7 = FFFFFFC8
/* 004D0 80B29470 27B2008C */  addiu   $s2, $sp, 0x008C           ## $s2 = FFFFFFD4
/* 004D4 80B29474 8EAB0000 */  lw      $t3, 0x0000($s5)           ## 80B2A02C
.L80B29478:
/* 004D8 80B29478 8ECD0000 */  lw      $t5, 0x0000($s6)           ## 80B2A038
/* 004DC 80B2947C 8EAA0004 */  lw      $t2, 0x0004($s5)           ## 80B2A030
/* 004E0 80B29480 AE2B0000 */  sw      $t3, 0x0000($s1)           ## FFFFFFE0
/* 004E4 80B29484 AE4D0000 */  sw      $t5, 0x0000($s2)           ## FFFFFFD4
/* 004E8 80B29488 8EAB0008 */  lw      $t3, 0x0008($s5)           ## 80B2A034
/* 004EC 80B2948C 8ECD0008 */  lw      $t5, 0x0008($s6)           ## 80B2A040
/* 004F0 80B29490 8ECC0004 */  lw      $t4, 0x0004($s6)           ## 80B2A03C
/* 004F4 80B29494 4600A306 */  mov.s   $f12, $f20                 
/* 004F8 80B29498 AE2A0004 */  sw      $t2, 0x0004($s1)           ## FFFFFFE4
/* 004FC 80B2949C AE2B0008 */  sw      $t3, 0x0008($s1)           ## FFFFFFE8
/* 00500 80B294A0 AE4D0008 */  sw      $t5, 0x0008($s2)           ## FFFFFFDC
/* 00504 80B294A4 0C00CFC8 */  jal     Rand_CenteredFloat
              
/* 00508 80B294A8 AE4C0004 */  sw      $t4, 0x0004($s2)           ## FFFFFFD8
/* 0050C 80B294AC E7A00098 */  swc1    $f0, 0x0098($sp)           
/* 00510 80B294B0 0C00CFBE */  jal     Rand_ZeroFloat
              
/* 00514 80B294B4 4600C306 */  mov.s   $f12, $f24                 
/* 00518 80B294B8 E7A0009C */  swc1    $f0, 0x009C($sp)           
/* 0051C 80B294BC 0C00CFC8 */  jal     Rand_CenteredFloat
              
/* 00520 80B294C0 4600A306 */  mov.s   $f12, $f20                 
/* 00524 80B294C4 E7A000A0 */  swc1    $f0, 0x00A0($sp)           
/* 00528 80B294C8 E7BA0090 */  swc1    $f26, 0x0090($sp)          
/* 0052C 80B294CC 0C00CFC8 */  jal     Rand_CenteredFloat
              
/* 00530 80B294D0 4600B306 */  mov.s   $f12, $f22                 
/* 00534 80B294D4 C6700024 */  lwc1    $f16, 0x0024($s3)          ## 00000024
/* 00538 80B294D8 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 0053C 80B294DC 44813000 */  mtc1    $at, $f6                   ## $f6 = 10.00
/* 00540 80B294E0 46100480 */  add.s   $f18, $f0, $f16            
/* 00544 80B294E4 4600B306 */  mov.s   $f12, $f22                 
/* 00548 80B294E8 E7B20080 */  swc1    $f18, 0x0080($sp)          
/* 0054C 80B294EC C6640080 */  lwc1    $f4, 0x0080($s3)           ## 00000080
/* 00550 80B294F0 46062200 */  add.s   $f8, $f4, $f6              
/* 00554 80B294F4 0C00CFC8 */  jal     Rand_CenteredFloat
              
/* 00558 80B294F8 E7A80084 */  swc1    $f8, 0x0084($sp)           
/* 0055C 80B294FC C66A002C */  lwc1    $f10, 0x002C($s3)          ## 0000002C
/* 00560 80B29500 4600E306 */  mov.s   $f12, $f28                 
/* 00564 80B29504 460A0400 */  add.s   $f16, $f0, $f10            
/* 00568 80B29508 0C00CFBE */  jal     Rand_ZeroFloat
              
/* 0056C 80B2950C E7B00088 */  swc1    $f16, 0x0088($sp)          
/* 00570 80B29510 461E0480 */  add.s   $f18, $f0, $f30            
/* 00574 80B29514 03C02025 */  or      $a0, $s8, $zero            ## $a0 = 00000000
/* 00578 80B29518 02802825 */  or      $a1, $s4, $zero            ## $a1 = 00001970
/* 0057C 80B2951C 02E03025 */  or      $a2, $s7, $zero            ## $a2 = FFFFFFC8
/* 00580 80B29520 E7B20014 */  swc1    $f18, 0x0014($sp)          
/* 00584 80B29524 02203825 */  or      $a3, $s1, $zero            ## $a3 = FFFFFFE0
/* 00588 80B29528 0C2CA48C */  jal     func_80B29230              
/* 0058C 80B2952C AFB20010 */  sw      $s2, 0x0010($sp)           
/* 00590 80B29530 26100001 */  addiu   $s0, $s0, 0x0001           ## $s0 = 00000001
/* 00594 80B29534 00108400 */  sll     $s0, $s0, 16               
/* 00598 80B29538 00108403 */  sra     $s0, $s0, 16               
/* 0059C 80B2953C 2A01000A */  slti    $at, $s0, 0x000A           
/* 005A0 80B29540 5420FFCD */  bnel    $at, $zero, .L80B29478     
/* 005A4 80B29544 8EAB0000 */  lw      $t3, 0x0000($s5)           ## 80B2A02C
/* 005A8 80B29548 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
.L80B2954C:
/* 005AC 80B2954C 44813000 */  mtc1    $at, $f6                   ## $f6 = 50.00
/* 005B0 80B29550 C6640028 */  lwc1    $f4, 0x0028($s3)           ## 00000028
/* 005B4 80B29554 4606203C */  c.lt.s  $f4, $f6                   
/* 005B8 80B29558 00000000 */  nop
/* 005BC 80B2955C 45020004 */  bc1fl   .L80B29570                 
/* 005C0 80B29560 8FBF0074 */  lw      $ra, 0x0074($sp)           
/* 005C4 80B29564 0C00B55C */  jal     Actor_Kill
              
/* 005C8 80B29568 02602025 */  or      $a0, $s3, $zero            ## $a0 = 00000000
/* 005CC 80B2956C 8FBF0074 */  lw      $ra, 0x0074($sp)           
.L80B29570:
/* 005D0 80B29570 D7B40020 */  ldc1    $f20, 0x0020($sp)          
/* 005D4 80B29574 D7B60028 */  ldc1    $f22, 0x0028($sp)          
/* 005D8 80B29578 D7B80030 */  ldc1    $f24, 0x0030($sp)          
/* 005DC 80B2957C D7BA0038 */  ldc1    $f26, 0x0038($sp)          
/* 005E0 80B29580 D7BC0040 */  ldc1    $f28, 0x0040($sp)          
/* 005E4 80B29584 D7BE0048 */  ldc1    $f30, 0x0048($sp)          
/* 005E8 80B29588 8FB00050 */  lw      $s0, 0x0050($sp)           
/* 005EC 80B2958C 8FB10054 */  lw      $s1, 0x0054($sp)           
/* 005F0 80B29590 8FB20058 */  lw      $s2, 0x0058($sp)           
/* 005F4 80B29594 8FB3005C */  lw      $s3, 0x005C($sp)           
/* 005F8 80B29598 8FB40060 */  lw      $s4, 0x0060($sp)           
/* 005FC 80B2959C 8FB50064 */  lw      $s5, 0x0064($sp)           
/* 00600 80B295A0 8FB60068 */  lw      $s6, 0x0068($sp)           
/* 00604 80B295A4 8FB7006C */  lw      $s7, 0x006C($sp)           
/* 00608 80B295A8 8FBE0070 */  lw      $s8, 0x0070($sp)           
/* 0060C 80B295AC 03E00008 */  jr      $ra                        
/* 00610 80B295B0 27BD00B8 */  addiu   $sp, $sp, 0x00B8           ## $sp = 00000000
