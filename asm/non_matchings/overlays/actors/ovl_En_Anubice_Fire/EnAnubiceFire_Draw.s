.rdata
glabel D_809B3290
    .asciz "../z_en_anubice_fire.c"
    .balign 4

glabel D_809B32A8
    .asciz "../z_en_anubice_fire.c"
    .balign 4

glabel D_809B32C0
    .asciz "../z_en_anubice_fire.c"
    .balign 4

.late_rodata
glabel D_809B32EC
    .float 0.2
glabel D_809B32F0
    .float 0.1

.text
glabel EnAnubiceFire_Draw
/* 0094C 809B2EEC 27BDFF40 */  addiu   $sp, $sp, 0xFF40           ## $sp = FFFFFF40
/* 00950 809B2EF0 AFB5005C */  sw      $s5, 0x005C($sp)           
/* 00954 809B2EF4 00A0A825 */  or      $s5, $a1, $zero            ## $s5 = 00000000
/* 00958 809B2EF8 AFBF006C */  sw      $ra, 0x006C($sp)           
/* 0095C 809B2EFC AFBE0068 */  sw      $s8, 0x0068($sp)           
/* 00960 809B2F00 AFB70064 */  sw      $s7, 0x0064($sp)           
/* 00964 809B2F04 AFB60060 */  sw      $s6, 0x0060($sp)           
/* 00968 809B2F08 AFB40058 */  sw      $s4, 0x0058($sp)           
/* 0096C 809B2F0C AFB30054 */  sw      $s3, 0x0054($sp)           
/* 00970 809B2F10 AFB20050 */  sw      $s2, 0x0050($sp)           
/* 00974 809B2F14 AFB1004C */  sw      $s1, 0x004C($sp)           
/* 00978 809B2F18 AFB00048 */  sw      $s0, 0x0048($sp)           
/* 0097C 809B2F1C F7BE0040 */  sdc1    $f30, 0x0040($sp)          
/* 00980 809B2F20 F7BC0038 */  sdc1    $f28, 0x0038($sp)          
/* 00984 809B2F24 F7BA0030 */  sdc1    $f26, 0x0030($sp)          
/* 00988 809B2F28 F7B80028 */  sdc1    $f24, 0x0028($sp)          
/* 0098C 809B2F2C F7B60020 */  sdc1    $f22, 0x0020($sp)          
/* 00990 809B2F30 F7B40018 */  sdc1    $f20, 0x0018($sp)          
/* 00994 809B2F34 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 00998 809B2F38 0080A025 */  or      $s4, $a0, $zero            ## $s4 = 00000000
/* 0099C 809B2F3C 3C06809B */  lui     $a2, %hi(D_809B3290)       ## $a2 = 809B0000
/* 009A0 809B2F40 24C63290 */  addiu   $a2, $a2, %lo(D_809B3290)  ## $a2 = 809B3290
/* 009A4 809B2F44 27A4009C */  addiu   $a0, $sp, 0x009C           ## $a0 = FFFFFFDC
/* 009A8 809B2F48 240701F7 */  addiu   $a3, $zero, 0x01F7         ## $a3 = 000001F7
/* 009AC 809B2F4C 0C031AB1 */  jal     Graph_OpenDisps              
/* 009B0 809B2F50 00A09825 */  or      $s3, $a1, $zero            ## $s3 = 00000000
/* 009B4 809B2F54 0C024F61 */  jal     func_80093D84              
/* 009B8 809B2F58 8EA40000 */  lw      $a0, 0x0000($s5)           ## 00000000
/* 009BC 809B2F5C 8E6302D0 */  lw      $v1, 0x02D0($s3)           ## 000002D0
/* 009C0 809B2F60 3C18FFFF */  lui     $t8, 0xFFFF                ## $t8 = FFFF0000
/* 009C4 809B2F64 371800FF */  ori     $t8, $t8, 0x00FF           ## $t8 = FFFF00FF
/* 009C8 809B2F68 246E0008 */  addiu   $t6, $v1, 0x0008           ## $t6 = 00000008
/* 009CC 809B2F6C AE6E02D0 */  sw      $t6, 0x02D0($s3)           ## 000002D0
/* 009D0 809B2F70 3C0FFA00 */  lui     $t7, 0xFA00                ## $t7 = FA000000
/* 009D4 809B2F74 AC6F0000 */  sw      $t7, 0x0000($v1)           ## 00000000
/* 009D8 809B2F78 AC780004 */  sw      $t8, 0x0004($v1)           ## 00000004
/* 009DC 809B2F7C 8E6302D0 */  lw      $v1, 0x02D0($s3)           ## 000002D0
/* 009E0 809B2F80 3C08FB00 */  lui     $t0, 0xFB00                ## $t0 = FB000000
/* 009E4 809B2F84 3C09FF00 */  lui     $t1, 0xFF00                ## $t1 = FF000000
/* 009E8 809B2F88 24790008 */  addiu   $t9, $v1, 0x0008           ## $t9 = 00000008
/* 009EC 809B2F8C AE7902D0 */  sw      $t9, 0x02D0($s3)           ## 000002D0
/* 009F0 809B2F90 AC690004 */  sw      $t1, 0x0004($v1)           ## 00000004
/* 009F4 809B2F94 AC680000 */  sw      $t0, 0x0000($v1)           ## 00000000
/* 009F8 809B2F98 8E6302D0 */  lw      $v1, 0x02D0($s3)           ## 000002D0
/* 009FC 809B2F9C 3C0BE700 */  lui     $t3, 0xE700                ## $t3 = E7000000
/* 00A00 809B2FA0 3C0DDB06 */  lui     $t5, 0xDB06                ## $t5 = DB060000
/* 00A04 809B2FA4 246A0008 */  addiu   $t2, $v1, 0x0008           ## $t2 = 00000008
/* 00A08 809B2FA8 AE6A02D0 */  sw      $t2, 0x02D0($s3)           ## 000002D0
/* 00A0C 809B2FAC AC600004 */  sw      $zero, 0x0004($v1)         ## 00000004
/* 00A10 809B2FB0 AC6B0000 */  sw      $t3, 0x0000($v1)           ## 00000000
/* 00A14 809B2FB4 8E6302D0 */  lw      $v1, 0x02D0($s3)           ## 000002D0
/* 00A18 809B2FB8 35AD0020 */  ori     $t5, $t5, 0x0020           ## $t5 = DB060020
/* 00A1C 809B2FBC 3C04809B */  lui     $a0, %hi(D_809B3270)       ## $a0 = 809B0000
/* 00A20 809B2FC0 246C0008 */  addiu   $t4, $v1, 0x0008           ## $t4 = 00000008
/* 00A24 809B2FC4 AE6C02D0 */  sw      $t4, 0x02D0($s3)           ## 000002D0
/* 00A28 809B2FC8 AC6D0000 */  sw      $t5, 0x0000($v1)           ## 00000000
/* 00A2C 809B2FCC 8C843270 */  lw      $a0, %lo(D_809B3270)($a0)  
/* 00A30 809B2FD0 3C088016 */  lui     $t0, %hi(gSegments)
/* 00A34 809B2FD4 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 00A38 809B2FD8 00047900 */  sll     $t7, $a0,  4               
/* 00A3C 809B2FDC 000FC702 */  srl     $t8, $t7, 28               
/* 00A40 809B2FE0 0018C880 */  sll     $t9, $t8,  2               
/* 00A44 809B2FE4 01194021 */  addu    $t0, $t0, $t9              
/* 00A48 809B2FE8 8D086FA8 */  lw      $t0, %lo(gSegments)($t0)
/* 00A4C 809B2FEC 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 00A50 809B2FF0 00817024 */  and     $t6, $a0, $at              
/* 00A54 809B2FF4 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 00A58 809B2FF8 01C84821 */  addu    $t1, $t6, $t0              
/* 00A5C 809B2FFC 01215021 */  addu    $t2, $t1, $at              
/* 00A60 809B3000 0C034213 */  jal     Matrix_Push              
/* 00A64 809B3004 AC6A0004 */  sw      $t2, 0x0004($v1)           ## 00000004
/* 00A68 809B3008 8691015E */  lh      $s1, 0x015E($s4)           ## 0000015E
/* 00A6C 809B300C 3C17DA38 */  lui     $s7, 0xDA38                ## $s7 = DA380000
/* 00A70 809B3010 36F70003 */  ori     $s7, $s7, 0x0003           ## $s7 = DA380003
/* 00A74 809B3014 2A210006 */  slti    $at, $s1, 0x0006           
/* 00A78 809B3018 1020004C */  beq     $at, $zero, .L809B314C     
/* 00A7C 809B301C 2416000C */  addiu   $s6, $zero, 0x000C         ## $s6 = 0000000C
/* 00A80 809B3020 3C01447A */  lui     $at, 0x447A                ## $at = 447A0000
/* 00A84 809B3024 4481F000 */  mtc1    $at, $f30                  ## $f30 = 1000.00
/* 00A88 809B3028 3C01809B */  lui     $at, %hi(D_809B32EC)       ## $at = 809B0000
/* 00A8C 809B302C C43C32EC */  lwc1    $f28, %lo(D_809B32EC)($at) 
/* 00A90 809B3030 3C01809B */  lui     $at, %hi(D_809B32F0)       ## $at = 809B0000
/* 00A94 809B3034 3C1E809B */  lui     $s8, %hi(D_809B32A8)       ## $s8 = 809B0000
/* 00A98 809B3038 4480C000 */  mtc1    $zero, $f24                ## $f24 = 0.00
/* 00A9C 809B303C 27DE32A8 */  addiu   $s8, $s8, %lo(D_809B32A8)  ## $s8 = 809B32A8
/* 00AA0 809B3040 C43A32F0 */  lwc1    $f26, %lo(D_809B32F0)($at) 
/* 00AA4 809B3044 44912000 */  mtc1    $s1, $f4                   ## $f4 = 0.00
.L809B3048:
/* 00AA8 809B3048 C6860050 */  lwc1    $f6, 0x0050($s4)           ## 00000050
/* 00AAC 809B304C 468025A0 */  cvt.s.w $f22, $f4                  
/* 00AB0 809B3050 461CB202 */  mul.s   $f8, $f22, $f28            
/* 00AB4 809B3054 46083501 */  sub.s   $f20, $f6, $f8             
/* 00AB8 809B3058 4618A03C */  c.lt.s  $f20, $f24                 
/* 00ABC 809B305C 00000000 */  nop
/* 00AC0 809B3060 45020003 */  bc1fl   .L809B3070                 
/* 00AC4 809B3064 4614D03E */  c.le.s  $f26, $f20                 
/* 00AC8 809B3068 4600C506 */  mov.s   $f20, $f24                 
/* 00ACC 809B306C 4614D03E */  c.le.s  $f26, $f20                 
.L809B3070:
/* 00AD0 809B3070 00000000 */  nop
/* 00AD4 809B3074 4502002D */  bc1fl   .L809B312C                 
/* 00AD8 809B3078 C6840150 */  lwc1    $f4, 0x0150($s4)           ## 00000150
/* 00ADC 809B307C 02360019 */  multu   $s1, $s6                   
/* 00AE0 809B3080 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00AE4 809B3084 34211DA0 */  ori     $at, $at, 0x1DA0           ## $at = 00011DA0
/* 00AE8 809B3088 3C120600 */  lui     $s2, %hi(D_06003510)                ## $s2 = 06000000
/* 00AEC 809B308C 26523510 */  addiu   $s2, $s2, %lo(D_06003510)           ## $s2 = 06003510
/* 00AF0 809B3090 02A18021 */  addu    $s0, $s5, $at              
/* 00AF4 809B3094 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 00AF8 809B3098 00005812 */  mflo    $t3                        
/* 00AFC 809B309C 028B1021 */  addu    $v0, $s4, $t3              
/* 00B00 809B30A0 C44C0160 */  lwc1    $f12, 0x0160($v0)          ## 00000160
/* 00B04 809B30A4 C44E0164 */  lwc1    $f14, 0x0164($v0)          ## 00000164
/* 00B08 809B30A8 0C034261 */  jal     Matrix_Translate              
/* 00B0C 809B30AC 8C460168 */  lw      $a2, 0x0168($v0)           ## 00000168
/* 00B10 809B30B0 4406A000 */  mfc1    $a2, $f20                  
/* 00B14 809B30B4 4600A306 */  mov.s   $f12, $f20                 
/* 00B18 809B30B8 4600A386 */  mov.s   $f14, $f20                 
/* 00B1C 809B30BC 0C0342A3 */  jal     Matrix_Scale              
/* 00B20 809B30C0 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 00B24 809B30C4 0C0347F5 */  jal     func_800D1FD4              
/* 00B28 809B30C8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00B2C 809B30CC 868C0034 */  lh      $t4, 0x0034($s4)           ## 00000034
/* 00B30 809B30D0 461EB482 */  mul.s   $f18, $f22, $f30           
/* 00B34 809B30D4 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 00B38 809B30D8 448C5000 */  mtc1    $t4, $f10                  ## $f10 = 0.00
/* 00B3C 809B30DC 00000000 */  nop
/* 00B40 809B30E0 46805420 */  cvt.s.w $f16, $f10                 
/* 00B44 809B30E4 0C0343B5 */  jal     Matrix_RotateZ              
/* 00B48 809B30E8 46128300 */  add.s   $f12, $f16, $f18           
/* 00B4C 809B30EC 8E7002D0 */  lw      $s0, 0x02D0($s3)           ## 000002D0
/* 00B50 809B30F0 03C02825 */  or      $a1, $s8, $zero            ## $a1 = 809B32A8
/* 00B54 809B30F4 24060222 */  addiu   $a2, $zero, 0x0222         ## $a2 = 00000222
/* 00B58 809B30F8 260D0008 */  addiu   $t5, $s0, 0x0008           ## $t5 = 00000008
/* 00B5C 809B30FC AE6D02D0 */  sw      $t5, 0x02D0($s3)           ## 000002D0
/* 00B60 809B3100 AE170000 */  sw      $s7, 0x0000($s0)           ## 00000000
/* 00B64 809B3104 0C0346A2 */  jal     Matrix_NewMtx              
/* 00B68 809B3108 8EA40000 */  lw      $a0, 0x0000($s5)           ## 00000000
/* 00B6C 809B310C AE020004 */  sw      $v0, 0x0004($s0)           ## 00000004
/* 00B70 809B3110 8E6302D0 */  lw      $v1, 0x02D0($s3)           ## 000002D0
/* 00B74 809B3114 3C18DE00 */  lui     $t8, 0xDE00                ## $t8 = DE000000
/* 00B78 809B3118 246F0008 */  addiu   $t7, $v1, 0x0008           ## $t7 = 00000008
/* 00B7C 809B311C AE6F02D0 */  sw      $t7, 0x02D0($s3)           ## 000002D0
/* 00B80 809B3120 AC720004 */  sw      $s2, 0x0004($v1)           ## 00000004
/* 00B84 809B3124 AC780000 */  sw      $t8, 0x0000($v1)           ## 00000000
/* 00B88 809B3128 C6840150 */  lwc1    $f4, 0x0150($s4)           ## 00000150
.L809B312C:
/* 00B8C 809B312C 26310001 */  addiu   $s1, $s1, 0x0001           ## $s1 = 00000001
/* 00B90 809B3130 2A210006 */  slti    $at, $s1, 0x0006           
/* 00B94 809B3134 461A203C */  c.lt.s  $f4, $f26                  
/* 00B98 809B3138 00000000 */  nop
/* 00B9C 809B313C 45010003 */  bc1t    .L809B314C                 
/* 00BA0 809B3140 00000000 */  nop
/* 00BA4 809B3144 5420FFC0 */  bnel    $at, $zero, .L809B3048     
/* 00BA8 809B3148 44912000 */  mtc1    $s1, $f4                   ## $f4 = 0.00
.L809B314C:
/* 00BAC 809B314C 0C034221 */  jal     Matrix_Pull              
/* 00BB0 809B3150 00000000 */  nop
/* 00BB4 809B3154 3C06809B */  lui     $a2, %hi(D_809B32C0)       ## $a2 = 809B0000
/* 00BB8 809B3158 24C632C0 */  addiu   $a2, $a2, %lo(D_809B32C0)  ## $a2 = 809B32C0
/* 00BBC 809B315C 27A4009C */  addiu   $a0, $sp, 0x009C           ## $a0 = FFFFFFDC
/* 00BC0 809B3160 8EA50000 */  lw      $a1, 0x0000($s5)           ## 00000000
/* 00BC4 809B3164 0C031AD5 */  jal     Graph_CloseDisps              
/* 00BC8 809B3168 2407022C */  addiu   $a3, $zero, 0x022C         ## $a3 = 0000022C
/* 00BCC 809B316C 8FBF006C */  lw      $ra, 0x006C($sp)           
/* 00BD0 809B3170 D7B40018 */  ldc1    $f20, 0x0018($sp)          
/* 00BD4 809B3174 D7B60020 */  ldc1    $f22, 0x0020($sp)          
/* 00BD8 809B3178 D7B80028 */  ldc1    $f24, 0x0028($sp)          
/* 00BDC 809B317C D7BA0030 */  ldc1    $f26, 0x0030($sp)          
/* 00BE0 809B3180 D7BC0038 */  ldc1    $f28, 0x0038($sp)          
/* 00BE4 809B3184 D7BE0040 */  ldc1    $f30, 0x0040($sp)          
/* 00BE8 809B3188 8FB00048 */  lw      $s0, 0x0048($sp)           
/* 00BEC 809B318C 8FB1004C */  lw      $s1, 0x004C($sp)           
/* 00BF0 809B3190 8FB20050 */  lw      $s2, 0x0050($sp)           
/* 00BF4 809B3194 8FB30054 */  lw      $s3, 0x0054($sp)           
/* 00BF8 809B3198 8FB40058 */  lw      $s4, 0x0058($sp)           
/* 00BFC 809B319C 8FB5005C */  lw      $s5, 0x005C($sp)           
/* 00C00 809B31A0 8FB60060 */  lw      $s6, 0x0060($sp)           
/* 00C04 809B31A4 8FB70064 */  lw      $s7, 0x0064($sp)           
/* 00C08 809B31A8 8FBE0068 */  lw      $s8, 0x0068($sp)           
/* 00C0C 809B31AC 03E00008 */  jr      $ra                        
/* 00C10 809B31B0 27BD00C0 */  addiu   $sp, $sp, 0x00C0           ## $sp = 00000000
/* 00C14 809B31B4 00000000 */  nop
/* 00C18 809B31B8 00000000 */  nop
/* 00C1C 809B31BC 00000000 */  nop
