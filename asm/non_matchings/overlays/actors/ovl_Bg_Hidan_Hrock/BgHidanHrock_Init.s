.late_rodata
glabel D_808898C0
    .float 3000.0
glabel D_808898C4
    .float 3000.0

.text
glabel BgHidanHrock_Init
/* 00000 80889130 27BDFF50 */  addiu   $sp, $sp, 0xFF50           ## $sp = FFFFFF50
/* 00004 80889134 AFA500B4 */  sw      $a1, 0x00B4($sp)           
/* 00008 80889138 AFBF0054 */  sw      $ra, 0x0054($sp)           
/* 0000C 8088913C AFB00030 */  sw      $s0, 0x0030($sp)           
/* 00010 80889140 3C058089 */  lui     $a1, %hi(D_808898A8)       ## $a1 = 80890000
/* 00014 80889144 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00018 80889148 AFBE0050 */  sw      $s8, 0x0050($sp)           
/* 0001C 8088914C AFB7004C */  sw      $s7, 0x004C($sp)           
/* 00020 80889150 AFB60048 */  sw      $s6, 0x0048($sp)           
/* 00024 80889154 AFB50044 */  sw      $s5, 0x0044($sp)           
/* 00028 80889158 AFB40040 */  sw      $s4, 0x0040($sp)           
/* 0002C 8088915C AFB3003C */  sw      $s3, 0x003C($sp)           
/* 00030 80889160 AFB20038 */  sw      $s2, 0x0038($sp)           
/* 00034 80889164 AFB10034 */  sw      $s1, 0x0034($sp)           
/* 00038 80889168 F7B60028 */  sdc1    $f22, 0x0028($sp)          
/* 0003C 8088916C F7B40020 */  sdc1    $f20, 0x0020($sp)          
/* 00040 80889170 AFA00070 */  sw      $zero, 0x0070($sp)         
/* 00044 80889174 0C01E037 */  jal     Actor_ProcessInitChain
              
/* 00048 80889178 24A598A8 */  addiu   $a1, $a1, %lo(D_808898A8)  ## $a1 = 808898A8
/* 0004C 8088917C 8618001C */  lh      $t8, 0x001C($s0)           ## 0000001C
/* 00050 80889180 860E001C */  lh      $t6, 0x001C($s0)           ## 0000001C
/* 00054 80889184 261E016C */  addiu   $s8, $s0, 0x016C           ## $s8 = 0000016C
/* 00058 80889188 0018CA03 */  sra     $t9, $t8,  8               
/* 0005C 8088918C 332800FF */  andi    $t0, $t9, 0x00FF           ## $t0 = 00000000
/* 00060 80889190 31CF003F */  andi    $t7, $t6, 0x003F           ## $t7 = 00000000
/* 00064 80889194 A20F016A */  sb      $t7, 0x016A($s0)           ## 0000016A
/* 00068 80889198 A608001C */  sh      $t0, 0x001C($s0)           ## 0000001C
/* 0006C 8088919C 8FA400B4 */  lw      $a0, 0x00B4($sp)           
/* 00070 808891A0 0C0171F8 */  jal     Collider_InitTris              
/* 00074 808891A4 03C02825 */  or      $a1, $s8, $zero            ## $a1 = 0000016C
/* 00078 808891A8 3C078089 */  lui     $a3, %hi(D_80889898)       ## $a3 = 80890000
/* 0007C 808891AC 2609018C */  addiu   $t1, $s0, 0x018C           ## $t1 = 0000018C
/* 00080 808891B0 AFA90010 */  sw      $t1, 0x0010($sp)           
/* 00084 808891B4 24E79898 */  addiu   $a3, $a3, %lo(D_80889898)  ## $a3 = 80889898
/* 00088 808891B8 8FA400B4 */  lw      $a0, 0x00B4($sp)           
/* 0008C 808891BC 03C02825 */  or      $a1, $s8, $zero            ## $a1 = 0000016C
/* 00090 808891C0 0C0172EB */  jal     Collider_SetTris              
/* 00094 808891C4 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 00098 808891C8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0009C 808891CC 0C010D20 */  jal     DynaPolyActor_Init
              
/* 000A0 808891D0 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 000A4 808891D4 0C01DE1C */  jal     Math_SinS
              ## sins?
/* 000A8 808891D8 860400B6 */  lh      $a0, 0x00B6($s0)           ## 000000B6
/* 000AC 808891DC 46000586 */  mov.s   $f22, $f0                  
/* 000B0 808891E0 0C01DE0D */  jal     Math_CosS
              ## coss?
/* 000B4 808891E4 860400B6 */  lh      $a0, 0x00B6($s0)           ## 000000B6
/* 000B8 808891E8 860A001C */  lh      $t2, 0x001C($s0)           ## 0000001C
/* 000BC 808891EC 46000506 */  mov.s   $f20, $f0                  
/* 000C0 808891F0 00009025 */  or      $s2, $zero, $zero          ## $s2 = 00000000
/* 000C4 808891F4 15400008 */  bne     $t2, $zero, .L80889218     
/* 000C8 808891F8 00009825 */  or      $s3, $zero, $zero          ## $s3 = 00000000
/* 000CC 808891FC 3C013FC0 */  lui     $at, 0x3FC0                ## $at = 3FC00000
/* 000D0 80889200 44811000 */  mtc1    $at, $f2                   ## $f2 = 1.50
/* 000D4 80889204 00000000 */  nop
/* 000D8 80889208 4602B582 */  mul.s   $f22, $f22, $f2            
/* 000DC 8088920C 00000000 */  nop
/* 000E0 80889210 46020502 */  mul.s   $f20, $f0, $f2             
/* 000E4 80889214 00000000 */  nop
.L80889218:
/* 000E8 80889218 24170002 */  addiu   $s7, $zero, 0x0002         ## $s7 = 00000002
/* 000EC 8088921C 27B6009C */  addiu   $s6, $sp, 0x009C           ## $s6 = FFFFFFEC
/* 000F0 80889220 27B50090 */  addiu   $s5, $sp, 0x0090           ## $s5 = FFFFFFE0
/* 000F4 80889224 27B40084 */  addiu   $s4, $sp, 0x0084           ## $s4 = FFFFFFD4
/* 000F8 80889228 27B100A8 */  addiu   $s1, $sp, 0x00A8           ## $s1 = FFFFFFF8
.L8088922C:
/* 000FC 8088922C 3C0B8089 */  lui     $t3, %hi(D_808898A4)       ## $t3 = 80890000
/* 00100 80889230 8D6B98A4 */  lw      $t3, %lo(D_808898A4)($t3)  
/* 00104 80889234 27A30084 */  addiu   $v1, $sp, 0x0084           ## $v1 = FFFFFFD4
/* 00108 80889238 026B1021 */  addu    $v0, $s3, $t3              
/* 0010C 8088923C C44C0018 */  lwc1    $f12, 0x0018($v0)          ## 00000018
/* 00110 80889240 2463000C */  addiu   $v1, $v1, 0x000C           ## $v1 = FFFFFFE0
/* 00114 80889244 C6120008 */  lwc1    $f18, 0x0008($s0)          ## 00000008
/* 00118 80889248 46146402 */  mul.s   $f16, $f12, $f20           
/* 0011C 8088924C 10710019 */  beq     $v1, $s1, .L808892B4       
/* 00120 80889250 C44E0020 */  lwc1    $f14, 0x0020($v0)          ## 00000020
.L80889254:
/* 00124 80889254 46167302 */  mul.s   $f12, $f14, $f22           
/* 00128 80889258 46109280 */  add.s   $f10, $f18, $f16           
/* 0012C 8088925C 2463000C */  addiu   $v1, $v1, 0x000C           ## $v1 = FFFFFFEC
/* 00130 80889260 2442000C */  addiu   $v0, $v0, 0x000C           ## $v0 = 0000000C
/* 00134 80889264 460A6280 */  add.s   $f10, $f12, $f10           
/* 00138 80889268 E46AFFE8 */  swc1    $f10, -0x0018($v1)         ## FFFFFFD4
/* 0013C 8088926C C44A0010 */  lwc1    $f10, 0x0010($v0)          ## 0000001C
/* 00140 80889270 C60C000C */  lwc1    $f12, 0x000C($s0)          ## 0000000C
/* 00144 80889274 460C5300 */  add.s   $f12, $f10, $f12           
/* 00148 80889278 E46CFFEC */  swc1    $f12, -0x0014($v1)         ## FFFFFFD8
/* 0014C 8088927C C44C000C */  lwc1    $f12, 0x000C($v0)          ## 00000018
/* 00150 80889280 C44A0014 */  lwc1    $f10, 0x0014($v0)          ## 00000020
/* 00154 80889284 C6080010 */  lwc1    $f8, 0x0010($s0)           ## 00000010
/* 00158 80889288 46166302 */  mul.s   $f12, $f12, $f22           
/* 0015C 8088928C 460C4301 */  sub.s   $f12, $f8, $f12            
/* 00160 80889290 46145282 */  mul.s   $f10, $f10, $f20           
/* 00164 80889294 460C5300 */  add.s   $f12, $f10, $f12           
/* 00168 80889298 E46CFFF0 */  swc1    $f12, -0x0010($v1)         ## FFFFFFDC
/* 0016C 8088929C C44C0018 */  lwc1    $f12, 0x0018($v0)          ## 00000024
/* 00170 808892A0 C6120008 */  lwc1    $f18, 0x0008($s0)          ## 00000008
/* 00174 808892A4 C44E0020 */  lwc1    $f14, 0x0020($v0)          ## 0000002C
/* 00178 808892A8 46146402 */  mul.s   $f16, $f12, $f20           
/* 0017C 808892AC 1471FFE9 */  bne     $v1, $s1, .L80889254       
/* 00180 808892B0 00000000 */  nop
.L808892B4:
/* 00184 808892B4 46167302 */  mul.s   $f12, $f14, $f22           
/* 00188 808892B8 46109280 */  add.s   $f10, $f18, $f16           
/* 0018C 808892BC 2442000C */  addiu   $v0, $v0, 0x000C           ## $v0 = 00000018
/* 00190 808892C0 460A6280 */  add.s   $f10, $f12, $f10           
/* 00194 808892C4 E46AFFF4 */  swc1    $f10, -0x000C($v1)         ## FFFFFFE0
/* 00198 808892C8 C60C000C */  lwc1    $f12, 0x000C($s0)          ## 0000000C
/* 0019C 808892CC C44A0010 */  lwc1    $f10, 0x0010($v0)          ## 00000028
/* 001A0 808892D0 460C5300 */  add.s   $f12, $f10, $f12           
/* 001A4 808892D4 E46CFFF8 */  swc1    $f12, -0x0008($v1)         ## FFFFFFE4
/* 001A8 808892D8 C44C000C */  lwc1    $f12, 0x000C($v0)          ## 00000024
/* 001AC 808892DC C44A0014 */  lwc1    $f10, 0x0014($v0)          ## 0000002C
/* 001B0 808892E0 C6080010 */  lwc1    $f8, 0x0010($s0)           ## 00000010
/* 001B4 808892E4 46166302 */  mul.s   $f12, $f12, $f22           
/* 001B8 808892E8 460C4301 */  sub.s   $f12, $f8, $f12            
/* 001BC 808892EC 46145282 */  mul.s   $f10, $f10, $f20           
/* 001C0 808892F0 460C5300 */  add.s   $f12, $f10, $f12           
/* 001C4 808892F4 E46CFFFC */  swc1    $f12, -0x0004($v1)         ## FFFFFFE8
/* 001C8 808892F8 03C02025 */  or      $a0, $s8, $zero            ## $a0 = 0000016C
/* 001CC 808892FC 02402825 */  or      $a1, $s2, $zero            ## $a1 = 00000000
/* 001D0 80889300 02803025 */  or      $a2, $s4, $zero            ## $a2 = FFFFFFD4
/* 001D4 80889304 02A03825 */  or      $a3, $s5, $zero            ## $a3 = FFFFFFE0
/* 001D8 80889308 0C0189E8 */  jal     func_800627A0              
/* 001DC 8088930C AFB60010 */  sw      $s6, 0x0010($sp)           
/* 001E0 80889310 26520001 */  addiu   $s2, $s2, 0x0001           ## $s2 = 00000001
/* 001E4 80889314 1657FFC5 */  bne     $s2, $s7, .L8088922C       
/* 001E8 80889318 2673003C */  addiu   $s3, $s3, 0x003C           ## $s3 = 0000003C
/* 001EC 8088931C 8FA400B4 */  lw      $a0, 0x00B4($sp)           
/* 001F0 80889320 0C00B2D0 */  jal     Flags_GetSwitch
              
/* 001F4 80889324 9205016A */  lbu     $a1, 0x016A($s0)           ## 0000016A
/* 001F8 80889328 10400021 */  beq     $v0, $zero, .L808893B0     
/* 001FC 8088932C 3C188089 */  lui     $t8, %hi(func_808896B8)    ## $t8 = 80890000
/* 00200 80889330 8602001C */  lh      $v0, 0x001C($s0)           ## 0000001C
/* 00204 80889334 3C0C8089 */  lui     $t4, %hi(func_808894A4)    ## $t4 = 80890000
/* 00208 80889338 258C94A4 */  addiu   $t4, $t4, %lo(func_808894A4) ## $t4 = 808894A4
/* 0020C 8088933C 1440000B */  bne     $v0, $zero, .L8088936C     
/* 00210 80889340 AE0C0164 */  sw      $t4, 0x0164($s0)           ## 00000164
/* 00214 80889344 3C01452F */  lui     $at, 0x452F                ## $at = 452F0000
/* 00218 80889348 44813000 */  mtc1    $at, $f6                   ## $f6 = 2800.00
/* 0021C 8088934C C6120028 */  lwc1    $f18, 0x0028($s0)          ## 00000028
/* 00220 80889350 3C018089 */  lui     $at, %hi(D_808898C0)       ## $at = 80890000
/* 00224 80889354 8602001C */  lh      $v0, 0x001C($s0)           ## 0000001C
/* 00228 80889358 46069201 */  sub.s   $f8, $f18, $f6             
/* 0022C 8088935C E6080028 */  swc1    $f8, 0x0028($s0)           ## 00000028
/* 00230 80889360 C43098C0 */  lwc1    $f16, %lo(D_808898C0)($at) 
/* 00234 80889364 1000001E */  beq     $zero, $zero, .L808893E0   
/* 00238 80889368 E61000F4 */  swc1    $f16, 0x00F4($s0)          ## 000000F4
.L8088936C:
/* 0023C 8088936C 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00240 80889370 14410007 */  bne     $v0, $at, .L80889390       
/* 00244 80889374 3C014448 */  lui     $at, 0x4448                ## $at = 44480000
/* 00248 80889378 44815000 */  mtc1    $at, $f10                  ## $f10 = 800.00
/* 0024C 8088937C C6040028 */  lwc1    $f4, 0x0028($s0)           ## 00000028
/* 00250 80889380 8602001C */  lh      $v0, 0x001C($s0)           ## 0000001C
/* 00254 80889384 460A2481 */  sub.s   $f18, $f4, $f10            
/* 00258 80889388 10000015 */  beq     $zero, $zero, .L808893E0   
/* 0025C 8088938C E6120028 */  swc1    $f18, 0x0028($s0)          ## 00000028
.L80889390:
/* 00260 80889390 16E20013 */  bne     $s7, $v0, .L808893E0       
/* 00264 80889394 3C014370 */  lui     $at, 0x4370                ## $at = 43700000
/* 00268 80889398 C6060028 */  lwc1    $f6, 0x0028($s0)           ## 00000028
/* 0026C 8088939C 44814000 */  mtc1    $at, $f8                   ## $f8 = 240.00
/* 00270 808893A0 8602001C */  lh      $v0, 0x001C($s0)           ## 0000001C
/* 00274 808893A4 46083401 */  sub.s   $f16, $f6, $f8             
/* 00278 808893A8 1000000D */  beq     $zero, $zero, .L808893E0   
/* 0027C 808893AC E6100028 */  swc1    $f16, 0x0028($s0)          ## 00000028
.L808893B0:
/* 00280 808893B0 860D001C */  lh      $t5, 0x001C($s0)           ## 0000001C
/* 00284 808893B4 271896B8 */  addiu   $t8, $t8, %lo(func_808896B8) ## $t8 = 808896B8
/* 00288 808893B8 55A00008 */  bnel    $t5, $zero, .L808893DC     
/* 0028C 808893BC AE180164 */  sw      $t8, 0x0164($s0)           ## 00000164
/* 00290 808893C0 8E0E0004 */  lw      $t6, 0x0004($s0)           ## 00000004
/* 00294 808893C4 3C018089 */  lui     $at, %hi(D_808898C4)       ## $at = 80890000
/* 00298 808893C8 35CF0030 */  ori     $t7, $t6, 0x0030           ## $t7 = 00000030
/* 0029C 808893CC AE0F0004 */  sw      $t7, 0x0004($s0)           ## 00000004
/* 002A0 808893D0 C42498C4 */  lwc1    $f4, %lo(D_808898C4)($at)  
/* 002A4 808893D4 E60400F4 */  swc1    $f4, 0x00F4($s0)           ## 000000F4
/* 002A8 808893D8 AE180164 */  sw      $t8, 0x0164($s0)           ## 00000164
.L808893DC:
/* 002AC 808893DC 8602001C */  lh      $v0, 0x001C($s0)           ## 0000001C
.L808893E0:
/* 002B0 808893E0 14400007 */  bne     $v0, $zero, .L80889400     
/* 002B4 808893E4 3C040601 */  lui     $a0, 0x0601                ## $a0 = 06010000
/* 002B8 808893E8 3C040601 */  lui     $a0, %hi(D_0600D054)                ## $a0 = 06010000
/* 002BC 808893EC 2484D054 */  addiu   $a0, $a0, %lo(D_0600D054)           ## $a0 = 0600D054
/* 002C0 808893F0 0C010620 */  jal     CollisionHeader_GetVirtual
              
/* 002C4 808893F4 27A50070 */  addiu   $a1, $sp, 0x0070           ## $a1 = FFFFFFC0
/* 002C8 808893F8 10000005 */  beq     $zero, $zero, .L80889410   
/* 002CC 808893FC 8FA400B4 */  lw      $a0, 0x00B4($sp)           
.L80889400:
/* 002D0 80889400 2484D188 */  addiu   $a0, $a0, 0xD188           ## $a0 = FFFFD188
/* 002D4 80889404 0C010620 */  jal     CollisionHeader_GetVirtual
              
/* 002D8 80889408 27A50070 */  addiu   $a1, $sp, 0x0070           ## $a1 = FFFFFFC0
/* 002DC 8088940C 8FA400B4 */  lw      $a0, 0x00B4($sp)           
.L80889410:
/* 002E0 80889410 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 002E4 80889414 8FA70070 */  lw      $a3, 0x0070($sp)           
/* 002E8 80889418 0C00FA9D */  jal     DynaPoly_SetBgActor
              ## DynaPoly_SetBgActor
/* 002EC 8088941C 24850810 */  addiu   $a1, $a0, 0x0810           ## $a1 = 00000810
/* 002F0 80889420 AE02014C */  sw      $v0, 0x014C($s0)           ## 0000014C
/* 002F4 80889424 8FBF0054 */  lw      $ra, 0x0054($sp)           
/* 002F8 80889428 8FBE0050 */  lw      $s8, 0x0050($sp)           
/* 002FC 8088942C 8FB7004C */  lw      $s7, 0x004C($sp)           
/* 00300 80889430 8FB60048 */  lw      $s6, 0x0048($sp)           
/* 00304 80889434 8FB50044 */  lw      $s5, 0x0044($sp)           
/* 00308 80889438 8FB40040 */  lw      $s4, 0x0040($sp)           
/* 0030C 8088943C 8FB3003C */  lw      $s3, 0x003C($sp)           
/* 00310 80889440 8FB20038 */  lw      $s2, 0x0038($sp)           
/* 00314 80889444 8FB10034 */  lw      $s1, 0x0034($sp)           
/* 00318 80889448 8FB00030 */  lw      $s0, 0x0030($sp)           
/* 0031C 8088944C D7B60028 */  ldc1    $f22, 0x0028($sp)          
/* 00320 80889450 D7B40020 */  ldc1    $f20, 0x0020($sp)          
/* 00324 80889454 03E00008 */  jr      $ra                        
/* 00328 80889458 27BD00B0 */  addiu   $sp, $sp, 0x00B0           ## $sp = 00000000
