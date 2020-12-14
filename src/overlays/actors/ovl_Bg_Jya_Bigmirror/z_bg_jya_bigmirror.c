/*
 * File: z_bg_jya_bigmirror.c
 * Overlay: ovl_Bg_Jya_Bigmirror
 * Description: Ceiling mirror and puzzle in Spirit Temple top rooms
 */

#include "z_bg_jya_bigmirror.h"

#define FLAGS 0x00000030

#define THIS ((BgJyaBigmirror*)thisx)

void BgJyaBigmirror_Init(Actor* thisx, GlobalContext* globalCtx);
void BgJyaBigmirror_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgJyaBigmirror_Update(Actor* thisx, GlobalContext* globalCtx);
void BgJyaBigmirror_Draw(Actor* thisx, GlobalContext* globalCtx);

static u8 sIsSpawned = 0;

const ActorInit Bg_Jya_Bigmirror_InitVars = {
    ACTOR_BG_JYA_BIGMIRROR,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_JYA_OBJ,
    sizeof(BgJyaBigmirror),
    (ActorFunc)BgJyaBigmirror_Init,
    (ActorFunc)BgJyaBigmirror_Destroy,
    (ActorFunc)BgJyaBigmirror_Update,
    (ActorFunc)BgJyaBigmirror_Draw,
};

typedef struct {
    /* 0x00 */ Vec3f pos;
    /* 0x0C */ s16 params;
    /* 0x0E */ s16 solvedRotY;
    /* 0x10 */ s16 initRotY;
} BigMirrorDataEntry; // size = 0x14

static BigMirrorDataEntry sCobraSpawnData[] = {
    { { -560, 1743, -310 }, 0xFF01, 0x4000, 0x8000 },
    { { 60, 1743, -310 }, 0xFF02, 0x8000, 0xA000 },
};

extern Gfx D_0600BC70[];
extern Gfx D_0600BD80[];
extern Gfx D_0600E1B0[];
extern Gfx D_0600E2D0[];

void BgJyaBigmirror_SetRoomFlag(Actor* thisx, GlobalContext* globalCtx) {
    BgJyaBigmirror* this = THIS;

    s8 roomNumber;

    this->puzzleState &= ~0x38;
    roomNumber = globalCtx->roomCtx.curRoom.num;
    if (roomNumber == 5) { // Statue room
        this->puzzleState |= 0x8;
    } else if (roomNumber == 0x19) { // First top room
        this->puzzleState |= 0x10;
    } else if (roomNumber == 0x1A) { // Second top room
        this->puzzleState |= 0x20;
    }
}

void BgJyaBigmirror_HandleCobra(Actor* thisx, GlobalContext* globalCtx) {
    static u8 cobraPuzzleFlags[] = { 0x01, 0x02 };
    BgJyaBigmirror* this = THIS;

    BigMirrorDataEntry* curSpawnData;
    BigmirrorCobra* curCobraInfo;
    s32 i;

    if ((this->puzzleState & 0x30) != 0) { // In one of top rooms

        for (i = 0; i < 2; i++) {
            curSpawnData = &sCobraSpawnData[i];
            curCobraInfo = &this->cobraInfo[i];

            if (curCobraInfo->cobra != NULL) {
                curCobraInfo->rotY = curCobraInfo->cobra->actor.shape.rot.y;

                if (curCobraInfo->rotY == curSpawnData->solvedRotY) {
                    this->puzzleState |= cobraPuzzleFlags[i];
                } else {
                    this->puzzleState &= ~cobraPuzzleFlags[i];
                }

                if (curCobraInfo->cobra->actor.update == 0) {
                    // Cobra deleted
                    osSyncPrintf("Error : コブラ削除された (%s %d)\n", "../z_bg_jya_bigmirror.c", 203);
                }
            } else {
                curCobraInfo->cobra = (BgJyaCobra*)Actor_SpawnAsChild(
                    &globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_BG_JYA_COBRA, curSpawnData->pos.x,
                    curSpawnData->pos.y, curSpawnData->pos.z, 0, curCobraInfo->rotY, 0, curSpawnData->params);
                this->actor.child = NULL;

                if (&curCobraInfo->cobra->actor == NULL) {
                    // Cobra generation failed
                    osSyncPrintf("Error : コブラ発生失敗 (%s %d)\n", "../z_bg_jya_bigmirror.c", 221);
                }
            }
        }
    } else { // In statue room

        for (i = 0; i < 2; i++) {
            curCobraInfo = &this->cobraInfo[i];
            if (curCobraInfo->cobra != NULL) {
                if (curCobraInfo->cobra->actor.child != NULL) {
                    Actor_Kill(curCobraInfo->cobra->actor.child);
                    curCobraInfo->cobra->actor.child = NULL;
                }
                Actor_Kill(&curCobraInfo->cobra->actor);
                curCobraInfo->cobra = NULL;
            }
        }
    }
}

void BgJyaBigmirror_SetBombiwaFlag(Actor* thisx, GlobalContext* globalCtx) {
    BgJyaBigmirror* this = THIS;

    if (Flags_GetSwitch(globalCtx, 0x29) != 0) {
        this->puzzleState |= 4;
    } else {
        this->puzzleState &= ~4;
    }
}

void BgJyaBigmirror_HandleMirRay(Actor* thisx, GlobalContext* globalCtx) {
    static s16 sMirRayParamss[] = { 0x0005, 0x0007, 0x0008 };
    static Vec3f sMirRayPoss[] = {
        { 60, 1802, -1102 },
        { -560, 1800, -310 },
        { 60, 1800, -310 },
    };
    BgJyaBigmirror* this = THIS;

    s32 inTopRooms;
    s32 lightBeamToggles[3];
    s32 puzzleSolved;
    s32 objBankIndex;
    s32 i;

    objBankIndex = Object_GetIndex(&globalCtx->objectCtx, OBJECT_MIR_RAY);

    if ((objBankIndex < 0) || (objBankIndex != this->mirRayObjIndex)) {
        this->lightBeams[2] = NULL;
        this->lightBeams[1] = NULL;
        this->lightBeams[0] = NULL;
    } else {
        puzzleSolved = (this->puzzleState & 0x18) != 0; // In second room or puzzle progress made

        if (puzzleSolved != 0) {
            puzzleSolved = (this->puzzleState & 2) != 0; // Second cobra solved

            if (puzzleSolved != 0) {
                puzzleSolved = (this->puzzleState & 1) != 0; // First cobra solved
            }
        }
        lightBeamToggles[0] = puzzleSolved; // Only spawn if puzzle solved
        if (1) {}
        inTopRooms = this->puzzleState & 0x30; // In one of top rooms
        lightBeamToggles[2] = inTopRooms;
        lightBeamToggles[1] = inTopRooms;

        for (i = 0; i < 3; i++) {
            if (lightBeamToggles[i] != 0) {
                if ((this->lightBeams[i] == NULL) && Object_IsLoaded(&globalCtx->objectCtx, objBankIndex)) {
                    this->lightBeams[i] = Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_MIR_RAY, sMirRayPoss[i].x,
                                                      sMirRayPoss[i].y, sMirRayPoss[i].z, 0, 0, 0, sMirRayParamss[i]);

                    if (this->lightBeams[i] == NULL) {
                        osSyncPrintf("Error : Mir Ray 発生失敗 (%s %d)\n", "../z_bg_jya_bigmirror.c", 310);
                    }
                }
            } else {
                if (this->lightBeams[i] != NULL) {
                    Actor_Kill(this->lightBeams[i]);
                    this->lightBeams[i] = NULL;
                }
            }
        }
    }
    this->mirRayObjIndex = objBankIndex;
}

void BgJyaBigmirror_Init(Actor* thisx, GlobalContext* globalCtx) {
    BgJyaBigmirror* this = THIS;

    if (sIsSpawned != 0) {
        Actor_Kill(&this->actor);
        return;
    }

    Actor_SetScale(&this->actor, 0.1f);
    this->cobraInfo[0].rotY = sCobraSpawnData[0].initRotY;
    this->cobraInfo[1].rotY = sCobraSpawnData[1].initRotY;
    this->actor.room = -1;
    sIsSpawned = 1;
    this->spawned = 1;
    this->mirRayObjIndex = -1;

    // jya Bigmirror
    osSyncPrintf("(jya 大鏡)(arg_data 0x%04x)\n", this->actor.params, this);
}

void BgJyaBigmirror_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    BgJyaBigmirror* this = THIS;

    if (this->spawned != 0) {
        sIsSpawned = 0;
    }
}

void BgJyaBigmirror_Update(Actor* thisx, GlobalContext* globalCtx) {
    BgJyaBigmirror_SetRoomFlag(thisx, globalCtx);
    BgJyaBigmirror_HandleCobra(thisx, globalCtx);
    BgJyaBigmirror_SetBombiwaFlag(thisx, globalCtx);
    BgJyaBigmirror_HandleMirRay(thisx, globalCtx);
}

void BgJyaBigmirror_DrawLightBeam(Actor* thisx, GlobalContext* globalCtx) {
    static Vec3s D_80893F4C = { 0, 0, 0 };
    BgJyaBigmirror* this = THIS;

    Actor* lift;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_bg_jya_bigmirror.c", 435);
    func_80093D84(globalCtx->state.gfxCtx);
    lift = Actor_Find(&globalCtx->actorCtx, ACTOR_BG_JYA_LIFT, 1);
    if (lift != NULL) {
        this->liftHeight = lift->posRot.pos.y;
    }
    func_800D1694(this->actor.posRot.pos.x, this->actor.posRot.pos.y + 40.0f, this->actor.posRot.pos.z,
                  &this->actor.shape.rot);
    // Second float seems to be either this or 1613/1280 + 0.13: both numerators relate to the lift height
    Matrix_Scale(0.1f, (this->liftHeight * -(1.0f / 1280.0f)) + (973.0f / 1280.0f + 0.63f) /* 1.3901563f */, 0.1f, 1);
    gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_bg_jya_bigmirror.c", 457),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(POLY_XLU_DISP++, D_0600BC70);

    if (lift != NULL) {
        if (1) {}
        func_800D1694(lift->posRot.pos.x, lift->posRot.pos.y, lift->posRot.pos.z, &D_80893F4C);
        Matrix_Scale(0.1f, 0.1f, 0.1f, 1);
        gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_bg_jya_bigmirror.c", 467),
                  G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPDisplayList(POLY_XLU_DISP++, D_0600BD80);
    }

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_bg_jya_bigmirror.c", 476);
}

void BgJyaBigmirror_Draw(Actor* thisx, GlobalContext* globalCtx) {
    BgJyaBigmirror* this = THIS;

    // In first top room
    if ((this->puzzleState & 0x10) != 0) {
        Gfx_DrawDListOpa(globalCtx, D_0600E1B0);
        Gfx_DrawDListXlu(globalCtx, D_0600E2D0);
    }

    // In statue room or two top rooms AND second cobra is solved AND first cobra is solved
    if (((this->puzzleState & 0x38) != 0) && ((this->puzzleState & 2) != 0) && ((this->puzzleState & 1) != 0)) {
        BgJyaBigmirror_DrawLightBeam(&this->actor, globalCtx);
    }
}
