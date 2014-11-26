.class public Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;
.super Lcom/diotek/ime/framework/engine/AbstractInputEngine;
.source "Xt9Wrapper.java"

# interfaces
.implements Lcom/diotek/ime/framework/engine/xt9/Xt9DBController;


# static fields
.field public static final ASDB_DB_TYPE:B = 0x2t

.field private static final ASDB_FILE_NAME:Ljava/lang/String; = "xT9ASdbData.dat"

.field private static final ASDB_SIZE:I = 0x2800

.field private static final ASDB_WORD_SIZE:I = 0x40

.field public static final CDB_DB_TYPE:B = 0x1t

.field private static final CDB_FILE_NAME:Ljava/lang/String; = "xT9CdbData.dat"

.field private static final CDB_SIZE:I = 0x800

.field private static final DB_DIR:Ljava/lang/String; = "xT9DB"

.field public static final DLM_DB_TYPE:B = 0x4t

.field private static final DLM_FILE_NAME:Ljava/lang/String; = "xT9DLMData.dat"

.field private static DLM_SIZE:I = 0x0

.field private static final FORWARD:B = 0x0t

.field private static INPUT_MODE_AMBIG:I = 0x0

.field private static INPUT_MODE_MULTITAP:I = 0x0

.field public static final KUDB_DB_TYPE:B = 0x3t

.field private static final KUDB_FILE_NAME:Ljava/lang/String; = "xT9KUdbData.dat"

.field private static final KUDB_SIZE:I = 0x5000

.field public static final UDB_DB_TYPE:B = 0x0t

.field private static final UDB_FILE_NAME:Ljava/lang/String; = "xT9UdbData.dat"

.field private static final UDB_SIZE:I = 0x5000

.field private static final UDB_WORD_SIZE:I = 0x40

.field private static mASDBBuffer:[B

.field private static mCDBBuffer:[B

.field private static mDLMBuffer:[B

.field private static mKUDBBuffer:[B

.field private static mUDBBuffer:[B


# instance fields
.field private final EMPTY_MULTITAP_SEQ:[S

.field private final ET9CPSYLLABLEDELIMITER:C

.field private final EXTEND_KEYMAP_AR:[S

.field private final EXTEND_KEYMAP_AZ:[S

.field private final EXTEND_KEYMAP_BG:[S

.field private final EXTEND_KEYMAP_DA:[S

.field private final EXTEND_KEYMAP_ET:[S

.field private final EXTEND_KEYMAP_FA:[S

.field private final EXTEND_KEYMAP_HE:[S

.field private final EXTEND_KEYMAP_HY:[S

.field private final EXTEND_KEYMAP_IS:[S

.field private final EXTEND_KEYMAP_KO:[S

.field private final EXTEND_KEYMAP_LT:[S

.field private final EXTEND_KEYMAP_RU:[S

.field private final EXTEND_KEYMAP_SQ:[S

.field private final EXTEND_KEYMAP_UR:[S

.field private final KEYMAP_PHONEPAD:[S

.field private final KEYMAP_PHONEPAD_STROKE_ZH_CN:[S

.field private final KEYMAP_PHONEPAD_TH:[S

.field private final KEYMAP_QWERTY:[S

.field private final KEYMAP_QWERTY_EL:[S

.field private final KEYMAP_QWERTY_TH:[S

.field private final KEYMAP_QWERTY_TR:[S

.field private final KEYMAP_QWERTY_TR_F:[S

.field private final KEYMAP_QWERTY_VI:[S

.field private final STROKE_CHARSET:[C

.field private final VIETNAMESE_CONSONANT:Ljava/lang/String;

.field private final XT9_9:Ljava/lang/String;

.field private final XT9_9_4:Ljava/lang/String;

.field private final XT9_9_8:Ljava/lang/String;

.field private final mActiveWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;

.field private mBilingualInputLanguage:I

.field private mBilingualInputLanguageId:S

.field private final mCPSpell:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

.field private mCacheRecapture:Ljava/lang/String;

.field private final mCount:[S

.field private mGap:I

.field private final mHangulWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

.field private final mIMEInfo:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KDB_IMEInfo;

.field private mImeInputLanguage:I

.field private mInitialized:Z

.field private mInputLanguageId:S

.field private mIsActiveWordStatusChangable:Z

.field private mIsRecapture:Z

.field private mShiftState:B

.field private final mShortcutBuf:[S

.field private final mShortcutLengthBuf:[S

.field private final mSubstitutionBuf:[S

.field private final mSubstitutionLengthBuf:[S

.field private final mWordBuf:[S

.field private final mWordLengthBuf:[S

.field private mXt9Version:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v2, 0x5000

    const/4 v1, 0x0

    sput v1, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->INPUT_MODE_MULTITAP:I

    const/4 v0, 0x1

    sput v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->INPUT_MODE_AMBIG:I

    sput v1, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->DLM_SIZE:I

    new-array v0, v2, [B

    sput-object v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mUDBBuffer:[B

    const/16 v0, 0x800

    new-array v0, v0, [B

    sput-object v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mCDBBuffer:[B

    const/16 v0, 0x2800

    new-array v0, v0, [B

    sput-object v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mASDBBuffer:[B

    new-array v0, v2, [B

    sput-object v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mKUDBBuffer:[B

    const/4 v0, 0x0

    sput-object v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mDLMBuffer:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const/4 v5, 0x6

    const/16 v4, 0x40

    const/4 v3, 0x1

    const/16 v2, 0x1a

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/AbstractInputEngine;-><init>()V

    const/16 v0, 0xa

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->KEYMAP_PHONEPAD:[S

    const/16 v0, 0xb

    new-array v0, v0, [S

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->KEYMAP_PHONEPAD_TH:[S

    new-array v0, v5, [S

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->KEYMAP_PHONEPAD_STROKE_ZH_CN:[S

    new-array v0, v2, [S

    fill-array-data v0, :array_3

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->KEYMAP_QWERTY:[S

    const/16 v0, 0x20

    new-array v0, v0, [S

    fill-array-data v0, :array_4

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->EXTEND_KEYMAP_HY:[S

    new-array v0, v2, [S

    fill-array-data v0, :array_5

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->EXTEND_KEYMAP_SQ:[S

    const/4 v0, 0x5

    new-array v0, v0, [S

    fill-array-data v0, :array_6

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->EXTEND_KEYMAP_BG:[S

    new-array v0, v2, [S

    fill-array-data v0, :array_7

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->EXTEND_KEYMAP_DA:[S

    new-array v0, v2, [S

    fill-array-data v0, :array_8

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->EXTEND_KEYMAP_IS:[S

    const/4 v0, 0x7

    new-array v0, v0, [S

    fill-array-data v0, :array_9

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->EXTEND_KEYMAP_RU:[S

    const/4 v0, 0x7

    new-array v0, v0, [S

    fill-array-data v0, :array_a

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->EXTEND_KEYMAP_AR:[S

    const/16 v0, 0x8

    new-array v0, v0, [S

    fill-array-data v0, :array_b

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->EXTEND_KEYMAP_FA:[S

    const/16 v0, 0xf

    new-array v0, v0, [S

    fill-array-data v0, :array_c

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->EXTEND_KEYMAP_UR:[S

    new-array v0, v3, [S

    aput-short v2, v0, v1

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->EXTEND_KEYMAP_HE:[S

    const/16 v0, 0x33

    new-array v0, v0, [S

    fill-array-data v0, :array_d

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->EXTEND_KEYMAP_KO:[S

    new-array v0, v2, [S

    fill-array-data v0, :array_e

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->EXTEND_KEYMAP_ET:[S

    const/16 v0, 0x1b

    new-array v0, v0, [S

    fill-array-data v0, :array_f

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->KEYMAP_QWERTY_VI:[S

    const/16 v0, 0x1b

    new-array v0, v0, [S

    fill-array-data v0, :array_10

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->KEYMAP_QWERTY_TH:[S

    new-array v0, v2, [S

    fill-array-data v0, :array_11

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->EXTEND_KEYMAP_LT:[S

    new-array v0, v2, [S

    fill-array-data v0, :array_12

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->EXTEND_KEYMAP_AZ:[S

    new-array v0, v2, [S

    fill-array-data v0, :array_13

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->KEYMAP_QWERTY_EL:[S

    new-array v0, v2, [S

    fill-array-data v0, :array_14

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->KEYMAP_QWERTY_TR:[S

    new-array v0, v2, [S

    fill-array-data v0, :array_15

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->KEYMAP_QWERTY_TR_F:[S

    new-array v0, v5, [C

    fill-array-data v0, :array_16

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->STROKE_CHARSET:[C

    const/16 v0, 0x27

    iput-char v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->ET9CPSYLLABLEDELIMITER:C

    new-instance v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;

    invoke-direct {v0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mActiveWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;

    new-instance v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    invoke-direct {v0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mHangulWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    new-instance v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    invoke-direct {v0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mCPSpell:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    new-instance v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KDB_IMEInfo;

    invoke-direct {v0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KDB_IMEInfo;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mIMEInfo:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KDB_IMEInfo;

    iput-boolean v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInitialized:Z

    iput-short v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    const/high16 v0, 0x656e0000

    iput v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mImeInputLanguage:I

    iput-byte v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mShiftState:B

    iput-boolean v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mIsRecapture:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mCacheRecapture:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mIsActiveWordStatusChangable:Z

    new-array v0, v3, [S

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mCount:[S

    new-array v0, v4, [S

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mWordBuf:[S

    new-array v0, v3, [S

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mWordLengthBuf:[S

    new-array v0, v4, [S

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mShortcutBuf:[S

    new-array v0, v3, [S

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mShortcutLengthBuf:[S

    new-array v0, v4, [S

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mSubstitutionBuf:[S

    new-array v0, v3, [S

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mSubstitutionLengthBuf:[S

    new-array v0, v1, [S

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->EMPTY_MULTITAP_SEQ:[S

    const-string v0, "XT9 V09"

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->XT9_9:Ljava/lang/String;

    const-string v0, "XT9 V09.06"

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->XT9_9_4:Ljava/lang/String;

    const-string v0, "XT9 V09.08"

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->XT9_9_8:Ljava/lang/String;

    iput v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mXt9Version:I

    iput v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mBilingualInputLanguage:I

    iput-short v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mBilingualInputLanguageId:S

    const-string v0, "bcd\u0111fghjklmnpqrstvwxz0123456789"

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->VIETNAMESE_CONSONANT:Ljava/lang/String;

    iput v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mGap:I

    return-void

    :array_0
    .array-data 2
        0x9s
        0x0s
        0x1s
        0x2s
        0x3s
        0x4s
        0x5s
        0x6s
        0x7s
        0x8s
    .end array-data

    :array_1
    .array-data 2
        0xas
        0x0s
        0x1s
        0x2s
        0x3s
        0x4s
        0x5s
        0x6s
        0x7s
        0x8s
        0x9s
    .end array-data

    nop

    :array_2
    .array-data 2
        0x1s
        0x2s
        0x3s
        0x4s
        0x5s
        0x6s
    .end array-data

    :array_3
    .array-data 2
        0xas
        0x17s
        0x15s
        0xcs
        0x2s
        0xds
        0xes
        0xfs
        0x7s
        0x10s
        0x11s
        0x12s
        0x19s
        0x18s
        0x8s
        0x9s
        0x0s
        0x3s
        0xbs
        0x4s
        0x6s
        0x16s
        0x1s
        0x14s
        0x5s
        0x13s
    .end array-data

    :array_4
    .array-data 2
        0x25s
        0x1as
        -0x1s
        -0x1s
        0x21s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        0x1es
        -0x1s
        0x1fs
        0x1ds
        0x1bs
        -0x1s
        0x22s
        -0x1s
        0x27s
        0x1cs
        0x26s
        0x20s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        0x24s
        -0x1s
        -0x1s
        0x23s
    .end array-data

    :array_5
    .array-data 2
        0xbs
        0x19s
        0x17s
        0xds
        0x2s
        0xes
        0xfs
        0x10s
        0x7s
        0x11s
        0x12s
        0x13s
        0x1bs
        0x1as
        0x8s
        0x9s
        0x0s
        0x3s
        0xcs
        0x4s
        0x6s
        0x18s
        0x1s
        0x16s
        0x5s
        0x15s
    .end array-data

    :array_6
    .array-data 2
        0x1as
        0x1bs
        0x1cs
        0x1ds
        0x1es
    .end array-data

    nop

    :array_7
    .array-data 2
        0xbs
        0x1as
        0x18s
        0xds
        0x2s
        0xes
        0xfs
        0x10s
        0x7s
        0x11s
        0x12s
        0x13s
        0x1cs
        0x1bs
        0x8s
        0x9s
        0x0s
        0x3s
        0xcs
        0x4s
        0x6s
        0x19s
        0x1s
        0x17s
        0x5s
        0x16s
    .end array-data

    :array_8
    .array-data 2
        0xbs
        0x19s
        0x17s
        0xds
        0x2s
        0xes
        0xfs
        0x10s
        0x7s
        0x11s
        0x12s
        0x13s
        0x1bs
        0x1as
        0x8s
        0x9s
        0x0s
        0x3s
        0xcs
        0x4s
        0x6s
        0x18s
        0x1s
        0x16s
        0x5s
        0x15s
    .end array-data

    :array_9
    .array-data 2
        0x1as
        0x1bs
        0x1cs
        0x1ds
        0x1es
        0x1fs
        0x20s
    .end array-data

    nop

    :array_a
    .array-data 2
        0x1as
        0x1bs
        0x1cs
        0x1ds
        0x1es
        0x1fs
        0x20s
    .end array-data

    nop

    :array_b
    .array-data 2
        0x1as
        0x0s
        0x4s
        0xfs
        0x14s
        0x15s
        0x17s
        0x1as
    .end array-data

    :array_c
    .array-data 2
        0x1as
        0x3s
        0x4s
        0x6s
        0xas
        0xbs
        0xcs
        0xes
        0xfs
        0x10s
        0x14s
        0x15s
        0x16s
        0x17s
        0x19s
    .end array-data

    nop

    :array_d
    .array-data 2
        0x3s
        -0x1s
        -0x1s
        0xbs
        -0x1s
        -0x1s
        0x2s
        -0x1s
        0xds
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        -0x1s
        0xas
        0x0s
        -0x1s
        -0x1s
        0x4s
        -0x1s
        0xcs
        0x1s
        -0x1s
        0x15s
        0x13s
        0x14s
        0x16s
        0xes
        0x11s
        0x8s
        0x7s
        -0x1s
        0x10s
        0x9s
        0x6s
        -0x1s
        0xfs
        -0x1s
        -0x1s
        -0x1s
        0x5s
        0x18s
        -0x1s
        -0x1s
        -0x1s
        0x17s
        0x19s
        -0x1s
        0x12s
    .end array-data

    nop

    :array_e
    .array-data 2
        0xcs
        0x1bs
        0x19s
        0xes
        0x2s
        0xfs
        0x10s
        0x11s
        0x7s
        0x12s
        0x13s
        0x14s
        0x1ds
        0x1cs
        0x8s
        0x9s
        0x0s
        0x3s
        0xds
        0x4s
        0x6s
        0x1as
        0x1s
        0x18s
        0x5s
        0x17s
    .end array-data

    :array_f
    .array-data 2
        0xas
        0x18s
        0x16s
        0xcs
        0x2s
        0xds
        0xes
        0xfs
        0x7s
        0x10s
        0x11s
        0x12s
        0x1as
        0x19s
        0x8s
        0x9s
        0x0s
        0x3s
        0xbs
        0x4s
        0x6s
        0x17s
        0x1s
        0x15s
        0x5s
        0x14s
        0x13s
    .end array-data

    nop

    :array_10
    .array-data 2
        0xas
        0x18s
        0x16s
        0xcs
        0x2s
        0xds
        0xes
        0xfs
        0x7s
        0x10s
        0x11s
        0x12s
        0x1as
        0x19s
        0x8s
        0x9s
        0x0s
        0x3s
        0xbs
        0x4s
        0x6s
        0x17s
        0x1s
        0x15s
        0x5s
        0x14s
        0x13s
    .end array-data

    nop

    :array_11
    .array-data 2
        0x13s
        0x20s
        0x1es
        0x15s
        0xbs
        0x16s
        0x17s
        0x18s
        0x10s
        0x19s
        0x1as
        0x1bs
        0x22s
        0x21s
        0x11s
        0x12s
        0x9s
        0xcs
        0x14s
        0xds
        0xfs
        0x1fs
        0xas
        0x1ds
        0xes
        0x1cs
    .end array-data

    :array_12
    .array-data 2
        0xcs
        0x1bs
        0x19s
        0xes
        0x2s
        0xfs
        0x10s
        0x11s
        0x7s
        0x12s
        0x13s
        0x14s
        0x1ds
        0x1cs
        0x8s
        0x9s
        0x0s
        0x3s
        0xds
        0x4s
        0x6s
        0x1as
        0x1s
        0x18s
        0x5s
        0x17s
    .end array-data

    :array_13
    .array-data 2
        0x9s
        0x16s
        0x14s
        0xbs
        0x1s
        0xcs
        0xds
        0xes
        0x6s
        0xfs
        0x10s
        0x11s
        0x18s
        0x17s
        0x7s
        0x8s
        -0x1s
        0x2s
        0xas
        0x3s
        0x5s
        0x15s
        0x0s
        0x13s
        0x4s
        0x12s
    .end array-data

    :array_14
    .array-data 2
        0xcs
        0x1bs
        0x19s
        0xes
        0x2s
        0xfs
        0x10s
        0x11s
        0x16s
        0x12s
        0x13s
        0x14s
        0x1ds
        0x1cs
        0x8s
        0x9s
        0x0s
        0x3s
        0xds
        0x4s
        0x6s
        0x1as
        0x1s
        0x18s
        0x5s
        0x17s
    .end array-data

    :array_15
    .array-data 2
        0xfs
        0x1fs
        0x1bs
        0x5s
        0xes
        0x0s
        0x1s
        0x8s
        0xds
        0x18s
        0x12s
        0x14s
        0x13s
        0x7s
        0x4s
        0x9s
        0xas
        0x6s
        0x1es
        0x11s
        0xcs
        0x1as
        0xbs
        0x17s
        0x15s
        0x1ds
    .end array-data

    :array_16
    .array-data 2
        0x4e00s
        0x4e28s
        0x4e3fs
        0x4e36s
        0x4e5bs
        0x3fs
    .end array-data
.end method

.method private changeKDBNum(I)V
    .locals 17
    .param p1    # I

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget v15, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mXt9Version:I

    if-ne v14, v15, :cond_16

    const/4 v13, 0x0

    const/4 v14, 0x1

    new-array v5, v14, [S

    const/4 v14, 0x1

    new-array v8, v14, [S

    invoke-static {v5, v8}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KDB_GetKdbNum([S[S)S

    move-result v13

    if-eqz v13, :cond_0

    const-string v14, "SamsungIME"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "ET9KDB_GetKdbNum : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v14, 0x1

    new-array v7, v14, [S

    const/4 v14, 0x1

    new-array v10, v14, [S

    invoke-static {v7, v10}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KDB_GetPageNum([S[S)S

    move-result v13

    if-eqz v13, :cond_1

    const-string v14, "SamsungIME"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "ET9KDB_GetPageNum : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v14, 0x1

    new-array v6, v14, [S

    const/4 v14, 0x1

    new-array v9, v14, [S

    const/4 v14, 0x0

    const/4 v15, 0x0

    aput-short v15, v6, v14

    const/4 v14, 0x0

    const/4 v15, 0x0

    aput-short v15, v9, v14

    move-object/from16 v0, p0

    iget-short v14, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    const/16 v15, 0xe1

    if-ne v14, v15, :cond_b

    const/4 v14, 0x0

    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9CPGetChineseLdbNum()S

    move-result v15

    aput-short v15, v6, v14

    :cond_2
    :goto_0
    move-object/from16 v0, p0

    iget-short v14, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    const/16 v15, 0x12

    if-ne v14, v15, :cond_3

    const/4 v14, 0x0

    const/4 v15, 0x0

    aget-short v15, v6, v15

    const v16, 0xff00

    and-int v15, v15, v16

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    move/from16 v16, v0

    or-int v15, v15, v16

    int-to-short v15, v15

    aput-short v15, v6, v14

    :cond_3
    const/4 v2, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    const/4 v14, 0x7

    move/from16 v0, p1

    if-eq v0, v14, :cond_4

    const/16 v14, 0x8

    move/from16 v0, p1

    if-ne v0, v14, :cond_5

    :cond_4
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v11

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    const-string v14, "nl"

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c

    const-string v14, "BE"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c

    move-object/from16 v0, p0

    iget-short v14, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    const/16 v15, 0x13

    if-ne v14, v15, :cond_5

    const/4 v2, 0x1

    :cond_5
    :goto_1
    const/4 v14, 0x1

    move/from16 v0, p1

    if-eq v0, v14, :cond_6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v14}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v14

    if-eqz v14, :cond_11

    :cond_6
    move-object/from16 v0, p0

    iget-short v14, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    const/16 v15, 0xe1

    if-ne v14, v15, :cond_10

    const/4 v14, 0x0

    aget-short v14, v6, v14

    and-int/lit16 v14, v14, 0xff

    or-int/lit16 v14, v14, 0xa00

    int-to-short v1, v14

    :goto_2
    const/4 v14, 0x0

    aget-short v14, v6, v14

    and-int/lit16 v14, v14, 0xff

    const/16 v15, 0x12

    if-eq v14, v15, :cond_7

    const/4 v14, 0x0

    aget-short v14, v9, v14

    and-int/lit16 v14, v14, 0xff

    const/16 v15, 0x12

    if-ne v14, v15, :cond_7

    :cond_7
    const/4 v14, 0x0

    const/4 v15, 0x0

    aget-short v15, v10, v15

    invoke-static {v1, v2, v14, v15}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KDB_SetKdbNum(SSSS)S

    move-result v13

    if-eqz v13, :cond_8

    const/4 v14, 0x0

    const/4 v15, 0x0

    aget-short v15, v10, v15

    invoke-static {v1, v2, v14, v15}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KDB_SetKdbNum(SSSS)S

    move-result v13

    :cond_8
    if-eqz v13, :cond_9

    const-string v14, "SamsungIME"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "ET9KDB_SetKdbNum : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    const/4 v14, 0x0

    aget-short v14, v10, v14

    invoke-static {v2, v14}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KDB_SetPageNum(SS)S

    move-result v13

    if-eqz v13, :cond_a

    const-string v14, "SamsungIME"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "ET9KDB_SetPageNum : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    :goto_3
    return-void

    :cond_b
    invoke-static {v6, v9}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWLdbGetLanguage([S[S)S

    move-result v13

    if-eqz v13, :cond_2

    const-string v14, "SamsungIME"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "ET9AWLdbGetLanguage : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_c
    const-string v14, "CA"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_d

    move-object/from16 v0, p0

    iget-short v14, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    const/16 v15, 0xc

    if-ne v14, v15, :cond_5

    const/4 v2, 0x1

    goto/16 :goto_1

    :cond_d
    const-string v14, "CH"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_f

    move-object/from16 v0, p0

    iget-short v14, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    const/16 v15, 0x10

    if-ne v14, v15, :cond_e

    const/4 v2, 0x1

    goto/16 :goto_1

    :cond_e
    move-object/from16 v0, p0

    iget-short v14, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    const/16 v15, 0xc

    if-ne v14, v15, :cond_5

    const/4 v2, 0x2

    goto/16 :goto_1

    :cond_f
    move-object/from16 v0, p0

    iget-short v14, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    const/16 v15, 0x60

    if-ne v14, v15, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v2, 0x1

    goto/16 :goto_1

    :cond_10
    const/4 v14, 0x0

    aget-short v14, v6, v14

    and-int/lit16 v14, v14, 0xff

    or-int/lit16 v14, v14, 0x600

    int-to-short v1, v14

    goto/16 :goto_2

    :cond_11
    move-object/from16 v0, p0

    iget-short v14, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    const/16 v15, 0xe1

    if-ne v14, v15, :cond_12

    const/4 v14, 0x0

    aget-short v14, v6, v14

    and-int/lit16 v14, v14, 0xff

    or-int/lit16 v14, v14, 0xd00

    int-to-short v1, v14

    goto/16 :goto_2

    :cond_12
    move-object/from16 v0, p0

    iget-short v14, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    const/16 v15, 0x1f

    if-ne v14, v15, :cond_13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v15, "SETTINGS_TURKISH_KEYBOARD_TYPE"

    const/16 v16, 0x0

    invoke-interface/range {v14 .. v16}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v12

    packed-switch v12, :pswitch_data_0

    const/4 v14, 0x0

    aget-short v14, v6, v14

    and-int/lit16 v14, v14, 0xff

    or-int/lit16 v14, v14, 0x700

    int-to-short v1, v14

    goto/16 :goto_2

    :pswitch_0
    const/4 v14, 0x0

    aget-short v14, v6, v14

    and-int/lit16 v14, v14, 0xff

    or-int/lit16 v14, v14, 0xf00

    int-to-short v1, v14

    goto/16 :goto_2

    :pswitch_1
    const/4 v14, 0x0

    aget-short v14, v6, v14

    and-int/lit16 v14, v14, 0xff

    or-int/lit16 v14, v14, 0x1000

    int-to-short v1, v14

    goto/16 :goto_2

    :cond_13
    move-object/from16 v0, p0

    iget-short v14, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    const/4 v15, 0x1

    if-eq v14, v15, :cond_14

    move-object/from16 v0, p0

    iget-short v14, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    const/16 v15, 0x19

    if-eq v14, v15, :cond_14

    move-object/from16 v0, p0

    iget-short v14, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    const/16 v15, 0x61

    if-ne v14, v15, :cond_15

    :cond_14
    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->getWindowHeight()I

    move-result v14

    const/16 v15, 0x1e0

    if-ne v14, v15, :cond_15

    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->getWindowWidth()I

    move-result v14

    const/16 v15, 0x140

    if-ne v14, v15, :cond_15

    const/4 v14, 0x0

    aget-short v14, v6, v14

    and-int/lit16 v14, v14, 0xff

    or-int/lit16 v14, v14, 0x500

    int-to-short v1, v14

    goto/16 :goto_2

    :cond_15
    const/4 v14, 0x0

    aget-short v14, v6, v14

    and-int/lit16 v14, v14, 0xff

    or-int/lit16 v14, v14, 0x700

    int-to-short v1, v14

    goto/16 :goto_2

    :cond_16
    move-object/from16 v0, p0

    iget v14, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mXt9Version:I

    if-nez v14, :cond_a

    const/4 v13, 0x0

    const/4 v14, 0x1

    new-array v5, v14, [S

    const/4 v14, 0x1

    new-array v8, v14, [S

    invoke-static {v5, v8}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KDB_GetKdbNum([S[S)S

    move-result v13

    if-eqz v13, :cond_17

    const-string v14, "SamsungIME"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "ET9KDB_GetKdbNum : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    const/4 v14, 0x1

    new-array v7, v14, [S

    const/4 v14, 0x1

    new-array v10, v14, [S

    invoke-static {v7, v10}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KDB_GetPageNum([S[S)S

    move-result v13

    if-eqz v13, :cond_18

    const-string v14, "SamsungIME"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "ET9KDB_GetPageNum : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    const/4 v14, 0x1

    new-array v6, v14, [S

    const/4 v14, 0x1

    new-array v9, v14, [S

    const/4 v14, 0x0

    const/4 v15, 0x0

    aput-short v15, v6, v14

    const/4 v14, 0x0

    const/4 v15, 0x0

    aput-short v15, v9, v14

    move-object/from16 v0, p0

    iget-short v14, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    const/16 v15, 0xe1

    if-ne v14, v15, :cond_20

    const/4 v14, 0x0

    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9CPGetChineseLdbNum()S

    move-result v15

    aput-short v15, v6, v14

    :cond_19
    :goto_4
    move-object/from16 v0, p0

    iget-short v14, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    const/16 v15, 0x12

    if-ne v14, v15, :cond_1a

    const/4 v14, 0x0

    const/4 v15, 0x0

    aget-short v15, v6, v15

    const v16, 0xff00

    and-int v15, v15, v16

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    move/from16 v16, v0

    or-int v15, v15, v16

    int-to-short v15, v15

    aput-short v15, v6, v14

    :cond_1a
    const/4 v2, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_1b

    const/4 v14, 0x7

    move/from16 v0, p1

    if-eq v0, v14, :cond_1b

    const/16 v14, 0x8

    move/from16 v0, p1

    if-ne v0, v14, :cond_1c

    :cond_1b
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v11

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    const-string v14, "nl"

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_21

    const-string v14, "BE"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_21

    move-object/from16 v0, p0

    iget-short v14, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    const/16 v15, 0x13

    if-ne v14, v15, :cond_1c

    const/4 v2, 0x1

    :cond_1c
    :goto_5
    const/4 v14, 0x1

    move/from16 v0, p1

    if-eq v0, v14, :cond_1d

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v14}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v14

    if-eqz v14, :cond_26

    :cond_1d
    move-object/from16 v0, p0

    iget-short v14, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    const/16 v15, 0xe1

    if-ne v14, v15, :cond_25

    const/4 v14, 0x0

    aget-short v14, v6, v14

    and-int/lit16 v14, v14, 0xff

    or-int/lit16 v14, v14, 0xa00

    int-to-short v1, v14

    :goto_6
    const/4 v14, 0x0

    aget-short v14, v8, v14

    const/4 v15, 0x0

    aget-short v15, v10, v15

    invoke-static {v1, v2, v14, v15}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KDB_SetKdbNum(SSSS)S

    move-result v13

    if-eqz v13, :cond_1e

    const-string v14, "SamsungIME"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "ET9KDB_SetKdbNum : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    const/4 v14, 0x0

    aget-short v14, v10, v14

    invoke-static {v2, v14}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KDB_SetPageNum(SS)S

    move-result v13

    if-eqz v13, :cond_1f

    const-string v14, "SamsungIME"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "ET9KDB_SetPageNum : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    move-object/from16 v0, p0

    iget-short v14, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    invoke-static {v14}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KDB_SetLocale(S)S

    move-result v13

    if-eqz v13, :cond_a

    const-string v14, "SamsungIME"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "ET9KDB_SetLocale : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_20
    invoke-static {v6, v9}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWLdbGetLanguage([S[S)S

    move-result v13

    if-eqz v13, :cond_19

    const-string v14, "SamsungIME"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "ET9AWLdbGetLanguage : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_21
    const-string v14, "CA"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_22

    move-object/from16 v0, p0

    iget-short v14, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    const/16 v15, 0xc

    if-ne v14, v15, :cond_1c

    const/4 v2, 0x1

    goto/16 :goto_5

    :cond_22
    const-string v14, "CH"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_24

    move-object/from16 v0, p0

    iget-short v14, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    const/16 v15, 0x10

    if-ne v14, v15, :cond_23

    const/4 v2, 0x1

    goto/16 :goto_5

    :cond_23
    move-object/from16 v0, p0

    iget-short v14, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    const/16 v15, 0xc

    if-ne v14, v15, :cond_1c

    const/4 v2, 0x2

    goto/16 :goto_5

    :cond_24
    move-object/from16 v0, p0

    iget-short v14, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    const/16 v15, 0x60

    if-ne v14, v15, :cond_1c

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v3

    if-eqz v3, :cond_1c

    const/4 v2, 0x1

    goto/16 :goto_5

    :cond_25
    const/4 v14, 0x0

    aget-short v14, v6, v14

    and-int/lit16 v14, v14, 0xff

    or-int/lit16 v14, v14, 0x600

    int-to-short v1, v14

    goto/16 :goto_6

    :cond_26
    move-object/from16 v0, p0

    iget-short v14, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    const/16 v15, 0xe1

    if-ne v14, v15, :cond_27

    const/4 v14, 0x0

    aget-short v14, v6, v14

    and-int/lit16 v14, v14, 0xff

    or-int/lit16 v14, v14, 0xd00

    int-to-short v1, v14

    goto/16 :goto_6

    :cond_27
    move-object/from16 v0, p0

    iget-short v14, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    const/16 v15, 0x1f

    if-ne v14, v15, :cond_28

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v15, "SETTINGS_TURKISH_KEYBOARD_TYPE"

    const/16 v16, 0x0

    invoke-interface/range {v14 .. v16}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v12

    packed-switch v12, :pswitch_data_1

    const/4 v14, 0x0

    aget-short v14, v6, v14

    and-int/lit16 v14, v14, 0xff

    or-int/lit16 v14, v14, 0x700

    int-to-short v1, v14

    goto/16 :goto_6

    :pswitch_2
    const/4 v14, 0x0

    aget-short v14, v6, v14

    and-int/lit16 v14, v14, 0xff

    or-int/lit16 v14, v14, 0xf00

    int-to-short v1, v14

    goto/16 :goto_6

    :pswitch_3
    const/4 v14, 0x0

    aget-short v14, v6, v14

    and-int/lit16 v14, v14, 0xff

    or-int/lit16 v14, v14, 0x1000

    int-to-short v1, v14

    goto/16 :goto_6

    :cond_28
    move-object/from16 v0, p0

    iget-short v14, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    const/4 v15, 0x1

    if-eq v14, v15, :cond_29

    move-object/from16 v0, p0

    iget-short v14, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    const/16 v15, 0x19

    if-eq v14, v15, :cond_29

    move-object/from16 v0, p0

    iget-short v14, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    const/16 v15, 0x61

    if-ne v14, v15, :cond_2a

    :cond_29
    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->getWindowHeight()I

    move-result v14

    const/16 v15, 0x1e0

    if-ne v14, v15, :cond_2a

    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->getWindowWidth()I

    move-result v14

    const/16 v15, 0x140

    if-ne v14, v15, :cond_2a

    const/4 v14, 0x0

    aget-short v14, v6, v14

    and-int/lit16 v14, v14, 0xff

    or-int/lit16 v14, v14, 0x500

    int-to-short v1, v14

    goto/16 :goto_6

    :cond_2a
    const/4 v14, 0x0

    aget-short v14, v6, v14

    and-int/lit16 v14, v14, 0xff

    or-int/lit16 v14, v14, 0x700

    int-to-short v1, v14

    goto/16 :goto_6

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private exceptionKorRecapture([CSZ)I
    .locals 1
    .param p1    # [C
    .param p2    # S
    .param p3    # Z

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    invoke-static {p1, p2}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KDB_ReselectWord([CS)S

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {p1, p2}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KDBRecaptureWord([CS)S

    move-result v0

    goto :goto_0
.end method

.method private explicitSymbol(I)S
    .locals 6
    .param p1    # I

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget v4, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mXt9Version:I

    if-ne v3, v4, :cond_3

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Character;->isUpperCase(I)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x1

    :cond_0
    :goto_0
    int-to-short v3, p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v3, v4, v5, v0, v2}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AddExplicitSymb(SJBB)S

    move-result v1

    if-eqz v1, :cond_1

    const-string v2, "SamsungIME"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ET9AddExplicitSymb : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return v1

    :cond_2
    iget-byte v3, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mShiftState:B

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    iget v3, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mXt9Version:I

    if-nez v3, :cond_6

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Character;->isUpperCase(I)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v0, 0x1

    :cond_4
    :goto_2
    int-to-short v3, p1

    invoke-static {v3, v0, v2}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AddExplicitSymb(SBB)S

    move-result v1

    if-eqz v1, :cond_1

    const-string v2, "SamsungIME"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ET9AddExplicitSymb : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    iget-byte v3, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mShiftState:B

    if-eqz v3, :cond_4

    const/4 v0, 0x1

    goto :goto_2

    :cond_6
    move v1, v2

    goto :goto_1
.end method

.method private getAWInputWords(I)Ljava/lang/CharSequence;
    .locals 14
    .param p1    # I

    const/16 v6, 0x40

    const/4 v13, 0x1

    const/4 v10, 0x0

    iget v7, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mSuggestionCount:I

    if-lez v7, :cond_8

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->initRUDB()S

    if-ge p1, v7, :cond_0

    move v2, p1

    :goto_0
    iget-object v11, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mActiveWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;

    int-to-byte v12, v2

    invoke-static {v11, v12}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWSelLstGetWord(Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;B)S

    move-result v9

    if-eqz v9, :cond_1

    const-string v10, "SamsungIME"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ET9AWSelLstGetWord : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x0

    :goto_1
    return-object v10

    :cond_0
    move v2, v10

    goto :goto_0

    :cond_1
    iget-object v11, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mActiveWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;

    iget-short v11, v11, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;->wWordLen:S

    if-ge v11, v6, :cond_2

    iget-object v11, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mActiveWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;

    iget-short v6, v11, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;->wWordLen:S

    :cond_2
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    iget-object v11, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v4

    iget-object v11, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mActiveWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;

    iget-short v11, v11, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;->wSubstitutionLen:S

    if-eqz v11, :cond_3

    if-eqz v4, :cond_3

    iget-object v11, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v12, "SETTINGS_DEFAULT_AUTOSUBSTITUTION"

    invoke-interface {v11, v12, v10}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_3

    const/4 v1, 0x0

    :goto_2
    iget-object v10, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mActiveWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;

    iget-short v10, v10, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;->wSubstitutionLen:S

    if-ge v1, v10, :cond_7

    iget-object v10, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mActiveWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;

    iget-object v10, v10, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;->sSubstitution:[S

    aget-short v10, v10, v1

    int-to-char v10, v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    iget-object v11, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v11}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v3

    iget-object v11, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v12, "SETTINGS_TURKISH_KEYBOARD_TYPE"

    invoke-interface {v11, v12, v10}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v8

    const/4 v0, 0x0

    iget-short v10, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    const/16 v11, 0x1f

    if-ne v10, v11, :cond_4

    if-eqz v8, :cond_4

    if-eq v3, v13, :cond_4

    iget-object v10, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v10}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v10

    if-nez v10, :cond_4

    const/4 v0, 0x1

    :cond_4
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v6, :cond_7

    iget-byte v10, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mShiftState:B

    if-ne v10, v13, :cond_6

    if-nez v4, :cond_6

    if-eqz v0, :cond_5

    iget-object v10, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mActiveWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;

    iget-object v10, v10, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;->sWord:[S

    aget-short v10, v10, v1

    int-to-char v10, v10

    invoke-direct {p0, v10}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->toUpperCaseOfTurkish(I)C

    move-result v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    iget-object v10, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mActiveWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;

    iget-object v10, v10, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;->sWord:[S

    aget-short v10, v10, v1

    int-to-char v10, v10

    invoke-static {v10}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4

    :cond_6
    iget-object v10, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mActiveWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;

    iget-object v10, v10, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;->sWord:[S

    aget-short v10, v10, v1

    int-to-char v10, v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4

    :cond_7
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_1

    :cond_8
    const-string v10, ""

    goto/16 :goto_1
.end method

.method private getCPInputWords(I)Ljava/lang/CharSequence;
    .locals 9
    .param p1    # I

    const/4 v7, 0x0

    const/16 v4, 0x20

    iget v5, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mSuggestionCount:I

    if-lez v5, :cond_4

    if-ge p1, v5, :cond_0

    move v2, p1

    :goto_0
    new-instance v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;

    invoke-direct {v0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;-><init>()V

    int-to-short v8, v2

    invoke-static {v8, v0, v7}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9CPGetPhrase(SLcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;)S

    move-result v6

    if-eqz v6, :cond_1

    :goto_1
    return-object v7

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    iget-byte v7, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;->bLen:B

    if-ge v7, v4, :cond_2

    iget-byte v4, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;->bLen:B

    :cond_2
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    iget-byte v7, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;->bLen:B

    if-eqz v7, :cond_3

    const/4 v1, 0x0

    :goto_2
    iget-byte v7, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;->bLen:B

    if-ge v1, v7, :cond_3

    iget-object v7, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;->pSymbs:[C

    aget-char v7, v7, v1

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_4
    const-string v7, ""

    goto :goto_1
.end method

.method private getInputWords()Ljava/lang/CharSequence;
    .locals 1

    iget v0, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mActiveIndex:I

    invoke-direct {p0, v0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->getInputWords(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private getInputWords(I)Ljava/lang/CharSequence;
    .locals 3
    .param p1    # I

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v0

    iget-short v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    const/16 v2, 0x12

    if-ne v1, v2, :cond_2

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isTraceOn()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isEnableTraceInPassword()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->getKInputWordsPrediction(I)Ljava/lang/CharSequence;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_1
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->getKInputWordsMultiTap(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    :cond_2
    iget-short v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    const/16 v2, 0xe1

    if-ne v1, v2, :cond_3

    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->getCPInputWords(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->getAWInputWords(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0
.end method

.method private getKInputWordsMultiTap(I)Ljava/lang/CharSequence;
    .locals 12
    .param p1    # I

    const/16 v11, 0x40

    const/16 v7, 0x20

    const/4 v10, 0x1

    const/4 v9, 0x0

    iget v6, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mXt9Version:I

    if-ne v10, v6, :cond_4

    const/4 v5, 0x1

    new-array v2, v7, [S

    new-array v4, v10, [S

    new-array v0, v10, [B

    invoke-static {v2, v7, v4, v0}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KDB_GetMultiTapSequence([SS[S[B)S

    aget-short v6, v4, v9

    if-ne v6, v10, :cond_0

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->invokeTimeOut()V

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->EMPTY_MULTITAP_SEQ:[S

    aput-short v9, v4, v9

    :cond_0
    iget-object v6, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mHangulWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->init()V

    iget-object v6, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mHangulWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    aget-short v7, v4, v9

    invoke-static {v6, v2, v7}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KBuildHangul(Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;[SS)S

    move-result v5

    if-eqz v5, :cond_1

    const-string v6, "SamsungIME"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ET9KBuildHangul : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v6, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mHangulWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    iget-short v6, v6, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->wLen:S

    if-le v6, v10, :cond_2

    iget-object v6, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mHangulWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    iget-object v6, v6, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->pSymbCounts:[S

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mHangulWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    iget-object v6, v6, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->pSymbCounts:[S

    array-length v6, v6

    if-lez v6, :cond_2

    iget-object v6, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mHangulWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    iget-object v6, v6, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->pSymbCounts:[S

    aget-short v6, v6, v9

    int-to-byte v6, v6

    invoke-static {v9, v6}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9DeleteSymbs(BB)S

    move-result v5

    :cond_2
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, v11}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    iget-object v6, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mHangulWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    iget-short v6, v6, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->wLen:S

    if-ge v1, v6, :cond_3

    iget-object v6, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mHangulWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    iget-object v6, v6, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->sString:[S

    aget-short v6, v6, v1

    int-to-char v6, v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_1
    return-object v6

    :cond_4
    iget v6, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mXt9Version:I

    if-nez v6, :cond_9

    const/4 v5, 0x1

    new-array v2, v7, [S

    new-array v4, v10, [S

    new-array v0, v10, [B

    invoke-static {v2, v7, v4, v0}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KDB_GetMultiTapSequence([SS[S[B)S

    aget-short v6, v4, v9

    if-ne v6, v10, :cond_5

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->invokeTimeOut()V

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->EMPTY_MULTITAP_SEQ:[S

    aput-short v9, v4, v9

    :cond_5
    iget-object v6, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mHangulWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->init()V

    iget-object v6, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mHangulWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    aget-short v7, v4, v9

    invoke-static {v6, v2, v7}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KUTIL_BuildHangulSingleConsonants(Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;[SS)S

    move-result v5

    if-eqz v5, :cond_6

    const-string v6, "SamsungIME"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ET9KBuildHangul : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v6, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mHangulWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    iget-short v6, v6, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->wLen:S

    if-le v6, v10, :cond_7

    iget-object v6, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mHangulWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    iget-object v6, v6, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->pSymbCounts:[S

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mHangulWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    iget-object v6, v6, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->pSymbCounts:[S

    array-length v6, v6

    if-lez v6, :cond_7

    iget-object v6, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mHangulWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    iget-object v6, v6, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->pSymbCounts:[S

    aget-short v6, v6, v9

    int-to-byte v6, v6

    invoke-static {v9, v6}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9DeleteSymbs(BB)S

    move-result v5

    :cond_7
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, v11}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v1, 0x0

    :goto_2
    iget-object v6, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mHangulWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    iget-short v6, v6, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->wLen:S

    if-ge v1, v6, :cond_8

    iget-object v6, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mHangulWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    iget-object v6, v6, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->sString:[S

    aget-short v6, v6, v1

    int-to-char v6, v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_8
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_9
    const-string v6, ""

    goto :goto_1
.end method

.method private getKInputWordsPrediction(I)Ljava/lang/CharSequence;
    .locals 14
    .param p1    # I

    const/4 v11, 0x1

    iget v12, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mXt9Version:I

    if-ne v11, v12, :cond_8

    iget v9, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mSuggestionCount:I

    if-lez v9, :cond_7

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->initKRUDB()S

    const/4 v10, 0x1

    const/4 v11, 0x1

    new-array v0, v11, [S

    iget-object v11, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mHangulWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    invoke-virtual {v11}, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->init()V

    int-to-byte v11, p1

    iget-object v12, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mHangulWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    iget-object v12, v12, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->sString:[S

    iget-object v13, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mHangulWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    iget-object v13, v13, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->sString:[S

    array-length v13, v13

    int-to-short v13, v13

    invoke-static {v11, v12, v13, v0}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KGetHangul(B[SS[S)S

    move-result v10

    const/16 v11, 0x22

    if-ne v10, v11, :cond_1

    const/4 v11, 0x1

    new-array v2, v11, [B

    const/4 v11, 0x1

    new-array v1, v11, [B

    const/4 v11, 0x1

    new-array v6, v11, [S

    invoke-static {v2, v1, v6}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KBuildSelectionList([B[B[S)S

    move-result v10

    if-eqz v10, :cond_0

    const-string v11, "SamsungIME"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ET9KBuildSelectionList : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v11, 0x0

    aget-byte v11, v2, v11

    iput v11, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mSuggestionCount:I

    const/4 v11, 0x0

    aget-byte v11, v1, v11

    iput v11, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mActiveIndex:I

    int-to-byte v11, p1

    iget-object v12, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mHangulWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    iget-object v12, v12, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->sString:[S

    iget-object v13, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mHangulWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    iget-object v13, v13, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->sString:[S

    array-length v13, v13

    int-to-short v13, v13

    invoke-static {v11, v12, v13, v0}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KGetHangul(B[SS[S)S

    move-result v10

    if-eqz v10, :cond_1

    const-string v11, "SamsungIME"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ET9KGetHangul : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz v10, :cond_2

    const-string v11, "SamsungIME"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ET9KGetHangul : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v11, 0x0

    aget-short v11, v0, v11

    const/16 v12, 0x40

    if-ge v11, v12, :cond_5

    const/4 v11, 0x0

    aget-short v8, v0, v11

    :goto_0
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7, v8}, Ljava/lang/StringBuffer;-><init>(I)V

    iget-object v11, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v5

    iget-object v11, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v11}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v4

    if-eqz v4, :cond_3

    const/4 v11, 0x7

    if-eq v4, v11, :cond_3

    const/16 v11, 0x8

    if-ne v4, v11, :cond_4

    :cond_3
    if-nez v5, :cond_4

    const/4 v11, 0x1

    if-le v8, v11, :cond_4

    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9ClearAllSymbs()S

    if-eqz v10, :cond_4

    const-string v11, "SamsungIME"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ET9ClearAllSymbs : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v8, :cond_6

    iget-object v11, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mHangulWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    iget-object v11, v11, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->sString:[S

    aget-short v11, v11, v3

    int-to-char v11, v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    const/16 v8, 0x40

    goto :goto_0

    :cond_6
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    :goto_2
    return-object v11

    :cond_7
    const-string v11, ""

    goto :goto_2

    :cond_8
    iget v11, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mXt9Version:I

    if-nez v11, :cond_11

    iget v9, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mSuggestionCount:I

    if-lez v9, :cond_10

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->initKRUDB()S

    const/4 v10, 0x1

    const/4 v11, 0x1

    new-array v0, v11, [S

    iget-object v11, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mHangulWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    invoke-virtual {v11}, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->init()V

    int-to-byte v11, p1

    iget-object v12, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mHangulWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    iget-object v12, v12, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->sString:[S

    iget-object v13, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mHangulWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    iget-object v13, v13, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->sString:[S

    array-length v13, v13

    int-to-short v13, v13

    invoke-static {v11, v12, v13, v0}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KUTIL_GetHangulSingleConsonants(B[SS[S)S

    move-result v10

    const/16 v11, 0x22

    if-ne v10, v11, :cond_a

    const/4 v11, 0x1

    new-array v2, v11, [B

    const/4 v11, 0x1

    new-array v1, v11, [B

    invoke-static {v2, v1}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KBuildSelectionList([B[B)S

    move-result v10

    if-eqz v10, :cond_9

    const-string v11, "SamsungIME"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ET9KBuildSelectionList : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    const/4 v11, 0x0

    aget-byte v11, v2, v11

    iput v11, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mSuggestionCount:I

    const/4 v11, 0x0

    aget-byte v11, v1, v11

    iput v11, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mActiveIndex:I

    int-to-byte v11, p1

    iget-object v12, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mHangulWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    iget-object v12, v12, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->sString:[S

    iget-object v13, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mHangulWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    iget-object v13, v13, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->sString:[S

    array-length v13, v13

    int-to-short v13, v13

    invoke-static {v11, v12, v13, v0}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KUTIL_GetHangulSingleConsonants(B[SS[S)S

    move-result v10

    if-eqz v10, :cond_a

    const-string v11, "SamsungIME"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ET9KGetHangul : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    if-eqz v10, :cond_b

    const-string v11, "SamsungIME"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ET9KGetHangul : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    const/4 v11, 0x0

    aget-short v11, v0, v11

    const/16 v12, 0x40

    if-ge v11, v12, :cond_e

    const/4 v11, 0x0

    aget-short v8, v0, v11

    :goto_3
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7, v8}, Ljava/lang/StringBuffer;-><init>(I)V

    iget-object v11, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v5

    iget-object v11, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v11}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v4

    if-eqz v4, :cond_c

    const/4 v11, 0x7

    if-eq v4, v11, :cond_c

    const/16 v11, 0x8

    if-ne v4, v11, :cond_d

    :cond_c
    if-nez v5, :cond_d

    const/4 v11, 0x1

    if-le v8, v11, :cond_d

    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9ClearAllSymbs()S

    if-eqz v10, :cond_d

    const-string v11, "SamsungIME"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ET9ClearAllSymbs : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    const/4 v3, 0x0

    :goto_4
    if-ge v3, v8, :cond_f

    iget-object v11, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mHangulWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    iget-object v11, v11, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->sString:[S

    aget-short v11, v11, v3

    int-to-char v11, v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_e
    const/16 v8, 0x40

    goto :goto_3

    :cond_f
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_2

    :cond_10
    const-string v11, ""

    goto/16 :goto_2

    :cond_11
    const-string v11, ""

    goto/16 :goto_2
.end method

.method private getSyllableDelimiter()I
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mXt9Version:I

    if-ne v0, v1, :cond_0

    const/16 v0, 0x27

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x1a

    goto :goto_0
.end method

.method private initASDB()S
    .locals 4

    sget-object v1, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mASDBBuffer:[B

    const/16 v2, 0x2800

    invoke-static {v1, v2}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWASDBInit([BS)S

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ET9AWASDBInit : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0
.end method

.method private initCDB()S
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget v2, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mXt9Version:I

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mXt9Version:I

    if-nez v1, :cond_0

    sget-object v1, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mCDBBuffer:[B

    const/16 v2, 0x800

    invoke-static {v1, v2}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWCDBInit([BS)S

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ET9AWCDBInit : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private initChineseLanguage()V
    .locals 7

    const/16 v6, 0xe1

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isChineseStrokeModeOn()Z

    move-result v1

    const/4 v0, 0x0

    iget-short v3, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    if-ne v3, v6, :cond_2

    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9CPSysInit()S

    move-result v2

    if-eqz v2, :cond_0

    const-string v3, "SamsungIME"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ET9CPSysInit : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {v6}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9CPLdbInit(S)S

    move-result v2

    if-eqz v2, :cond_1

    const-string v3, "SamsungIME"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ET9CPLdbInit : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {v6}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9CPLdbValidate(S)S

    move-result v2

    if-eqz v2, :cond_3

    const-string v3, "SamsungIME"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ET9CPLdbValidate : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->initLatinLanguage()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    if-eqz v1, :cond_4

    const/4 v0, 0x2

    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9CPClearComponent()S

    move-result v2

    :cond_4
    invoke-static {v0}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9CPSetInputMode(B)S

    move-result v2

    if-eqz v2, :cond_7

    const-string v3, "SamsungIME"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ET9CPSetInputMode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const/4 v3, 0x1

    const/16 v4, 0x10

    invoke-static {v3, v4}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWSysInit(ZB)S

    move-result v2

    if-eqz v2, :cond_5

    const-string v3, "SamsungIME"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ET9AWSysInit : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWLdbInit()S

    move-result v2

    if-eqz v2, :cond_6

    const-string v3, "SamsungIME"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ET9AWLdbInit : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9CPTraceInit()S

    move-result v2

    if-eqz v2, :cond_2

    const-string v3, "SamsungIME"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ET9CPTraceInit : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9ClearAllSymbs()S

    move-result v2

    goto :goto_1
.end method

.method private initKDB()V
    .locals 12

    const/4 v9, 0x1

    iget v10, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mXt9Version:I

    if-ne v9, v10, :cond_d

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x1

    new-array v1, v9, [S

    const/4 v9, 0x1

    new-array v2, v9, [S

    const/4 v9, 0x0

    const/4 v10, 0x0

    aput-short v10, v1, v9

    const/4 v9, 0x0

    const/4 v10, 0x0

    aput-short v10, v2, v9

    iget-short v9, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    const/16 v10, 0xe1

    if-ne v9, v10, :cond_6

    const/4 v9, 0x0

    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9CPGetChineseLdbNum()S

    move-result v10

    aput-short v10, v1, v9

    :cond_0
    :goto_0
    iget-short v9, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    const/16 v10, 0x12

    if-ne v9, v10, :cond_1

    const/4 v9, 0x0

    const/4 v10, 0x0

    aget-short v10, v1, v10

    const v11, 0xff00

    and-int/2addr v10, v11

    iget-short v11, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    or-int/2addr v10, v11

    int-to-short v10, v10

    aput-short v10, v1, v9

    :cond_1
    iget-object v9, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v9}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    const/4 v9, 0x1

    if-eq v0, v9, :cond_2

    iget-object v9, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v9}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v9

    if-eqz v9, :cond_8

    :cond_2
    iget-short v9, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    const/16 v10, 0xe1

    if-ne v9, v10, :cond_7

    const/4 v9, 0x0

    aget-short v9, v1, v9

    and-int/lit16 v9, v9, 0xff

    or-int/lit16 v9, v9, 0xa00

    int-to-short v4, v9

    :goto_1
    const/4 v9, 0x0

    invoke-static {v9}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9WordSymbInit(B)S

    move-result v8

    if-eqz v8, :cond_3

    const-string v9, "SamsungIME"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ET9WordSymbInit : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v9, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mIMEInfo:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KDB_IMEInfo;

    const/16 v10, 0x1bc

    iput-short v10, v9, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KDB_IMEInfo;->wKeyboardHeight:S

    iget-object v9, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mIMEInfo:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KDB_IMEInfo;

    const/16 v10, 0x2d0

    iput-short v10, v9, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KDB_IMEInfo;->wKeyboardWidth:S

    iget-object v9, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mIMEInfo:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KDB_IMEInfo;

    invoke-static {v4, v5, v6, v7, v9}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KDB_Init(SSSSLcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KDB_IMEInfo;)S

    move-result v8

    if-eqz v8, :cond_4

    const-string v9, "SamsungIME"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ET9KDB_Init : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-static {v4}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KDB_Validate(S)S

    move-result v8

    if-eqz v8, :cond_5

    const-string v9, "SamsungIME"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ET9KDB_Validate : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_2
    return-void

    :cond_6
    invoke-static {v1, v2}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWLdbGetLanguage([S[S)S

    move-result v8

    if-eqz v8, :cond_0

    const-string v9, "SamsungIME"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ET9AWLdbGetLanguage : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    const/4 v9, 0x0

    aget-short v9, v1, v9

    and-int/lit16 v9, v9, 0xff

    or-int/lit16 v9, v9, 0x600

    int-to-short v4, v9

    goto/16 :goto_1

    :cond_8
    iget-short v9, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    const/16 v10, 0xe1

    if-ne v9, v10, :cond_9

    const/4 v9, 0x0

    aget-short v9, v1, v9

    and-int/lit16 v9, v9, 0xff

    or-int/lit16 v9, v9, 0xd00

    int-to-short v4, v9

    goto/16 :goto_1

    :cond_9
    iget-short v9, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    const/16 v10, 0x1f

    if-ne v9, v10, :cond_a

    iget-object v9, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v10, "SETTINGS_TURKISH_KEYBOARD_TYPE"

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    const/4 v9, 0x0

    aget-short v9, v1, v9

    and-int/lit16 v9, v9, 0xff

    or-int/lit16 v9, v9, 0x700

    int-to-short v4, v9

    goto/16 :goto_1

    :pswitch_0
    const/4 v9, 0x0

    aget-short v9, v1, v9

    and-int/lit16 v9, v9, 0xff

    or-int/lit16 v9, v9, 0xf00

    int-to-short v4, v9

    goto/16 :goto_1

    :pswitch_1
    const/4 v9, 0x0

    aget-short v9, v1, v9

    and-int/lit16 v9, v9, 0xff

    or-int/lit16 v9, v9, 0x1000

    int-to-short v4, v9

    goto/16 :goto_1

    :cond_a
    iget-short v9, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    const/4 v10, 0x1

    if-eq v9, v10, :cond_b

    iget-short v9, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    const/16 v10, 0x19

    if-eq v9, v10, :cond_b

    iget-short v9, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    const/16 v10, 0x61

    if-ne v9, v10, :cond_c

    :cond_b
    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->getWindowHeight()I

    move-result v9

    const/16 v10, 0x1e0

    if-ne v9, v10, :cond_c

    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->getWindowWidth()I

    move-result v9

    const/16 v10, 0x140

    if-ne v9, v10, :cond_c

    const/4 v9, 0x0

    aget-short v9, v1, v9

    and-int/lit16 v9, v9, 0xff

    or-int/lit16 v9, v9, 0x500

    int-to-short v4, v9

    goto/16 :goto_1

    :cond_c
    const/4 v9, 0x0

    aget-short v9, v1, v9

    and-int/lit16 v9, v9, 0xff

    or-int/lit16 v9, v9, 0x700

    int-to-short v4, v9

    goto/16 :goto_1

    :cond_d
    iget v9, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mXt9Version:I

    if-nez v9, :cond_5

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x1

    new-array v1, v9, [S

    const/4 v9, 0x1

    new-array v2, v9, [S

    const/4 v9, 0x0

    const/4 v10, 0x0

    aput-short v10, v1, v9

    const/4 v9, 0x0

    const/4 v10, 0x0

    aput-short v10, v2, v9

    iget-short v9, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    const/16 v10, 0xe1

    if-ne v9, v10, :cond_14

    const/4 v9, 0x0

    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9CPGetChineseLdbNum()S

    move-result v10

    aput-short v10, v1, v9

    :cond_e
    :goto_3
    iget-short v9, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    const/16 v10, 0x12

    if-ne v9, v10, :cond_f

    const/4 v9, 0x0

    const/4 v10, 0x0

    aget-short v10, v1, v10

    const v11, 0xff00

    and-int/2addr v10, v11

    iget-short v11, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    or-int/2addr v10, v11

    int-to-short v10, v10

    aput-short v10, v1, v9

    :cond_f
    iget-object v9, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v9}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    const/4 v9, 0x1

    if-eq v0, v9, :cond_10

    iget-object v9, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v9}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v9

    if-eqz v9, :cond_16

    :cond_10
    iget-short v9, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    const/16 v10, 0xe1

    if-ne v9, v10, :cond_15

    const/4 v9, 0x0

    aget-short v9, v1, v9

    and-int/lit16 v9, v9, 0xff

    or-int/lit16 v9, v9, 0xa00

    int-to-short v4, v9

    :goto_4
    const/4 v9, 0x0

    invoke-static {v9}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9WordSymbInit(B)S

    move-result v8

    if-eqz v8, :cond_11

    const-string v9, "SamsungIME"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ET9WordSymbInit : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    invoke-static {v4, v5, v6, v7}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KDB_Init(SSSS)S

    move-result v8

    if-eqz v8, :cond_12

    const-string v9, "SamsungIME"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ET9KDB_Init : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    invoke-static {v4}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KDB_Validate(S)S

    move-result v8

    if-eqz v8, :cond_13

    const-string v9, "SamsungIME"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ET9KDB_Validate : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    iget-short v9, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    invoke-static {v9}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KDB_SetLocale(S)S

    move-result v8

    if-eqz v8, :cond_5

    const-string v9, "SamsungIME"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ET9KDB_SetLocale : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_14
    invoke-static {v1, v2}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWLdbGetLanguage([S[S)S

    move-result v8

    if-eqz v8, :cond_e

    const-string v9, "SamsungIME"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ET9AWLdbGetLanguage : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_15
    const/4 v9, 0x0

    aget-short v9, v1, v9

    and-int/lit16 v9, v9, 0xff

    or-int/lit16 v9, v9, 0x600

    int-to-short v4, v9

    goto/16 :goto_4

    :cond_16
    iget-short v9, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    const/16 v10, 0xe1

    if-ne v9, v10, :cond_17

    const/4 v9, 0x0

    aget-short v9, v1, v9

    and-int/lit16 v9, v9, 0xff

    or-int/lit16 v9, v9, 0xd00

    int-to-short v4, v9

    goto/16 :goto_4

    :cond_17
    iget-short v9, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    const/16 v10, 0x1f

    if-ne v9, v10, :cond_18

    iget-object v9, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v10, "SETTINGS_TURKISH_KEYBOARD_TYPE"

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v3

    packed-switch v3, :pswitch_data_1

    const/4 v9, 0x0

    aget-short v9, v1, v9

    and-int/lit16 v9, v9, 0xff

    or-int/lit16 v9, v9, 0x700

    int-to-short v4, v9

    goto/16 :goto_4

    :pswitch_2
    const/4 v9, 0x0

    aget-short v9, v1, v9

    and-int/lit16 v9, v9, 0xff

    or-int/lit16 v9, v9, 0xf00

    int-to-short v4, v9

    goto/16 :goto_4

    :pswitch_3
    const/4 v9, 0x0

    aget-short v9, v1, v9

    and-int/lit16 v9, v9, 0xff

    or-int/lit16 v9, v9, 0x1000

    int-to-short v4, v9

    goto/16 :goto_4

    :cond_18
    iget-short v9, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    const/4 v10, 0x1

    if-eq v9, v10, :cond_19

    iget-short v9, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    const/16 v10, 0x19

    if-eq v9, v10, :cond_19

    iget-short v9, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    const/16 v10, 0x61

    if-ne v9, v10, :cond_1a

    :cond_19
    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->getWindowHeight()I

    move-result v9

    const/16 v10, 0x1e0

    if-ne v9, v10, :cond_1a

    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->getWindowWidth()I

    move-result v9

    const/16 v10, 0x140

    if-ne v9, v10, :cond_1a

    const/4 v9, 0x0

    aget-short v9, v1, v9

    and-int/lit16 v9, v9, 0xff

    or-int/lit16 v9, v9, 0x500

    int-to-short v4, v9

    goto/16 :goto_4

    :cond_1a
    const/4 v9, 0x0

    aget-short v9, v1, v9

    and-int/lit16 v9, v9, 0xff

    or-int/lit16 v9, v9, 0x700

    int-to-short v4, v9

    goto/16 :goto_4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private initKRUDB()S
    .locals 4

    sget-object v1, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mKUDBBuffer:[B

    const/16 v2, 0x5000

    invoke-static {v1, v2}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KRUDBInit([BS)S

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ET9KRUDBInit : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0
.end method

.method private initKoreanLanguage()V
    .locals 6

    const/16 v3, 0x12

    const/16 v5, 0x9

    const/4 v4, 0x0

    const/4 v1, 0x1

    iget v2, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mXt9Version:I

    if-ne v1, v2, :cond_5

    iget-short v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    if-ne v1, v3, :cond_3

    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KSysInit()S

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ET9KSysInit : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KLdbInit()S

    move-result v0

    if-eqz v0, :cond_1

    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ET9KLdbInit : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KDisableChunJiIn()S

    move-result v0

    if-eqz v0, :cond_2

    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ET9KDisableChunJiIn : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-short v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    invoke-static {v1}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWLdbValidate(S)S

    move-result v0

    if-nez v0, :cond_4

    iget-short v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    invoke-static {v1, v4}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWLdbSetLanguage(SS)S

    move-result v0

    if-eqz v0, :cond_3

    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ET9AWLdbSetLanguage : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void

    :cond_4
    invoke-static {v5, v4}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWLdbSetLanguage(SS)S

    move-result v0

    if-eqz v0, :cond_3

    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ET9AWLdbSetLanguage to english : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    iget v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mXt9Version:I

    if-nez v1, :cond_3

    iget-short v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    if-ne v1, v3, :cond_3

    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KSysInit()S

    move-result v0

    if-eqz v0, :cond_6

    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ET9KSysInit : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KLdbInit()S

    move-result v0

    if-eqz v0, :cond_7

    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ET9KLdbInit : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KDisableChunJiIn()S

    move-result v0

    if-eqz v0, :cond_8

    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ET9KDisableChunJiIn : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KDisableJoinChunJiIn()S

    move-result v0

    if-eqz v0, :cond_9

    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ET9KDisableJoinChunJiIn : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iget-short v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    invoke-static {v1}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWLdbValidate(S)S

    move-result v0

    if-nez v0, :cond_a

    iget-short v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    invoke-static {v1, v4}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWLdbSetLanguage(SS)S

    move-result v0

    if-eqz v0, :cond_3

    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ET9AWLdbSetLanguage : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_a
    invoke-static {v5, v4}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWLdbSetLanguage(SS)S

    move-result v0

    if-eqz v0, :cond_3

    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ET9AWLdbSetLanguage to english : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private initLatinLanguage()V
    .locals 7

    const/16 v3, 0x10

    const/16 v6, 0x9

    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v4, 0x0

    iget v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mXt9Version:I

    if-ne v2, v1, :cond_7

    invoke-static {v2, v3}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWSysInit(ZB)S

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ET9AWSysInit : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWLdbInit()S

    move-result v0

    if-eqz v0, :cond_1

    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ET9AWLdbInit : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-short v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    invoke-static {v1}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWLdbValidate(S)S

    move-result v0

    if-nez v0, :cond_6

    iget-short v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    invoke-static {v1, v4}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWLdbSetLanguage(SS)S

    move-result v0

    if-eqz v0, :cond_2

    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ET9AWLdbSetLanguage : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    invoke-static {v5}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWSetWordStemsPoint(S)S

    move-result v0

    if-eqz v0, :cond_3

    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ET9AWSetWordStemsPoint : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-static {v4, v4}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWSetSpellCorrectionMode(BZ)S

    move-result v0

    if-eqz v0, :cond_4

    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ET9AWSetSpellCorrectionMode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWSetAutoSpace()S

    move-result v0

    if-eqz v0, :cond_5

    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ET9AWSetAutoSpace : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_1
    return-void

    :cond_6
    invoke-static {v6, v4}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWLdbSetLanguage(SS)S

    move-result v0

    if-eqz v0, :cond_2

    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ET9AWLdbSetLanguage to english : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_7
    iget v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mXt9Version:I

    if-nez v1, :cond_5

    invoke-static {v2, v3}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWSysInit(ZB)S

    move-result v0

    if-eqz v0, :cond_8

    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ET9AWSysInit : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWLdbInit()S

    move-result v0

    if-eqz v0, :cond_9

    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ET9AWLdbInit : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iget-short v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    invoke-static {v1}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWLdbValidate(S)S

    move-result v0

    if-nez v0, :cond_d

    iget-short v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    invoke-static {v1, v4}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWLdbSetLanguage(SS)S

    move-result v0

    if-eqz v0, :cond_a

    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ET9AWLdbSetLanguage : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    :goto_2
    invoke-static {v5}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWSysSetWordStemsPoint(S)S

    move-result v0

    if-eqz v0, :cond_b

    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ET9AWSysSetWordStemsPoint : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    invoke-static {v4, v4}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWSysSetSpellCorrectionMode(BZ)S

    move-result v0

    if-eqz v0, :cond_c

    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ET9AWSysSetSpellCorrectionMode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWSysSetAutoSpace()S

    move-result v0

    if-eqz v0, :cond_5

    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ET9AWSysSetAutoSpace : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_d
    invoke-static {v6, v4}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWLdbSetLanguage(SS)S

    move-result v0

    if-eqz v0, :cond_a

    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ET9AWLdbSetLanguage to english : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private initLinguistic()V
    .locals 5

    const/16 v4, 0xe1

    const/16 v3, 0x12

    const/4 v2, 0x1

    iget v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mXt9Version:I

    if-ne v2, v1, :cond_3

    const/4 v0, 0x0

    iget-short v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    if-ne v1, v3, :cond_1

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->initKoreanLanguage()V

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->initKRUDB()S

    :goto_0
    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->initDLM()S

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->initCDB()S

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->initASDB()S

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->initRUDB()S

    invoke-direct {p0, v2}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->setUDBDelayedReorder(Z)S

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setUDBDelayedReorder : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-short v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    if-ne v1, v4, :cond_2

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->initChineseLanguage()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->initLatinLanguage()V

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mXt9Version:I

    if-nez v1, :cond_0

    const/4 v0, 0x0

    iget-short v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    if-ne v1, v3, :cond_4

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->initKoreanLanguage()V

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->initKRUDB()S

    :goto_2
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->initCDB()S

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->initASDB()S

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->initRUDB()S

    invoke-direct {p0, v2}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->setUDBDelayedReorder(Z)S

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setUDBDelayedReorder : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    iget-short v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    if-ne v1, v4, :cond_5

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->initChineseLanguage()V

    goto :goto_2

    :cond_5
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->initLatinLanguage()V

    goto :goto_2
.end method

.method private initRUDB()S
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget v2, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mXt9Version:I

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mXt9Version:I

    if-nez v1, :cond_0

    sget-object v1, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mUDBBuffer:[B

    const/16 v2, 0x5000

    invoke-static {v1, v2}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWRUDBInit([BS)S

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ET9AWRUDBInit : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private initSubLinguistic()V
    .locals 2

    iget-short v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    const/16 v1, 0x12

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->initKoreanLanguage()V

    :goto_0
    return-void

    :cond_0
    iget-short v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    const/16 v1, 0xe1

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->initChineseLanguage()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->initLatinLanguage()V

    goto :goto_0
.end method

.method private invokeTimeOut()V
    .locals 4

    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KDB_TimeOut()S

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invokeTimeOut : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private lookupChar(I)I
    .locals 12
    .param p1    # I

    const/16 v11, 0x7a

    const/16 v10, 0x61

    const/16 v9, 0x3a

    const/4 v8, 0x1

    const/16 v7, 0x30

    iget-object v5, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    iget-object v5, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v1

    iget-object v5, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isChineseStrokeModeOn()Z

    move-result v3

    if-eq v0, v8, :cond_0

    iget-object v5, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_0
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->KEYMAP_PHONEPAD:[S

    iget v5, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mImeInputLanguage:I

    const/high16 v6, 0x74680000

    if-ne v5, v6, :cond_2

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->KEYMAP_PHONEPAD_TH:[S

    if-lt p1, v7, :cond_1

    if-gt p1, v9, :cond_1

    add-int/lit8 v5, p1, -0x30

    aget-short v5, v2, v5

    :goto_0
    return v5

    :cond_1
    const/16 v5, -0x3a

    if-ne p1, v5, :cond_5

    const/16 v5, 0xa

    aget-short v5, v2, v5

    goto :goto_0

    :cond_2
    iget v5, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mImeInputLanguage:I

    const/high16 v6, 0x6b6d0000

    if-ne v5, v6, :cond_3

    if-lt p1, v7, :cond_5

    if-gt p1, v9, :cond_5

    add-int/lit8 v5, p1, -0x30

    aget-short v5, v2, v5

    goto :goto_0

    :cond_3
    iget v5, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mImeInputLanguage:I

    const v6, 0x7a68434e

    if-ne v5, v6, :cond_5

    if-eqz v3, :cond_5

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->KEYMAP_PHONEPAD_STROKE_ZH_CN:[S

    const/16 v5, 0x2a

    if-ne p1, v5, :cond_4

    const/4 v5, 0x5

    aget-short v5, v2, v5

    goto :goto_0

    :cond_4
    const/16 v5, 0x31

    if-lt p1, v5, :cond_5

    const/16 v5, 0x36

    if-gt p1, v5, :cond_5

    add-int/lit8 v5, p1, -0x31

    aget-short v5, v2, v5

    goto :goto_0

    :cond_5
    if-lt p1, v7, :cond_20

    const/16 v5, 0x39

    if-gt p1, v5, :cond_20

    add-int/lit8 v5, p1, -0x30

    aget-short v5, v2, v5

    goto :goto_0

    :cond_6
    if-eqz v0, :cond_7

    const/4 v5, 0x7

    if-eq v0, v5, :cond_7

    const/16 v5, 0x8

    if-ne v0, v5, :cond_1f

    :cond_7
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->KEYMAP_QWERTY:[S

    iget v5, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mImeInputLanguage:I

    const/high16 v6, 0x74680000

    if-ne v5, v6, :cond_8

    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->lookupCharForTHAI(I)I

    move-result v5

    goto :goto_0

    :cond_8
    iget v5, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mImeInputLanguage:I

    const/high16 v6, 0x76690000

    if-ne v5, v6, :cond_9

    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->lookupCharForVIETNAMESE(I)I

    move-result v5

    goto :goto_0

    :cond_9
    iget v5, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mImeInputLanguage:I

    const/high16 v6, 0x6b6f0000

    if-ne v5, v6, :cond_b

    if-eqz v1, :cond_a

    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->lookupCharForKorean(I)I

    move-result v5

    goto :goto_0

    :cond_a
    const/16 v5, 0x80

    goto :goto_0

    :cond_b
    iget v5, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mImeInputLanguage:I

    const/high16 v6, 0x6c740000

    if-ne v5, v6, :cond_c

    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->lookupCharForLithuanian(I)I

    move-result v5

    goto :goto_0

    :cond_c
    iget v5, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mImeInputLanguage:I

    const/high16 v6, 0x64610000

    if-eq v5, v6, :cond_d

    iget v5, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mImeInputLanguage:I

    const/high16 v6, 0x66690000

    if-eq v5, v6, :cond_d

    iget v5, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mImeInputLanguage:I

    const/high16 v6, 0x6e620000

    if-eq v5, v6, :cond_d

    iget v5, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mImeInputLanguage:I

    const/high16 v6, 0x73760000

    if-ne v5, v6, :cond_e

    :cond_d
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->lookupCharForDanish(I)I

    move-result v5

    goto/16 :goto_0

    :cond_e
    iget v5, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mImeInputLanguage:I

    const/high16 v6, 0x69730000

    if-ne v5, v6, :cond_f

    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->lookupCharForIcelandic(I)I

    move-result v5

    goto/16 :goto_0

    :cond_f
    iget v5, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mImeInputLanguage:I

    const/high16 v6, 0x617a0000

    if-ne v5, v6, :cond_10

    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->lookupCharForAzerbaijan(I)I

    move-result v5

    goto/16 :goto_0

    :cond_10
    iget v5, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mImeInputLanguage:I

    const/high16 v6, 0x65740000

    if-ne v5, v6, :cond_11

    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->lookupCharForEstonian(I)I

    move-result v5

    goto/16 :goto_0

    :cond_11
    iget v5, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mImeInputLanguage:I

    const/high16 v6, 0x73710000

    if-ne v5, v6, :cond_12

    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->lookupCharForAlbanian(I)I

    move-result v5

    goto/16 :goto_0

    :cond_12
    iget v5, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mXt9Version:I

    if-eqz v5, :cond_13

    iget v5, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mImeInputLanguage:I

    const/high16 v6, 0x656c0000

    if-ne v5, v6, :cond_13

    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->lookupCharForGreek(I)I

    move-result v5

    goto/16 :goto_0

    :cond_13
    iget v5, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mImeInputLanguage:I

    const/high16 v6, 0x74720000

    if-ne v5, v6, :cond_15

    iget-object v5, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v6, "SETTINGS_TURKISH_KEYBOARD_TYPE"

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v8, :cond_14

    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->lookupCharForTurkish(I)I

    move-result v5

    goto/16 :goto_0

    :cond_14
    const/4 v5, 0x2

    if-ne v4, v5, :cond_17

    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->lookupCharForTurkishF(I)I

    move-result v5

    goto/16 :goto_0

    :cond_15
    iget v5, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mImeInputLanguage:I

    const/high16 v6, 0x6b6d0000

    if-ne v5, v6, :cond_16

    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->lookupCharForKhmer(I)I

    move-result v5

    goto/16 :goto_0

    :cond_16
    iget v5, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mImeInputLanguage:I

    const/high16 v6, 0x6c6f0000

    if-ne v5, v6, :cond_17

    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->lookupCharForLao(I)I

    move-result v5

    goto/16 :goto_0

    :cond_17
    if-lt p1, v10, :cond_18

    if-gt p1, v11, :cond_18

    add-int/lit8 v5, p1, -0x61

    aget-short v5, v2, v5

    goto/16 :goto_0

    :cond_18
    iget v5, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mImeInputLanguage:I

    const/high16 v6, 0x68790000

    if-ne v5, v6, :cond_19

    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->lookupCharForArmenian(I)I

    move-result v5

    goto/16 :goto_0

    :cond_19
    iget v5, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mImeInputLanguage:I

    const/high16 v6, 0x62670000

    if-ne v5, v6, :cond_1a

    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->lookupCharForBulgarian(I)I

    move-result v5

    goto/16 :goto_0

    :cond_1a
    iget v5, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mImeInputLanguage:I

    const/high16 v6, 0x72750000

    if-eq v5, v6, :cond_1b

    iget v5, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mImeInputLanguage:I

    const/high16 v6, 0x6b6b0000

    if-eq v5, v6, :cond_1b

    iget v5, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mImeInputLanguage:I

    const/high16 v6, 0x756b0000

    if-eq v5, v6, :cond_1b

    iget v5, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mImeInputLanguage:I

    const/high16 v6, 0x617a0000

    if-eq v5, v6, :cond_1b

    iget v5, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mImeInputLanguage:I

    const/high16 v6, 0x6d6b0000

    if-ne v5, v6, :cond_1c

    :cond_1b
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->lookupCharForRussian(I)I

    move-result v5

    goto/16 :goto_0

    :cond_1c
    iget v5, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mImeInputLanguage:I

    const/high16 v6, 0x61720000

    if-eq v5, v6, :cond_1d

    iget v5, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mImeInputLanguage:I

    const/high16 v6, 0x75720000

    if-eq v5, v6, :cond_1d

    iget v5, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mImeInputLanguage:I

    const/high16 v6, 0x66610000

    if-ne v5, v6, :cond_1e

    :cond_1d
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->lookupCharForArabic(I)I

    move-result v5

    goto/16 :goto_0

    :cond_1e
    iget v5, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mImeInputLanguage:I

    const/high16 v6, 0x69770000

    if-ne v5, v6, :cond_20

    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->lookupCharForHebrew(I)I

    move-result v5

    goto/16 :goto_0

    :cond_1f
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->KEYMAP_QWERTY:[S

    if-lt p1, v10, :cond_20

    if-gt p1, v11, :cond_20

    add-int/lit8 v5, p1, -0x61

    aget-short v5, v2, v5

    goto/16 :goto_0

    :cond_20
    const/16 v5, 0x80

    goto/16 :goto_0
.end method

.method private lookupCharForAlbanian(I)I
    .locals 3
    .param p1    # I

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->EXTEND_KEYMAP_SQ:[S

    add-int/lit8 v0, p1, -0x61

    if-ltz v0, :cond_0

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-short v2, v1, v0

    :goto_0
    return v2

    :cond_0
    const/16 v2, 0xeb

    if-ne p1, v2, :cond_1

    const/16 v2, 0xa

    goto :goto_0

    :cond_1
    const/16 v2, 0xe7

    if-ne p1, v2, :cond_2

    const/16 v2, 0x14

    goto :goto_0

    :cond_2
    const/16 v2, 0x80

    goto :goto_0
.end method

.method private lookupCharForArabic(I)I
    .locals 4
    .param p1    # I

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->EXTEND_KEYMAP_AR:[S

    iget v2, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mImeInputLanguage:I

    const/high16 v3, 0x61720000

    if-ne v2, v3, :cond_1

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->EXTEND_KEYMAP_AR:[S

    :cond_0
    :goto_0
    add-int/lit8 v0, p1, -0x41

    if-ltz v0, :cond_3

    array-length v2, v1

    if-ge v0, v2, :cond_3

    aget-short v2, v1, v0

    :goto_1
    return v2

    :cond_1
    iget v2, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mImeInputLanguage:I

    const/high16 v3, 0x66610000

    if-ne v2, v3, :cond_2

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->EXTEND_KEYMAP_FA:[S

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mImeInputLanguage:I

    const/high16 v3, 0x75720000

    if-ne v2, v3, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->EXTEND_KEYMAP_UR:[S

    goto :goto_0

    :cond_3
    const/16 v2, 0x80

    goto :goto_1
.end method

.method private lookupCharForArmenian(I)I
    .locals 3
    .param p1    # I

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->EXTEND_KEYMAP_HY:[S

    add-int/lit16 v0, p1, -0x562

    if-ltz v0, :cond_0

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-short v2, v1, v0

    :goto_0
    return v2

    :cond_0
    const/16 v2, 0x80

    goto :goto_0
.end method

.method private lookupCharForAzerbaijan(I)I
    .locals 3
    .param p1    # I

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->EXTEND_KEYMAP_AZ:[S

    add-int/lit8 v0, p1, -0x61

    if-ltz v0, :cond_0

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-short v2, v1, v0

    :goto_0
    return v2

    :cond_0
    sparse-switch p1, :sswitch_data_0

    const/16 v2, 0x80

    goto :goto_0

    :sswitch_0
    const/16 v2, 0xa

    goto :goto_0

    :sswitch_1
    const/16 v2, 0xb

    goto :goto_0

    :sswitch_2
    const/16 v2, 0x15

    goto :goto_0

    :sswitch_3
    const/16 v2, 0x16

    goto :goto_0

    :sswitch_4
    const/16 v2, 0x1e

    goto :goto_0

    :sswitch_5
    const/16 v2, 0x1f

    goto :goto_0

    :sswitch_6
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0xe7 -> :sswitch_4
        0xf6 -> :sswitch_0
        0xfc -> :sswitch_6
        0x11f -> :sswitch_1
        0x131 -> :sswitch_2
        0x15f -> :sswitch_5
        0x259 -> :sswitch_3
    .end sparse-switch
.end method

.method private lookupCharForBulgarian(I)I
    .locals 3
    .param p1    # I

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->EXTEND_KEYMAP_BG:[S

    add-int/lit8 v0, p1, -0x41

    if-ltz v0, :cond_0

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-short v2, v1, v0

    :goto_0
    return v2

    :cond_0
    const/16 v2, 0x80

    goto :goto_0
.end method

.method private lookupCharForDanish(I)I
    .locals 8
    .param p1    # I

    const/16 v7, 0xe6

    const/16 v6, 0xe5

    const/16 v3, 0x15

    const/16 v4, 0x14

    const/16 v2, 0xa

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->EXTEND_KEYMAP_DA:[S

    add-int/lit8 v0, p1, -0x61

    if-ltz v0, :cond_1

    array-length v5, v1

    if-ge v0, v5, :cond_1

    aget-short v2, v1, v0

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget v5, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mImeInputLanguage:I

    sparse-switch v5, :sswitch_data_0

    :cond_2
    const/16 v2, 0x80

    goto :goto_0

    :sswitch_0
    if-eq p1, v6, :cond_0

    const/16 v2, 0xf8

    if-ne p1, v2, :cond_3

    move v2, v3

    goto :goto_0

    :cond_3
    if-ne p1, v7, :cond_2

    move v2, v4

    goto :goto_0

    :sswitch_1
    if-eq p1, v6, :cond_0

    const/16 v2, 0xf6

    if-ne p1, v2, :cond_4

    move v2, v4

    goto :goto_0

    :cond_4
    const/16 v2, 0xe4

    if-ne p1, v2, :cond_2

    move v2, v3

    goto :goto_0

    :sswitch_2
    const/16 v3, 0xf0

    if-eq p1, v3, :cond_0

    if-ne p1, v7, :cond_5

    move v2, v4

    goto :goto_0

    :cond_5
    const/16 v2, 0xfe

    if-ne p1, v2, :cond_2

    const/16 v2, 0x1c

    goto :goto_0

    :sswitch_3
    if-eq p1, v6, :cond_0

    const/16 v2, 0xf8

    if-ne p1, v2, :cond_6

    move v2, v4

    goto :goto_0

    :cond_6
    if-ne p1, v7, :cond_2

    move v2, v3

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x64610000 -> :sswitch_0
        0x66690000 -> :sswitch_1
        0x69730000 -> :sswitch_2
        0x6e620000 -> :sswitch_3
        0x73760000 -> :sswitch_1
    .end sparse-switch
.end method

.method private lookupCharForEstonian(I)I
    .locals 3
    .param p1    # I

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->EXTEND_KEYMAP_ET:[S

    add-int/lit8 v0, p1, -0x61

    if-ltz v0, :cond_0

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-short v2, v1, v0

    :goto_0
    return v2

    :cond_0
    sparse-switch p1, :sswitch_data_0

    const/16 v2, 0x80

    goto :goto_0

    :sswitch_0
    const/16 v2, 0xa

    goto :goto_0

    :sswitch_1
    const/16 v2, 0xb

    goto :goto_0

    :sswitch_2
    const/16 v2, 0x15

    goto :goto_0

    :sswitch_3
    const/16 v2, 0x16

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0xe4 -> :sswitch_3
        0xf5 -> :sswitch_1
        0xf6 -> :sswitch_2
        0xfc -> :sswitch_0
    .end sparse-switch
.end method

.method private lookupCharForGreek(I)I
    .locals 3
    .param p1    # I

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->KEYMAP_QWERTY_EL:[S

    add-int/lit8 v0, p1, -0x61

    if-ltz v0, :cond_0

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-short v2, v1, v0

    :goto_0
    return v2

    :cond_0
    const/16 v2, 0x80

    goto :goto_0
.end method

.method private lookupCharForHebrew(I)I
    .locals 3
    .param p1    # I

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->EXTEND_KEYMAP_HE:[S

    add-int/lit8 v0, p1, -0x41

    if-ltz v0, :cond_0

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-short v2, v1, v0

    :goto_0
    return v2

    :cond_0
    const/16 v2, 0x80

    goto :goto_0
.end method

.method private lookupCharForIcelandic(I)I
    .locals 3
    .param p1    # I

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->EXTEND_KEYMAP_IS:[S

    add-int/lit8 v0, p1, -0x61

    if-ltz v0, :cond_0

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-short v2, v1, v0

    :goto_0
    return v2

    :cond_0
    const/16 v2, 0xf0

    if-ne p1, v2, :cond_1

    const/16 v2, 0xa

    goto :goto_0

    :cond_1
    const/16 v2, 0xe6

    if-ne p1, v2, :cond_2

    const/16 v2, 0x14

    goto :goto_0

    :cond_2
    const/16 v2, 0xfe

    if-ne p1, v2, :cond_3

    const/16 v2, 0x1c

    goto :goto_0

    :cond_3
    const/16 v2, 0x80

    goto :goto_0
.end method

.method private lookupCharForKhmer(I)I
    .locals 2
    .param p1    # I

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->KEYMAP_QWERTY:[S

    const/16 v1, 0x61

    if-lt p1, v1, :cond_1

    const/16 v1, 0x7a

    if-gt p1, v1, :cond_1

    add-int/lit8 v1, p1, -0x61

    aget-short p1, v0, v1

    :cond_0
    :goto_0
    return p1

    :cond_1
    const/16 v1, 0x41

    if-lt p1, v1, :cond_0

    const/16 v1, 0x4c

    if-gt p1, v1, :cond_0

    add-int/lit8 p1, p1, -0x27

    goto :goto_0
.end method

.method private lookupCharForKorean(I)I
    .locals 3
    .param p1    # I

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->EXTEND_KEYMAP_KO:[S

    add-int/lit16 v0, p1, -0x3131

    if-ltz v0, :cond_0

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-short v2, v1, v0

    :goto_0
    return v2

    :cond_0
    const/16 v2, 0x80

    goto :goto_0
.end method

.method private lookupCharForLao(I)I
    .locals 2
    .param p1    # I

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->KEYMAP_QWERTY:[S

    const/16 v1, 0x61

    if-lt p1, v1, :cond_1

    const/16 v1, 0x7a

    if-gt p1, v1, :cond_1

    add-int/lit8 v1, p1, -0x61

    aget-short p1, v0, v1

    :cond_0
    :goto_0
    return p1

    :cond_1
    const/16 v1, 0x41

    if-ne p1, v1, :cond_0

    add-int/lit8 p1, p1, -0x27

    goto :goto_0
.end method

.method private lookupCharForLithuanian(I)I
    .locals 3
    .param p1    # I

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->EXTEND_KEYMAP_LT:[S

    add-int/lit8 v0, p1, -0x61

    if-ltz v0, :cond_0

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-short v2, v1, v0

    :goto_0
    return v2

    :cond_0
    sparse-switch p1, :sswitch_data_0

    const/16 v2, 0x80

    goto :goto_0

    :sswitch_0
    const/4 v2, 0x0

    goto :goto_0

    :sswitch_1
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_2
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_3
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_4
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_5
    const/4 v2, 0x5

    goto :goto_0

    :sswitch_6
    const/4 v2, 0x6

    goto :goto_0

    :sswitch_7
    const/4 v2, 0x7

    goto :goto_0

    :sswitch_8
    const/16 v2, 0x8

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x105 -> :sswitch_0
        0x10d -> :sswitch_1
        0x117 -> :sswitch_3
        0x119 -> :sswitch_2
        0x12f -> :sswitch_4
        0x161 -> :sswitch_5
        0x16b -> :sswitch_7
        0x173 -> :sswitch_6
        0x17e -> :sswitch_8
    .end sparse-switch
.end method

.method private lookupCharForRussian(I)I
    .locals 3
    .param p1    # I

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->EXTEND_KEYMAP_RU:[S

    add-int/lit8 v0, p1, -0x41

    if-ltz v0, :cond_0

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-short v2, v1, v0

    :goto_0
    return v2

    :cond_0
    const/16 v2, 0x80

    goto :goto_0
.end method

.method private lookupCharForTHAI(I)I
    .locals 3
    .param p1    # I

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->KEYMAP_QWERTY_TH:[S

    add-int/lit8 v0, p1, -0x61

    if-ltz v0, :cond_0

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-short v2, v1, v0

    :goto_0
    return v2

    :cond_0
    const/16 v2, 0x80

    goto :goto_0
.end method

.method private lookupCharForTurkish(I)I
    .locals 3
    .param p1    # I

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->KEYMAP_QWERTY_TR:[S

    add-int/lit8 v0, p1, -0x61

    if-ltz v0, :cond_0

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-short v2, v1, v0

    :goto_0
    return v2

    :cond_0
    sparse-switch p1, :sswitch_data_0

    const/16 v2, 0x80

    goto :goto_0

    :sswitch_0
    const/4 v2, 0x7

    goto :goto_0

    :sswitch_1
    const/16 v2, 0xa

    goto :goto_0

    :sswitch_2
    const/16 v2, 0xb

    goto :goto_0

    :sswitch_3
    const/16 v2, 0x15

    goto :goto_0

    :sswitch_4
    const/16 v2, 0x1e

    goto :goto_0

    :sswitch_5
    const/16 v2, 0x1f

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0xe7 -> :sswitch_5
        0xf6 -> :sswitch_4
        0xfc -> :sswitch_2
        0x11f -> :sswitch_1
        0x131 -> :sswitch_0
        0x15f -> :sswitch_3
    .end sparse-switch
.end method

.method private lookupCharForTurkishF(I)I
    .locals 3
    .param p1    # I

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->KEYMAP_QWERTY_TR_F:[S

    add-int/lit8 v0, p1, -0x61

    if-ltz v0, :cond_0

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-short v2, v1, v0

    :goto_0
    return v2

    :cond_0
    sparse-switch p1, :sswitch_data_0

    const/16 v2, 0x80

    goto :goto_0

    :sswitch_0
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_1
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_2
    const/16 v2, 0x10

    goto :goto_0

    :sswitch_3
    const/16 v2, 0x16

    goto :goto_0

    :sswitch_4
    const/16 v2, 0x19

    goto :goto_0

    :sswitch_5
    const/16 v2, 0x1c

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0xe7 -> :sswitch_5
        0xf6 -> :sswitch_4
        0xfc -> :sswitch_2
        0x11f -> :sswitch_1
        0x131 -> :sswitch_0
        0x15f -> :sswitch_3
    .end sparse-switch
.end method

.method private lookupCharForVIETNAMESE(I)I
    .locals 3
    .param p1    # I

    const/4 v1, 0x0

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->KEYMAP_QWERTY_VI:[S

    add-int/lit8 v0, p1, -0x61

    if-ltz v0, :cond_0

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-short v2, v1, v0

    :goto_0
    return v2

    :cond_0
    const/16 v2, 0x80

    goto :goto_0
.end method

.method private processKey(I)S
    .locals 7
    .param p1    # I

    const/4 v5, 0x1

    const/4 v3, 0x0

    iget v4, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mXt9Version:I

    if-ne v5, v4, :cond_1

    new-array v0, v5, [S

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->lookupChar(I)I

    move-result v1

    int-to-short v4, v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v4, v5, v6, v3, v0}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KDB_ProcessKey(SJB[S)S

    move-result v2

    if-eqz v2, :cond_0

    const-string v3, "SamsungIME"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ET9KDB_ProcessKey : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget v4, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mXt9Version:I

    if-nez v4, :cond_2

    new-array v0, v5, [S

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->lookupChar(I)I

    move-result v1

    int-to-short v4, v1

    invoke-static {v4, v3, v0}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KDB_ProcessKey(SB[S)S

    move-result v2

    if-eqz v2, :cond_0

    const-string v3, "SamsungIME"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ET9KDB_ProcessKey : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_0
.end method

.method private readDBdataFromFile(B)Z
    .locals 13
    .param p1    # B

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v4, 0x0

    const-string v5, ""

    iget-object v11, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-nez v11, :cond_0

    :goto_0
    return v9

    :cond_0
    iget-object v11, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    const-string v12, "xT9DB"

    invoke-virtual {v11, v12, v9}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    const/4 v0, 0x0

    if-nez p1, :cond_5

    const-string v5, "xT9UdbData.dat"

    sget-object v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mUDBBuffer:[B

    :goto_1
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    if-eqz v4, :cond_b

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_b

    sget-boolean v9, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v9, :cond_1

    const-string v9, "SamsungIME"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Loading XT9 DB file : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v6, 0x0

    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v7, v0}, Ljava/io/InputStream;->read([B)I

    move-result v8

    sget-boolean v9, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v9, :cond_2

    const-string v9, "SamsungIME"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "    => "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " bytes loaded!"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_2
    if-eqz v7, :cond_3

    :try_start_2
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    :cond_3
    :goto_2
    move-object v6, v7

    :cond_4
    :goto_3
    move v9, v10

    goto :goto_0

    :cond_5
    if-ne p1, v10, :cond_6

    const-string v5, "xT9CdbData.dat"

    sget-object v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mCDBBuffer:[B

    goto :goto_1

    :cond_6
    const/4 v11, 0x2

    if-ne p1, v11, :cond_7

    const-string v5, "xT9ASdbData.dat"

    sget-object v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mASDBBuffer:[B

    goto :goto_1

    :cond_7
    const/4 v11, 0x3

    if-ne p1, v11, :cond_8

    const-string v5, "xT9KUdbData.dat"

    sget-object v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mKUDBBuffer:[B

    goto :goto_1

    :cond_8
    const/4 v11, 0x4

    if-ne p1, v11, :cond_9

    const-string v5, "xT9DLMData.dat"

    sget-object v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mDLMBuffer:[B

    goto :goto_1

    :cond_9
    const-string v10, "SamsungIME"

    const-string v11, "Invalid DB type!"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_0
    move-exception v3

    :goto_4
    :try_start_3
    const-string v9, "SamsungIME"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Could not load the DB file "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "!("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v6, :cond_4

    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    :catch_1
    move-exception v3

    const-string v9, "SamsungIME"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Could not close the DB file "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "!("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :catchall_0
    move-exception v9

    :goto_5
    if-eqz v6, :cond_a

    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_a
    :goto_6
    throw v9

    :cond_b
    :try_start_6
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_3

    :catch_2
    move-exception v3

    const-string v10, "SamsungIME"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Could not create the DB file "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "!("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_3
    move-exception v3

    const-string v10, "SamsungIME"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Could not close the DB file "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "!("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :catch_4
    move-exception v3

    const-string v9, "SamsungIME"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Could not close the DB file "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "!("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :catchall_1
    move-exception v9

    move-object v6, v7

    goto/16 :goto_5

    :catch_5
    move-exception v3

    move-object v6, v7

    goto/16 :goto_4
.end method

.method private recaptureForVietnamese(Ljava/lang/String;)V
    .locals 6
    .param p1    # Ljava/lang/String;

    const/4 v5, 0x1

    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9ClearAllSymbs()S

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const-string v3, "bcd\u0111fghjklmnpqrstvwxz0123456789"

    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-direct {p0, v3}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->explicitSymbol(I)S

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/diotek/ime/framework/common/InputSequenceCheck;->normalizedNFD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-direct {p0, v3}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->explicitSymbol(I)S

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v5, :cond_0

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-direct {p0, v3}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->explicitSymbol(I)S

    goto :goto_1

    :cond_2
    return-void
.end method

.method private setAutoAppend(Z)V
    .locals 4
    .param p1    # Z

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWSetAutoAppendInList()S

    move-result v0

    :goto_0
    if-eqz v0, :cond_0

    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ET9AWSetAutoAppendInList : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWClearAutoAppendInList()S

    move-result v0

    goto :goto_0
.end method

.method private setAutoSubstitution(Z)V
    .locals 4
    .param p1    # Z

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->initASDB()S

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWSetLDBAutoSubstitution()S

    move-result v0

    :goto_0
    if-eqz v0, :cond_0

    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ET9AWSetLDBAutoSubstitution : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_3

    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWSetUserDefinedAutoSubstitution()S

    move-result v0

    :goto_1
    sget-boolean v1, Lcom/diotek/ime/framework/util/Debug;->ERROR:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ET9AWSetUserDefinedAutoSubstitution : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWClearLDBAutoSubstitution()S

    move-result v0

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWClearUserDefinedAutoSubstitution()S

    move-result v0

    goto :goto_1
.end method

.method private setInputLanguage(I)S
    .locals 5
    .param p1    # I

    const/16 v4, 0xe1

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget v3, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mXt9Version:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v3, "BILINGUAL_INPUT_LANGUAGE"

    invoke-interface {v2, v3, v1}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mBilingualInputLanguage:I

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->getLanguageIDForEngine(I)I

    move-result v2

    int-to-short v2, v2

    iput-short v2, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    iget v2, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mBilingualInputLanguage:I

    invoke-virtual {p0, v2}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->getLanguageIDForEngine(I)I

    move-result v2

    int-to-short v2, v2

    iput-short v2, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mBilingualInputLanguageId:S

    iget-short v2, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    if-eq v2, v4, :cond_0

    iget-short v2, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mBilingualInputLanguageId:S

    if-eq v2, v4, :cond_0

    iget-short v2, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    invoke-static {v2, v1}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWLdbSetLanguage(SS)S

    move-result v0

    :cond_0
    if-eqz v0, :cond_2

    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ET9AWLdbSetLanguage : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9SetCapsGesture()S

    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9SetShiftGesture()S

    iget-short v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    :cond_1
    :goto_1
    return v1

    :cond_2
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->changeKDBNum(I)V

    goto :goto_0

    :cond_3
    iget v2, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mXt9Version:I

    if-nez v2, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->getLanguageIDForEngine(I)I

    move-result v2

    int-to-short v2, v2

    iput-short v2, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    iget-short v2, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    if-eq v2, v4, :cond_4

    iget-short v2, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    invoke-static {v2, v1}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWLdbSetLanguage(SS)S

    move-result v0

    :cond_4
    if-eqz v0, :cond_5

    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ET9AWLdbSetLanguage : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    iget-short v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->changeKDBNum(I)V

    goto :goto_2
.end method

.method private setInputMode(Z)V
    .locals 8
    .param p1    # Z

    const/4 v4, 0x1

    const/4 v7, 0x0

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    const/4 v3, 0x0

    new-array v1, v4, [S

    new-array v2, v4, [S

    invoke-static {v1, v2}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KDB_GetPageNum([S[S)S

    move-result v3

    if-eqz v3, :cond_1

    const-string v4, "SamsungIME"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ET9KDB_GetPageNum : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget v4, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->INPUT_MODE_AMBIG:I

    if-eq v0, v4, :cond_2

    iget-short v4, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    const/16 v5, 0xe1

    if-ne v4, v5, :cond_4

    :cond_2
    const/4 v3, 0x0

    aget-short v4, v1, v7

    aget-short v5, v2, v7

    invoke-static {v4, v5}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KDB_SetAmbigMode(SS)S

    move-result v3

    if-eqz v3, :cond_3

    const-string v4, "SamsungIME"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ET9KDB_SetAmbigMode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void

    :cond_4
    sget v4, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->INPUT_MODE_MULTITAP:I

    if-ne v0, v4, :cond_3

    const/4 v3, 0x0

    aget-short v4, v1, v7

    aget-short v5, v2, v7

    invoke-static {v4, v5}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KDB_SetMultiTapMode(SS)S

    move-result v3

    if-eqz v3, :cond_3

    const-string v4, "SamsungIME"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ET9KDB_SetMultiTapMode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setNextWordPrediction(Z)V
    .locals 4
    .param p1    # Z

    const/4 v1, 0x1

    iget v2, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mXt9Version:I

    if-ne v1, v2, :cond_4

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWSetNextWordPrediction()S

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ET9AWSetNextWordPrediction : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWSetContextBasedPrediction()S

    move-result v0

    if-eqz v0, :cond_1

    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ET9AWSetContextBasedPrediction : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWClearNextWordPrediction()S

    move-result v0

    if-eqz v0, :cond_3

    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ET9AWClearNextWordPrediction : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWClearContextBasedPrediction()S

    move-result v0

    if-eqz v0, :cond_1

    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ET9AWClearContextBasedPrediction : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    iget v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mXt9Version:I

    if-nez v1, :cond_1

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWSetDBPrediction()S

    move-result v0

    :goto_1
    if-eqz v0, :cond_1

    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ET9AWSetDBPrediction : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWClearDBPrediction()S

    move-result v0

    goto :goto_1
.end method

.method private setRegionalCorrectionOn(Z)V
    .locals 7
    .param p1    # Z

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mXt9Version:I

    if-ne v5, v1, :cond_7

    iget-short v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    const/16 v2, 0xe1

    if-ne v1, v2, :cond_0

    const/4 p1, 0x0

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KDB_SetRegionalMode()S

    move-result v0

    :goto_0
    if-eqz v0, :cond_1

    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ET9KDB_SetRegionalMode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz p1, :cond_5

    invoke-static {v6, v4}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWSetSpellCorrectionMode(BZ)S

    move-result v0

    if-eqz v0, :cond_2

    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ET9AWSetSpellCorrectionMode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-static {v5}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWSetSelectionListMode(B)S

    move-result v0

    if-eqz v0, :cond_3

    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ET9AWSetSelectionListMode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    return-void

    :cond_4
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KDB_SetDiscreteMode()S

    move-result v0

    goto :goto_0

    :cond_5
    invoke-static {v5, v4}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWSetSpellCorrectionMode(BZ)S

    move-result v0

    if-eqz v0, :cond_6

    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ET9AWSetSpellCorrectionMode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    invoke-static {v4}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWSetSelectionListMode(B)S

    move-result v0

    if-eqz v0, :cond_3

    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ET9AWSetSelectionListMode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_7
    iget v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mXt9Version:I

    if-nez v1, :cond_3

    const/4 v0, 0x0

    if-eqz p1, :cond_a

    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KDB_SetRegionalMode()S

    move-result v0

    :goto_2
    if-eqz v0, :cond_8

    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ET9KDB_SetRegionalMode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    if-eqz p1, :cond_b

    invoke-static {v6, v4}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWSysSetSpellCorrectionMode(BZ)S

    move-result v0

    if-eqz v0, :cond_9

    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ET9AWSysSetSpellCorrectionMode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    invoke-static {v5}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWSysSetSelectionListMode(B)S

    move-result v0

    if-eqz v0, :cond_3

    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ET9AWSysSetSelectionListMode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_a
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KDB_SetDiscreteMode()S

    move-result v0

    goto :goto_2

    :cond_b
    invoke-static {v5, v4}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWSysSetSpellCorrectionMode(BZ)S

    move-result v0

    if-eqz v0, :cond_c

    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ET9AWSysSetSpellCorrectionMode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    invoke-static {v4}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWSysSetSelectionListMode(B)S

    move-result v0

    if-eqz v0, :cond_3

    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ET9AWSysSetSelectionListMode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private setUDBDelayedReorder(Z)S
    .locals 3
    .param p1    # Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget v2, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mXt9Version:I

    if-ne v1, v2, :cond_2

    if-eqz p1, :cond_1

    const/4 v1, 0x2

    invoke-static {v1, v0}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWSetUDBDelayedReorder(BB)S

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {v0, v0}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWSetUDBDelayedReorder(BB)S

    move-result v0

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mXt9Version:I

    if-nez v1, :cond_0

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWSetUDBDelayedReorder()S

    move-result v0

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWClearUDBDelayedReorder()S

    move-result v0

    goto :goto_0
.end method

.method private setWordCompletion(Z)V
    .locals 4
    .param p1    # Z

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWSetDBCompletion()S

    move-result v0

    :goto_0
    if-eqz v0, :cond_0

    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ET9AWSetDBCompletion : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWClearDBCompletion()S

    move-result v0

    goto :goto_0
.end method

.method private setWordCompletionPoint(S)V
    .locals 4
    .param p1    # S

    const/4 v1, 0x1

    iget v2, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mXt9Version:I

    if-ne v1, v2, :cond_1

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWSetWordCompletionPoint(S)S

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ET9AWSetWordCompletionPoint : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mXt9Version:I

    if-nez v1, :cond_0

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWSysSetWordCompletionPoint(S)S

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ET9AWSysSetWordCompletionPoint : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private toUpperCaseOfTurkish(I)C
    .locals 1
    .param p1    # I

    const/16 v0, 0x69

    if-ne p1, v0, :cond_0

    const/16 v0, 0x130

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x131

    if-ne p1, v0, :cond_1

    const/16 v0, 0x49

    goto :goto_0

    :cond_1
    invoke-static {p1}, Ljava/lang/Character;->isLowerCase(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(I)I

    move-result v0

    int-to-char v0, v0

    goto :goto_0

    :cond_2
    int-to-char v0, p1

    goto :goto_0
.end method


# virtual methods
.method public DLMAddWord([CS)S
    .locals 1
    .param p1    # [C
    .param p2    # S

    invoke-static {p1, p2}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWDLMAddWord([CS)S

    move-result v0

    return v0
.end method

.method public addAutoSubstitution(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .locals 7
    .param p1    # Ljava/lang/CharSequence;
    .param p2    # Ljava/lang/CharSequence;

    const/16 v4, 0x14

    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->convertCharSequenceToShortArray(Ljava/lang/CharSequence;)[S

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2, v0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->isExistInAutoSubstitutions([SLjava/lang/StringBuilder;)I

    move-result v1

    const/4 v5, 0x4

    if-ne v1, v5, :cond_1

    invoke-virtual {p0, p2}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->convertCharSequenceToShortArray(Ljava/lang/CharSequence;)[S

    move-result-object v3

    array-length v4, v2

    int-to-short v4, v4

    array-length v5, v3

    int-to-short v5, v5

    invoke-static {v2, v3, v4, v5}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWASDBAddEntry([S[SSS)S

    move-result v1

    sget-boolean v4, Lcom/diotek/ime/framework/util/Debug;->ERROR:Z

    if-eqz v4, :cond_4

    if-eqz v1, :cond_4

    const-string v4, "SamsungIME"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Xt9Wrapper addAutoSubstitution ET9AWASDBAddEntry error : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v1

    :cond_0
    :goto_0
    return v4

    :cond_1
    const/16 v5, 0x26

    if-ne v1, v5, :cond_5

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->initASDB()S

    move-result v1

    sget-boolean v5, Lcom/diotek/ime/framework/util/Debug;->ERROR:Z

    if-eqz v5, :cond_2

    if-eqz v1, :cond_2

    move v4, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v2, v0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->isExistInAutoSubstitutions([SLjava/lang/StringBuilder;)I

    move-result v1

    const/16 v5, 0x15

    if-ne v1, v5, :cond_3

    invoke-virtual {p0, p2}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->convertCharSequenceToShortArray(Ljava/lang/CharSequence;)[S

    move-result-object v3

    array-length v4, v2

    int-to-short v4, v4

    array-length v5, v3

    int-to-short v5, v5

    invoke-static {v2, v3, v4, v5}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWASDBAddEntry([S[SSS)S

    move-result v1

    sget-boolean v4, Lcom/diotek/ime/framework/util/Debug;->ERROR:Z

    if-eqz v4, :cond_4

    if-eqz v1, :cond_4

    const-string v4, "SamsungIME"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Xt9Wrapper addAutoSubstitution ET9AWASDBAddEntry error : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v1

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_0

    :cond_4
    move v4, v1

    goto :goto_0

    :cond_5
    if-eqz v1, :cond_0

    move v4, v1

    goto :goto_0
.end method

.method public addMyWord(Ljava/lang/CharSequence;)I
    .locals 7
    .param p1    # Ljava/lang/CharSequence;

    const/16 v6, 0x20

    const/16 v3, 0x14

    const/4 v5, 0x4

    const/4 v1, 0x0

    if-eqz p1, :cond_5

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_0

    const/4 v4, 0x0

    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/diotek/ime/framework/util/Utils;->isKoreanLetter(C)Z

    move-result v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->convertCharSequenceToShortArray(Ljava/lang/CharSequence;)[S

    move-result-object v2

    if-eqz v0, :cond_7

    invoke-virtual {p0, v2, v0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->isExistInMyWords([SZ)I

    move-result v1

    if-ne v1, v5, :cond_2

    array-length v3, v2

    int-to-short v3, v3

    invoke-static {v2, v3}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KUDBAddWord([SS)S

    move-result v1

    sget-boolean v3, Lcom/diotek/ime/framework/util/Debug;->ERROR:Z

    if-eqz v3, :cond_5

    if-eqz v1, :cond_5

    const-string v3, "SamsungIME"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Xt9Wrapper addMyWord ET9KUDBAddWord error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v1

    :cond_1
    :goto_0
    return v3

    :cond_2
    if-ne v1, v6, :cond_6

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->initKRUDB()S

    move-result v1

    sget-boolean v4, Lcom/diotek/ime/framework/util/Debug;->ERROR:Z

    if-eqz v4, :cond_3

    if-eqz v1, :cond_3

    move v3, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v2, v0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->isExistInMyWords([SZ)I

    move-result v1

    if-ne v1, v5, :cond_4

    array-length v3, v2

    int-to-short v3, v3

    invoke-static {v2, v3}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KUDBAddWord([SS)S

    move-result v1

    sget-boolean v3, Lcom/diotek/ime/framework/util/Debug;->ERROR:Z

    if-eqz v3, :cond_5

    if-eqz v1, :cond_5

    const-string v3, "SamsungIME"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Xt9Wrapper addMyWord ET9KUDBAddWord error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v1

    goto :goto_0

    :cond_4
    if-eqz v1, :cond_1

    :cond_5
    move v3, v1

    goto :goto_0

    :cond_6
    if-eqz v1, :cond_1

    move v3, v1

    goto :goto_0

    :cond_7
    invoke-virtual {p0, v2, v0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->isExistInMyWords([SZ)I

    move-result v1

    if-ne v1, v5, :cond_8

    array-length v3, v2

    int-to-short v3, v3

    invoke-static {v2, v3}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWUDBAddWord([SS)S

    move-result v1

    sget-boolean v3, Lcom/diotek/ime/framework/util/Debug;->ERROR:Z

    if-eqz v3, :cond_5

    if-eqz v1, :cond_5

    const-string v3, "SamsungIME"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Xt9Wrapper addMyWord ET9AWUDBAddWord error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v1

    goto :goto_0

    :cond_8
    if-ne v1, v6, :cond_b

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->initRUDB()S

    move-result v1

    sget-boolean v4, Lcom/diotek/ime/framework/util/Debug;->ERROR:Z

    if-eqz v4, :cond_9

    if-eqz v1, :cond_9

    move v3, v1

    goto :goto_0

    :cond_9
    invoke-virtual {p0, v2, v0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->isExistInMyWords([SZ)I

    move-result v1

    if-ne v1, v5, :cond_a

    array-length v3, v2

    int-to-short v3, v3

    invoke-static {v2, v3}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWUDBAddWord([SS)S

    move-result v1

    sget-boolean v3, Lcom/diotek/ime/framework/util/Debug;->ERROR:Z

    if-eqz v3, :cond_5

    if-eqz v1, :cond_5

    const-string v3, "SamsungIME"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Xt9Wrapper addMyWord ET9AWUDBAddWord error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v1

    goto/16 :goto_0

    :cond_a
    if-nez v1, :cond_5

    goto/16 :goto_0

    :cond_b
    if-eqz v1, :cond_1

    move v3, v1

    goto/16 :goto_0
.end method

.method public clearContext()I
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mCPSpell:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->init()V

    iput v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mActiveIndex:I

    iput v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mSuggestionCount:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mCacheRecapture:Ljava/lang/String;

    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9ClearAllSymbs()S

    move-result v0

    return v0
.end method

.method public convertCharSequenceToCharArray(Ljava/lang/CharSequence;)[C
    .locals 3
    .param p1    # Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    new-array v1, v2, [C

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    aput-char v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public convertCharSequenceToShortArray(Ljava/lang/CharSequence;)[S
    .locals 3
    .param p1    # Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    new-array v1, v2, [S

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    int-to-short v2, v2

    aput-short v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public convertChartArrayToCharSequence([CI)Ljava/lang/CharSequence;
    .locals 3
    .param p1    # [C
    .param p2    # I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    array-length v2, p1

    if-ge v0, v2, :cond_0

    aget-char v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public convertShortArrayToCharSequence([SI)Ljava/lang/CharSequence;
    .locals 3
    .param p1    # [S
    .param p2    # I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    array-length v2, p1

    if-ge v0, v2, :cond_0

    aget-short v2, p1, v0

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public deleteAutoSubstitution(Ljava/lang/CharSequence;)I
    .locals 7
    .param p1    # Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->convertCharSequenceToShortArray(Ljava/lang/CharSequence;)[S

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2, v3}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->isExistInAutoSubstitutions([SLjava/lang/StringBuilder;)I

    move-result v0

    if-nez v0, :cond_0

    array-length v4, v2

    int-to-short v4, v4

    invoke-static {v2, v4}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWASDBDeleteEntry([SS)S

    move-result v0

    sget-boolean v4, Lcom/diotek/ime/framework/util/Debug;->ERROR:Z

    if-eqz v4, :cond_4

    if-eqz v0, :cond_4

    const-string v4, "SamsungIME"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Xt9Wrapper deleteAutoSubstitution ET9AWASDBDeleteEntry error : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    :goto_0
    return v1

    :cond_0
    const/16 v4, 0x26

    if-ne v0, v4, :cond_3

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->initASDB()S

    move-result v0

    sget-boolean v4, Lcom/diotek/ime/framework/util/Debug;->ERROR:Z

    if-eqz v4, :cond_1

    if-eqz v0, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2, v3}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->isExistInAutoSubstitutions([SLjava/lang/StringBuilder;)I

    move-result v0

    if-nez v0, :cond_2

    array-length v4, v2

    int-to-short v4, v4

    invoke-static {v2, v4}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWASDBDeleteEntry([SS)S

    move-result v0

    sget-boolean v4, Lcom/diotek/ime/framework/util/Debug;->ERROR:Z

    if-eqz v4, :cond_4

    if-eqz v0, :cond_4

    const-string v4, "SamsungIME"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Xt9Wrapper deleteAutoSubstitution ET9AWASDBDeleteEntry error : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    goto :goto_0

    :cond_2
    move v1, v0

    goto :goto_0

    :cond_3
    move v1, v0

    goto :goto_0

    :cond_4
    move v1, v0

    goto :goto_0
.end method

.method public deleteMyWord(Ljava/lang/CharSequence;)I
    .locals 7
    .param p1    # Ljava/lang/CharSequence;

    const/16 v5, 0x20

    const/4 v1, 0x0

    if-eqz p1, :cond_9

    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->convertCharSequenceToShortArray(Ljava/lang/CharSequence;)[S

    move-result-object v3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_0

    const/4 v4, 0x0

    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/diotek/ime/framework/util/Utils;->isKoreanLetter(C)Z

    move-result v0

    :cond_0
    if-eqz v0, :cond_4

    array-length v4, v3

    int-to-short v4, v4

    invoke-static {v3, v4}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KUDBDeleteWord([SS)S

    move-result v1

    if-ne v1, v5, :cond_2

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->initKRUDB()S

    move-result v1

    sget-boolean v4, Lcom/diotek/ime/framework/util/Debug;->ERROR:Z

    if-eqz v4, :cond_1

    if-eqz v1, :cond_1

    move v2, v1

    :goto_0
    return v2

    :cond_1
    array-length v4, v3

    int-to-short v4, v4

    invoke-static {v3, v4}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KUDBDeleteWord([SS)S

    move-result v1

    sget-boolean v4, Lcom/diotek/ime/framework/util/Debug;->ERROR:Z

    if-eqz v4, :cond_9

    if-eqz v1, :cond_9

    const-string v4, "SamsungIME"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Xt9Wrapper deleteMyWord ET9KUDBDeleteWord error : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    goto :goto_0

    :cond_2
    sget-boolean v4, Lcom/diotek/ime/framework/util/Debug;->ERROR:Z

    if-eqz v4, :cond_3

    if-eqz v1, :cond_3

    const-string v4, "SamsungIME"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Xt9Wrapper deleteMyWord ET9KUDBDeleteWord error : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    goto :goto_0

    :cond_3
    move v2, v1

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v3, v0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->isExistInMyWords([SZ)I

    move-result v1

    if-nez v1, :cond_5

    array-length v4, v3

    int-to-short v4, v4

    invoke-static {v3, v4}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWUDBDeleteWord([SS)S

    move-result v1

    sget-boolean v4, Lcom/diotek/ime/framework/util/Debug;->ERROR:Z

    if-eqz v4, :cond_9

    if-eqz v1, :cond_9

    const-string v4, "SamsungIME"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Xt9Wrapper deleteMyWord ET9AWUDBDeleteWord error : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    goto :goto_0

    :cond_5
    if-ne v1, v5, :cond_8

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->initRUDB()S

    move-result v1

    sget-boolean v4, Lcom/diotek/ime/framework/util/Debug;->ERROR:Z

    if-eqz v4, :cond_6

    if-eqz v1, :cond_6

    move v2, v1

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p0, v3, v0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->isExistInMyWords([SZ)I

    move-result v1

    if-nez v1, :cond_7

    array-length v4, v3

    int-to-short v4, v4

    invoke-static {v3, v4}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWUDBDeleteWord([SS)S

    move-result v1

    sget-boolean v4, Lcom/diotek/ime/framework/util/Debug;->ERROR:Z

    if-eqz v4, :cond_9

    if-eqz v1, :cond_9

    const-string v4, "SamsungIME"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Xt9Wrapper deleteMyWord ET9AWUDBDeleteWord error : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    goto/16 :goto_0

    :cond_7
    move v2, v1

    goto/16 :goto_0

    :cond_8
    move v2, v1

    goto/16 :goto_0

    :cond_9
    move v2, v1

    goto/16 :goto_0
.end method

.method public deleteWordFromLDB([CS)S
    .locals 1
    .param p1    # [C
    .param p2    # S

    invoke-static {p1, p2}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWDLMDeleteWord([CS)S

    move-result v0

    return v0
.end method

.method public doNextWordPredictionForXt9(Z)I
    .locals 6
    .param p1    # Z

    const/high16 v5, 0x76690000

    const/4 v4, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return v2

    :cond_0
    if-eqz p1, :cond_2

    const/4 v3, 0x2

    invoke-interface {v1, v3, v2}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-le v3, v4, :cond_4

    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-nez v3, :cond_4

    iget v3, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mImeInputLanguage:I

    if-ne v3, v5, :cond_1

    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/diotek/ime/framework/common/InputSequenceCheck;->isVietameseTone(I)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_1
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWBreakContext()S

    goto :goto_0

    :cond_2
    invoke-interface {v1, v4, v2}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_4

    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-nez v3, :cond_4

    iget v3, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mImeInputLanguage:I

    if-ne v3, v5, :cond_3

    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/diotek/ime/framework/common/InputSequenceCheck;->isVietameseTone(I)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_3
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWBreakContext()S

    :cond_4
    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->updateSelectList()I

    move-result v2

    goto :goto_0
.end method

.method public doNoteWordDoneForXt9(I)I
    .locals 8
    .param p1    # I

    const/16 v5, 0x12

    const/4 v7, 0x1

    const/4 v3, 0x0

    iget v4, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mXt9Version:I

    if-ne v7, v4, :cond_4

    const/4 v2, 0x0

    iget-short v4, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    if-ne v4, v5, :cond_3

    int-to-byte v4, p1

    invoke-static {v4}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KSelectHangul(B)S

    move-result v2

    if-eqz v2, :cond_0

    const-string v4, "SamsungIME"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ET9KSelectHangul : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v4, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mHangulWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->init()V

    new-array v0, v7, [S

    int-to-byte v4, p1

    iget-object v5, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mHangulWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    iget-object v5, v5, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->sString:[S

    iget-object v6, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mHangulWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    iget-object v6, v6, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->sString:[S

    array-length v6, v6

    int-to-short v6, v6

    invoke-static {v4, v5, v6, v0}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KGetHangul(B[SS[S)S

    move-result v2

    if-eqz v2, :cond_1

    const-string v4, "SamsungIME"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ET9KGetHangul : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v4, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mHangulWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    iget-object v4, v4, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->sString:[S

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mHangulWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    iget-object v4, v4, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->sString:[S

    array-length v4, v4

    if-lez v4, :cond_2

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mHangulWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    iget-object v4, v4, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->sString:[S

    aget-short v4, v4, v3

    int-to-char v4, v4

    invoke-static {v4}, Lcom/diotek/ime/framework/util/Utils;->isKoreanLetter(C)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mHangulWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    iget-object v4, v4, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->sString:[S

    aget-short v3, v0, v3

    invoke-static {v4, v3}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KNoteHangulDone([SS)S

    move-result v2

    if-eqz v2, :cond_2

    const-string v3, "SamsungIME"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ET9KNoteHangulDone : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return v2

    :cond_3
    new-instance v1, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;

    invoke-direct {v1}, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;-><init>()V

    int-to-byte v4, p1

    invoke-static {v1, v4}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWSelLstGetWord(Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;B)S

    move-result v2

    iget-object v4, v1, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;->sWord:[S

    if-eqz v4, :cond_2

    iget-object v4, v1, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;->sWord:[S

    array-length v4, v4

    if-lez v4, :cond_2

    iget-object v4, v1, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;->sWord:[S

    aget-short v3, v4, v3

    int-to-char v3, v3

    invoke-static {v3}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v1, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;->sWord:[S

    iget-short v4, v1, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;->wWordLen:S

    int-to-long v4, v4

    iget-short v6, v1, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;->wWordLen:S

    int-to-long v6, v6

    invoke-static {v3, v4, v5, v6, v7}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWNoteWordDone([SJJ)S

    move-result v2

    goto :goto_0

    :cond_4
    iget v4, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mXt9Version:I

    if-nez v4, :cond_8

    const/4 v2, 0x0

    iget-short v4, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    if-ne v4, v5, :cond_7

    int-to-byte v4, p1

    invoke-static {v4}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KSelectHangul(B)S

    move-result v2

    if-eqz v2, :cond_5

    const-string v4, "SamsungIME"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ET9KSelectHangul : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v4, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mHangulWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->init()V

    new-array v0, v7, [S

    int-to-byte v4, p1

    iget-object v5, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mHangulWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    iget-object v5, v5, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->sString:[S

    iget-object v6, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mHangulWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    iget-object v6, v6, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->sString:[S

    array-length v6, v6

    int-to-short v6, v6

    invoke-static {v4, v5, v6, v0}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KUTIL_GetHangulSingleConsonants(B[SS[S)S

    move-result v2

    if-eqz v2, :cond_6

    const-string v4, "SamsungIME"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ET9KGetHangul : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v4, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mHangulWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    iget-object v4, v4, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->sString:[S

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mHangulWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    iget-object v4, v4, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->sString:[S

    array-length v4, v4

    if-lez v4, :cond_2

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mHangulWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    iget-object v4, v4, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->sString:[S

    aget-short v4, v4, v3

    int-to-char v4, v4

    invoke-static {v4}, Lcom/diotek/ime/framework/util/Utils;->isKoreanLetter(C)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mHangulWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    iget-object v4, v4, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->sString:[S

    aget-short v3, v0, v3

    invoke-static {v4, v3}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KNoteHangulDone([SS)S

    move-result v2

    if-eqz v2, :cond_2

    const-string v3, "SamsungIME"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ET9KNoteHangulDone : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    new-instance v1, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;

    invoke-direct {v1}, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;-><init>()V

    int-to-byte v4, p1

    invoke-static {v1, v4}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWSelLstGetWord(Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;B)S

    move-result v2

    iget-object v4, v1, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;->sWord:[S

    if-eqz v4, :cond_2

    iget-object v4, v1, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;->sWord:[S

    array-length v4, v4

    if-lez v4, :cond_2

    iget-object v4, v1, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;->sWord:[S

    aget-short v3, v4, v3

    int-to-char v3, v3

    invoke-static {v3}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v1, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;->sWord:[S

    iget-short v4, v1, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;->wWordLen:S

    invoke-static {v3, v4}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWNoteWordDone([SS)S

    move-result v2

    goto/16 :goto_0

    :cond_8
    move v2, v3

    goto/16 :goto_0
.end method

.method public doRecaptureForXt9(Ljava/lang/String;SZ)I
    .locals 10
    .param p1    # Ljava/lang/String;
    .param p2    # S
    .param p3    # Z

    const/4 v7, 0x1

    iget v8, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mXt9Version:I

    if-ne v7, v8, :cond_8

    iget-object v7, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v8, "SETTINGS_DEFAULT_RECAPTURE"

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v3

    const/4 v5, 0x0

    if-nez v3, :cond_0

    if-eqz p3, :cond_3

    :cond_0
    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->convertCharSequenceToCharArray(Ljava/lang/CharSequence;)[C

    move-result-object v6

    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->breakContext()V

    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->clearContext()I

    iget-object v7, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->isKorMode()Z

    move-result v2

    iget-short v7, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    const/16 v8, 0x12

    if-ne v7, v8, :cond_4

    iget-object v7, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mHangulWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->init()V

    iget-object v7, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mHangulWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    iput-short p2, v7, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->wLen:S

    const/16 v7, 0x40

    if-le p2, v7, :cond_1

    const/16 p2, 0x40

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_2

    iget-object v7, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mHangulWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    iget-object v7, v7, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->sString:[S

    aget-char v8, v6, v1

    int-to-short v8, v8

    aput-short v8, v7, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    new-instance v4, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9SimpleWord;

    invoke-direct {v4}, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9SimpleWord;-><init>()V

    iget-object v7, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mHangulWord:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;

    const/4 v8, 0x0

    invoke-static {v7, v4, v8}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KDecodeHangul(Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9SimpleWord;Z)S

    iget-object v7, v4, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9SimpleWord;->sString:[C

    iget-short v8, v4, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9SimpleWord;->wLen:S

    int-to-char v8, v8

    invoke-static {v7, v8}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KCompatibilityJamoToJamo([CC)S

    iget-object v7, v4, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9SimpleWord;->sString:[C

    iget-short v8, v4, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9SimpleWord;->wLen:S

    invoke-direct {p0, v7, v8, v2}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->exceptionKorRecapture([CSZ)I

    move-result v5

    sget-boolean v7, Lcom/diotek/ime/framework/util/Debug;->ERROR:Z

    if-eqz v7, :cond_6

    if-eqz v5, :cond_6

    const-string v7, "SamsungIME"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "exceptionKorRecapture : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->updateShiftState()V

    :cond_3
    :goto_1
    return v5

    :cond_4
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_5

    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9SetShift()S
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    iget-short v7, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    const/16 v8, 0x2a

    if-ne v7, v8, :cond_7

    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->recaptureForVietnamese(Ljava/lang/String;)V

    :cond_6
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mIsRecapture:Z

    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->updateSelectList()I

    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mIsRecapture:Z

    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->updateShiftState()V

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v7, "SamsungIME"

    const-string v8, "StringIndexOutOfBoundsException"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, -0x1

    goto :goto_1

    :cond_7
    invoke-direct {p0, v6, p2, v2}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->exceptionKorRecapture([CSZ)I

    move-result v5

    sget-boolean v7, Lcom/diotek/ime/framework/util/Debug;->ERROR:Z

    if-eqz v7, :cond_6

    if-eqz v5, :cond_6

    const-string v7, "SamsungIME"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "exceptionKorRecapture : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->updateShiftState()V

    goto :goto_1

    :cond_8
    iget v7, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mXt9Version:I

    if-nez v7, :cond_e

    iget-object v7, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mCacheRecapture:Ljava/lang/String;

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mCacheRecapture:Ljava/lang/String;

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->getCandidateviewStatus()I

    move-result v7

    if-nez v7, :cond_9

    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->updateShiftState()V

    const/4 v5, 0x0

    goto :goto_1

    :cond_9
    iput-object p1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mCacheRecapture:Ljava/lang/String;

    iget-object v7, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v8, "SETTINGS_DEFAULT_RECAPTURE"

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v3

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->breakContext()V

    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->clearContext()I

    if-eqz v3, :cond_3

    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->convertCharSequenceToCharArray(Ljava/lang/CharSequence;)[C

    move-result-object v6

    iget-short v7, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    const/16 v8, 0x12

    if-ne v7, v8, :cond_a

    new-instance v4, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9SimpleWord;

    invoke-direct {v4}, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9SimpleWord;-><init>()V

    const/4 v7, 0x0

    invoke-static {v6, p2, v4, v7}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9_K_Hangul2Jamo([CSLcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9SimpleWord;Z)S

    iget-object v7, v4, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9SimpleWord;->sString:[C

    iget-short v8, v4, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9SimpleWord;->wLen:S

    invoke-static {v7, v8}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KDB_ReselectWord([CS)S

    move-result v5

    sget-boolean v7, Lcom/diotek/ime/framework/util/Debug;->ERROR:Z

    if-eqz v7, :cond_c

    if-eqz v5, :cond_c

    const-string v7, "SamsungIME"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ET9KDB_ReselectWord : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_a
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_b

    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9SetShift()S

    :cond_b
    iget-short v7, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    const/16 v8, 0x2a

    if-ne v7, v8, :cond_d

    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->recaptureForVietnamese(Ljava/lang/String;)V

    :cond_c
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mIsRecapture:Z

    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->updateSelectList()I

    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mIsRecapture:Z

    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->updateShiftState()V

    goto/16 :goto_1

    :cond_d
    invoke-static {v6, p2}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KDBRecaptureWord([CS)S

    move-result v5

    sget-boolean v7, Lcom/diotek/ime/framework/util/Debug;->ERROR:Z

    if-eqz v7, :cond_c

    if-eqz v5, :cond_c

    const-string v7, "SamsungIME"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ET9KDB_ReselectWord : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->updateShiftState()V

    goto/16 :goto_1

    :cond_e
    const/4 v5, 0x0

    goto/16 :goto_1
.end method

.method public doResetMultitap()I
    .locals 1

    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KDB_TimeOut()S

    move-result v0

    return v0
.end method

.method public findWordFromDLM([CS)Z
    .locals 2
    .param p1    # [C
    .param p2    # S

    invoke-static {p1, p2}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWDLMFindWord([CS)S

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public findWordInUDB(Ljava/lang/CharSequence;)I
    .locals 5
    .param p1    # Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->convertCharSequenceToShortArray(Ljava/lang/CharSequence;)[S

    move-result-object v0

    const/4 v2, 0x1

    new-array v1, v2, [S

    const/4 v2, 0x0

    array-length v3, v0

    int-to-short v3, v3

    aput-short v3, v1, v2

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mWordBuf:[S

    const/16 v3, 0x40

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mWordLengthBuf:[S

    invoke-static {v0, v1, v2, v3, v4}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWScanBufForNextCustomWord([S[S[SS[S)S

    move-result v2

    return v2
.end method

.method public getAutoSubstitutionsList(Ljava/util/ArrayList;Ljava/util/ArrayList;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)I"
        }
    .end annotation

    const/16 v1, 0x40

    const/4 v6, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->setAutoSubstitution(Z)V

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mCount:[S

    aput-short v6, v0, v6

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mCount:[S

    invoke-static {v0}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWASDBGetEntryCount([S)S

    move-result v8

    const/16 v0, 0x26

    if-ne v8, v0, :cond_1

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->initASDB()S

    move-result v8

    sget-boolean v0, Lcom/diotek/ime/framework/util/Debug;->ERROR:Z

    if-eqz v0, :cond_0

    if-eqz v8, :cond_0

    move v9, v8

    :goto_0
    return v9

    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mCount:[S

    aput-short v6, v0, v6

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mCount:[S

    invoke-static {v0}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWASDBGetEntryCount([S)S

    move-result v8

    sget-boolean v0, Lcom/diotek/ime/framework/util/Debug;->ERROR:Z

    if-eqz v0, :cond_2

    if-eqz v8, :cond_2

    const-string v0, "SamsungIME"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Xt9Wrapper getAutoSubstitutionsList ET9AWASDBGetEntryCount error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v8

    goto :goto_0

    :cond_1
    sget-boolean v0, Lcom/diotek/ime/framework/util/Debug;->ERROR:Z

    if-eqz v0, :cond_2

    if-eqz v8, :cond_2

    const-string v0, "SamsungIME"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Xt9Wrapper getAutoSubstitutionsList ET9AWASDBGetEntryCount error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v8

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    :goto_1
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mCount:[S

    aget-short v0, v0, v6

    if-ge v7, v0, :cond_4

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mShortcutBuf:[S

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mShortcutLengthBuf:[S

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mSubstitutionBuf:[S

    iget-object v5, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mSubstitutionLengthBuf:[S

    move v4, v1

    invoke-static/range {v0 .. v6}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWASDBGetEntry([SS[S[SS[SB)S

    sget-boolean v0, Lcom/diotek/ime/framework/util/Debug;->ERROR:Z

    if-eqz v0, :cond_3

    if-eqz v8, :cond_3

    const-string v0, "SamsungIME"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Xt9Wrapper getAutoSubstitutionsList ET9AWASDBGetEntry error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v8

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mShortcutBuf:[S

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mShortcutLengthBuf:[S

    aget-short v2, v2, v6

    invoke-virtual {p0, v0, v2}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->convertShortArrayToCharSequence([SI)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mSubstitutionBuf:[S

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mSubstitutionLengthBuf:[S

    aget-short v2, v2, v6

    invoke-virtual {p0, v0, v2}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->convertShortArrayToCharSequence([SI)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    move v9, v8

    goto/16 :goto_0
.end method

.method public getCharSequence(Ljava/lang/StringBuilder;)I
    .locals 4
    .param p1    # Ljava/lang/StringBuilder;

    const/16 v3, 0x1e

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isEnableAutoCorrection()Z

    move-result v1

    if-nez v1, :cond_1

    iget-short v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    if-eq v1, v3, :cond_1

    iget-boolean v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mIsActiveWordStatusChangable:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v1

    if-nez v1, :cond_1

    iget-short v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    if-ne v1, v3, :cond_0

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p0, p1, v2}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->getCharSequence(Ljava/lang/StringBuilder;I)I

    :goto_0
    return v2

    :cond_1
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->getInputWords()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public getCharSequence(Ljava/lang/StringBuilder;I)I
    .locals 2
    .param p1    # Ljava/lang/StringBuilder;
    .param p2    # I

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-direct {p0, p2}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->getInputWords(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    return v1
.end method

.method public getContextAwareUniqueID()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getInputSequenceCount()I
    .locals 1

    iget v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mXt9Version:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9InputSequenceCount()S

    move-result v0

    goto :goto_0
.end method

.method public getInputTransResult()Ljava/lang/CharSequence;
    .locals 5

    const/16 v2, 0xe0

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mCPSpell:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-byte v3, v3, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    if-ge v3, v2, :cond_0

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mCPSpell:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-byte v2, v3, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    :cond_0
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mCPSpell:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-byte v3, v3, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    const/4 v4, 0x1

    if-ge v3, v4, :cond_1

    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_1
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v0, 0x0

    :goto_1
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mCPSpell:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-byte v3, v3, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    if-ge v0, v3, :cond_2

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mCPSpell:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-object v3, v3, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->pSymbs:[C

    aget-char v3, v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public getLanguageIDForEngine(I)I
    .locals 4
    .param p1    # I

    const/4 v0, 0x0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    sparse-switch p1, :sswitch_data_0

    const/16 v0, 0x9

    :goto_0
    return v0

    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_1
    const/16 v0, 0x39

    goto :goto_0

    :sswitch_2
    const/16 v0, 0x4b

    goto :goto_0

    :sswitch_3
    const/16 v0, 0x57

    goto :goto_0

    :sswitch_4
    const/16 v0, 0x63

    goto :goto_0

    :sswitch_5
    const/16 v0, 0x6a

    goto :goto_0

    :sswitch_6
    const/16 v0, 0x6d

    goto :goto_0

    :sswitch_7
    const/16 v0, 0x74

    goto :goto_0

    :sswitch_8
    const/16 v0, 0x7c

    goto :goto_0

    :sswitch_9
    const/16 v0, 0x85

    goto :goto_0

    :sswitch_a
    const/16 v0, 0x84

    goto :goto_0

    :sswitch_b
    const/16 v0, 0x5a

    goto :goto_0

    :sswitch_c
    const/16 v0, 0x47

    goto :goto_0

    :sswitch_d
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_e
    const/16 v0, 0xe2

    goto :goto_0

    :sswitch_f
    const/16 v0, 0xe1

    goto :goto_0

    :sswitch_10
    const/16 v0, 0xe0

    goto :goto_0

    :sswitch_11
    const/16 v0, 0x59

    goto :goto_0

    :sswitch_12
    const/4 v0, 0x5

    goto :goto_0

    :sswitch_13
    const/4 v0, 0x6

    goto :goto_0

    :sswitch_14
    const-string v3, "nl"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "BE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v0, 0xc

    goto :goto_0

    :cond_0
    const/16 v0, 0x13

    goto :goto_0

    :sswitch_15
    const/16 v0, 0x9

    goto :goto_0

    :sswitch_16
    const/16 v0, 0x9

    goto :goto_0

    :sswitch_17
    const/16 v0, 0x25

    goto :goto_0

    :sswitch_18
    const/16 v0, 0xb

    goto :goto_0

    :sswitch_19
    const/16 v0, 0xc

    goto :goto_0

    :sswitch_1a
    const/16 v0, 0x60

    goto :goto_0

    :sswitch_1b
    const/4 v0, 0x7

    goto :goto_0

    :sswitch_1c
    const/16 v0, 0x8

    goto :goto_0

    :sswitch_1d
    const/16 v0, 0xd

    goto :goto_0

    :sswitch_1e
    const/16 v0, 0xe

    goto :goto_0

    :sswitch_1f
    const/16 v0, 0xf

    goto :goto_0

    :sswitch_20
    const/16 v0, 0x21

    goto :goto_0

    :sswitch_21
    const/16 v0, 0x10

    goto :goto_0

    :sswitch_22
    const/16 v0, 0x11

    goto :goto_0

    :sswitch_23
    const/16 v0, 0x61

    goto :goto_0

    :sswitch_24
    const/16 v0, 0x12

    goto :goto_0

    :sswitch_25
    const/16 v0, 0x26

    goto :goto_0

    :sswitch_26
    const/16 v0, 0x27

    goto/16 :goto_0

    :sswitch_27
    const/16 v0, 0x3e

    goto/16 :goto_0

    :sswitch_28
    const/16 v0, 0x14

    goto/16 :goto_0

    :sswitch_29
    const/16 v0, 0x29

    goto/16 :goto_0

    :sswitch_2a
    const/16 v0, 0x15

    goto/16 :goto_0

    :sswitch_2b
    const/16 v0, 0x16

    goto/16 :goto_0

    :sswitch_2c
    const/16 v0, 0x18

    goto/16 :goto_0

    :sswitch_2d
    const/16 v0, 0x19

    goto/16 :goto_0

    :sswitch_2e
    const/16 v0, 0x80

    goto/16 :goto_0

    :sswitch_2f
    const/16 v0, 0x1b

    goto/16 :goto_0

    :sswitch_30
    const/16 v0, 0x24

    goto/16 :goto_0

    :sswitch_31
    const/16 v0, 0xa

    goto/16 :goto_0

    :sswitch_32
    const/16 v0, 0x1d

    goto/16 :goto_0

    :sswitch_33
    const/16 v0, 0x1e

    goto/16 :goto_0

    :sswitch_34
    const/16 v0, 0x1f

    goto/16 :goto_0

    :sswitch_35
    const/16 v0, 0x22

    goto/16 :goto_0

    :sswitch_36
    const/16 v0, 0x20

    goto/16 :goto_0

    :sswitch_37
    const/16 v0, 0x2a

    goto/16 :goto_0

    :sswitch_38
    const/4 v0, 0x3

    goto/16 :goto_0

    :sswitch_39
    const/16 v0, 0x55

    goto/16 :goto_0

    :sswitch_3a
    const/16 v0, 0x2d

    goto/16 :goto_0

    :sswitch_3b
    const/16 v0, 0x2f

    goto/16 :goto_0

    :sswitch_3c
    const/16 v0, 0x54

    goto/16 :goto_0

    :sswitch_3d
    const/16 v0, 0x1c

    goto/16 :goto_0

    :sswitch_3e
    const/16 v0, 0x2c

    goto/16 :goto_0

    :sswitch_3f
    const/16 v0, 0x2b

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x61720000 -> :sswitch_0
        0x617a0000 -> :sswitch_c
        0x62670000 -> :sswitch_d
        0x626e0000 -> :sswitch_2
        0x63610000 -> :sswitch_38
        0x63730000 -> :sswitch_12
        0x64610000 -> :sswitch_13
        0x64650000 -> :sswitch_1b
        0x656c0000 -> :sswitch_1c
        0x656e4742 -> :sswitch_15
        0x656e5553 -> :sswitch_16
        0x65730000 -> :sswitch_31
        0x65734553 -> :sswitch_31
        0x65735553 -> :sswitch_31
        0x65740000 -> :sswitch_17
        0x65750000 -> :sswitch_3a
        0x66610000 -> :sswitch_29
        0x66690000 -> :sswitch_18
        0x66720000 -> :sswitch_19
        0x66724341 -> :sswitch_19
        0x66724652 -> :sswitch_19
        0x67610000 -> :sswitch_3c
        0x676c0000 -> :sswitch_39
        0x67750000 -> :sswitch_3
        0x68690000 -> :sswitch_1
        0x68720000 -> :sswitch_11
        0x68750000 -> :sswitch_1e
        0x68790000 -> :sswitch_b
        0x69640000 -> :sswitch_20
        0x69730000 -> :sswitch_1f
        0x69740000 -> :sswitch_21
        0x69770000 -> :sswitch_1d
        0x6a610000 -> :sswitch_22
        0x6b610000 -> :sswitch_1a
        0x6b6b0000 -> :sswitch_23
        0x6b6d0000 -> :sswitch_3e
        0x6b6e0000 -> :sswitch_4
        0x6b6f0000 -> :sswitch_24
        0x6c6f0000 -> :sswitch_3f
        0x6c740000 -> :sswitch_26
        0x6c760000 -> :sswitch_25
        0x6d6b0000 -> :sswitch_3b
        0x6d6c0000 -> :sswitch_5
        0x6d720000 -> :sswitch_6
        0x6d730000 -> :sswitch_27
        0x6e620000 -> :sswitch_28
        0x6e6c0000 -> :sswitch_14
        0x70610000 -> :sswitch_7
        0x706c0000 -> :sswitch_2a
        0x70740000 -> :sswitch_2b
        0x70744252 -> :sswitch_2b
        0x70745054 -> :sswitch_2b
        0x726f0000 -> :sswitch_2c
        0x72750000 -> :sswitch_2d
        0x73690000 -> :sswitch_8
        0x736b0000 -> :sswitch_2f
        0x736c0000 -> :sswitch_30
        0x73710000 -> :sswitch_3d
        0x73720000 -> :sswitch_2e
        0x73760000 -> :sswitch_32
        0x74610000 -> :sswitch_a
        0x74650000 -> :sswitch_9
        0x74680000 -> :sswitch_33
        0x74720000 -> :sswitch_34
        0x756b0000 -> :sswitch_35
        0x75720000 -> :sswitch_36
        0x76690000 -> :sswitch_37
        0x7a68434e -> :sswitch_f
        0x7a68484b -> :sswitch_e
        0x7a685457 -> :sswitch_10
    .end sparse-switch
.end method

.method public getMultiTapSequence(I)Ljava/lang/StringBuilder;
    .locals 13
    .param p1    # I

    const/4 v8, 0x1

    const/16 v9, 0x20

    new-array v3, v9, [S

    const/4 v9, 0x1

    new-array v6, v9, [S

    const/4 v9, 0x1

    new-array v0, v9, [B

    const/4 v9, 0x1

    new-array v5, v9, [S

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->lookupChar(I)I

    move-result v7

    const/16 v9, 0x80

    if-ne v7, v9, :cond_1

    :cond_0
    :goto_0
    return-object v4

    :cond_1
    iget-object v9, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->setInputMode(Z)V

    :cond_2
    const/4 v9, 0x1

    iget v10, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mXt9Version:I

    if-ne v9, v10, :cond_3

    int-to-short v9, v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const/4 v12, 0x0

    invoke-static {v9, v10, v11, v12, v5}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KDB_ProcessKey(SJB[S)S

    move-result v8

    :goto_1
    if-eqz v8, :cond_4

    const-string v9, "SamsungIME"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ET9KDB_ProcessKey : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    int-to-short v9, v7

    const/4 v10, 0x0

    invoke-static {v9, v10, v5}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KDB_ProcessKey(SB[S)S

    move-result v8

    goto :goto_1

    :cond_4
    const/16 v9, 0x20

    invoke-static {v3, v9, v6, v0}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KDB_GetMultiTapSequence([SS[S[B)S

    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9ClearOneSymb()S

    if-eqz v2, :cond_5

    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->setInputMode(Z)V

    :cond_5
    const/4 v1, 0x0

    :goto_2
    const/4 v9, 0x0

    aget-short v9, v6, v9

    if-ge v1, v9, :cond_0

    array-length v9, v3

    if-ge v1, v9, :cond_0

    aget-short v9, v3, v1

    const/16 v10, 0x30

    if-lt v9, v10, :cond_6

    aget-short v9, v3, v1

    const/16 v10, 0x39

    if-le v9, v10, :cond_7

    :cond_6
    aget-short v9, v3, v1

    int-to-char v9, v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public getMyWordsList(Ljava/util/ArrayList;Z)I
    .locals 8
    .param p2    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;Z)I"
        }
    .end annotation

    const/16 v7, 0x40

    const/16 v5, 0x20

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->initRUDB()S

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->initKRUDB()S

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KSysInit()S

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->initKRUDB()S

    :cond_0
    const/4 v2, 0x0

    if-eqz p2, :cond_5

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mCount:[S

    aput-short v6, v4, v6

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mCount:[S

    invoke-static {v4}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KUDBGetWordCount([S)S

    move-result v2

    if-ne v2, v5, :cond_2

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->initKRUDB()S

    move-result v2

    sget-boolean v4, Lcom/diotek/ime/framework/util/Debug;->ERROR:Z

    if-eqz v4, :cond_1

    if-eqz v2, :cond_1

    move v3, v2

    :goto_0
    return v3

    :cond_1
    iget-object v4, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mCount:[S

    aput-short v6, v4, v6

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mCount:[S

    invoke-static {v4}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KUDBGetWordCount([S)S

    move-result v2

    sget-boolean v4, Lcom/diotek/ime/framework/util/Debug;->ERROR:Z

    if-eqz v4, :cond_3

    if-eqz v2, :cond_3

    const-string v4, "SamsungIME"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Xt9Wrapper getMyWordsList ET9KUDBGetWordCount error : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    goto :goto_0

    :cond_2
    sget-boolean v4, Lcom/diotek/ime/framework/util/Debug;->ERROR:Z

    if-eqz v4, :cond_3

    if-eqz v2, :cond_3

    const-string v4, "SamsungIME"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Xt9Wrapper getMyWordsList ET9KUDBGetWordCount error : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_1
    iget-object v4, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mCount:[S

    aget-short v4, v4, v6

    if-ge v0, v4, :cond_a

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mWordBuf:[S

    iget-object v5, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mWordLengthBuf:[S

    invoke-static {v4, v7, v5, v6}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KUDBGetWord([SS[SB)S

    sget-boolean v4, Lcom/diotek/ime/framework/util/Debug;->ERROR:Z

    if-eqz v4, :cond_4

    if-eqz v2, :cond_4

    const-string v4, "SamsungIME"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Xt9Wrapper getMyWordsList ET9KUDBGetWord error : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mWordBuf:[S

    iget-object v5, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mWordLengthBuf:[S

    aget-short v5, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->convertShortArrayToCharSequence([SI)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    iget-object v4, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mCount:[S

    aput-short v6, v4, v6

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mCount:[S

    invoke-static {v4}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWUDBGetWordCount([S)S

    move-result v2

    if-ne v2, v5, :cond_7

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->initRUDB()S

    move-result v2

    sget-boolean v4, Lcom/diotek/ime/framework/util/Debug;->ERROR:Z

    if-eqz v4, :cond_6

    if-eqz v2, :cond_6

    move v3, v2

    goto/16 :goto_0

    :cond_6
    iget-object v4, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mCount:[S

    aput-short v6, v4, v6

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mCount:[S

    invoke-static {v4}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWUDBGetWordCount([S)S

    move-result v2

    sget-boolean v4, Lcom/diotek/ime/framework/util/Debug;->ERROR:Z

    if-eqz v4, :cond_8

    if-eqz v2, :cond_8

    const-string v4, "SamsungIME"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Xt9Wrapper getMyWordsList ET9AWUDBGetWordCount error : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    goto/16 :goto_0

    :cond_7
    sget-boolean v4, Lcom/diotek/ime/framework/util/Debug;->ERROR:Z

    if-eqz v4, :cond_8

    if-eqz v2, :cond_8

    const-string v4, "SamsungIME"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Xt9Wrapper getMyWordsList ET9AWUDBGetWordCount error : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    goto/16 :goto_0

    :cond_8
    const/4 v0, 0x0

    :goto_2
    iget-object v4, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mCount:[S

    aget-short v4, v4, v6

    if-ge v0, v4, :cond_a

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mWordBuf:[S

    iget-object v5, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mWordLengthBuf:[S

    invoke-static {v4, v7, v5, v6}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWUDBGetWord([SS[SB)S

    sget-boolean v4, Lcom/diotek/ime/framework/util/Debug;->ERROR:Z

    if-eqz v4, :cond_9

    if-eqz v2, :cond_9

    const-string v4, "SamsungIME"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Xt9Wrapper getMyWordsList ET9AWUDBGetWord error : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    goto/16 :goto_0

    :cond_9
    iget-object v4, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mWordBuf:[S

    iget-object v5, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mWordLengthBuf:[S

    aget-short v5, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->convertShortArrayToCharSequence([SI)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_a
    move v3, v2

    goto/16 :goto_0
.end method

.method public getPhoneticSpellGroup(Ljava/util/ArrayList;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)I"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9CPGetPrefixCount()B

    move-result v3

    new-instance v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    invoke-direct {v0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;-><init>()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_2

    int-to-short v6, v1

    invoke-static {v6, v0}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9CPGetPrefix(SLcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;)S

    move-result v5

    if-nez v5, :cond_1

    new-instance v4, Ljava/lang/StringBuffer;

    const/16 v6, 0xe0

    invoke-direct {v4, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v2, 0x0

    :goto_1
    iget-byte v6, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    if-ge v2, v6, :cond_0

    iget-object v6, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->pSymbs:[C

    aget-char v6, v6, v2

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    return v6
.end method

.method public getPredictWord(Ljava/lang/CharSequence;Ljava/util/ArrayList;)I
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)I"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->updateSelectList()I

    invoke-virtual {p0, p2}, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->getSuggestion(Ljava/util/ArrayList;)I

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getSuggestion(Ljava/util/ArrayList;Z)I
    .locals 7
    .param p2    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;Z)I"
        }
    .end annotation

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v2

    if-nez v2, :cond_1

    iget-short v4, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    const/16 v5, 0xe1

    if-eq v4, v5, :cond_1

    :cond_0
    return v6

    :cond_1
    if-nez p1, :cond_2

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_2
    iget v3, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mSuggestionCount:I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    invoke-direct {p0, v0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->getInputWords(I)Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v4, Ljava/text/Normalizer$Form;->NFC:Ljava/text/Normalizer$Form;

    invoke-static {v1, v4}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getXt9Version()I
    .locals 9

    iget v6, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mXt9Version:I

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mXt9Version:I

    :goto_0
    return v6

    :cond_0
    const/16 v3, 0x64

    new-array v1, v3, [S

    new-array v2, v3, [S

    const-string v5, ""

    invoke-virtual {p0, v1, v3, v2}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->getXt9Version([SS[S)S

    move-result v4

    if-eqz v4, :cond_1

    const-string v6, "SamsungIME"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getXt9Version : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const/16 v6, 0xc

    if-ge v0, v6, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-short v7, v1, v0

    int-to-char v7, v7

    invoke-static {v7}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const-string v6, "XT9 V09.08"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v6, 0x3

    goto :goto_0

    :cond_3
    const-string v6, "XT9 V09.06"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v6, 0x2

    goto :goto_0

    :cond_4
    const-string v6, "XT9 V09"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v6, 0x1

    goto :goto_0

    :cond_5
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public getXt9Version([SS[S)S
    .locals 1
    .param p1    # [S
    .param p2    # S
    .param p3    # [S

    invoke-static {p1, p2, p3}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9GetCodeVersion([SS[S)S

    move-result v0

    return v0
.end method

.method public init()I
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v5, 0x1

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    if-nez v2, :cond_0

    invoke-static {}, Lcom/diotek/ime/framework/repository/RepositoryImpl;->getInstance()Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v2

    iput-object v2, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    :cond_0
    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->getXt9Version()I

    move-result v2

    iput v2, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mXt9Version:I

    const-string v2, "SamsungIME"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "xt9 init mXt9Version : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mXt9Version:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mXt9Version:I

    if-ne v2, v0, :cond_1

    const-string v2, "SamsungIME"

    const-string v3, "getXt9Version error"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v3, "XT9_VERSION"

    iget v4, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mXt9Version:I

    invoke-interface {v2, v3, v4}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;I)V

    iget v2, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mXt9Version:I

    if-le v5, v2, :cond_2

    :goto_0
    return v0

    :cond_2
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0, p0}, Lcom/diotek/ime/framework/common/InputManager;->setXt9DBController(Lcom/diotek/ime/framework/engine/xt9/Xt9DBController;)V

    :cond_3
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v2, "INPUT_LANGUAGE"

    const v3, 0x656e4742

    invoke-interface {v0, v2, v3}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mImeInputLanguage:I

    iget v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mImeInputLanguage:I

    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->getLanguageIDForEngine(I)I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    iget v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mXt9Version:I

    if-ne v5, v0, :cond_7

    iget-boolean v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInitialized:Z

    if-nez v0, :cond_6

    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWDLMGetDataSize()I

    move-result v0

    sput v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->DLM_SIZE:I

    sget-object v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mDLMBuffer:[B

    if-nez v0, :cond_4

    sget v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->DLM_SIZE:I

    new-array v0, v0, [B

    sput-object v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mDLMBuffer:[B

    :cond_4
    invoke-direct {p0, v5}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->readDBdataFromFile(B)Z

    invoke-direct {p0, v1}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->readDBdataFromFile(B)Z

    invoke-direct {p0, v6}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->readDBdataFromFile(B)Z

    invoke-direct {p0, v7}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->readDBdataFromFile(B)Z

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->readDBdataFromFile(B)Z

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->initLinguistic()V

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->initKDB()V

    iput-boolean v5, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInitialized:Z

    :goto_1
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9SetCapsGesture()S

    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9SetShiftGesture()S

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->initSubLinguistic()V

    goto :goto_1

    :cond_7
    iget v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mXt9Version:I

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInitialized:Z

    if-nez v0, :cond_8

    invoke-direct {p0, v5}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->readDBdataFromFile(B)Z

    invoke-direct {p0, v1}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->readDBdataFromFile(B)Z

    invoke-direct {p0, v6}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->readDBdataFromFile(B)Z

    invoke-direct {p0, v7}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->readDBdataFromFile(B)Z

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->initLinguistic()V

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->initKDB()V

    iput-boolean v5, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInitialized:Z

    :goto_2
    move v0, v1

    goto :goto_0

    :cond_8
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->initSubLinguistic()V

    goto :goto_2
.end method

.method public initDLM()S
    .locals 6

    const/4 v5, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v3, "XT9_DLM_ENABLE"

    invoke-interface {v2, v3, v5}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v2, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mDLMBuffer:[B

    sget v3, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->DLM_SIZE:I

    invoke-static {v2, v3}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWDLMInit([BI)S

    move-result v1

    if-eqz v1, :cond_0

    const-string v2, "SamsungIME"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ET9AWDLMInit : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    invoke-direct {p0, v5}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->setUDBDelayedReorder(Z)S

    return v1

    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWDLMInit([BI)S

    move-result v1

    if-eqz v1, :cond_0

    const-string v2, "SamsungIME"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ET9AWDLMInit : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public inputKey(I)I
    .locals 12
    .param p1    # I

    const/16 v11, 0xe1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v5, 0x0

    iget-object v8, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v8}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isChineseStrokeModeOn()Z

    move-result v3

    const/4 v8, -0x5

    if-ne p1, v8, :cond_5

    iget-short v8, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    if-ne v8, v11, :cond_2

    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9CPUnselectPhrase()S

    move-result v5

    const/16 v8, 0x18

    if-ne v5, v8, :cond_1

    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9ClearOneSymb()S

    move-result v5

    sget-boolean v8, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v8, :cond_0

    if-eqz v5, :cond_0

    const-string v8, "SamsungIME"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ET9ClearOneSymb : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9CPClearContext()S

    move-result v5

    :cond_1
    :goto_0
    iget v8, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mXt9Version:I

    if-eqz v8, :cond_7

    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9InputSequenceCount()S

    move-result v8

    if-ge v8, v7, :cond_7

    iget-short v7, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    if-eq v7, v11, :cond_7

    :goto_1
    return v6

    :cond_2
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9ClearOneSymb()S

    move-result v5

    const/4 v8, 0x6

    if-ne v5, v8, :cond_3

    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWBreakContext()S

    move-result v5

    goto :goto_1

    :cond_3
    sget-boolean v8, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v8, :cond_4

    if-eqz v5, :cond_4

    const-string v8, "SamsungIME"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ET9ClearOneSymb : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWBreakContext()S

    move-result v5

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isPhoneNumberInputClass()Z

    move-result v8

    if-nez v8, :cond_6

    invoke-static {}, Lcom/diotek/ime/framework/repository/InputStatus;->isInputNumberOnComposing()Z

    move-result v8

    if-eqz v8, :cond_8

    :cond_6
    move v0, v7

    :goto_2
    iget-object v8, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v8}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isKorPasswordMode()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->explicitSymbol(I)S

    :cond_7
    :goto_3
    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->updateSelectList()I

    move-result v6

    goto :goto_1

    :cond_8
    move v0, v6

    goto :goto_2

    :cond_9
    iget-short v8, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    if-ne v8, v11, :cond_a

    if-eqz v3, :cond_a

    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->lookupChar(I)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->explicitSymbol(I)S

    goto :goto_3

    :cond_a
    iget-object v8, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v8}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v8

    if-eq v8, v7, :cond_b

    iget-object v8, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v8}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v8

    if-eqz v8, :cond_d

    :cond_b
    iget-object v8, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v8}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v8

    if-eq v8, v7, :cond_c

    if-eqz v0, :cond_d

    :cond_c
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->explicitSymbol(I)S

    goto :goto_3

    :cond_d
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->processKey(I)S

    move-result v5

    if-eqz v5, :cond_7

    new-array v2, v7, [C

    iget-object v8, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v1

    iget-short v8, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    const/16 v9, 0x12

    if-ne v8, v9, :cond_e

    if-eqz v1, :cond_e

    int-to-char v8, p1

    aput-char v8, v2, v6

    invoke-static {v2, v7}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KCompatibilityJamoToJamo([CC)S

    move-result v5

    if-nez v5, :cond_e

    aget-char p1, v2, v6

    :cond_e
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->explicitSymbol(I)S

    goto :goto_3
.end method

.method public isAutoAcceptBeforeTrace([Landroid/graphics/PointF;I[Z)Z
    .locals 8
    .param p1    # [Landroid/graphics/PointF;
    .param p2    # I
    .param p3    # [Z

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget v4, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mXt9Version:I

    if-ne v3, v4, :cond_5

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    array-length v2, p1

    new-array v1, v2, [Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9TracePoint;

    const/4 v0, 0x0

    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_4

    if-eqz p1, :cond_2

    aget-object v2, p1, v0

    if-nez v2, :cond_3

    :cond_2
    aput-object v7, v1, v0

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    new-instance v2, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9TracePoint;

    aget-object v3, p1, v0

    iget v3, v3, Landroid/graphics/PointF;->x:F

    float-to-long v3, v3

    aget-object v5, p1, v0

    iget v5, v5, Landroid/graphics/PointF;->y:F

    float-to-long v5, v5

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9TracePoint;-><init>(JJ)V

    aput-object v2, v1, v0

    goto :goto_2

    :cond_4
    invoke-static {v1, p2, p3}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KDB_ShouldAutoAcceptBeforeTrace([Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9TracePoint;I[Z)Z

    move-result v2

    goto :goto_0

    :cond_5
    iget v3, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mXt9Version:I

    if-nez v3, :cond_0

    if-eqz p1, :cond_0

    array-length v2, p1

    new-array v1, v2, [Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9TracePoint;

    const/4 v0, 0x0

    :goto_3
    array-length v2, p1

    if-ge v0, v2, :cond_8

    if-eqz p1, :cond_6

    aget-object v2, p1, v0

    if-nez v2, :cond_7

    :cond_6
    aput-object v7, v1, v0

    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    new-instance v2, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9TracePoint;

    aget-object v3, p1, v0

    iget v3, v3, Landroid/graphics/PointF;->x:F

    float-to-long v3, v3

    aget-object v5, p1, v0

    iget v5, v5, Landroid/graphics/PointF;->y:F

    float-to-long v5, v5

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9TracePoint;-><init>(JJ)V

    aput-object v2, v1, v0

    goto :goto_4

    :cond_8
    invoke-static {v1, p2, p3}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KDB_IsAutoAcceptBeforeTrace([Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9TracePoint;I[Z)Z

    move-result v2

    goto :goto_0
.end method

.method public declared-synchronized isContainInLanguageDB(Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;

    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return v0
.end method

.method public isExistInAutoSubstitutions([SLjava/lang/StringBuilder;)I
    .locals 7
    .param p1    # [S
    .param p2    # Ljava/lang/StringBuilder;

    const/16 v6, 0x40

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->setAutoSubstitution(Z)V

    const/4 v0, 0x0

    new-array v2, v6, [S

    const/4 v4, 0x2

    new-array v3, v4, [S

    array-length v4, p1

    int-to-short v4, v4

    invoke-static {p1, v4, v2, v6, v3}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWASDBFindEntry([SS[SS[S)S

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    aget-short v4, v3, v5

    invoke-virtual {p0, v2, v4}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->convertShortArrayToCharSequence([SI)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-nez v4, :cond_1

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->initASDB()S

    sget-boolean v4, Lcom/diotek/ime/framework/util/Debug;->ERROR:Z

    if-eqz v4, :cond_0

    if-eqz v0, :cond_0

    move v1, v0

    :goto_0
    return v1

    :cond_0
    array-length v4, p1

    int-to-short v4, v4

    invoke-static {p1, v4, v2, v6, v3}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWASDBFindEntry([SS[SS[S)S

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    aget-short v4, v3, v5

    invoke-virtual {p0, v2, v4}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->convertShortArrayToCharSequence([SI)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_1
    move v1, v0

    goto :goto_0
.end method

.method public isExistInMyWords([SZ)I
    .locals 3
    .param p1    # [S
    .param p2    # Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget v2, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mXt9Version:I

    if-ne v1, v2, :cond_1

    array-length v1, p1

    int-to-short v1, v1

    invoke-static {p1, v1}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWUDBFindWord([SS)S

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mXt9Version:I

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->initRUDB()S

    if-eqz p2, :cond_2

    array-length v1, p1

    int-to-short v1, v1

    invoke-static {p1, v1}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KUDBFindWord([SS)S

    move-result v0

    goto :goto_0

    :cond_2
    array-length v1, p1

    int-to-short v1, v1

    invoke-static {p1, v1}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWUDBFindWord([SS)S

    move-result v0

    goto :goto_0
.end method

.method public isNumericCharacter(I)Z
    .locals 1
    .param p1    # I

    const/16 v0, 0x30

    if-lt p1, v0, :cond_0

    const/16 v0, 0x39

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSentenceTermPunct(I)Z
    .locals 1
    .param p1    # I

    const/4 v0, 0x0

    return v0
.end method

.method public isSentenceTermPunct(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p1    # Ljava/lang/CharSequence;

    const/4 v0, 0x0

    return v0
.end method

.method public isTextCharacter(I)Z
    .locals 10
    .param p1    # I

    const/16 v9, 0x39

    const/4 v4, 0x0

    const v8, 0x7a68434e

    const/16 v7, 0x30

    const/4 v3, 0x1

    iget-object v5, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v1

    iget-object v5, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    iget-object v5, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isChineseStrokeModeOn()Z

    move-result v2

    if-eq v1, v3, :cond_0

    const/4 v5, 0x2

    if-ne v1, v5, :cond_2

    :cond_0
    move v3, v4

    :cond_1
    :goto_0
    return v3

    :cond_2
    if-eqz v0, :cond_3

    const/16 v5, 0x8

    if-eq v0, v5, :cond_3

    const/4 v5, 0x7

    if-ne v0, v5, :cond_8

    :cond_3
    if-nez v1, :cond_8

    iget v5, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mImeInputLanguage:I

    const/high16 v6, 0x74680000

    if-ne v5, v6, :cond_4

    const/16 v5, 0x7b

    if-eq p1, v5, :cond_1

    :cond_4
    iget v5, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mImeInputLanguage:I

    const/high16 v6, 0x76690000

    if-ne v5, v6, :cond_5

    invoke-static {p1}, Lcom/diotek/ime/framework/common/InputSequenceCheck;->isVietameseTone(I)Z

    move-result v5

    if-nez v5, :cond_1

    :cond_5
    iget v5, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mImeInputLanguage:I

    if-ne v5, v8, :cond_7

    const/16 v5, 0x61

    if-lt p1, v5, :cond_6

    const/16 v5, 0x7a

    if-le p1, v5, :cond_1

    :cond_6
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->getSyllableDelimiter()I

    move-result v5

    if-eq p1, v5, :cond_1

    :cond_7
    iget v5, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mImeInputLanguage:I

    const/high16 v6, 0x6c6f0000

    if-ne v5, v6, :cond_8

    invoke-static {p1}, Lcom/diotek/ime/framework/common/InputSequenceCheck;->isLaoUnicode(I)Z

    move-result v5

    if-nez v5, :cond_1

    :cond_8
    iget v5, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mImeInputLanguage:I

    const/high16 v6, 0x6b6d0000

    if-ne v5, v6, :cond_9

    invoke-static {p1}, Lcom/diotek/ime/framework/util/Utils;->isKhmerChar(I)Z

    move-result v5

    if-nez v5, :cond_1

    :cond_9
    iget v5, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mImeInputLanguage:I

    const/high16 v6, 0x6b610000

    if-ne v5, v6, :cond_a

    if-eq p1, v3, :cond_1

    :cond_a
    if-eq v0, v3, :cond_b

    iget-object v5, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v5

    if-eqz v5, :cond_12

    :cond_b
    if-nez v1, :cond_12

    iget v5, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mImeInputLanguage:I

    if-ne v5, v8, :cond_d

    if-eqz v2, :cond_d

    const/16 v5, 0x31

    if-lt p1, v5, :cond_c

    const/16 v5, 0x35

    if-le p1, v5, :cond_1

    :cond_c
    const/16 v5, 0x2a

    if-eq p1, v5, :cond_1

    const/16 v5, 0x3a

    if-ne p1, v5, :cond_f

    move v3, v4

    goto :goto_0

    :cond_d
    iget v4, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mImeInputLanguage:I

    if-ne v4, v8, :cond_f

    const/16 v4, 0x32

    if-lt p1, v4, :cond_e

    if-le p1, v9, :cond_1

    :cond_e
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->getSyllableDelimiter()I

    move-result v4

    if-eq p1, v4, :cond_1

    :cond_f
    if-le p1, v7, :cond_10

    if-le p1, v9, :cond_1

    :cond_10
    iget v4, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mImeInputLanguage:I

    const/high16 v5, 0x74680000

    if-ne v4, v5, :cond_11

    if-eq p1, v7, :cond_1

    const/16 v4, -0x3a

    if-eq p1, v4, :cond_1

    :cond_11
    iget v4, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mImeInputLanguage:I

    const/high16 v5, 0x76690000

    if-ne v4, v5, :cond_12

    if-eq p1, v7, :cond_1

    :cond_12
    invoke-static {p1}, Ljava/lang/Character;->isLetter(I)Z

    move-result v3

    goto/16 :goto_0
.end method

.method public processTrace([Landroid/graphics/PointF;I[JBZ)S
    .locals 11
    .param p1    # [Landroid/graphics/PointF;
    .param p2    # I
    .param p3    # [J
    .param p4    # B
    .param p5    # Z

    const/4 v4, 0x1

    iget v5, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mXt9Version:I

    if-ne v4, v5, :cond_7

    if-nez p1, :cond_1

    const/16 v2, 0x1b

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v4, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v5, "XT9_GESTURE_GAP"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mGap:I

    array-length v4, p1

    new-array v3, v4, [Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9TracePoint;

    array-length v4, p1

    new-array v1, v4, [J

    const/4 v0, 0x0

    :goto_1
    array-length v4, p1

    if-ge v0, v4, :cond_4

    if-eqz p1, :cond_2

    aget-object v4, p1, v0

    if-nez v4, :cond_3

    :cond_2
    const/4 v4, 0x0

    aput-object v4, v3, v0

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    new-instance v4, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9TracePoint;

    aget-object v5, p1, v0

    iget v5, v5, Landroid/graphics/PointF;->x:F

    float-to-long v5, v5

    aget-object v7, p1, v0

    iget v7, v7, Landroid/graphics/PointF;->y:F

    float-to-long v7, v7

    const-wide/16 v9, 0xbb8

    add-long/2addr v7, v9

    iget v9, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mGap:I

    int-to-long v9, v9

    sub-long/2addr v7, v9

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9TracePoint;-><init>(JJ)V

    aput-object v4, v3, v0

    const-wide/16 v4, 0x0

    aput-wide v4, v1, v0

    goto :goto_2

    :cond_4
    invoke-static {v3, p2, v1, p4}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KDB_ProcessTrace([Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9TracePoint;I[JB)S

    move-result v2

    const/4 v4, 0x5

    if-ne v2, v4, :cond_5

    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->clearContext()I

    goto :goto_0

    :cond_5
    sget-boolean v4, Lcom/diotek/ime/framework/util/Debug;->ERROR:Z

    if-eqz v4, :cond_6

    if-eqz v2, :cond_6

    const-string v4, "SamsungIME"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Xt9Wrapper processTrace ET9KDB_ProcessTrace error : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->updateSelectList()I

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->clearContext()I

    goto :goto_0

    :cond_7
    iget v4, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mXt9Version:I

    if-nez v4, :cond_e

    if-nez p1, :cond_8

    const/16 v2, 0x1b

    goto :goto_0

    :cond_8
    array-length v4, p1

    new-array v3, v4, [Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9TracePoint;

    const/4 v0, 0x0

    :goto_3
    array-length v4, p1

    if-ge v0, v4, :cond_b

    if-eqz p1, :cond_9

    aget-object v4, p1, v0

    if-nez v4, :cond_a

    :cond_9
    const/4 v4, 0x0

    aput-object v4, v3, v0

    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_a
    new-instance v4, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9TracePoint;

    aget-object v5, p1, v0

    iget v5, v5, Landroid/graphics/PointF;->x:F

    float-to-long v5, v5

    aget-object v7, p1, v0

    iget v7, v7, Landroid/graphics/PointF;->y:F

    float-to-long v7, v7

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9TracePoint;-><init>(JJ)V

    aput-object v4, v3, v0

    goto :goto_4

    :cond_b
    invoke-static {v3, p2, p4}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KDB_ProcessTrace([Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9TracePoint;IB)S

    move-result v2

    const/4 v4, 0x5

    if-ne v2, v4, :cond_c

    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->clearContext()I

    goto/16 :goto_0

    :cond_c
    sget-boolean v4, Lcom/diotek/ime/framework/util/Debug;->ERROR:Z

    if-eqz v4, :cond_d

    if-eqz v2, :cond_d

    const-string v4, "SamsungIME"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Xt9Wrapper processTrace ET9KDB_ProcessTrace error : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_d
    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->updateSelectList()I

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->clearContext()I

    goto/16 :goto_0

    :cond_e
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method public processWhenPickSuggestionManually(I)I
    .locals 4
    .param p1    # I

    const/4 v0, 0x0

    iget-short v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    const/16 v2, 0x12

    if-ne v1, v2, :cond_1

    int-to-byte v1, p1

    invoke-static {v1}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KSelectHangul(B)S

    move-result v0

    :goto_0
    sget-boolean v1, Lcom/diotek/ime/framework/util/Debug;->ERROR:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processWhenPickSuggestionManually : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0

    :cond_1
    int-to-byte v1, p1

    invoke-static {v1}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWSelLstSelWord(B)S

    move-result v0

    goto :goto_0
.end method

.method public reflashSelectList()I
    .locals 1

    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9ClearAllSymbs()S

    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->updateSelectList()I

    move-result v0

    return v0
.end method

.method public release()V
    .locals 5

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mXt9Version:I

    if-ne v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->writeDBdataToFile(B)V

    invoke-virtual {p0, v2}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->writeDBdataToFile(B)V

    invoke-virtual {p0, v3}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->writeDBdataToFile(B)V

    invoke-virtual {p0, v4}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->writeDBdataToFile(B)V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->writeDBdataToFile(B)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mXt9Version:I

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->writeDBdataToFile(B)V

    invoke-virtual {p0, v2}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->writeDBdataToFile(B)V

    invoke-virtual {p0, v3}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->writeDBdataToFile(B)V

    invoke-virtual {p0, v4}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->writeDBdataToFile(B)V

    goto :goto_0
.end method

.method public resetDLMData()S
    .locals 1

    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWDLMReset()S

    move-result v0

    return v0
.end method

.method public setActiveWordStatusChangable(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mIsActiveWordStatusChangable:Z

    return-void
.end method

.method public setChineseFuzzyPinyin()V
    .locals 11

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-short v8, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    const/16 v9, 0xe1

    if-ne v8, v9, :cond_3

    sget-object v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype;->ET9_MOHUPAIR_STRING:[Ljava/lang/String;

    array-length v3, v0

    const/4 v2, 0x0

    move v6, v5

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    iget-object v8, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const/4 v9, 0x0

    invoke-interface {v8, v1, v9}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_0

    sget-object v8, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype;->ET9_MOHU_PAIR_MASK:[S

    add-int/lit8 v5, v6, 0x1

    aget-short v8, v8, v6

    or-int/2addr v8, v4

    int-to-short v4, v8

    :goto_1
    add-int/lit8 v2, v2, 0x1

    move v6, v5

    goto :goto_0

    :cond_0
    sget-object v8, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype;->ET9_MOHU_PAIR_MASK:[S

    add-int/lit8 v5, v6, 0x1

    aget-short v8, v8, v6

    xor-int/lit8 v8, v8, -0x1

    and-int/2addr v8, v4

    int-to-short v4, v8

    goto :goto_1

    :cond_1
    invoke-static {v4}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9CPSetMohuPairs(S)S

    move-result v7

    if-eqz v7, :cond_2

    const-string v8, "SamsungIME"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ET9CPSetMohuPairs : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move v5, v6

    :cond_3
    return-void
.end method

.method public setChinesePhoneticIndex(I)V
    .locals 4
    .param p1    # I

    int-to-byte v1, p1

    invoke-static {v1}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9CPSetActivePrefix(B)S

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ET9CPSetActivePrefix : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->updateSelectList()I

    return-void
.end method

.method public setContextAwareUniqueID(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;

    return-void
.end method

.method public setHwrPanelRect(IIII)V
    .locals 0
    .param p1    # I
    .param p2    # I
    .param p3    # I
    .param p4    # I

    return-void
.end method

.method public setKeyboardOffset(II)V
    .locals 2
    .param p1    # I
    .param p2    # I

    const/4 v0, 0x1

    iget v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mXt9Version:I

    if-ne v0, v1, :cond_1

    int-to-short v0, p1

    int-to-short v1, p2

    invoke-static {v0, v1}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KDB_SetKeyboardOffset(SS)S

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mXt9Version:I

    if-nez v0, :cond_0

    goto :goto_0
.end method

.method public setKeyboardSize(II)V
    .locals 2
    .param p1    # I
    .param p2    # I

    int-to-short v0, p1

    int-to-short v1, p2

    invoke-static {v0, v1}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KDB_SetKeyboardSize(SS)S

    const/4 v0, 0x0

    const/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->setKeyboardOffset(II)V

    return-void
.end method

.method public setOptionsByState()I
    .locals 9

    const v8, 0x656e4742

    const/4 v7, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget v3, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mXt9Version:I

    if-ne v4, v3, :cond_b

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v0

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v6, "INPUT_LANGUAGE"

    invoke-interface {v3, v6, v8}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mImeInputLanguage:I

    iget v3, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mImeInputLanguage:I

    invoke-direct {p0, v3}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->setInputLanguage(I)S

    invoke-direct {p0, v0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->setInputMode(Z)V

    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v6, "SETTINGS_DEFAULT_NEXTWORDPREDICTION"

    invoke-interface {v3, v6, v5}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_4

    move v3, v4

    :goto_0
    invoke-direct {p0, v3}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->setNextWordPrediction(Z)V

    if-eqz v0, :cond_5

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v6, "SETTINGS_DEFAULT_AUTOAPPEND"

    invoke-interface {v3, v6, v5}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_5

    move v3, v4

    :goto_1
    invoke-direct {p0, v3}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->setAutoAppend(Z)V

    if-eqz v0, :cond_6

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v6, "SETTINGS_DEFAULT_AUTOSUBSTITUTION"

    invoke-interface {v3, v6, v5}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_6

    move v3, v4

    :goto_2
    invoke-direct {p0, v3}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->setAutoSubstitution(Z)V

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v6, "SETTINGS_DEFAULT_WORDCOMPLETION"

    invoke-interface {v3, v6, v4}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v0, :cond_7

    if-eqz v1, :cond_7

    move v3, v4

    :goto_3
    invoke-direct {p0, v3}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->setWordCompletion(Z)V

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v6, "SETTINGS_DEFAULT_WORDCOMPLETIONPOINT"

    invoke-interface {v3, v6, v7}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v3

    int-to-short v3, v3

    invoke-direct {p0, v3}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->setWordCompletionPoint(S)V

    :cond_0
    if-eqz v0, :cond_8

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v6, "SETTINGS_DEFAULT_REGIONALCORRECTION"

    invoke-interface {v3, v6, v5}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_8

    move v3, v4

    :goto_4
    invoke-direct {p0, v3}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->setRegionalCorrectionOn(Z)V

    if-eqz v0, :cond_9

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v6, "SETTINGS_DEFAULT_SPELLCORRECTION"

    invoke-interface {v3, v6, v4}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_9

    :cond_1
    :goto_5
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWSetSpaceSegmentation()S

    move-result v2

    if-eqz v2, :cond_2

    const-string v3, "SamsungIME"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ET9AWSetSpaceSegmentation : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->initDLM()S

    :cond_3
    :goto_6
    return v5

    :cond_4
    move v3, v5

    goto/16 :goto_0

    :cond_5
    move v3, v5

    goto :goto_1

    :cond_6
    move v3, v5

    goto :goto_2

    :cond_7
    move v3, v5

    goto :goto_3

    :cond_8
    move v3, v5

    goto :goto_4

    :cond_9
    iget v3, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mXt9Version:I

    if-nez v3, :cond_1

    invoke-static {v5, v5}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWSetSpellCorrectionMode(BZ)S

    move-result v2

    if-eqz v2, :cond_a

    const-string v3, "SamsungIME"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ET9KDB_Validate : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    invoke-static {v5}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWSetSelectionListMode(B)S

    move-result v2

    if-eqz v2, :cond_1

    const-string v3, "SamsungIME"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ET9AWSetSelectionListMode : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_b
    iget v3, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mXt9Version:I

    if-nez v3, :cond_3

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v0

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v6, "INPUT_LANGUAGE"

    invoke-interface {v3, v6, v8}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mImeInputLanguage:I

    iget v3, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mImeInputLanguage:I

    invoke-direct {p0, v3}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->setInputLanguage(I)S

    invoke-direct {p0, v0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->setInputMode(Z)V

    if-eqz v0, :cond_e

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v6, "SETTINGS_DEFAULT_NEXTWORDPREDICTION"

    invoke-interface {v3, v6, v5}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_e

    move v3, v4

    :goto_7
    invoke-direct {p0, v3}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->setNextWordPrediction(Z)V

    if-eqz v0, :cond_f

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v6, "SETTINGS_DEFAULT_AUTOAPPEND"

    invoke-interface {v3, v6, v5}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_f

    move v3, v4

    :goto_8
    invoke-direct {p0, v3}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->setAutoAppend(Z)V

    if-eqz v0, :cond_10

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v6, "SETTINGS_DEFAULT_AUTOSUBSTITUTION"

    invoke-interface {v3, v6, v5}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_10

    move v3, v4

    :goto_9
    invoke-direct {p0, v3}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->setAutoSubstitution(Z)V

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v6, "SETTINGS_DEFAULT_WORDCOMPLETION"

    invoke-interface {v3, v6, v4}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v0, :cond_11

    if-eqz v1, :cond_11

    move v3, v4

    :goto_a
    invoke-direct {p0, v3}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->setWordCompletion(Z)V

    if-eqz v0, :cond_c

    if-eqz v1, :cond_c

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v6, "SETTINGS_DEFAULT_WORDCOMPLETIONPOINT"

    invoke-interface {v3, v6, v7}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v3

    int-to-short v3, v3

    invoke-direct {p0, v3}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->setWordCompletionPoint(S)V

    :cond_c
    if-eqz v0, :cond_12

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v6, "SETTINGS_DEFAULT_REGIONALCORRECTION"

    invoke-interface {v3, v6, v5}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_12

    move v3, v4

    :goto_b
    invoke-direct {p0, v3}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->setRegionalCorrectionOn(Z)V

    if-eqz v0, :cond_13

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v6, "SETTINGS_DEFAULT_SPELLCORRECTION"

    invoke-interface {v3, v6, v4}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_13

    :cond_d
    :goto_c
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->initCDB()S

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->initRUDB()S

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->initKRUDB()S

    goto/16 :goto_6

    :cond_e
    move v3, v5

    goto :goto_7

    :cond_f
    move v3, v5

    goto :goto_8

    :cond_10
    move v3, v5

    goto :goto_9

    :cond_11
    move v3, v5

    goto :goto_a

    :cond_12
    move v3, v5

    goto :goto_b

    :cond_13
    invoke-static {v5, v5}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWSysSetSpellCorrectionMode(BZ)S

    move-result v2

    if-eqz v2, :cond_14

    const-string v3, "SamsungIME"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ET9KDB_Validate : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    invoke-static {v5}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWSysSetSelectionListMode(B)S

    move-result v2

    if-eqz v2, :cond_d

    const-string v3, "SamsungIME"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ET9AWSysSetSelectionListMode : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c
.end method

.method public updateAcuteAccentState(Z)V
    .locals 4
    .param p1    # Z

    const/4 v3, 0x0

    iget v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mImeInputLanguage:I

    const/high16 v2, 0x656c0000

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mImeInputLanguage:I

    const/high16 v2, 0x6c760000

    if-ne v1, v2, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    :cond_1
    if-eqz p1, :cond_3

    const/4 v1, 0x1

    invoke-static {v1, v3}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KDB_SetPageNum(SS)S

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-static {v3, v3}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KDB_SetPageNum(SS)S

    goto :goto_0
.end method

.method public updateEngine()I
    .locals 3

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "INPUT_LANGUAGE"

    const v2, 0x656e4742

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mImeInputLanguage:I

    iget v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mImeInputLanguage:I

    invoke-direct {p0, v0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->setInputLanguage(I)S

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->initSubLinguistic()V

    const/4 v0, 0x0

    return v0
.end method

.method public updateSelectList()I
    .locals 19

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mIsRecapture:Z

    if-nez v14, :cond_0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mCacheRecapture:Ljava/lang/String;

    :cond_0
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget v15, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mXt9Version:I

    if-ne v14, v15, :cond_f

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v14}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isChineseStrokeModeOn()Z

    move-result v11

    const/4 v14, 0x1

    new-array v4, v14, [B

    const/4 v14, 0x1

    new-array v2, v14, [B

    const/4 v14, 0x1

    new-array v10, v14, [S

    const/4 v12, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v14}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v15, "FIRST_PREDICTIVE_WORD_ACTIVATE"

    const/16 v16, 0x0

    invoke-interface/range {v14 .. v16}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v8

    move-object/from16 v0, p0

    iget-short v14, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    const/16 v15, 0xe1

    if-ne v14, v15, :cond_b

    new-instance v1, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    invoke-direct {v1}, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;-><init>()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mCPSpell:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    invoke-virtual {v14}, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->init()V

    invoke-static {v10}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9CPBuildSelectionList([S)S

    move-result v13

    if-nez v13, :cond_1

    invoke-static {v1}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9CPGetSpell(Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;)S

    move-result v13

    if-eqz v13, :cond_3

    const-string v14, "SamsungIME"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "ET9CPGetSpell : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, -0x1

    :goto_0
    return v12

    :cond_1
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9ClearOneSymb()S

    move-result v13

    sget-boolean v14, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v14, :cond_2

    if-eqz v13, :cond_2

    const-string v14, "SamsungIME"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "ET9ClearOneSymb : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-static {v10}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9CPBuildSelectionList([S)S

    move-result v13

    if-nez v13, :cond_3

    invoke-static {v1}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9CPGetSpell(Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;)S

    move-result v13

    if-eqz v13, :cond_3

    const-string v14, "SamsungIME"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "ET9CPGetSpell : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, -0x1

    goto :goto_0

    :cond_3
    if-nez v13, :cond_a

    iget-byte v14, v1, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    if-lez v14, :cond_a

    new-instance v9, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;

    invoke-direct {v9}, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;-><init>()V

    const/4 v14, 0x1

    new-array v3, v14, [B

    const/4 v14, 0x0

    invoke-static {v9, v14, v3}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9CPGetSelection(Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;[B)S

    move-result v13

    iget-byte v14, v9, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;->bLen:B

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mCPSpell:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-byte v15, v15, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    add-int/2addr v14, v15

    const/16 v15, 0xe0

    if-ge v14, v15, :cond_a

    iget-byte v14, v9, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;->bLen:B

    if-lez v14, :cond_4

    const/4 v6, 0x0

    :goto_1
    iget-byte v14, v9, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;->bLen:B

    if-ge v6, v14, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mCPSpell:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-object v14, v14, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->pSymbs:[C

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mCPSpell:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-byte v0, v15, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    iput-byte v0, v15, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    iget-object v15, v9, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;->pSymbs:[C

    aget-char v15, v15, v6

    aput-char v15, v14, v16

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    const/4 v6, 0x0

    :goto_2
    iget-byte v14, v1, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    if-ge v6, v14, :cond_a

    iget-object v14, v1, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->pSymbs:[C

    aget-char v14, v14, v6

    invoke-direct/range {p0 .. p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->getSyllableDelimiter()I

    move-result v15

    if-ne v14, v15, :cond_6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mCPSpell:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-object v14, v14, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->pSymbs:[C

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mCPSpell:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-byte v0, v15, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    iput-byte v0, v15, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    const/16 v15, 0x27

    aput-char v15, v14, v16

    :cond_5
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_6
    iget-object v14, v1, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->pSymbs:[C

    aget-char v14, v14, v6

    const/16 v15, 0x19

    if-eq v14, v15, :cond_5

    if-eqz v11, :cond_9

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mCPSpell:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-object v15, v14, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->pSymbs:[C

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mCPSpell:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-byte v0, v14, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    iput-byte v0, v14, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->STROKE_CHARSET:[C

    move-object/from16 v17, v0

    iget-object v14, v1, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->pSymbs:[C

    aget-char v14, v14, v6

    const/16 v18, 0x1

    move/from16 v0, v18

    if-lt v14, v0, :cond_7

    iget-object v14, v1, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->pSymbs:[C

    aget-char v14, v14, v6

    const/16 v18, 0x6

    move/from16 v0, v18

    if-le v14, v0, :cond_8

    :cond_7
    const/4 v14, 0x0

    :goto_4
    aget-char v14, v17, v14

    aput-char v14, v15, v16

    goto :goto_3

    :cond_8
    iget-object v14, v1, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->pSymbs:[C

    aget-char v14, v14, v6

    add-int/lit8 v14, v14, -0x1

    goto :goto_4

    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mCPSpell:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-object v14, v14, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->pSymbs:[C

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mCPSpell:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-byte v0, v15, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    iput-byte v0, v15, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    iget-object v15, v1, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->pSymbs:[C

    aget-char v15, v15, v6

    aput-char v15, v14, v16

    goto :goto_3

    :cond_a
    const/4 v5, 0x0

    const/16 v12, 0x1e

    move-object/from16 v0, p0

    iput v12, v0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mSuggestionCount:I

    move-object/from16 v0, p0

    iput v5, v0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mActiveIndex:I

    goto/16 :goto_0

    :cond_b
    move-object/from16 v0, p0

    iget-short v14, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    const/16 v15, 0x12

    if-ne v14, v15, :cond_d

    invoke-static {v4, v2, v10}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KBuildSelectionList([B[B[S)S

    move-result v13

    :goto_5
    const/4 v14, 0x0

    aget-byte v12, v4, v14

    const/4 v14, 0x0

    aget-byte v5, v2, v14

    if-nez v8, :cond_c

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/InputManager;->isEnableAutoCorrection()Z

    move-result v14

    if-nez v14, :cond_e

    :cond_c
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mIsRecapture:Z

    if-nez v14, :cond_e

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mIsActiveWordStatusChangable:Z

    if-nez v14, :cond_e

    const/4 v14, 0x1

    if-eq v7, v14, :cond_e

    move-object/from16 v0, p0

    iget-short v14, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    const/16 v15, 0x1e

    if-eq v14, v15, :cond_e

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mSuggestionCount:I

    move-object/from16 v0, p0

    iput v5, v0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mActiveIndex:I

    goto/16 :goto_0

    :cond_d
    invoke-static {v4, v2, v10}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWSelLstBuild([B[B[S)S

    move-result v13

    goto :goto_5

    :cond_e
    move-object/from16 v0, p0

    iput v12, v0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mSuggestionCount:I

    move-object/from16 v0, p0

    iput v5, v0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mActiveIndex:I

    goto/16 :goto_0

    :cond_f
    move-object/from16 v0, p0

    iget v14, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mXt9Version:I

    if-nez v14, :cond_1e

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v14}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isChineseStrokeModeOn()Z

    move-result v11

    const/4 v14, 0x1

    new-array v4, v14, [B

    const/4 v14, 0x1

    new-array v2, v14, [B

    const/4 v12, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v14}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v15, "FIRST_PREDICTIVE_WORD_ACTIVATE"

    const/16 v16, 0x0

    invoke-interface/range {v14 .. v16}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v8

    move-object/from16 v0, p0

    iget-short v14, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    const/16 v15, 0xe1

    if-ne v14, v15, :cond_1a

    new-instance v1, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    invoke-direct {v1}, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;-><init>()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mCPSpell:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    invoke-virtual {v14}, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->init()V

    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9CPBuildSelectionList()S

    move-result v13

    if-nez v13, :cond_10

    invoke-static {v1}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9CPGetSpell(Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;)S

    move-result v13

    if-eqz v13, :cond_12

    const-string v14, "SamsungIME"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "ET9CPGetSpell : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, -0x1

    goto/16 :goto_0

    :cond_10
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9ClearOneSymb()S

    move-result v13

    sget-boolean v14, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v14, :cond_11

    if-eqz v13, :cond_11

    const-string v14, "SamsungIME"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "ET9ClearOneSymb : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9CPBuildSelectionList()S

    move-result v13

    if-nez v13, :cond_12

    invoke-static {v1}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9CPGetSpell(Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;)S

    move-result v13

    if-eqz v13, :cond_12

    const-string v14, "SamsungIME"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "ET9CPGetSpell : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, -0x1

    goto/16 :goto_0

    :cond_12
    if-nez v13, :cond_19

    iget-byte v14, v1, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    if-lez v14, :cond_19

    new-instance v9, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;

    invoke-direct {v9}, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;-><init>()V

    const/4 v14, 0x1

    new-array v3, v14, [B

    const/4 v14, 0x0

    invoke-static {v9, v14, v3}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9CPGetSelection(Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;[B)S

    move-result v13

    iget-byte v14, v9, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;->bLen:B

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mCPSpell:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-byte v15, v15, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    add-int/2addr v14, v15

    const/16 v15, 0xe0

    if-ge v14, v15, :cond_19

    iget-byte v14, v9, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;->bLen:B

    if-lez v14, :cond_13

    const/4 v6, 0x0

    :goto_6
    iget-byte v14, v9, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;->bLen:B

    if-ge v6, v14, :cond_13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mCPSpell:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-object v14, v14, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->pSymbs:[C

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mCPSpell:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-byte v0, v15, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    iput-byte v0, v15, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    iget-object v15, v9, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;->pSymbs:[C

    aget-char v15, v15, v6

    aput-char v15, v14, v16

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_13
    const/4 v6, 0x0

    :goto_7
    iget-byte v14, v1, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    if-ge v6, v14, :cond_19

    iget-object v14, v1, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->pSymbs:[C

    aget-char v14, v14, v6

    invoke-direct/range {p0 .. p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->getSyllableDelimiter()I

    move-result v15

    if-ne v14, v15, :cond_15

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mCPSpell:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-object v14, v14, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->pSymbs:[C

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mCPSpell:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-byte v0, v15, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    iput-byte v0, v15, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    const/16 v15, 0x27

    aput-char v15, v14, v16

    :cond_14
    :goto_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :cond_15
    iget-object v14, v1, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->pSymbs:[C

    aget-char v14, v14, v6

    const/16 v15, 0x19

    if-eq v14, v15, :cond_14

    if-eqz v11, :cond_18

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mCPSpell:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-object v15, v14, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->pSymbs:[C

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mCPSpell:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-byte v0, v14, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    iput-byte v0, v14, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->STROKE_CHARSET:[C

    move-object/from16 v17, v0

    iget-object v14, v1, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->pSymbs:[C

    aget-char v14, v14, v6

    const/16 v18, 0x1

    move/from16 v0, v18

    if-lt v14, v0, :cond_16

    iget-object v14, v1, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->pSymbs:[C

    aget-char v14, v14, v6

    const/16 v18, 0x6

    move/from16 v0, v18

    if-le v14, v0, :cond_17

    :cond_16
    const/4 v14, 0x0

    :goto_9
    aget-char v14, v17, v14

    aput-char v14, v15, v16

    goto :goto_8

    :cond_17
    iget-object v14, v1, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->pSymbs:[C

    aget-char v14, v14, v6

    add-int/lit8 v14, v14, -0x1

    goto :goto_9

    :cond_18
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mCPSpell:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-object v14, v14, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->pSymbs:[C

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mCPSpell:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-byte v0, v15, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    iput-byte v0, v15, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    iget-object v15, v1, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->pSymbs:[C

    aget-char v15, v15, v6

    aput-char v15, v14, v16

    goto :goto_8

    :cond_19
    const/4 v5, 0x0

    const/16 v12, 0x1e

    move-object/from16 v0, p0

    iput v12, v0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mSuggestionCount:I

    move-object/from16 v0, p0

    iput v5, v0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mActiveIndex:I

    goto/16 :goto_0

    :cond_1a
    move-object/from16 v0, p0

    iget-short v14, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    const/16 v15, 0x12

    if-ne v14, v15, :cond_1c

    invoke-static {v4, v2}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KBuildSelectionList([B[B)S

    move-result v13

    :goto_a
    const/4 v14, 0x0

    aget-byte v12, v4, v14

    const/4 v14, 0x0

    aget-byte v5, v2, v14

    if-nez v8, :cond_1b

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/InputManager;->isEnableAutoCorrection()Z

    move-result v14

    if-nez v14, :cond_1d

    :cond_1b
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mIsRecapture:Z

    if-nez v14, :cond_1d

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mIsActiveWordStatusChangable:Z

    if-nez v14, :cond_1d

    const/4 v14, 0x1

    if-eq v7, v14, :cond_1d

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v14}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v14

    if-nez v14, :cond_1d

    move-object/from16 v0, p0

    iget-short v14, v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    const/16 v15, 0x1e

    if-eq v14, v15, :cond_1d

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mSuggestionCount:I

    move-object/from16 v0, p0

    iput v5, v0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mActiveIndex:I

    goto/16 :goto_0

    :cond_1c
    invoke-static {v4, v2}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWSelLstBuild([B[B)S

    move-result v13

    goto :goto_a

    :cond_1d
    move-object/from16 v0, p0

    iput v12, v0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mSuggestionCount:I

    move-object/from16 v0, p0

    iput v5, v0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mActiveIndex:I

    goto/16 :goto_0

    :cond_1e
    const/4 v12, 0x0

    goto/16 :goto_0
.end method

.method public updateShiftState()V
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v5, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v3

    iget-object v5, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/ShiftStateController;->getCapsLockState()Z

    move-result v1

    iget-object v5, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/ShiftStateController;->getShiftPressedState()Z

    move-result v2

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->invokeTimeOut()V

    iget-object v5, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/ShiftStateController;->getShiftPolicy()I

    move-result v5

    if-ne v5, v7, :cond_1

    iget-object v5, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v5, 0x7

    if-eq v0, v5, :cond_0

    const/16 v5, 0x8

    if-ne v0, v5, :cond_1

    :cond_0
    if-eqz v3, :cond_3

    invoke-static {v7, v6}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KDB_SetPageNum(SS)S

    :cond_1
    :goto_0
    if-eqz v1, :cond_5

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9SetUnShift()S

    move-result v4

    iput-byte v6, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mShiftState:B

    :goto_1
    sget-boolean v5, Lcom/diotek/ime/framework/util/Debug;->ERROR:Z

    if-eqz v5, :cond_2

    if-eqz v4, :cond_2

    const-string v5, "SamsungIME"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateShiftState() : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :cond_3
    invoke-static {v6, v6}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9KDB_SetPageNum(SS)S

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9SetCapsLock()S

    move-result v4

    iput-byte v8, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mShiftState:B

    goto :goto_1

    :cond_5
    if-eqz v3, :cond_7

    if-eqz v2, :cond_6

    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9SetCapsLock()S

    move-result v4

    iput-byte v8, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mShiftState:B

    goto :goto_1

    :cond_6
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9SetShift()S

    move-result v4

    iput-byte v7, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mShiftState:B

    goto :goto_1

    :cond_7
    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9SetUnShift()S

    move-result v4

    iput-byte v6, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mShiftState:B

    goto :goto_1
.end method

.method public wordSelected(ILjava/lang/CharSequence;)I
    .locals 10
    .param p1    # I
    .param p2    # Ljava/lang/CharSequence;

    const/16 v6, 0xe1

    const/16 v9, 0x65

    const/16 v8, 0x64

    const/4 v7, 0x1

    const/4 v4, 0x0

    iget v5, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mXt9Version:I

    if-ne v7, v5, :cond_4

    iget-short v5, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    if-ne v5, v6, :cond_1

    int-to-short v5, p1

    iget-object v6, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mCPSpell:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    invoke-static {v5, v6}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9CPSelectPhrase(SLcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;)S

    move-result v3

    if-ne v3, v8, :cond_2

    invoke-interface {p2, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    int-to-short v5, v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v5, v6, v7, v4, v4}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AddExplicitSymb(SJBB)S

    move-result v3

    :cond_0
    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->updateSelectList()I

    move-result v4

    :cond_1
    :goto_0
    return v4

    :cond_2
    if-ne v3, v9, :cond_0

    new-instance v2, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;

    invoke-direct {v2}, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;-><init>()V

    new-array v0, v7, [B

    const/4 v5, 0x0

    invoke-static {v2, v5, v0}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9CPGetSelection(Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;[B)S

    move-result v3

    iget-object v5, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mCPSpell:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->init()V

    const/4 v1, 0x0

    :goto_1
    iget-byte v5, v2, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;->bLen:B

    if-ge v1, v5, :cond_3

    iget-object v5, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mCPSpell:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-object v5, v5, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->pSymbs:[C

    iget-object v6, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mCPSpell:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-byte v7, v6, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    add-int/lit8 v8, v7, 0x1

    int-to-byte v8, v8

    iput-byte v8, v6, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    iget-object v6, v2, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;->pSymbs:[C

    aget-char v6, v6, v1

    aput-char v6, v5, v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    if-nez v3, :cond_1

    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9CPCommitSelection()S

    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9ClearAllSymbs()S

    goto :goto_0

    :cond_4
    iget v5, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mXt9Version:I

    if-nez v5, :cond_1

    iget-short v5, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mInputLanguageId:S

    if-ne v5, v6, :cond_1

    int-to-short v5, p1

    iget-object v6, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mCPSpell:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    invoke-static {v5, v6}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9CPSelectPhrase(SLcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;)S

    move-result v3

    if-ne v3, v8, :cond_6

    invoke-interface {p2, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    int-to-short v5, v5

    invoke-static {v5, v4, v4}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AddExplicitSymb(SBB)S

    move-result v3

    :cond_5
    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->updateSelectList()I

    move-result v4

    goto :goto_0

    :cond_6
    if-ne v3, v9, :cond_5

    new-instance v2, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;

    invoke-direct {v2}, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;-><init>()V

    new-array v0, v7, [B

    const/4 v5, 0x0

    invoke-static {v2, v5, v0}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9CPGetSelection(Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;[B)S

    move-result v3

    iget-object v5, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mCPSpell:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->init()V

    const/4 v1, 0x0

    :goto_2
    iget-byte v5, v2, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;->bLen:B

    if-ge v1, v5, :cond_7

    iget-object v5, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mCPSpell:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-object v5, v5, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->pSymbs:[C

    iget-object v6, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mCPSpell:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;

    iget-byte v7, v6, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    add-int/lit8 v8, v7, 0x1

    int-to-byte v8, v8

    iput-byte v8, v6, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    iget-object v6, v2, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;->pSymbs:[C

    aget-char v6, v6, v1

    aput-char v6, v5, v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    if-nez v3, :cond_1

    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9CPCommitSelection()S

    invoke-static {}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9ClearAllSymbs()S

    goto/16 :goto_0
.end method

.method public writeDBdataToFile(B)V
    .locals 13
    .param p1    # B

    const/4 v11, 0x0

    const/4 v5, 0x0

    const-string v6, ""

    iget-object v9, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "xT9DB"

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v3

    const/4 v0, 0x0

    const/4 v2, 0x0

    if-nez p1, :cond_3

    const-string v6, "xT9UdbData.dat"

    sget-object v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mUDBBuffer:[B

    const/16 v2, 0x5000

    :goto_0
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_0

    :try_start_0
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v7, 0x0

    :try_start_1
    new-instance v8, Ljava/io/FileOutputStream;

    const/4 v9, 0x0

    invoke-direct {v8, v5, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v9, 0x0

    :try_start_2
    invoke-virtual {v8, v0, v9, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1c
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1b
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    if-eqz v8, :cond_1

    :try_start_3
    invoke-virtual {v8}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v8}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/FileDescriptor;->sync()V

    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/SyncFailedException; {:try_start_3 .. :try_end_3} :catch_15
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_17
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    :try_start_4
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1a

    :cond_1
    :goto_2
    move-object v7, v8

    :cond_2
    :goto_3
    return-void

    :cond_3
    const/4 v9, 0x1

    if-ne p1, v9, :cond_4

    const-string v6, "xT9CdbData.dat"

    sget-object v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mCDBBuffer:[B

    const/16 v2, 0x800

    goto :goto_0

    :cond_4
    const/4 v9, 0x2

    if-ne p1, v9, :cond_5

    const-string v6, "xT9ASdbData.dat"

    sget-object v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mASDBBuffer:[B

    const/16 v2, 0x2800

    goto :goto_0

    :cond_5
    const/4 v9, 0x3

    if-ne p1, v9, :cond_6

    const-string v6, "xT9KUdbData.dat"

    sget-object v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mKUDBBuffer:[B

    const/16 v2, 0x5000

    goto :goto_0

    :cond_6
    const/4 v9, 0x4

    if-ne p1, v9, :cond_7

    const-string v6, "xT9DLMData.dat"

    sget-object v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mDLMBuffer:[B

    sget v2, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->DLM_SIZE:I

    goto :goto_0

    :cond_7
    const-string v9, "SamsungIME"

    const-string v10, "Invalid DB type!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catch_0
    move-exception v4

    const-string v9, "SamsungIME"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Could not create the DB file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "!("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :catch_1
    move-exception v4

    :goto_4
    :try_start_5
    const-string v9, "SamsungIME"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Could not find the DB file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "!("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v7, :cond_2

    :try_start_6
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v7}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/FileDescriptor;->sync()V

    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/SyncFailedException; {:try_start_6 .. :try_end_6} :catch_b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_d
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_3

    :catch_2
    move-exception v4

    const-string v9, "SamsungIME"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Could not close the DB file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "!("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :goto_5
    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :catch_3
    move-exception v4

    :goto_6
    :try_start_8
    const-string v9, "SamsungIME"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Could not write on the DB file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "!("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v7, :cond_2

    :try_start_9
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v7}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/FileDescriptor;->sync()V

    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/SyncFailedException; {:try_start_9 .. :try_end_9} :catch_10
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_12
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :try_start_a
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    goto/16 :goto_3

    :catch_4
    move-exception v4

    const-string v9, "SamsungIME"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Could not close the DB file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "!("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_5

    :catchall_0
    move-exception v9

    :goto_7
    if-eqz v7, :cond_8

    :try_start_b
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v7}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/FileDescriptor;->sync()V

    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/SyncFailedException; {:try_start_b .. :try_end_b} :catch_5
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :try_start_c
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_a

    :cond_8
    :goto_8
    throw v9

    :catch_5
    move-exception v4

    :try_start_d
    const-string v10, "SamsungIME"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Could not sync the DB file "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "!("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :try_start_e
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_6

    goto :goto_8

    :catch_6
    move-exception v4

    const-string v10, "SamsungIME"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Could not close the DB file "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "!("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    :goto_9
    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :catch_7
    move-exception v4

    :try_start_f
    const-string v10, "SamsungIME"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Could not close the DB file "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "!("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    :try_start_10
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_8

    goto/16 :goto_8

    :catch_8
    move-exception v4

    const-string v10, "SamsungIME"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Could not close the DB file "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "!("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_9

    :catchall_1
    move-exception v9

    :try_start_11
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_9

    :goto_a
    throw v9

    :catch_9
    move-exception v4

    const-string v10, "SamsungIME"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Could not close the DB file "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "!("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :catch_a
    move-exception v4

    const-string v10, "SamsungIME"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Could not close the DB file "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "!("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_9

    :catch_b
    move-exception v4

    :try_start_12
    const-string v9, "SamsungIME"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Could not sync the DB file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "!("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    :try_start_13
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_c

    goto/16 :goto_3

    :catch_c
    move-exception v4

    const-string v9, "SamsungIME"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Could not close the DB file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "!("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_5

    :catch_d
    move-exception v4

    :try_start_14
    const-string v9, "SamsungIME"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Could not close the DB file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "!("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    :try_start_15
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_e

    goto/16 :goto_3

    :catch_e
    move-exception v4

    const-string v9, "SamsungIME"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Could not close the DB file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "!("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_5

    :catchall_2
    move-exception v9

    :try_start_16
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_f

    :goto_b
    throw v9

    :catch_f
    move-exception v4

    const-string v10, "SamsungIME"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Could not close the DB file "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "!("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    :catch_10
    move-exception v4

    :try_start_17
    const-string v9, "SamsungIME"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Could not sync the DB file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "!("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_3

    :try_start_18
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_11

    goto/16 :goto_3

    :catch_11
    move-exception v4

    const-string v9, "SamsungIME"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Could not close the DB file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "!("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_5

    :catch_12
    move-exception v4

    :try_start_19
    const-string v9, "SamsungIME"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Could not close the DB file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "!("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_3

    :try_start_1a
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_13

    goto/16 :goto_3

    :catch_13
    move-exception v4

    const-string v9, "SamsungIME"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Could not close the DB file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "!("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_5

    :catchall_3
    move-exception v9

    :try_start_1b
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_14

    :goto_c
    throw v9

    :catch_14
    move-exception v4

    const-string v10, "SamsungIME"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Could not close the DB file "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "!("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    :catch_15
    move-exception v4

    :try_start_1c
    const-string v9, "SamsungIME"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Could not sync the DB file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "!("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_4

    :try_start_1d
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_16

    goto/16 :goto_2

    :catch_16
    move-exception v4

    const-string v9, "SamsungIME"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Could not close the DB file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "!("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :goto_d
    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :catch_17
    move-exception v4

    :try_start_1e
    const-string v9, "SamsungIME"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Could not close the DB file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "!("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_4

    :try_start_1f
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_18

    goto/16 :goto_2

    :catch_18
    move-exception v4

    const-string v9, "SamsungIME"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Could not close the DB file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "!("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_d

    :catchall_4
    move-exception v9

    :try_start_20
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_19

    :goto_e
    throw v9

    :catch_19
    move-exception v4

    const-string v10, "SamsungIME"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Could not close the DB file "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "!("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    :catch_1a
    move-exception v4

    const-string v9, "SamsungIME"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Could not close the DB file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "!("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_d

    :catchall_5
    move-exception v9

    move-object v7, v8

    goto/16 :goto_7

    :catch_1b
    move-exception v4

    move-object v7, v8

    goto/16 :goto_6

    :catch_1c
    move-exception v4

    move-object v7, v8

    goto/16 :goto_4
.end method

.method public writeDBdataToFileOnFinishInput()V
    .locals 5

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mXt9Version:I

    if-ne v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->writeDBdataToFile(B)V

    invoke-virtual {p0, v2}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->writeDBdataToFile(B)V

    invoke-virtual {p0, v3}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->writeDBdataToFile(B)V

    invoke-virtual {p0, v4}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->writeDBdataToFile(B)V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->writeDBdataToFile(B)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->mXt9Version:I

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->writeDBdataToFile(B)V

    invoke-virtual {p0, v2}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->writeDBdataToFile(B)V

    invoke-virtual {p0, v3}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->writeDBdataToFile(B)V

    invoke-virtual {p0, v4}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;->writeDBdataToFile(B)V

    goto :goto_0
.end method

.method public writeWordToDLM([CIIZZ)S
    .locals 1
    .param p1    # [C
    .param p2    # I
    .param p3    # I
    .param p4    # Z
    .param p5    # Z

    invoke-static {p1, p2, p3, p4}, Lcom/diotek/ime/framework/engine/xt9/Xt9core;->ET9AWDLMScanBuf([CIIZ)S

    move-result v0

    return v0
.end method
