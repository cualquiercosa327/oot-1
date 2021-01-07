.rdata
glabel D_80B65330
    .asciz "KABE IN !!\n"
    .balign 4

glabel D_80B6533C
    .asciz "ac1 = %x `````````````````````````````````````````````````\n"
    .balign 4

.late_rodata
glabel D_80B6544C
    .float 0.001

glabel D_80B65450
 .word 0x40BFAE14

.text
glabel func_80B64AA8
/* 020E8 80B64AA8 27BDFFB8 */  addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
/* 020EC 80B64AAC AFB10040 */  sw      $s1, 0x0040($sp)           
/* 020F0 80B64AB0 00808825 */  or      $s1, $a0, $zero            ## $s1 = 00000000
/* 020F4 80B64AB4 AFBF0044 */  sw      $ra, 0x0044($sp)           
/* 020F8 80B64AB8 3C0480B6 */  lui     $a0, %hi(D_80B65330)       ## $a0 = 80B60000
/* 020FC 80B64ABC AFB0003C */  sw      $s0, 0x003C($sp)           
/* 02100 80B64AC0 F7B40030 */  sdc1    $f20, 0x0030($sp)          
/* 02104 80B64AC4 AFA5004C */  sw      $a1, 0x004C($sp)           
/* 02108 80B64AC8 0C00084C */  jal     osSyncPrintf
              
/* 0210C 80B64ACC 24845330 */  addiu   $a0, $a0, %lo(D_80B65330)  ## $a0 = 80B65330
/* 02110 80B64AD0 862501C6 */  lh      $a1, 0x01C6($s1)           ## 000001C6
/* 02114 80B64AD4 262401E0 */  addiu   $a0, $s1, 0x01E0           ## $a0 = 000001E0
/* 02118 80B64AD8 24060005 */  addiu   $a2, $zero, 0x0005         ## $a2 = 00000005
/* 0211C 80B64ADC 50A00004 */  beql    $a1, $zero, .L80B64AF0     
/* 02120 80B64AE0 862E001C */  lh      $t6, 0x001C($s1)           ## 0000001C
/* 02124 80B64AE4 0C01E1EF */  jal     Math_ApproachS
              
/* 02128 80B64AE8 240707D0 */  addiu   $a3, $zero, 0x07D0         ## $a3 = 000007D0
/* 0212C 80B64AEC 862E001C */  lh      $t6, 0x001C($s1)           ## 0000001C
.L80B64AF0:
/* 02130 80B64AF0 24100001 */  addiu   $s0, $zero, 0x0001         ## $s0 = 00000001
/* 02134 80B64AF4 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 02138 80B64AF8 160E0013 */  bne     $s0, $t6, .L80B64B48       
/* 0213C 80B64AFC 00000000 */  nop
/* 02140 80B64B00 C6240050 */  lwc1    $f4, 0x0050($s1)           ## 00000050
/* 02144 80B64B04 44813000 */  mtc1    $at, $f6                   ## $f6 = 100.00
/* 02148 80B64B08 C62800E4 */  lwc1    $f8, 0x00E4($s1)           ## 000000E4
/* 0214C 80B64B0C C63000E8 */  lwc1    $f16, 0x00E8($s1)          ## 000000E8
/* 02150 80B64B10 46062002 */  mul.s   $f0, $f4, $f6              
/* 02154 80B64B14 C62400EC */  lwc1    $f4, 0x00EC($s1)           ## 000000EC
/* 02158 80B64B18 862F01C0 */  lh      $t7, 0x01C0($s1)           ## 000001C0
/* 0215C 80B64B1C 26240180 */  addiu   $a0, $s1, 0x0180           ## $a0 = 00000180
/* 02160 80B64B20 31F80007 */  andi    $t8, $t7, 0x0007           ## $t8 = 00000000
/* 02164 80B64B24 46004283 */  div.s   $f10, $f8, $f0             
/* 02168 80B64B28 46008483 */  div.s   $f18, $f16, $f0            
/* 0216C 80B64B2C E62A0180 */  swc1    $f10, 0x0180($s1)          ## 00000180
/* 02170 80B64B30 46002183 */  div.s   $f6, $f4, $f0              
/* 02174 80B64B34 E6320184 */  swc1    $f18, 0x0184($s1)          ## 00000184
/* 02178 80B64B38 17000003 */  bne     $t8, $zero, .L80B64B48     
/* 0217C 80B64B3C E6260188 */  swc1    $f6, 0x0188($s1)           ## 00000188
/* 02180 80B64B40 0C01E245 */  jal     func_80078914              
/* 02184 80B64B44 24052804 */  addiu   $a1, $zero, 0x2804         ## $a1 = 00002804
.L80B64B48:
/* 02188 80B64B48 0C02927F */  jal     SkelAnime_Update
              
/* 0218C 80B64B4C 26240250 */  addiu   $a0, $s1, 0x0250           ## $a0 = 00000250
/* 02190 80B64B50 3C0180B6 */  lui     $at, %hi(D_80B6544C)       ## $at = 80B60000
/* 02194 80B64B54 C420544C */  lwc1    $f0, %lo(D_80B6544C)($at)  
/* 02198 80B64B58 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 0219C 80B64B5C 4481A000 */  mtc1    $at, $f20                  ## $f20 = 1.00
/* 021A0 80B64B60 44050000 */  mfc1    $a1, $f0                   
/* 021A4 80B64B64 44070000 */  mfc1    $a3, $f0                   
/* 021A8 80B64B68 4406A000 */  mfc1    $a2, $f20                  
/* 021AC 80B64B6C 0C01E107 */  jal     Math_ApproachF
              
/* 021B0 80B64B70 26240058 */  addiu   $a0, $s1, 0x0058           ## $a0 = 00000058
/* 021B4 80B64B74 3C053B03 */  lui     $a1, 0x3B03                ## $a1 = 3B030000
/* 021B8 80B64B78 3C063D4C */  lui     $a2, 0x3D4C                ## $a2 = 3D4C0000
/* 021BC 80B64B7C 3C0738D1 */  lui     $a3, 0x38D1                ## $a3 = 38D10000
/* 021C0 80B64B80 34E7B717 */  ori     $a3, $a3, 0xB717           ## $a3 = 38D1B717
/* 021C4 80B64B84 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3D4CCCCD
/* 021C8 80B64B88 34A5126F */  ori     $a1, $a1, 0x126F           ## $a1 = 3B03126F
/* 021CC 80B64B8C 0C01E107 */  jal     Math_ApproachF
              
/* 021D0 80B64B90 26240050 */  addiu   $a0, $s1, 0x0050           ## $a0 = 00000050
/* 021D4 80B64B94 3C063D4C */  lui     $a2, 0x3D4C                ## $a2 = 3D4C0000
/* 021D8 80B64B98 4407A000 */  mfc1    $a3, $f20                  
/* 021DC 80B64B9C 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3D4CCCCD
/* 021E0 80B64BA0 26240028 */  addiu   $a0, $s1, 0x0028           ## $a0 = 00000028
/* 021E4 80B64BA4 0C01E107 */  jal     Math_ApproachF
              
/* 021E8 80B64BA8 3C054348 */  lui     $a1, 0x4348                ## $a1 = 43480000
/* 021EC 80B64BAC 862201D4 */  lh      $v0, 0x01D4($s1)           ## 000001D4
/* 021F0 80B64BB0 C6280050 */  lwc1    $f8, 0x0050($s1)           ## 00000050
/* 021F4 80B64BB4 24010050 */  addiu   $at, $zero, 0x0050         ## $at = 00000050
/* 021F8 80B64BB8 14410008 */  bne     $v0, $at, .L80B64BDC       
/* 021FC 80B64BBC E6280054 */  swc1    $f8, 0x0054($s1)           ## 00000054
/* 02200 80B64BC0 8639001C */  lh      $t9, 0x001C($s1)           ## 0000001C
/* 02204 80B64BC4 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 02208 80B64BC8 16190004 */  bne     $s0, $t9, .L80B64BDC       
/* 0220C 80B64BCC 00000000 */  nop
/* 02210 80B64BD0 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 02214 80B64BD4 240538B0 */  addiu   $a1, $zero, 0x38B0         ## $a1 = 000038B0
/* 02218 80B64BD8 862201D4 */  lh      $v0, 0x01D4($s1)           ## 000001D4
.L80B64BDC:
/* 0221C 80B64BDC 54400040 */  bnel    $v0, $zero, .L80B64CE0     
/* 02220 80B64BE0 8FBF0044 */  lw      $ra, 0x0044($sp)           
/* 02224 80B64BE4 8628001C */  lh      $t0, 0x001C($s1)           ## 0000001C
/* 02228 80B64BE8 8E220118 */  lw      $v0, 0x0118($s1)           ## 00000118
/* 0222C 80B64BEC 24030001 */  addiu   $v1, $zero, 0x0001         ## $v1 = 00000001
/* 02230 80B64BF0 52080005 */  beql    $s0, $t0, .L80B64C08       
/* 02234 80B64BF4 904901C9 */  lbu     $t1, 0x01C9($v0)           ## 000001C9
/* 02238 80B64BF8 A223014E */  sb      $v1, 0x014E($s1)           ## 0000014E
/* 0223C 80B64BFC 10000037 */  beq     $zero, $zero, .L80B64CDC   
/* 02240 80B64C00 A04301C6 */  sb      $v1, 0x01C6($v0)           ## 000001C6
/* 02244 80B64C04 904901C9 */  lbu     $t1, 0x01C9($v0)           ## 000001C9
.L80B64C08:
/* 02248 80B64C08 3C0A80B6 */  lui     $t2, %hi(func_80B64CF4)    ## $t2 = 80B60000
/* 0224C 80B64C0C 254A4CF4 */  addiu   $t2, $t2, %lo(func_80B64CF4) ## $t2 = 80B64CF4
/* 02250 80B64C10 11200004 */  beq     $t1, $zero, .L80B64C24     
/* 02254 80B64C14 00000000 */  nop
/* 02258 80B64C18 AE2A01FC */  sw      $t2, 0x01FC($s1)           ## 000001FC
/* 0225C 80B64C1C 1000002F */  beq     $zero, $zero, .L80B64CDC   
/* 02260 80B64C20 AE200134 */  sw      $zero, 0x0134($s1)         ## 00000134
.L80B64C24:
/* 02264 80B64C24 0C03F66B */  jal     Rand_ZeroOne
              ## Rand.Next() float
/* 02268 80B64C28 00000000 */  nop
/* 0226C 80B64C2C 3C0180B6 */  lui     $at, %hi(D_80B65450)       ## $at = 80B60000
/* 02270 80B64C30 C4345450 */  lwc1    $f20, %lo(D_80B65450)($at) 
/* 02274 80B64C34 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 02278 80B64C38 8FA5004C */  lw      $a1, 0x004C($sp)           
/* 0227C 80B64C3C 46140282 */  mul.s   $f10, $f0, $f20            
/* 02280 80B64C40 4600540D */  trunc.w.s $f16, $f10                 
/* 02284 80B64C44 44028000 */  mfc1    $v0, $f16                  
/* 02288 80B64C48 00000000 */  nop
/* 0228C 80B64C4C 00028400 */  sll     $s0, $v0, 16               
/* 02290 80B64C50 00023400 */  sll     $a2, $v0, 16               
/* 02294 80B64C54 00108403 */  sra     $s0, $s0, 16               
/* 02298 80B64C58 0C2D8F61 */  jal     func_80B63D84              
/* 0229C 80B64C5C 00063403 */  sra     $a2, $a2, 16               
.L80B64C60:
/* 022A0 80B64C60 0C03F66B */  jal     Rand_ZeroOne
              ## Rand.Next() float
/* 022A4 80B64C64 00000000 */  nop
/* 022A8 80B64C68 46140482 */  mul.s   $f18, $f0, $f20            
/* 022AC 80B64C6C 4600910D */  trunc.w.s $f4, $f18                  
/* 022B0 80B64C70 44022000 */  mfc1    $v0, $f4                   
/* 022B4 80B64C74 00000000 */  nop
/* 022B8 80B64C78 00026C00 */  sll     $t5, $v0, 16               
/* 022BC 80B64C7C 000D7403 */  sra     $t6, $t5, 16               
/* 022C0 80B64C80 00021C00 */  sll     $v1, $v0, 16               
/* 022C4 80B64C84 120EFFF6 */  beq     $s0, $t6, .L80B64C60       
/* 022C8 80B64C88 00031C03 */  sra     $v1, $v1, 16               
/* 022CC 80B64C8C C6260024 */  lwc1    $f6, 0x0024($s1)           ## 00000024
/* 022D0 80B64C90 8FA6004C */  lw      $a2, 0x004C($sp)           
/* 022D4 80B64C94 2478000A */  addiu   $t8, $v1, 0x000A           ## $t8 = 0000000A
/* 022D8 80B64C98 E7A60010 */  swc1    $f6, 0x0010($sp)           
/* 022DC 80B64C9C C6280028 */  lwc1    $f8, 0x0028($s1)           ## 00000028
/* 022E0 80B64CA0 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 022E4 80B64CA4 24070052 */  addiu   $a3, $zero, 0x0052         ## $a3 = 00000052
/* 022E8 80B64CA8 E7A80014 */  swc1    $f8, 0x0014($sp)           
/* 022EC 80B64CAC C62A002C */  lwc1    $f10, 0x002C($s1)          ## 0000002C
/* 022F0 80B64CB0 AFB80028 */  sw      $t8, 0x0028($sp)           
/* 022F4 80B64CB4 AFA00024 */  sw      $zero, 0x0024($sp)         
/* 022F8 80B64CB8 AFA00020 */  sw      $zero, 0x0020($sp)         
/* 022FC 80B64CBC AFA0001C */  sw      $zero, 0x001C($sp)         
/* 02300 80B64CC0 24C41C24 */  addiu   $a0, $a2, 0x1C24           ## $a0 = 00001C24
/* 02304 80B64CC4 0C00C916 */  jal     Actor_SpawnAsChild
              
/* 02308 80B64CC8 E7AA0018 */  swc1    $f10, 0x0018($sp)          
/* 0230C 80B64CCC 3C0480B6 */  lui     $a0, %hi(D_80B6533C)       ## $a0 = 80B60000
/* 02310 80B64CD0 2484533C */  addiu   $a0, $a0, %lo(D_80B6533C)  ## $a0 = 80B6533C
/* 02314 80B64CD4 0C00084C */  jal     osSyncPrintf
              
/* 02318 80B64CD8 00402825 */  or      $a1, $v0, $zero            ## $a1 = 00000000
.L80B64CDC:
/* 0231C 80B64CDC 8FBF0044 */  lw      $ra, 0x0044($sp)           
.L80B64CE0:
/* 02320 80B64CE0 D7B40030 */  ldc1    $f20, 0x0030($sp)          
/* 02324 80B64CE4 8FB0003C */  lw      $s0, 0x003C($sp)           
/* 02328 80B64CE8 8FB10040 */  lw      $s1, 0x0040($sp)           
/* 0232C 80B64CEC 03E00008 */  jr      $ra                        
/* 02330 80B64CF0 27BD0048 */  addiu   $sp, $sp, 0x0048           ## $sp = 00000000
