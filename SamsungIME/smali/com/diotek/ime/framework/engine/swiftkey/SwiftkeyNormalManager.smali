.class public Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyNormalManager;
.super Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;
.source "SwiftkeyNormalManager.java"


# static fields
.field private static mInstance:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyNormalManager;


# instance fields
.field private final ARABIC_LABELS:[Ljava/lang/Character;

.field private final ARMANIAN_LABELS:[Ljava/lang/Character;

.field private final AZERBAIJANI_LABELS:[Ljava/lang/Character;

.field private final CYRL_LABELS:[Ljava/lang/Character;

.field private final GEORGIAN_LABELS:[Ljava/lang/Character;

.field private final GREEK_LABELS:[Ljava/lang/Character;

.field private final HEBREW_LABELS:[Ljava/lang/Character;

.field private final KOREAN_LABELS:[Ljava/lang/Character;

.field private final KOREAN_VOWEL:[Ljava/lang/Character;

.field private final LATIN_LABELS:[Ljava/lang/Character;

.field private final NORDIC_LABELS:[Ljava/lang/Character;

.field private final THAI_LABELS:[Ljava/lang/Character;

.field private final THAI_VOWEL:[Ljava/lang/Character;

.field private isLoadKeypressModelError:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyNormalManager;->mInstance:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyNormalManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;-><init>()V

    iput-boolean v3, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyNormalManager;->isLoadKeypressModelError:Z

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/Character;

    const/16 v1, 0xe31

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    aput-object v1, v0, v3

    const/16 v1, 0xe34

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    aput-object v1, v0, v4

    const/16 v1, 0xe35

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    aput-object v1, v0, v5

    const/16 v1, 0xe36

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    aput-object v1, v0, v6

    const/16 v1, 0xe37

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const/16 v2, 0xe38

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0xe39

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0xe47

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0xe48

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0xe49

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0xe4a

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0xe4b

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0xe4c

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0xe2f

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0xe3f

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0xe46

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyNormalManager;->THAI_VOWEL:[Ljava/lang/Character;

    const/16 v0, 0x1a

    new-array v0, v0, [Ljava/lang/Character;

    const/16 v1, 0x3131

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    aput-object v1, v0, v3

    const/16 v1, 0x3137

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    aput-object v1, v0, v4

    const/16 v1, 0x3134

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    aput-object v1, v0, v5

    const/16 v1, 0x3139

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    aput-object v1, v0, v6

    const/16 v1, 0x3163

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const/16 v2, 0x3161

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x3160

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x3154

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x3155

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0x3157

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x3150

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x3151

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x3153

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x315c

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x315b

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0x3145

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const/16 v2, 0x3147

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const/16 v2, 0x3141

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0x3142

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0x314d

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const/16 v2, 0x314c

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const/16 v2, 0x314f

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const/16 v2, 0x314e

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const/16 v2, 0x3148

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const/16 v2, 0x314b

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const/16 v2, 0x314a

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyNormalManager;->KOREAN_LABELS:[Ljava/lang/Character;

    const/16 v0, 0x1a

    new-array v0, v0, [Ljava/lang/Character;

    const/16 v1, 0x61

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    aput-object v1, v0, v3

    const/16 v1, 0x62

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    aput-object v1, v0, v4

    const/16 v1, 0x63

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    aput-object v1, v0, v5

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    aput-object v1, v0, v6

    const/16 v1, 0x65

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const/16 v2, 0x66

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x67

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x68

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x69

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0x6a

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x6b

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x6c

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x6d

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x6e

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x6f

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0x70

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const/16 v2, 0x71

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const/16 v2, 0x72

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0x73

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0x74

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const/16 v2, 0x75

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const/16 v2, 0x76

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const/16 v2, 0x77

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const/16 v2, 0x78

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const/16 v2, 0x79

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const/16 v2, 0x7a

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyNormalManager;->LATIN_LABELS:[Ljava/lang/Character;

    const/16 v0, 0x2b

    new-array v0, v0, [Ljava/lang/Character;

    const/16 v1, 0x44c

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    aput-object v1, v0, v3

    const/16 v1, 0x44d

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    aput-object v1, v0, v4

    const/16 v1, 0x44e

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    aput-object v1, v0, v5

    const/16 v1, 0x44f

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    aput-object v1, v0, v6

    const/16 v1, 0x448

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const/16 v2, 0x449

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x44a

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x444

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x445

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0x446

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x447

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x440

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x441

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x442

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x443

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0x43b

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const/16 v2, 0x43a

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const/16 v2, 0x439

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0x438

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0x43f

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const/16 v2, 0x43e

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const/16 v2, 0x43d

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const/16 v2, 0x43c

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const/16 v2, 0x433

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const/16 v2, 0x432

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const/16 v2, 0x431

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const/16 v2, 0x430

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const/16 v2, 0x437

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const/16 v2, 0x436

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const/16 v2, 0x435

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const/16 v2, 0x434

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const/16 v2, 0x44b

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const/16 v2, 0x454

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const/16 v2, 0x45c

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const/16 v2, 0x457

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const/16 v2, 0x456

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const/16 v2, 0x45f

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const/16 v2, 0x459

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const/16 v2, 0x458

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const/16 v2, 0x45a

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const/16 v2, 0x455

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const/16 v2, 0x453

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const/16 v2, 0x451

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyNormalManager;->CYRL_LABELS:[Ljava/lang/Character;

    const/16 v0, 0x1e

    new-array v0, v0, [Ljava/lang/Character;

    const/16 v1, 0x66

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    aput-object v1, v0, v3

    const/16 v1, 0x67

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    aput-object v1, v0, v4

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    aput-object v1, v0, v5

    const/16 v1, 0x65

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    aput-object v1, v0, v6

    const/16 v1, 0x62

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const/16 v2, 0x63

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x61

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x6e

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0xe6

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0x6f

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x6c

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x6d

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x6a

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x6b

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x68

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0x69

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const/16 v2, 0x77

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const/16 v2, 0x76

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0x75

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0x74

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const/16 v2, 0x73

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const/16 v2, 0x72

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const/16 v2, 0xf8

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const/16 v2, 0x71

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const/16 v2, 0x70

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const/16 v2, 0x7a

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const/16 v2, 0x79

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const/16 v2, 0x78

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const/16 v2, 0xfe

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const/16 v2, 0xf0

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyNormalManager;->NORDIC_LABELS:[Ljava/lang/Character;

    const/16 v0, 0x28

    new-array v0, v0, [Ljava/lang/Character;

    const/16 v1, 0x62e

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    aput-object v1, v0, v3

    const/16 v1, 0x62f

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    aput-object v1, v0, v4

    const/16 v1, 0x62c

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    aput-object v1, v0, v5

    const/16 v1, 0x62d

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    aput-object v1, v0, v6

    const/16 v1, 0x62a

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const/16 v2, 0x62b

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x628

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x629

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x626

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0x627

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x624

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x621

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x63a

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x639

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x638

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0x637

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const/16 v2, 0x636

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const/16 v2, 0x635

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0x634

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0x633

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const/16 v2, 0x632

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const/16 v2, 0x631

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const/16 v2, 0x648

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const/16 v2, 0x649

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const/16 v2, 0x64a

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const v2, 0xfefb

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const/16 v2, 0x641

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const/16 v2, 0x642

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const/16 v2, 0x643

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const/16 v2, 0x644

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const/16 v2, 0x645

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const/16 v2, 0x646

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const/16 v2, 0x647

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const/16 v2, 0x6af

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const/16 v2, 0x6a9

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const/16 v2, 0x67e

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const/16 v2, 0x6c1

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const/16 v2, 0x686

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const/16 v2, 0x6cc

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const/16 v2, 0x6d2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyNormalManager;->ARABIC_LABELS:[Ljava/lang/Character;

    const/16 v0, 0x27

    new-array v0, v0, [Ljava/lang/Character;

    const/16 v1, 0x583

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    aput-object v1, v0, v3

    const/16 v1, 0x582

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    aput-object v1, v0, v4

    const/16 v1, 0x581

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    aput-object v1, v0, v5

    const/16 v1, 0x580

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    aput-object v1, v0, v6

    const/16 v1, 0x587

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const/16 v2, 0x586

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x585

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x584

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x57d

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0x57c

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x57f

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x57e

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x579

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x578

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x57b

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0x57a

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const/16 v2, 0x575

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const/16 v2, 0x574

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0x577

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0x576

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const/16 v2, 0x571

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const/16 v2, 0x570

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const/16 v2, 0x573

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const/16 v2, 0x572

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const/16 v2, 0x56c

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const/16 v2, 0x56d

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const/16 v2, 0x56e

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const/16 v2, 0x56f

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const/16 v2, 0x568

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const/16 v2, 0x569

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const/16 v2, 0x56a

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const/16 v2, 0x56b

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const/16 v2, 0x564

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const/16 v2, 0x565

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const/16 v2, 0x566

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const/16 v2, 0x567

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const/16 v2, 0x561

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const/16 v2, 0x562

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const/16 v2, 0x563

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyNormalManager;->ARMANIAN_LABELS:[Ljava/lang/Character;

    const/16 v0, 0x1a

    new-array v0, v0, [Ljava/lang/Character;

    const/16 v1, 0x10ee

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    aput-object v1, v0, v3

    const/16 v1, 0x10ef

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    aput-object v1, v0, v4

    const/16 v1, 0x10ec

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    aput-object v1, v0, v5

    const/16 v1, 0x10ea

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    aput-object v1, v0, v6

    const/16 v1, 0x10e7

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const/16 v2, 0x10e4

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x10e5

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x10e2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x10e3

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0x10e0

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x10e1

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x10f0

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x10dd

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x10dc

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x10de

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0x10d9

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const/16 v2, 0x10d8

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const/16 v2, 0x10db

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0x10da

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0x10d5

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const/16 v2, 0x10d4

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const/16 v2, 0x10d6

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const/16 v2, 0x10d1

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const/16 v2, 0x10d0

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const/16 v2, 0x10d3

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const/16 v2, 0x10d2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyNormalManager;->GEORGIAN_LABELS:[Ljava/lang/Character;

    const/16 v0, 0x19

    new-array v0, v0, [Ljava/lang/Character;

    const/16 v1, 0x3bc

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    aput-object v1, v0, v3

    const/16 v1, 0x3bd

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    aput-object v1, v0, v4

    const/16 v1, 0x3be

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    aput-object v1, v0, v5

    const/16 v1, 0x3bf

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    aput-object v1, v0, v6

    const/16 v1, 0x3b8

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const/16 v2, 0x3b9

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x3ba

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x3bb

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x3b4

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0x3b5

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x3b6

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x3b7

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x3b1

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x3b2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x3b3

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0x3c9

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const/16 v2, 0x3c8

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const/16 v2, 0x3c3

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0x3c2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0x3c1

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const/16 v2, 0x3c0

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const/16 v2, 0x3c7

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const/16 v2, 0x3c6

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const/16 v2, 0x3c5

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const/16 v2, 0x3c4

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyNormalManager;->GREEK_LABELS:[Ljava/lang/Character;

    const/16 v0, 0x1a

    new-array v0, v0, [Ljava/lang/Character;

    const/16 v1, 0x5e8

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    aput-object v1, v0, v3

    const/16 v1, 0x5d0

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    aput-object v1, v0, v4

    const/16 v1, 0x5d8

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    aput-object v1, v0, v5

    const/16 v1, 0x5d5

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    aput-object v1, v0, v6

    const/16 v1, 0x5df

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const/16 v2, 0x5dd

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x5e4

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x5e9

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x5d3

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0x5d2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x5db

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x5e2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x5d9

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x5d7

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x5dc

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0x5da

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const/16 v2, 0x5e3

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const/16 v2, 0x5d6

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0x5e1

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0x5d1

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const/16 v2, 0x5d4

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const/16 v2, 0x5e0

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const/16 v2, 0x5de

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const/16 v2, 0x5e6

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const/16 v2, 0x5ea

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const/16 v2, 0x5e5

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyNormalManager;->HEBREW_LABELS:[Ljava/lang/Character;

    const/16 v0, 0x53

    new-array v0, v0, [Ljava/lang/Character;

    const/16 v1, 0xe59

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    aput-object v1, v0, v3

    const/16 v1, 0xe58

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    aput-object v1, v0, v4

    const/16 v1, 0xe51

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    aput-object v1, v0, v5

    const/16 v1, 0xe50

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    aput-object v1, v0, v6

    const/16 v1, 0xe53

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const/16 v2, 0xe52

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0xe55

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0xe54

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0xe57

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0xe56

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0xe48

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0xe49

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0xe4a

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0xe4b

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0xe4c

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0xe4d

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const/16 v2, 0xe40

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const/16 v2, 0xe41

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0xe42

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0xe43

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const/16 v2, 0xe44

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const/16 v2, 0xe45

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const/16 v2, 0xe46

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const/16 v2, 0xe47

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const/16 v2, 0xe3f

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const/16 v2, 0xe3a

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const/16 v2, 0xe39

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const/16 v2, 0xe38

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const/16 v2, 0xe37

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const/16 v2, 0xe36

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const/16 v2, 0xe35

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const/16 v2, 0xe34

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const/16 v2, 0xe33

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const/16 v2, 0xe32

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const/16 v2, 0xe31

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const/16 v2, 0xe30

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const/16 v2, 0xe2e

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const/16 v2, 0xe2f

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const/16 v2, 0xe2c

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const/16 v2, 0xe2d

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const/16 v2, 0xe2a

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const/16 v2, 0xe2b

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const/16 v2, 0xe28

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const/16 v2, 0xe29

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const/16 v2, 0xe26

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const/16 v2, 0xe27

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const/16 v2, 0xe24

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const/16 v2, 0xe25

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const/16 v2, 0xe22

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const/16 v2, 0xe23

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const/16 v2, 0xe20

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const/16 v2, 0xe21

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const/16 v2, 0xe1d

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const/16 v2, 0xe1c

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const/16 v2, 0xe1f

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const/16 v2, 0xe1e

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const/16 v2, 0xe19

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const/16 v2, 0xe18

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const/16 v2, 0xe1b

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const/16 v2, 0xe1a

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const/16 v2, 0xe15

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const/16 v2, 0xe14

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const/16 v2, 0xe17

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const/16 v2, 0xe16

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const/16 v2, 0xe11

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const/16 v2, 0xe10

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const/16 v2, 0xe13

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const/16 v2, 0xe12

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const/16 v2, 0xe0c

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const/16 v2, 0xe0d

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const/16 v2, 0xe0e

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const/16 v2, 0xe0f

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const/16 v2, 0xe08

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const/16 v2, 0xe09

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const/16 v2, 0xe0a

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const/16 v2, 0xe0b

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const/16 v2, 0xe04

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const/16 v2, 0xe05

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const/16 v2, 0xe06

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const/16 v2, 0xe07

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const/16 v2, 0xe01

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const/16 v2, 0xe02

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const/16 v2, 0xe03

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyNormalManager;->THAI_LABELS:[Ljava/lang/Character;

    const/16 v0, 0x40

    new-array v0, v0, [Ljava/lang/Character;

    const/16 v1, 0x11f

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    aput-object v1, v0, v3

    const/16 v1, 0x11e

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    aput-object v1, v0, v4

    const/16 v1, 0x18f

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    aput-object v1, v0, v5

    const/16 v1, 0x131

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    aput-object v1, v0, v6

    const/16 v1, 0x130

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const/16 v2, 0x44

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x45

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x46

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x47

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0x41

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x42

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x43

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x4c

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x15f

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x4d

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0x15e

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const/16 v2, 0x4e

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const/16 v2, 0xc7

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0x4f

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0x48

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const/16 v2, 0x49

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const/16 v2, 0x4a

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const/16 v2, 0x4b

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const/16 v2, 0x55

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const/16 v2, 0xdc

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const/16 v2, 0x54

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const/16 v2, 0x56

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const/16 v2, 0x51

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const/16 v2, 0x50

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const/16 v2, 0x53

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const/16 v2, 0x52

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const/16 v2, 0xd6

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const/16 v2, 0x59

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const/16 v2, 0x58

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const/16 v2, 0x5a

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const/16 v2, 0x66

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const/16 v2, 0x67

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const/16 v2, 0x64

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const/16 v2, 0x65

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const/16 v2, 0x62

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const/16 v2, 0x63

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const/16 v2, 0x61

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const/16 v2, 0x6e

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const/16 v2, 0xe7

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const/16 v2, 0x6f

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const/16 v2, 0x6c

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const/16 v2, 0x6d

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const/16 v2, 0x6a

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const/16 v2, 0x6b

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const/16 v2, 0x68

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const/16 v2, 0x69

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const/16 v2, 0x76

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const/16 v2, 0x75

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const/16 v2, 0xfc

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const/16 v2, 0x74

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const/16 v2, 0x73

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const/16 v2, 0x72

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const/16 v2, 0x71

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const/16 v2, 0x70

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const/16 v2, 0xf6

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const/16 v2, 0x259

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const/16 v2, 0x7a

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const/16 v2, 0x79

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const/16 v2, 0x78

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyNormalManager;->AZERBAIJANI_LABELS:[Ljava/lang/Character;

    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/Character;

    const/16 v1, 0x314f

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    aput-object v1, v0, v3

    const/16 v1, 0x3151

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    aput-object v1, v0, v4

    const/16 v1, 0x3153

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    aput-object v1, v0, v5

    const/16 v1, 0x3155

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    aput-object v1, v0, v6

    const/16 v1, 0x3157

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const/16 v2, 0x315b

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x315c

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x3160

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x3161

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0x3163

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x3150

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x3152

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x3154

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x3156

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyNormalManager;->KOREAN_VOWEL:[Ljava/lang/Character;

    return-void
.end method

.method private addLayoutKey(Ljava/util/HashSet;C)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;C)V"
        }
    .end annotation

    invoke-static {p2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-static {p2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictor:Lcom/touchtype_fluency/Predictor;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictor:Lcom/touchtype_fluency/Predictor;

    invoke-interface {v8}, Lcom/touchtype_fluency/Predictor;->getInputMapper()Lcom/touchtype_fluency/InputMapper;

    move-result-object v4

    invoke-interface {v4, v6}, Lcom/touchtype_fluency/InputMapper;->getAccentedVariantsList(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v2, v1

    array-length v5, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v0, v2, v3

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {v4, v7}, Lcom/touchtype_fluency/InputMapper;->getAccentedVariantsList(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object v2, v1

    array-length v5, v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v5, :cond_1

    aget-object v0, v2, v3

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private addLayoutKey(Ljava/util/HashSet;[Ljava/lang/Character;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/Character;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    aget-object v1, p2, v0

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyNormalManager;->addLayoutKey(Ljava/util/HashSet;C)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyNormalManager;
    .locals 1

    sget-object v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyNormalManager;->mInstance:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyNormalManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyNormalManager;

    invoke-direct {v0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyNormalManager;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyNormalManager;->mInstance:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyNormalManager;

    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyNormalManager;->mInstance:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyNormalManager;

    return-object v0
.end method

.method private getSecondaryChar(II)I
    .locals 5

    invoke-static {}, Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyManager;->getInstance()Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyManager;

    move-result-object v1

    move v2, p1

    const/high16 v4, 0x6b6f0000

    if-ne p2, v4, :cond_0

    invoke-static {p1}, Lcom/diotek/ime/framework/util/Utils;->getHangleShiftedChar(I)I

    move-result v4

    :goto_0
    return v4

    :cond_0
    invoke-static {p2}, Lcom/diotek/ime/framework/util/Utils;->isIndianLanguage(I)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/diotek/ime/framework/input/IndianInputModule;->getInstance()Lcom/diotek/ime/framework/input/IndianInputModule;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/diotek/ime/framework/input/IndianInputModule;->getToggledKeyCode(I)I

    move-result v2

    :cond_1
    :goto_1
    move v4, v2

    goto :goto_0

    :cond_2
    invoke-virtual {v1, p1}, Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyManager;->getSecondaryKey(I)I

    move-result v3

    const/16 v4, -0xff

    if-eq v3, v4, :cond_1

    move v2, v3

    goto :goto_1
.end method

.method private getThaiVowel(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/16 v3, 0x10

    const-class v2, [Ljava/lang/Character;

    if-ne p1, v2, :cond_0

    new-array v1, v3, [Ljava/lang/Character;

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyNormalManager;->THAI_VOWEL:[Ljava/lang/Character;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyNormalManager;->THAI_VOWEL:[Ljava/lang/Character;

    aget-object v2, v2, v0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-class v2, [Ljava/lang/String;

    if-ne p1, v2, :cond_1

    new-array v1, v3, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyNormalManager;->THAI_VOWEL:[Ljava/lang/Character;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyNormalManager;->THAI_VOWEL:[Ljava/lang/Character;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :cond_2
    return-object v1
.end method

.method private isKorLineKey(IILcom/diotek/ime/framework/view/Keyboard$Key;)Z
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, 0x6b6f0000

    if-ne p1, v1, :cond_0

    const/4 v1, 0x2

    if-eq p2, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p3, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    aget v1, v1, v0

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x119e -> :sswitch_0
        0x3161 -> :sswitch_0
        0x3163 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public addTouchHistory(Ljava/lang/Character;)V
    .locals 0

    return-void
.end method

.method public createSession()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/touchtype_fluency/LicenseException;
        }
    .end annotation

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Sip_NumberOfCandidates"

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mCandidateWordNumber:I

    invoke-super {p0}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->createSession()Z

    move-result v0

    return v0
.end method

.method protected getResultsFilter(I)Lcom/touchtype_fluency/ResultsFilter;
    .locals 3

    new-instance v0, Lcom/touchtype_fluency/ResultsFilter;

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mCapitalization:Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;

    sget-object v2, Lcom/touchtype_fluency/ResultsFilter$VerbatimMode;->ENABLED:Lcom/touchtype_fluency/ResultsFilter$VerbatimMode;

    invoke-direct {v0, p1, v1, v2}, Lcom/touchtype_fluency/ResultsFilter;-><init>(ILcom/touchtype_fluency/ResultsFilter$CapitalizationHint;Lcom/touchtype_fluency/ResultsFilter$VerbatimMode;)V

    return-object v0
.end method

.method public loadKeyPressModel(Ljava/io/File;Lcom/diotek/ime/framework/view/Keyboard;IIZZ)Z
    .locals 32

    const-string v5, ""

    if-nez p2, :cond_0

    const-string v4, "SamsungIME"

    const-string v9, "[loadKeyPressModel] keyboard is null!"

    invoke-static {v4, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    :goto_0
    return v4

    :cond_0
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    new-instance v6, Ljava/util/HashMap;

    const/16 v4, 0x28

    invoke-direct {v6, v4}, Ljava/util/HashMap;-><init>(I)V

    new-instance v7, Ljava/util/HashMap;

    const/16 v4, 0x10

    invoke-direct {v7, v4}, Ljava/util/HashMap;-><init>(I)V

    const/16 v29, 0x0

    const/16 v28, 0x0

    const/4 v4, 0x1

    new-array v0, v4, [Ljava/lang/Character;

    move-object/from16 v16, v0

    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getPreferenceInputMethodOnKor()I

    move-result v19

    invoke-virtual/range {p2 .. p2}, Lcom/diotek/ime/framework/view/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_1
    :goto_1
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/diotek/ime/framework/view/Keyboard$Key;

    if-eqz p5, :cond_a

    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    if-eqz v4, :cond_9

    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    array-length v4, v4

    if-lez v4, :cond_9

    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v9, 0x0

    aget v4, v4, v9

    invoke-static {v4}, Ljava/lang/Character;->isLetter(I)Z

    move-result v4

    if-nez v4, :cond_2

    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v9, 0x0

    aget v4, v4, v9

    invoke-static {v4}, Lcom/diotek/ime/framework/common/InputSequenceCheck;->isThaiUnicode(I)Z

    move-result v4

    if-nez v4, :cond_2

    const/16 v4, -0x3a

    move-object/from16 v0, v22

    iget-object v9, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v10, 0x0

    aget v9, v9, v10

    if-ne v4, v9, :cond_9

    :cond_2
    move-object/from16 v0, v22

    iget v4, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->x:I

    move-object/from16 v0, v22

    iget v9, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->width:I

    div-int/lit8 v9, v9, 0x2

    add-int v30, v4, v9

    move-object/from16 v0, v22

    iget v4, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->y:I

    move-object/from16 v0, v22

    iget v9, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->height:I

    div-int/lit8 v9, v9, 0x2

    add-int v31, v4, v9

    const/4 v15, 0x0

    const/16 v4, -0x3a

    move-object/from16 v0, v22

    iget-object v9, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v10, 0x0

    aget v9, v9, v10

    if-ne v4, v9, :cond_6

    const-class v4, [Ljava/lang/Character;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyNormalManager;->getThaiVowel(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Character;

    move-object v15, v4

    check-cast v15, [Ljava/lang/Character;

    :cond_3
    if-eqz v15, :cond_4

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v15}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyNormalManager;->addLayoutKey(Ljava/util/HashSet;[Ljava/lang/Character;)V

    :cond_4
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, v19

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyNormalManager;->isKorLineKey(IILcom/diotek/ime/framework/view/Keyboard$Key;)Z

    move-result v4

    if-eqz v4, :cond_7

    move-object/from16 v0, v22

    iget v4, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->x:I

    move-object/from16 v0, v22

    iget v9, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->width:I

    div-int/lit8 v9, v9, 0x4

    add-int v26, v4, v9

    move-object/from16 v0, v22

    iget v4, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->y:I

    move-object/from16 v0, v22

    iget v9, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->height:I

    div-int/lit8 v9, v9, 0x2

    add-int v27, v4, v9

    new-instance v4, Lcom/touchtype_fluency/Point;

    move/from16 v0, v26

    int-to-float v9, v0

    move/from16 v0, v27

    int-to-float v10, v0

    invoke-direct {v4, v9, v10}, Lcom/touchtype_fluency/Point;-><init>(FF)V

    new-instance v9, Lcom/touchtype_fluency/Point;

    move-object/from16 v0, v22

    iget v10, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->x:I

    move-object/from16 v0, v22

    iget v11, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->width:I

    add-int/2addr v10, v11

    move-object/from16 v0, v22

    iget v11, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->width:I

    div-int/lit8 v11, v11, 0x4

    sub-int/2addr v10, v11

    int-to-float v10, v10

    move/from16 v0, v27

    int-to-float v11, v0

    invoke-direct {v9, v10, v11}, Lcom/touchtype_fluency/Point;-><init>(FF)V

    invoke-static {v4, v9}, Lcom/touchtype_fluency/KeyShape;->lineKey(Lcom/touchtype_fluency/Point;Lcom/touchtype_fluency/Point;)Lcom/touchtype_fluency/KeyShape;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v6, v0, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    array-length v4, v4

    const/4 v9, 0x1

    if-le v4, v9, :cond_1

    const/16 v23, 0x0

    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v4, -0x3a

    move-object/from16 v0, v22

    iget-object v9, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v10, 0x0

    aget v9, v9, v10

    if-ne v4, v9, :cond_8

    const-class v4, [Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyNormalManager;->getThaiVowel(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    move-object/from16 v23, v4

    check-cast v23, [Ljava/lang/String;

    :cond_5
    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v9, 0x0

    aget v4, v4, v9

    int-to-char v4, v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v7, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v9, 0x0

    aget v4, v4, v9

    int-to-char v4, v4

    invoke-static {v4}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v7, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_6
    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    array-length v4, v4

    new-array v15, v4, [Ljava/lang/Character;

    const/16 v20, 0x0

    :goto_3
    array-length v4, v15

    move/from16 v0, v20

    if-ge v0, v4, :cond_3

    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    aget v4, v4, v20

    int-to-char v4, v4

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    aput-object v4, v15, v20

    add-int/lit8 v20, v20, 0x1

    goto :goto_3

    :cond_7
    new-instance v4, Lcom/touchtype_fluency/Point;

    move/from16 v0, v30

    int-to-float v9, v0

    move/from16 v0, v31

    int-to-float v10, v0

    invoke-direct {v4, v9, v10}, Lcom/touchtype_fluency/Point;-><init>(FF)V

    invoke-static {v4}, Lcom/touchtype_fluency/KeyShape;->pointKey(Lcom/touchtype_fluency/Point;)Lcom/touchtype_fluency/KeyShape;

    move-result-object v4

    invoke-virtual {v6, v4, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_8
    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v20, 0x1

    :goto_4
    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    array-length v4, v4

    move/from16 v0, v20

    if-ge v0, v4, :cond_5

    add-int/lit8 v4, v20, -0x1

    move-object/from16 v0, v22

    iget-object v9, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    aget v9, v9, v20

    int-to-char v9, v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v23, v4

    add-int/lit8 v4, v20, -0x1

    move-object/from16 v0, v22

    iget-object v9, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    aget v9, v9, v20

    int-to-char v9, v9

    invoke-static {v9}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v24, v4

    add-int/lit8 v20, v20, 0x1

    goto :goto_4

    :cond_9
    const/high16 v4, 0x6b6f0000

    move/from16 v0, p3

    if-ne v0, v4, :cond_1

    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    if-eqz v4, :cond_1

    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    array-length v4, v4

    if-lez v4, :cond_1

    const/16 v4, 0x20

    move-object/from16 v0, v22

    iget-object v9, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v10, 0x0

    aget v9, v9, v10

    if-ne v4, v9, :cond_1

    move-object/from16 v0, v22

    iget v4, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->x:I

    move-object/from16 v0, v22

    iget v9, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->width:I

    div-int/lit8 v9, v9, 0x4

    add-int v30, v4, v9

    move-object/from16 v0, v22

    iget v4, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->y:I

    move-object/from16 v0, v22

    iget v9, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->height:I

    div-int/lit8 v9, v9, 0x2

    add-int v31, v4, v9

    new-instance v4, Lcom/touchtype_fluency/Point;

    move/from16 v0, v30

    int-to-float v9, v0

    move/from16 v0, v31

    int-to-float v10, v0

    invoke-direct {v4, v9, v10}, Lcom/touchtype_fluency/Point;-><init>(FF)V

    new-instance v9, Lcom/touchtype_fluency/Point;

    move-object/from16 v0, v22

    iget v10, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->x:I

    move-object/from16 v0, v22

    iget v11, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->width:I

    add-int/2addr v10, v11

    move-object/from16 v0, v22

    iget v11, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->width:I

    div-int/lit8 v11, v11, 0x4

    sub-int/2addr v10, v11

    int-to-float v10, v10

    move/from16 v0, v31

    int-to-float v11, v0

    invoke-direct {v9, v10, v11}, Lcom/touchtype_fluency/Point;-><init>(FF)V

    invoke-static {v4, v9}, Lcom/touchtype_fluency/KeyShape;->lineKey(Lcom/touchtype_fluency/Point;Lcom/touchtype_fluency/Point;)Lcom/touchtype_fluency/KeyShape;

    move-result-object v29

    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    array-length v4, v4

    new-array v0, v4, [Ljava/lang/Character;

    move-object/from16 v28, v0

    const/16 v20, 0x0

    :goto_5
    move-object/from16 v0, v28

    array-length v4, v0

    move/from16 v0, v20

    if-ge v0, v4, :cond_1

    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    aget v4, v4, v20

    int-to-char v4, v4

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    aput-object v4, v28, v20

    add-int/lit8 v20, v20, 0x1

    goto :goto_5

    :cond_a
    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->label:Ljava/lang/CharSequence;

    if-eqz v4, :cond_f

    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const/4 v9, 0x1

    if-ne v4, v9, :cond_f

    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->label:Ljava/lang/CharSequence;

    const/4 v9, 0x0

    invoke-interface {v4, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isLetter(C)Z

    move-result v4

    if-nez v4, :cond_b

    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->label:Ljava/lang/CharSequence;

    const/4 v9, 0x0

    invoke-interface {v4, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/diotek/ime/framework/common/InputSequenceCheck;->isThaiUnicode(I)Z

    move-result v4

    if-eqz v4, :cond_f

    :cond_b
    const-string v4, "StrEmpty"

    move-object/from16 v0, v22

    iget-object v9, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    move-object/from16 v0, v22

    iget v4, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->x:I

    move-object/from16 v0, v22

    iget v9, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->width:I

    div-int/lit8 v9, v9, 0x2

    add-int v30, v4, v9

    move-object/from16 v0, v22

    iget v4, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->y:I

    move-object/from16 v0, v22

    iget v9, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->height:I

    div-int/lit8 v9, v9, 0x2

    add-int v31, v4, v9

    const/4 v15, 0x0

    const/high16 v4, 0x74680000

    move/from16 v0, p3

    if-ne v0, v4, :cond_c

    const/4 v4, 0x2

    new-array v15, v4, [Ljava/lang/Character;

    const/4 v4, 0x0

    move-object/from16 v0, v22

    iget-object v9, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->label:Ljava/lang/CharSequence;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    aput-object v9, v15, v4

    const/4 v4, 0x1

    const/4 v9, 0x0

    aget-object v9, v15, v9

    invoke-virtual {v9}, Ljava/lang/Character;->charValue()C

    move-result v9

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v9, v1}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyNormalManager;->getSecondaryChar(II)I

    move-result v9

    int-to-char v9, v9

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    aput-object v9, v15, v4

    const/4 v4, 0x0

    aget-object v4, v15, v4

    invoke-virtual {v4}, Ljava/lang/Character;->charValue()C

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v4}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyNormalManager;->addLayoutKey(Ljava/util/HashSet;C)V

    const/4 v4, 0x1

    aget-object v4, v15, v4

    invoke-virtual {v4}, Ljava/lang/Character;->charValue()C

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v4}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyNormalManager;->addLayoutKey(Ljava/util/HashSet;C)V

    :goto_6
    new-instance v4, Lcom/touchtype_fluency/Point;

    move/from16 v0, v30

    int-to-float v9, v0

    move/from16 v0, v31

    int-to-float v10, v0

    invoke-direct {v4, v9, v10}, Lcom/touchtype_fluency/Point;-><init>(FF)V

    invoke-static {v4}, Lcom/touchtype_fluency/KeyShape;->pointKey(Lcom/touchtype_fluency/Point;)Lcom/touchtype_fluency/KeyShape;

    move-result-object v4

    invoke-virtual {v6, v4, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_c
    invoke-static/range {p3 .. p3}, Lcom/diotek/ime/framework/util/Utils;->isIndianLanguage(I)Z

    move-result v4

    if-eqz v4, :cond_d

    const/4 v4, 0x2

    new-array v15, v4, [Ljava/lang/Character;

    const/4 v4, 0x0

    move-object/from16 v0, v22

    iget-object v9, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->label:Ljava/lang/CharSequence;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    aput-object v9, v15, v4

    const/4 v4, 0x1

    const/4 v9, 0x0

    aget-object v9, v15, v9

    invoke-virtual {v9}, Ljava/lang/Character;->charValue()C

    move-result v9

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v9, v1}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyNormalManager;->getSecondaryChar(II)I

    move-result v9

    int-to-char v9, v9

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    aput-object v9, v15, v4

    const/4 v4, 0x0

    aget-object v4, v15, v4

    invoke-virtual {v4}, Ljava/lang/Character;->charValue()C

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v4}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyNormalManager;->addLayoutKey(Ljava/util/HashSet;C)V

    const/4 v4, 0x1

    aget-object v4, v15, v4

    invoke-virtual {v4}, Ljava/lang/Character;->charValue()C

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v4}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyNormalManager;->addLayoutKey(Ljava/util/HashSet;C)V

    goto :goto_6

    :cond_d
    const/4 v4, 0x1

    new-array v15, v4, [Ljava/lang/Character;

    if-eqz p6, :cond_e

    const/4 v4, 0x0

    move-object/from16 v0, v22

    iget-object v9, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->label:Ljava/lang/CharSequence;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v9, v1}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyNormalManager;->getSecondaryChar(II)I

    move-result v9

    int-to-char v9, v9

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    aput-object v9, v15, v4

    :goto_7
    const/4 v4, 0x0

    aget-object v4, v15, v4

    invoke-virtual {v4}, Ljava/lang/Character;->charValue()C

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v4}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyNormalManager;->addLayoutKey(Ljava/util/HashSet;C)V

    goto/16 :goto_6

    :cond_e
    const/4 v4, 0x0

    move-object/from16 v0, v22

    iget-object v9, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->label:Ljava/lang/CharSequence;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    aput-object v9, v15, v4

    goto :goto_7

    :cond_f
    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    if-eqz v4, :cond_1

    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    array-length v4, v4

    if-lez v4, :cond_1

    const/16 v4, 0x20

    move-object/from16 v0, v22

    iget-object v9, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v10, 0x0

    aget v9, v9, v10

    if-ne v4, v9, :cond_1

    move-object/from16 v0, v22

    iget v4, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->height:I

    div-int/lit8 v18, v4, 0x2

    move-object/from16 v0, v22

    iget v4, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->y:I

    add-int v31, v4, v18

    new-instance v4, Lcom/touchtype_fluency/Point;

    move-object/from16 v0, v22

    iget v9, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->x:I

    add-int v9, v9, v18

    int-to-float v9, v9

    move/from16 v0, v31

    int-to-float v10, v0

    invoke-direct {v4, v9, v10}, Lcom/touchtype_fluency/Point;-><init>(FF)V

    new-instance v9, Lcom/touchtype_fluency/Point;

    move-object/from16 v0, v22

    iget v10, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->x:I

    move-object/from16 v0, v22

    iget v11, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->width:I

    add-int/2addr v10, v11

    sub-int v10, v10, v18

    int-to-float v10, v10

    move/from16 v0, v31

    int-to-float v11, v0

    invoke-direct {v9, v10, v11}, Lcom/touchtype_fluency/Point;-><init>(FF)V

    const/high16 v10, 0x3f800000

    const v11, 0x3dcccccd

    invoke-static {v4, v9, v10, v11}, Lcom/touchtype_fluency/KeyShape;->lineKey(Lcom/touchtype_fluency/Point;Lcom/touchtype_fluency/Point;FF)Lcom/touchtype_fluency/KeyShape;

    move-result-object v29

    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    array-length v4, v4

    new-array v0, v4, [Ljava/lang/Character;

    move-object/from16 v28, v0

    const/16 v20, 0x0

    :goto_8
    move-object/from16 v0, v28

    array-length v4, v0

    move/from16 v0, v20

    if-ge v0, v4, :cond_1

    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    aget v4, v4, v20

    int-to-char v4, v4

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    aput-object v4, v28, v20

    add-int/lit8 v20, v20, 0x1

    goto :goto_8

    :cond_10
    if-eqz p5, :cond_11

    const/high16 v4, 0x6b6f0000

    move/from16 v0, p3

    if-ne v0, v4, :cond_11

    const/16 v20, 0x0

    :goto_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyNormalManager;->KOREAN_VOWEL:[Ljava/lang/Character;

    array-length v4, v4

    move/from16 v0, v20

    if-ge v0, v4, :cond_11

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyNormalManager;->KOREAN_VOWEL:[Ljava/lang/Character;

    aget-object v9, v9, v20

    aput-object v9, v16, v4

    const/4 v4, 0x0

    aget-object v4, v16, v4

    invoke-virtual {v4}, Ljava/lang/Character;->charValue()C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v20, v20, 0x1

    goto :goto_9

    :cond_11
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, "/"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->getKeyModelHashCodeEx(Ljava/util/HashMap;)I

    move-result v9

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1, v9}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->loadCurrentKeyPressModelFileName(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v4

    if-eqz v4, :cond_12

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->shouldLoadKeyPressModel(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_14

    :cond_12
    if-nez p5, :cond_13

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->setKeyShpae(Lcom/touchtype_fluency/KeyShape;[Ljava/lang/Character;)V

    :cond_13
    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_14
    if-eqz p5, :cond_16

    move-object/from16 v4, p0

    move/from16 v9, p3

    :try_start_0
    invoke-virtual/range {v4 .. v9}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->saveAndLoadKeyPressModel(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashSet;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_a
    if-nez p5, :cond_15

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->setKeyShpae(Lcom/touchtype_fluency/KeyShape;[Ljava/lang/Character;)V

    :cond_15
    const/4 v4, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v9}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->setCacheSequenceAndTouchHistory(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;)V

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->clearIntentionalEvents()V

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->clearTouchHistoryRepository()V

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->cancelPreviewFlow()Z

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_16
    const/4 v12, 0x0

    move-object/from16 v9, p0

    move-object v10, v5

    move-object v11, v6

    move-object v13, v8

    move/from16 v14, p3

    :try_start_1
    invoke-virtual/range {v9 .. v14}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->saveAndLoadKeyPressModel(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashSet;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_a

    :catch_0
    move-exception v17

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyNormalManager;->isLoadKeypressModelError:Z

    if-eqz v4, :cond_17

    const-string v4, "SamsungIME"

    const-string v9, "Can\'t load KeyPressModel !!!"

    invoke-static {v4, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :cond_17
    invoke-virtual/range {p0 .. p6}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyNormalManager;->loadKeyPressModel(Ljava/io/File;Lcom/diotek/ime/framework/view/Keyboard;IIZZ)Z

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyNormalManager;->isLoadKeypressModelError:Z

    goto :goto_a
.end method

.method public loadKeyPressModel(Ljava/io/File;Lcom/diotek/ime/framework/view/Keyboard;IIZZLjava/util/List;)Z
    .locals 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lcom/diotek/ime/framework/view/Keyboard;",
            "IIZZ",
            "Ljava/util/List",
            "<",
            "Lcom/touchtype_fluency/util/LanguagePack;",
            ">;)Z"
        }
    .end annotation

    const-string v5, ""

    if-nez p2, :cond_0

    const-string v4, "SamsungIME"

    const-string v9, "[loadKeyPressModel] keyboard is null!"

    invoke-static {v4, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    :goto_0
    return v4

    :cond_0
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    new-instance v6, Ljava/util/HashMap;

    const/16 v4, 0x28

    invoke-direct {v6, v4}, Ljava/util/HashMap;-><init>(I)V

    new-instance v7, Ljava/util/HashMap;

    const/16 v4, 0x10

    invoke-direct {v7, v4}, Ljava/util/HashMap;-><init>(I)V

    const/16 v30, 0x0

    const/16 v29, 0x0

    const/4 v4, 0x1

    new-array v0, v4, [Ljava/lang/Character;

    move-object/from16 v17, v0

    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getPreferenceInputMethodOnKor()I

    move-result v20

    invoke-virtual/range {p2 .. p2}, Lcom/diotek/ime/framework/view/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :cond_1
    :goto_1
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/diotek/ime/framework/view/Keyboard$Key;

    if-eqz p5, :cond_a

    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    if-eqz v4, :cond_9

    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    array-length v4, v4

    if-lez v4, :cond_9

    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v9, 0x0

    aget v4, v4, v9

    invoke-static {v4}, Ljava/lang/Character;->isLetter(I)Z

    move-result v4

    if-nez v4, :cond_2

    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v9, 0x0

    aget v4, v4, v9

    invoke-static {v4}, Lcom/diotek/ime/framework/common/InputSequenceCheck;->isThaiUnicode(I)Z

    move-result v4

    if-nez v4, :cond_2

    const/16 v4, -0x3a

    move-object/from16 v0, v23

    iget-object v9, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v10, 0x0

    aget v9, v9, v10

    if-ne v4, v9, :cond_9

    :cond_2
    move-object/from16 v0, v23

    iget v4, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->x:I

    move-object/from16 v0, v23

    iget v9, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->width:I

    div-int/lit8 v9, v9, 0x2

    add-int v31, v4, v9

    move-object/from16 v0, v23

    iget v4, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->y:I

    move-object/from16 v0, v23

    iget v9, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->height:I

    div-int/lit8 v9, v9, 0x2

    add-int v32, v4, v9

    const/16 v16, 0x0

    const/16 v4, -0x3a

    move-object/from16 v0, v23

    iget-object v9, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v10, 0x0

    aget v9, v9, v10

    if-ne v4, v9, :cond_6

    const-class v4, [Ljava/lang/Character;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyNormalManager;->getThaiVowel(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Character;

    move-object/from16 v16, v4

    check-cast v16, [Ljava/lang/Character;

    :cond_3
    if-eqz v16, :cond_4

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v8, v1}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyNormalManager;->addLayoutKey(Ljava/util/HashSet;[Ljava/lang/Character;)V

    :cond_4
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, v20

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyNormalManager;->isKorLineKey(IILcom/diotek/ime/framework/view/Keyboard$Key;)Z

    move-result v4

    if-eqz v4, :cond_7

    move-object/from16 v0, v23

    iget v4, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->x:I

    move-object/from16 v0, v23

    iget v9, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->width:I

    div-int/lit8 v9, v9, 0x4

    add-int v27, v4, v9

    move-object/from16 v0, v23

    iget v4, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->y:I

    move-object/from16 v0, v23

    iget v9, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->height:I

    div-int/lit8 v9, v9, 0x2

    add-int v28, v4, v9

    new-instance v4, Lcom/touchtype_fluency/Point;

    move/from16 v0, v27

    int-to-float v9, v0

    move/from16 v0, v28

    int-to-float v10, v0

    invoke-direct {v4, v9, v10}, Lcom/touchtype_fluency/Point;-><init>(FF)V

    new-instance v9, Lcom/touchtype_fluency/Point;

    move-object/from16 v0, v23

    iget v10, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->x:I

    move-object/from16 v0, v23

    iget v11, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->width:I

    add-int/2addr v10, v11

    move-object/from16 v0, v23

    iget v11, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->width:I

    div-int/lit8 v11, v11, 0x4

    sub-int/2addr v10, v11

    int-to-float v10, v10

    move/from16 v0, v28

    int-to-float v11, v0

    invoke-direct {v9, v10, v11}, Lcom/touchtype_fluency/Point;-><init>(FF)V

    invoke-static {v4, v9}, Lcom/touchtype_fluency/KeyShape;->lineKey(Lcom/touchtype_fluency/Point;Lcom/touchtype_fluency/Point;)Lcom/touchtype_fluency/KeyShape;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    array-length v4, v4

    const/4 v9, 0x1

    if-le v4, v9, :cond_1

    const/16 v24, 0x0

    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 v25, v0

    const/16 v4, -0x3a

    move-object/from16 v0, v23

    iget-object v9, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v10, 0x0

    aget v9, v9, v10

    if-ne v4, v9, :cond_8

    const-class v4, [Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyNormalManager;->getThaiVowel(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    move-object/from16 v24, v4

    check-cast v24, [Ljava/lang/String;

    :cond_5
    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v9, 0x0

    aget v4, v4, v9

    int-to-char v4, v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v7, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v9, 0x0

    aget v4, v4, v9

    int-to-char v4, v4

    invoke-static {v4}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v7, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_6
    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    array-length v4, v4

    new-array v0, v4, [Ljava/lang/Character;

    move-object/from16 v16, v0

    const/16 v21, 0x0

    :goto_3
    move-object/from16 v0, v16

    array-length v4, v0

    move/from16 v0, v21

    if-ge v0, v4, :cond_3

    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    aget v4, v4, v21

    int-to-char v4, v4

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    aput-object v4, v16, v21

    add-int/lit8 v21, v21, 0x1

    goto :goto_3

    :cond_7
    new-instance v4, Lcom/touchtype_fluency/Point;

    move/from16 v0, v31

    int-to-float v9, v0

    move/from16 v0, v32

    int-to-float v10, v0

    invoke-direct {v4, v9, v10}, Lcom/touchtype_fluency/Point;-><init>(FF)V

    invoke-static {v4}, Lcom/touchtype_fluency/KeyShape;->pointKey(Lcom/touchtype_fluency/Point;)Lcom/touchtype_fluency/KeyShape;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v6, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_8
    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v21, 0x1

    :goto_4
    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    array-length v4, v4

    move/from16 v0, v21

    if-ge v0, v4, :cond_5

    add-int/lit8 v4, v21, -0x1

    move-object/from16 v0, v23

    iget-object v9, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    aget v9, v9, v21

    int-to-char v9, v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v24, v4

    add-int/lit8 v4, v21, -0x1

    move-object/from16 v0, v23

    iget-object v9, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    aget v9, v9, v21

    int-to-char v9, v9

    invoke-static {v9}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v25, v4

    add-int/lit8 v21, v21, 0x1

    goto :goto_4

    :cond_9
    const/high16 v4, 0x6b6f0000

    move/from16 v0, p3

    if-ne v0, v4, :cond_1

    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    if-eqz v4, :cond_1

    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    array-length v4, v4

    if-lez v4, :cond_1

    const/16 v4, 0x20

    move-object/from16 v0, v23

    iget-object v9, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v10, 0x0

    aget v9, v9, v10

    if-ne v4, v9, :cond_1

    move-object/from16 v0, v23

    iget v4, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->x:I

    move-object/from16 v0, v23

    iget v9, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->width:I

    div-int/lit8 v9, v9, 0x4

    add-int v31, v4, v9

    move-object/from16 v0, v23

    iget v4, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->y:I

    move-object/from16 v0, v23

    iget v9, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->height:I

    div-int/lit8 v9, v9, 0x2

    add-int v32, v4, v9

    new-instance v4, Lcom/touchtype_fluency/Point;

    move/from16 v0, v31

    int-to-float v9, v0

    move/from16 v0, v32

    int-to-float v10, v0

    invoke-direct {v4, v9, v10}, Lcom/touchtype_fluency/Point;-><init>(FF)V

    new-instance v9, Lcom/touchtype_fluency/Point;

    move-object/from16 v0, v23

    iget v10, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->x:I

    move-object/from16 v0, v23

    iget v11, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->width:I

    add-int/2addr v10, v11

    move-object/from16 v0, v23

    iget v11, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->width:I

    div-int/lit8 v11, v11, 0x4

    sub-int/2addr v10, v11

    int-to-float v10, v10

    move/from16 v0, v32

    int-to-float v11, v0

    invoke-direct {v9, v10, v11}, Lcom/touchtype_fluency/Point;-><init>(FF)V

    invoke-static {v4, v9}, Lcom/touchtype_fluency/KeyShape;->lineKey(Lcom/touchtype_fluency/Point;Lcom/touchtype_fluency/Point;)Lcom/touchtype_fluency/KeyShape;

    move-result-object v30

    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    array-length v4, v4

    new-array v0, v4, [Ljava/lang/Character;

    move-object/from16 v29, v0

    const/16 v21, 0x0

    :goto_5
    move-object/from16 v0, v29

    array-length v4, v0

    move/from16 v0, v21

    if-ge v0, v4, :cond_1

    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    aget v4, v4, v21

    int-to-char v4, v4

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    aput-object v4, v29, v21

    add-int/lit8 v21, v21, 0x1

    goto :goto_5

    :cond_a
    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->label:Ljava/lang/CharSequence;

    if-eqz v4, :cond_11

    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const/4 v9, 0x1

    if-ne v4, v9, :cond_11

    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->label:Ljava/lang/CharSequence;

    const/4 v9, 0x0

    invoke-interface {v4, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isLetter(C)Z

    move-result v4

    if-nez v4, :cond_b

    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->label:Ljava/lang/CharSequence;

    const/4 v9, 0x0

    invoke-interface {v4, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/diotek/ime/framework/common/InputSequenceCheck;->isThaiUnicode(I)Z

    move-result v4

    if-eqz v4, :cond_11

    :cond_b
    const-string v4, "StrEmpty"

    move-object/from16 v0, v23

    iget-object v9, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    move-object/from16 v0, v23

    iget v4, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->x:I

    move-object/from16 v0, v23

    iget v9, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->width:I

    div-int/lit8 v9, v9, 0x2

    add-int v31, v4, v9

    move-object/from16 v0, v23

    iget v4, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->y:I

    move-object/from16 v0, v23

    iget v9, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->height:I

    div-int/lit8 v9, v9, 0x2

    add-int v32, v4, v9

    const/16 v16, 0x0

    const/high16 v4, 0x74680000

    move/from16 v0, p3

    if-ne v0, v4, :cond_c

    const/4 v4, 0x2

    new-array v0, v4, [Ljava/lang/Character;

    move-object/from16 v16, v0

    const/4 v4, 0x0

    move-object/from16 v0, v23

    iget-object v9, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->label:Ljava/lang/CharSequence;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    aput-object v9, v16, v4

    const/4 v4, 0x1

    const/4 v9, 0x0

    aget-object v9, v16, v9

    invoke-virtual {v9}, Ljava/lang/Character;->charValue()C

    move-result v9

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v9, v1}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyNormalManager;->getSecondaryChar(II)I

    move-result v9

    int-to-char v9, v9

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    aput-object v9, v16, v4

    const/4 v4, 0x0

    aget-object v4, v16, v4

    invoke-virtual {v4}, Ljava/lang/Character;->charValue()C

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v4}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyNormalManager;->addLayoutKey(Ljava/util/HashSet;C)V

    const/4 v4, 0x1

    aget-object v4, v16, v4

    invoke-virtual {v4}, Ljava/lang/Character;->charValue()C

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v4}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyNormalManager;->addLayoutKey(Ljava/util/HashSet;C)V

    :goto_6
    new-instance v4, Lcom/touchtype_fluency/Point;

    move/from16 v0, v31

    int-to-float v9, v0

    move/from16 v0, v32

    int-to-float v10, v0

    invoke-direct {v4, v9, v10}, Lcom/touchtype_fluency/Point;-><init>(FF)V

    invoke-static {v4}, Lcom/touchtype_fluency/KeyShape;->pointKey(Lcom/touchtype_fluency/Point;)Lcom/touchtype_fluency/KeyShape;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v6, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_c
    invoke-static/range {p3 .. p3}, Lcom/diotek/ime/framework/util/Utils;->isIndianLanguage(I)Z

    move-result v4

    if-eqz v4, :cond_d

    const/4 v4, 0x2

    new-array v0, v4, [Ljava/lang/Character;

    move-object/from16 v16, v0

    const/4 v4, 0x0

    move-object/from16 v0, v23

    iget-object v9, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->label:Ljava/lang/CharSequence;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    aput-object v9, v16, v4

    const/4 v4, 0x1

    const/4 v9, 0x0

    aget-object v9, v16, v9

    invoke-virtual {v9}, Ljava/lang/Character;->charValue()C

    move-result v9

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v9, v1}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyNormalManager;->getSecondaryChar(II)I

    move-result v9

    int-to-char v9, v9

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    aput-object v9, v16, v4

    const/4 v4, 0x0

    aget-object v4, v16, v4

    invoke-virtual {v4}, Ljava/lang/Character;->charValue()C

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v4}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyNormalManager;->addLayoutKey(Ljava/util/HashSet;C)V

    const/4 v4, 0x1

    aget-object v4, v16, v4

    invoke-virtual {v4}, Ljava/lang/Character;->charValue()C

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v4}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyNormalManager;->addLayoutKey(Ljava/util/HashSet;C)V

    goto :goto_6

    :cond_d
    const/high16 v4, 0x6b6f0000

    move/from16 v0, p3

    if-ne v0, v4, :cond_f

    const/4 v4, 0x1

    new-array v0, v4, [Ljava/lang/Character;

    move-object/from16 v16, v0

    if-eqz p6, :cond_e

    const/4 v4, 0x0

    move-object/from16 v0, v23

    iget-object v9, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->label:Ljava/lang/CharSequence;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v9, v1}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyNormalManager;->getSecondaryChar(II)I

    move-result v9

    int-to-char v9, v9

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    aput-object v9, v16, v4

    :goto_7
    const/4 v4, 0x0

    aget-object v4, v16, v4

    invoke-virtual {v4}, Ljava/lang/Character;->charValue()C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_e
    const/4 v4, 0x0

    move-object/from16 v0, v23

    iget-object v9, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->label:Ljava/lang/CharSequence;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    aput-object v9, v16, v4

    goto :goto_7

    :cond_f
    const/4 v4, 0x1

    new-array v0, v4, [Ljava/lang/Character;

    move-object/from16 v16, v0

    if-eqz p6, :cond_10

    const/4 v4, 0x0

    move-object/from16 v0, v23

    iget-object v9, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->label:Ljava/lang/CharSequence;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v9, v1}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyNormalManager;->getSecondaryChar(II)I

    move-result v9

    int-to-char v9, v9

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    aput-object v9, v16, v4

    :goto_8
    const/4 v4, 0x0

    aget-object v4, v16, v4

    invoke-virtual {v4}, Ljava/lang/Character;->charValue()C

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v4}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyNormalManager;->addLayoutKey(Ljava/util/HashSet;C)V

    goto/16 :goto_6

    :cond_10
    const/4 v4, 0x0

    move-object/from16 v0, v23

    iget-object v9, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->label:Ljava/lang/CharSequence;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    aput-object v9, v16, v4

    goto :goto_8

    :cond_11
    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    if-eqz v4, :cond_1

    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    array-length v4, v4

    if-lez v4, :cond_1

    const/16 v4, 0x20

    move-object/from16 v0, v23

    iget-object v9, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v10, 0x0

    aget v9, v9, v10

    if-ne v4, v9, :cond_1

    move-object/from16 v0, v23

    iget v4, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->height:I

    div-int/lit8 v19, v4, 0x2

    move-object/from16 v0, v23

    iget v4, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->y:I

    add-int v32, v4, v19

    new-instance v4, Lcom/touchtype_fluency/Point;

    move-object/from16 v0, v23

    iget v9, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->x:I

    add-int v9, v9, v19

    int-to-float v9, v9

    move/from16 v0, v32

    int-to-float v10, v0

    invoke-direct {v4, v9, v10}, Lcom/touchtype_fluency/Point;-><init>(FF)V

    new-instance v9, Lcom/touchtype_fluency/Point;

    move-object/from16 v0, v23

    iget v10, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->x:I

    move-object/from16 v0, v23

    iget v11, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->width:I

    add-int/2addr v10, v11

    sub-int v10, v10, v19

    int-to-float v10, v10

    move/from16 v0, v32

    int-to-float v11, v0

    invoke-direct {v9, v10, v11}, Lcom/touchtype_fluency/Point;-><init>(FF)V

    const/high16 v10, 0x3f800000

    const v11, 0x3dcccccd

    invoke-static {v4, v9, v10, v11}, Lcom/touchtype_fluency/KeyShape;->lineKey(Lcom/touchtype_fluency/Point;Lcom/touchtype_fluency/Point;FF)Lcom/touchtype_fluency/KeyShape;

    move-result-object v30

    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    array-length v4, v4

    new-array v0, v4, [Ljava/lang/Character;

    move-object/from16 v29, v0

    const/16 v21, 0x0

    :goto_9
    move-object/from16 v0, v29

    array-length v4, v0

    move/from16 v0, v21

    if-ge v0, v4, :cond_1

    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    aget v4, v4, v21

    int-to-char v4, v4

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    aput-object v4, v29, v21

    add-int/lit8 v21, v21, 0x1

    goto :goto_9

    :cond_12
    if-eqz p5, :cond_13

    const/high16 v4, 0x6b6f0000

    move/from16 v0, p3

    if-ne v0, v4, :cond_13

    const/16 v21, 0x0

    :goto_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyNormalManager;->KOREAN_VOWEL:[Ljava/lang/Character;

    array-length v4, v4

    move/from16 v0, v21

    if-ge v0, v4, :cond_13

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyNormalManager;->KOREAN_VOWEL:[Ljava/lang/Character;

    aget-object v9, v9, v21

    aput-object v9, v17, v4

    const/4 v4, 0x0

    aget-object v4, v17, v4

    invoke-virtual {v4}, Ljava/lang/Character;->charValue()C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v21, v21, 0x1

    goto :goto_a

    :cond_13
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, "/"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->getKeyModelHashCodeEx(Ljava/util/HashMap;)I

    move-result v9

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1, v9}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->loadCurrentKeyPressModelFileName(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v4

    if-eqz v4, :cond_14

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->shouldLoadKeyPressModel(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_16

    :cond_14
    if-nez p5, :cond_15

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->setKeyShpae(Lcom/touchtype_fluency/KeyShape;[Ljava/lang/Character;)V

    :cond_15
    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_16
    if-eqz p5, :cond_18

    move-object/from16 v4, p0

    move/from16 v9, p3

    move-object/from16 v10, p7

    :try_start_0
    invoke-virtual/range {v4 .. v10}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->saveAndLoadKeyPressModel(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashSet;ILjava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_b
    if-nez p5, :cond_17

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->setKeyShpae(Lcom/touchtype_fluency/KeyShape;[Ljava/lang/Character;)V

    :cond_17
    const/4 v4, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v9}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->setCacheSequenceAndTouchHistory(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;)V

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->clearIntentionalEvents()V

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->clearTouchHistoryRepository()V

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->cancelPreviewFlow()Z

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_18
    const/4 v12, 0x0

    move-object/from16 v9, p0

    move-object v10, v5

    move-object v11, v6

    move-object v13, v8

    move/from16 v14, p3

    move-object/from16 v15, p7

    :try_start_1
    invoke-virtual/range {v9 .. v15}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->saveAndLoadKeyPressModel(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashSet;ILjava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_b

    :catch_0
    move-exception v18

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyNormalManager;->isLoadKeypressModelError:Z

    if-eqz v4, :cond_19

    const-string v4, "SamsungIME"

    const-string v9, "Can\'t load KeyPressModel !!!"

    invoke-static {v4, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    :cond_19
    invoke-virtual/range {p0 .. p6}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyNormalManager;->loadKeyPressModel(Ljava/io/File;Lcom/diotek/ime/framework/view/Keyboard;IIZZ)Z

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyNormalManager;->isLoadKeypressModelError:Z

    goto :goto_b
.end method

.method public loadKeyPressModelForHWR(II)Z
    .locals 10

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    const/16 v7, 0x28

    invoke-direct {v1, v7}, Ljava/util/HashMap;-><init>(I)V

    const/4 v2, 0x0

    new-array v0, v6, [Ljava/lang/Character;

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyNormalManager;->LATIN_LABELS:[Ljava/lang/Character;

    :goto_0
    const/4 v3, 0x0

    :goto_1
    array-length v7, v2

    if-ge v3, v7, :cond_0

    aget-object v7, v2, v3

    aput-object v7, v0, v5

    aget-object v7, v0, v5

    invoke-virtual {v7}, Ljava/lang/Character;->charValue()C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/touchtype_fluency/Point;

    int-to-float v8, v3

    int-to-float v9, v3

    invoke-direct {v7, v8, v9}, Lcom/touchtype_fluency/Point;-><init>(FF)V

    invoke-static {v7}, Lcom/touchtype_fluency/KeyShape;->pointKey(Lcom/touchtype_fluency/Point;)Lcom/touchtype_fluency/KeyShape;

    move-result-object v7

    invoke-virtual {v1, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :pswitch_1
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyNormalManager;->KOREAN_LABELS:[Ljava/lang/Character;

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyNormalManager;->LATIN_LABELS:[Ljava/lang/Character;

    goto :goto_0

    :pswitch_3
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyNormalManager;->CYRL_LABELS:[Ljava/lang/Character;

    goto :goto_0

    :pswitch_4
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyNormalManager;->NORDIC_LABELS:[Ljava/lang/Character;

    goto :goto_0

    :pswitch_5
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyNormalManager;->ARABIC_LABELS:[Ljava/lang/Character;

    goto :goto_0

    :pswitch_6
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyNormalManager;->ARMANIAN_LABELS:[Ljava/lang/Character;

    goto :goto_0

    :pswitch_7
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyNormalManager;->GEORGIAN_LABELS:[Ljava/lang/Character;

    goto :goto_0

    :pswitch_8
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyNormalManager;->GREEK_LABELS:[Ljava/lang/Character;

    goto :goto_0

    :pswitch_9
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyNormalManager;->HEBREW_LABELS:[Ljava/lang/Character;

    goto :goto_0

    :pswitch_a
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyNormalManager;->THAI_LABELS:[Ljava/lang/Character;

    goto :goto_0

    :pswitch_b
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyNormalManager;->AZERBAIJANI_LABELS:[Ljava/lang/Character;

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v7

    if-nez v7, :cond_1

    :goto_2
    return v5

    :cond_1
    invoke-virtual {p0, v1, v4, p2}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->saveAndLoadKeyPressModel(Ljava/util/HashMap;Ljava/util/HashSet;I)V

    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->clearTouchHistoryRepository()V

    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->cancelPreviewFlow()Z

    move v5, v6

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
    .end packed-switch
.end method
