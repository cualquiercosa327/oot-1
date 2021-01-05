#ifndef _Z_EN_M_THUNDER_H_
#define _Z_EN_M_THUNDER_H_

#include "ultra64.h"
#include "global.h"

struct EnMThunder;

typedef void (*EnMThunderActionFunc)(struct EnMThunder*, GlobalContext*);

typedef struct EnMThunder {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ ColliderCylinder collider;
    // /* 0x0198 */ char unk_198[0x14];
    /* 0x0198 */ LightNode* unk_198;
    /* 0x019C */ LightInfo unk_19C;
    /* 0x01AC */ f32 unk_1AC;
    /* 0x01B0 */ f32 unk_1B0;
    /* 0x01B0 */ f32 unk_1B4;
    /* 0x01B0 */ f32 unk_1B8;
    /* 0x01BC */ f32 unk_1BC;
    /* 0x01C0 */ EnMThunderActionFunc actionFunc;
    /* 0x01C4 */ u16 unk_1C4;
    /* 0x01C6 */ u8 unk_1C6;
    /* 0x01C7 */ u8 unk_1C7;
    /* 0x01C8 */ u8 unk_1C8;
    /* 0x01C9 */ u8 unk_1C9;
    /* 0x01CA */ u8 unk_1CA;
} EnMThunder; // size = 0x01CC

extern const ActorInit En_M_Thunder_InitVars;

#endif
