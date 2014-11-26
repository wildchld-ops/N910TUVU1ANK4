.class public Lcom/diotek/ime/framework/input/hw/HwKeyMap;
.super Ljava/lang/Object;
.source "HwKeyMap.java"


# static fields
.field private static final HWKEY_CODE_MAP:[I

.field private static final HWKEY_MAP:[Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

.field private static final HW_PHONEPAD_KEY_MAP:[Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/16 v0, 0x30

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/diotek/ime/framework/input/hw/HwKeyMap;->HWKEY_CODE_MAP:[I

    const/16 v0, 0x725

    new-array v7, v0, [Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const/4 v8, 0x0

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ar"

    const/4 v2, 0x0

    const/16 v3, 0x630

    const/16 v4, 0x651

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/4 v8, 0x1

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ar"

    const/4 v2, 0x1

    const/16 v3, 0x31

    const/16 v4, 0x21

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/4 v8, 0x2

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ar"

    const/4 v2, 0x2

    const/16 v3, 0x32

    const/16 v4, 0x40

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/4 v8, 0x3

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ar"

    const/4 v2, 0x3

    const/16 v3, 0x33

    const/16 v4, 0x23

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/4 v8, 0x4

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ar"

    const/4 v2, 0x4

    const/16 v3, 0x34

    const/16 v4, 0x24

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/4 v8, 0x5

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ar"

    const/4 v2, 0x5

    const/16 v3, 0x35

    const/16 v4, 0x25

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/4 v8, 0x6

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ar"

    const/4 v2, 0x6

    const/16 v3, 0x36

    const/16 v4, 0x5e

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/4 v8, 0x7

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ar"

    const/4 v2, 0x7

    const/16 v3, 0x37

    const/16 v4, 0x26

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x8

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ar"

    const/16 v2, 0x8

    const/16 v3, 0x38

    const/16 v4, 0x2a

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x9

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ar"

    const/16 v2, 0x9

    const/16 v3, 0x39

    const/16 v4, 0x28

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0xa

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ar"

    const/16 v2, 0xa

    const/16 v3, 0x30

    const/16 v4, 0x29

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0xb

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ar"

    const/16 v2, 0xb

    const/16 v3, 0x2d

    const/16 v4, 0x5f

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0xc

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ar"

    const/16 v2, 0xc

    const/16 v3, 0x3d

    const/16 v4, 0x2b

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0xd

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ar"

    const/16 v2, 0xd

    const/16 v3, 0x636

    const/16 v4, 0x64e

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0xe

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ar"

    const/16 v2, 0xe

    const/16 v3, 0x635

    const/16 v4, 0x64b

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0xf

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ar"

    const/16 v2, 0xf

    const/16 v3, 0x62b

    const/16 v4, 0x64f

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x10

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ar"

    const/16 v2, 0x10

    const/16 v3, 0x642

    const/16 v4, 0x64c

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x11

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ar"

    const/16 v2, 0x11

    const/16 v3, 0x641

    const v4, 0xfef9

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x12

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ar"

    const/16 v2, 0x12

    const/16 v3, 0x63a

    const/16 v4, 0x625

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x13

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ar"

    const/16 v2, 0x13

    const/16 v3, 0x639

    const/16 v4, 0x60

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x14

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ar"

    const/16 v2, 0x14

    const/16 v3, 0x647

    const/16 v4, 0xf7

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x15

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ar"

    const/16 v2, 0x15

    const/16 v3, 0x62e

    const/16 v4, 0xd7

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x16

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ar"

    const/16 v2, 0x16

    const/16 v3, 0x62d

    const/16 v4, 0x61b

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x17

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ar"

    const/16 v2, 0x17

    const/16 v3, 0x62c

    const/16 v4, 0x3e

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x18

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ar"

    const/16 v2, 0x18

    const/16 v3, 0x62f

    const/16 v4, 0x3c

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x19

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ar"

    const/16 v2, 0x19

    const/16 v3, 0x634

    const/16 v4, 0x650

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x1a

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ar"

    const/16 v2, 0x1a

    const/16 v3, 0x633

    const/16 v4, 0x64d

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x1b

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ar"

    const/16 v2, 0x1b

    const/16 v3, 0x64a

    const/16 v4, 0x5b

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x1c

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ar"

    const/16 v2, 0x1c

    const/16 v3, 0x628

    const/16 v4, 0x5d

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x1d

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ar"

    const/16 v2, 0x1d

    const/16 v3, 0x644

    const v4, 0xfef7

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x1e

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ar"

    const/16 v2, 0x1e

    const/16 v3, 0x627

    const/16 v4, 0x623

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x1f

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ar"

    const/16 v2, 0x1f

    const/16 v3, 0x62a

    const/16 v4, 0x2d

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x20

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ar"

    const/16 v2, 0x20

    const/16 v3, 0x646

    const/16 v4, 0x60c

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x21

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ar"

    const/16 v2, 0x21

    const/16 v3, 0x645

    const/16 v4, 0x2f

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x22

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ar"

    const/16 v2, 0x22

    const/16 v3, 0x643

    const/16 v4, 0x3a

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x23

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ar"

    const/16 v2, 0x23

    const/16 v3, 0x637

    const/16 v4, 0x22

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x24

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ar"

    const/16 v2, 0x24

    const v3, 0xffe6

    const/16 v4, 0x7c

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x25

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ar"

    const/16 v2, 0x25

    const/16 v3, 0x5c

    const/16 v4, 0x7c

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x26

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ar"

    const/16 v2, 0x26

    const/16 v3, 0x626

    const/16 v4, 0x653

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x27

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ar"

    const/16 v2, 0x27

    const/16 v3, 0x621

    const/16 v4, 0x652

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x28

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ar"

    const/16 v2, 0x28

    const/16 v3, 0x624

    const/16 v4, 0x7b

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x29

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ar"

    const/16 v2, 0x29

    const/16 v3, 0x631

    const/16 v4, 0x7d

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x2a

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ar"

    const/16 v2, 0x2a

    const v3, 0xfefb

    const v4, 0xfef5

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x2b

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ar"

    const/16 v2, 0x2b

    const/16 v3, 0x649

    const/16 v4, 0x622

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x2c

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ar"

    const/16 v2, 0x2c

    const/16 v3, 0x629

    const/16 v4, 0x27

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x2d

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ar"

    const/16 v2, 0x2d

    const/16 v3, 0x648

    const/16 v4, 0x2c

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x2e

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ar"

    const/16 v2, 0x2e

    const/16 v3, 0x632

    const/16 v4, 0x2e

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x2f

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ar"

    const/16 v2, 0x2f

    const/16 v3, 0x638

    const/16 v4, 0x61f

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x30

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "az"

    const/4 v2, 0x0

    const/16 v3, 0xba

    const/16 v4, 0xaa

    const/16 v5, 0x5c

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x31

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "az"

    const/4 v2, 0x1

    const/16 v3, 0x31

    const/16 v4, 0x21

    const/16 v5, 0x7c

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x32

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "az"

    const/4 v2, 0x2

    const/16 v3, 0x32

    const/16 v4, 0x22

    const/16 v5, 0x40

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x33

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "az"

    const/4 v2, 0x3

    const/16 v3, 0x33

    const/16 v4, 0xb7

    const/16 v5, 0x23

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x34

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "az"

    const/4 v2, 0x4

    const/16 v3, 0x34

    const/16 v4, 0x24

    const/16 v5, 0x7e

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x35

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "az"

    const/4 v2, 0x5

    const/16 v3, 0x35

    const/16 v4, 0x25

    const/16 v5, 0x20ac

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x36

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "az"

    const/4 v2, 0x6

    const/16 v3, 0x36

    const/16 v4, 0x26

    const/16 v5, 0xac

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x37

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "az"

    const/4 v2, 0x7

    const/16 v3, 0x37

    const/16 v4, 0x2f

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x38

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "az"

    const/16 v2, 0x8

    const/16 v3, 0x38

    const/16 v4, 0x28

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x39

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "az"

    const/16 v2, 0x9

    const/16 v3, 0x39

    const/16 v4, 0x29

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x3a

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "az"

    const/16 v2, 0xa

    const/16 v3, 0x30

    const/16 v4, 0x3d

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x3b

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "az"

    const/16 v2, 0xb

    const/16 v3, 0x27

    const/16 v4, 0x3f

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x3c

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "az"

    const/16 v2, 0xc

    const/16 v3, 0xa1

    const/16 v4, 0xbf

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x3d

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "az"

    const/16 v2, 0xf

    const/16 v3, 0x65

    const/16 v4, 0x65

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x3e

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "az"

    const/16 v2, 0x13

    const/16 v3, 0x75

    const/16 v4, 0x75

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x3f

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "az"

    const/16 v2, 0x14

    const/16 v3, 0x69

    const/16 v4, 0x69

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x40

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "az"

    const/16 v2, 0x15

    const/16 v3, 0x6f

    const/16 v4, 0x6f

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x41

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "az"

    const/16 v2, 0x17

    const/16 v3, 0x60

    const/16 v4, 0x5e

    const/16 v5, 0x5b

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x42

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "az"

    const/16 v2, 0x18

    const/16 v3, 0x2b

    const/16 v4, 0x2a

    const/16 v5, 0x5d

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x43

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "az"

    const/16 v2, 0x19

    const/16 v3, 0x61

    const/16 v4, 0x61

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x44

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "az"

    const/16 v2, 0x22

    const/16 v3, 0xf1

    const/16 v4, 0xf1

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x45

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "az"

    const/16 v2, 0x23

    const/16 v3, 0xb4

    const/16 v4, 0xa8

    const/16 v5, 0x7b

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x46

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "az"

    const/16 v2, 0x24

    const/16 v3, 0xe7

    const/16 v4, 0xe7

    const/16 v5, 0x7d

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x47

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "az"

    const/16 v2, 0x25

    const/16 v3, 0x3c

    const/16 v4, 0x3e

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x48

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "az"

    const/16 v2, 0x2d

    const/16 v3, 0x2c

    const/16 v4, 0x3b

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x49

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "az"

    const/16 v2, 0x2e

    const/16 v3, 0x2e

    const/16 v4, 0x3a

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x4a

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "az"

    const/16 v2, 0x2f

    const/16 v3, 0x2d

    const/16 v4, 0x5f

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x4b

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "bg"

    const/4 v2, 0x0

    const/16 v3, 0x60

    const/16 v4, 0x7e

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x4c

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "bg"

    const/4 v2, 0x1

    const/16 v3, 0x31

    const/16 v4, 0x21

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x4d

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "bg"

    const/4 v2, 0x2

    const/16 v3, 0x32

    const/16 v4, 0x3f

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x4e

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "bg"

    const/4 v2, 0x3

    const/16 v3, 0x33

    const/16 v4, 0x2b

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x4f

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "bg"

    const/4 v2, 0x4

    const/16 v3, 0x34

    const/16 v4, 0x22

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x50

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "bg"

    const/4 v2, 0x5

    const/16 v3, 0x35

    const/16 v4, 0x20ac

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x51

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "bg"

    const/4 v2, 0x6

    const/16 v3, 0x36

    const/16 v4, 0x3d

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x52

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "bg"

    const/4 v2, 0x7

    const/16 v3, 0x37

    const/16 v4, 0x3a

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x53

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "bg"

    const/16 v2, 0x8

    const/16 v3, 0x38

    const/16 v4, 0x2f

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x54

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "bg"

    const/16 v2, 0x9

    const/16 v3, 0x39

    const/16 v4, 0x5f

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x55

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "bg"

    const/16 v2, 0xa

    const/16 v3, 0x30

    const/16 v4, 0x2116

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x56

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "bg"

    const/16 v2, 0xb

    const/16 v3, 0x2d

    const/16 v4, 0x49

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x57

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "bg"

    const/16 v2, 0xc

    const/16 v3, 0x2e

    const/16 v4, 0x56

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x58

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "bg"

    const/16 v2, 0xd

    const/16 v3, 0x2c

    const/16 v4, 0x44b

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x59

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "bg"

    const/16 v2, 0xe

    const/16 v3, 0x443

    const/16 v4, 0x443

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x5a

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "bg"

    const/16 v2, 0xf

    const/16 v3, 0x435

    const/16 v4, 0x435

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x5b

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "bg"

    const/16 v2, 0x10

    const/16 v3, 0x438

    const/16 v4, 0x438

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x5c

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "bg"

    const/16 v2, 0x11

    const/16 v3, 0x448

    const/16 v4, 0x448

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x5d

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "bg"

    const/16 v2, 0x12

    const/16 v3, 0x449

    const/16 v4, 0x449

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x5e

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "bg"

    const/16 v2, 0x13

    const/16 v3, 0x43a

    const/16 v4, 0x43a

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x5f

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "bg"

    const/16 v2, 0x14

    const/16 v3, 0x441

    const/16 v4, 0x441

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x60

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "bg"

    const/16 v2, 0x15

    const/16 v3, 0x434

    const/16 v4, 0x434

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x61

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "bg"

    const/16 v2, 0x16

    const/16 v3, 0x437

    const/16 v4, 0x437

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x62

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "bg"

    const/16 v2, 0x17

    const/16 v3, 0x446

    const/16 v4, 0x446

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x63

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "bg"

    const/16 v2, 0x18

    const/16 v3, 0x3b

    const/16 v4, 0xa7

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x64

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "bg"

    const/16 v2, 0x19

    const/16 v3, 0x44c

    const/16 v4, 0x44c

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x65

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "bg"

    const/16 v2, 0x1a

    const/16 v3, 0x44f

    const/16 v4, 0x44f

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x66

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "bg"

    const/16 v2, 0x1b

    const/16 v3, 0x430

    const/16 v4, 0x430

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x67

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "bg"

    const/16 v2, 0x1c

    const/16 v3, 0x43e

    const/16 v4, 0x43e

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x68

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "bg"

    const/16 v2, 0x1d

    const/16 v3, 0x436

    const/16 v4, 0x436

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x69

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "bg"

    const/16 v2, 0x1e

    const/16 v3, 0x433

    const/16 v4, 0x433

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x6a

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "bg"

    const/16 v2, 0x1f

    const/16 v3, 0x442

    const/16 v4, 0x442

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x6b

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "bg"

    const/16 v2, 0x20

    const/16 v3, 0x43d

    const/16 v4, 0x43d

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x6c

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "bg"

    const/16 v2, 0x21

    const/16 v3, 0x432

    const/16 v4, 0x432

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x6d

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "bg"

    const/16 v2, 0x22

    const/16 v3, 0x43c

    const/16 v4, 0x43c

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x6e

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "bg"

    const/16 v2, 0x23

    const/16 v3, 0x447

    const/16 v4, 0x447

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x6f

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "bg"

    const/16 v2, 0x24

    const/16 v3, -0xff

    const/16 v4, -0xff

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x70

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "bg"

    const/16 v2, 0x25

    const/16 v3, 0x28

    const/16 v4, 0x29

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x71

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "bg"

    const/16 v2, 0x26

    const/16 v3, 0x44e

    const/16 v4, 0x44e

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x72

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "bg"

    const/16 v2, 0x27

    const/16 v3, 0x439

    const/16 v4, 0x439

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x73

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "bg"

    const/16 v2, 0x28

    const/16 v3, 0x44a

    const/16 v4, 0x44a

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x74

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "bg"

    const/16 v2, 0x29

    const/16 v3, 0x44d

    const/16 v4, 0x44d

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x75

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "bg"

    const/16 v2, 0x2a

    const/16 v3, 0x444

    const/16 v4, 0x444

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x76

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "bg"

    const/16 v2, 0x2b

    const/16 v3, 0x445

    const/16 v4, 0x445

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x77

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "bg"

    const/16 v2, 0x2c

    const/16 v3, 0x43f

    const/16 v4, 0x43f

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x78

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "bg"

    const/16 v2, 0x2d

    const/16 v3, 0x440

    const/16 v4, 0x440

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x79

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "bg"

    const/16 v2, 0x2e

    const/16 v3, 0x43b

    const/16 v4, 0x43b

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x7a

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "bg"

    const/16 v2, 0x2f

    const/16 v3, 0x431

    const/16 v4, 0x431

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x7b

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "cs"

    const/4 v2, 0x0

    const/16 v3, 0x3b

    const/16 v4, 0xb0

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x7c

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "cs"

    const/4 v2, 0x1

    const/16 v3, 0x2b

    const/16 v4, 0x31

    const/16 v5, 0x7e

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x7d

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "cs"

    const/4 v2, 0x2

    const/16 v3, 0x11b

    const/16 v4, 0x32

    const/16 v5, 0x2c7

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x7e

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "cs"

    const/4 v2, 0x3

    const/16 v3, 0x161

    const/16 v4, 0x33

    const/16 v5, 0x5e

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x7f

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "cs"

    const/4 v2, 0x4

    const/16 v3, 0x10d

    const/16 v4, 0x34

    const/16 v5, 0x2d8

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x80

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "cs"

    const/4 v2, 0x5

    const/16 v3, 0x159

    const/16 v4, 0x35

    const/16 v5, 0xb0

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x81

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "cs"

    const/4 v2, 0x6

    const/16 v3, 0x17e

    const/16 v4, 0x36

    const/16 v5, 0x2db

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x82

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "cs"

    const/4 v2, 0x7

    const/16 v3, 0xfd

    const/16 v4, 0x37

    const/16 v5, 0x60

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x83

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "cs"

    const/16 v2, 0x8

    const/16 v3, 0xe1

    const/16 v4, 0x38

    const/16 v5, 0x2d9

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x84

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "cs"

    const/16 v2, 0x9

    const/16 v3, 0xed

    const/16 v4, 0x39

    const/16 v5, 0xb4

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x85

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "cs"

    const/16 v2, 0xa

    const/16 v3, 0xe9

    const/16 v4, 0x30

    const/16 v5, 0x2dd

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x86

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "cs"

    const/16 v2, 0xb

    const/16 v3, 0x3d

    const/16 v4, 0x25

    const/16 v5, 0xa8

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x87

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "cs"

    const/16 v2, 0xc

    const/16 v3, 0xb4

    const/16 v4, 0x2c7

    const/16 v5, 0xb8

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x88

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "cs"

    const/16 v2, 0xd

    const/16 v3, 0x71

    const/16 v4, 0x71

    const/16 v5, 0x5c

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x89

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "cs"

    const/16 v2, 0xe

    const/16 v3, 0x77

    const/16 v4, 0x77

    const/16 v5, 0x7c

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x8a

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "cs"

    const/16 v2, 0xf

    const/16 v3, 0x65

    const/16 v4, 0x65

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x8b

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "cs"

    const/16 v2, 0x12

    const/16 v3, 0x7a

    const/16 v4, 0x7a

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x8c

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "cs"

    const/16 v2, 0x13

    const/16 v3, 0x75

    const/16 v4, 0x75

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x8d

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "cs"

    const/16 v2, 0x14

    const/16 v3, 0x69

    const/16 v4, 0x69

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x8e

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "cs"

    const/16 v2, 0x15

    const/16 v3, 0x6f

    const/16 v4, 0x6f

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x8f

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "cs"

    const/16 v2, 0x16

    const/16 v3, 0x70

    const/16 v4, 0x70

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x90

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "cs"

    const/16 v2, 0x17

    const/16 v3, 0xfa

    const/16 v4, 0x2f

    const/16 v5, 0xf7

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x91

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "cs"

    const/16 v2, 0x18

    const/16 v3, 0x29

    const/16 v4, 0x28

    const/16 v5, 0xd7

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x92

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "cs"

    const/16 v2, 0x19

    const/16 v3, 0x61

    const/16 v4, 0x61

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x93

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "cs"

    const/16 v2, 0x1a

    const/16 v3, 0x73

    const/16 v4, 0x73

    const/16 v5, 0x111

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x94

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "cs"

    const/16 v2, 0x1b

    const/16 v3, 0x64

    const/16 v4, 0x64

    const/16 v5, 0x110

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x95

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "cs"

    const/16 v2, 0x1c

    const/16 v3, 0x66

    const/16 v4, 0x66

    const/16 v5, 0x5b

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x96

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "cs"

    const/16 v2, 0x1d

    const/16 v3, 0x67

    const/16 v4, 0x67

    const/16 v5, 0x5d

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x97

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "cs"

    const/16 v2, 0x20

    const/16 v3, 0x6b

    const/16 v4, 0x6b

    const/16 v5, 0x142

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x98

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "cs"

    const/16 v2, 0x21

    const/16 v3, 0x6c

    const/16 v4, 0x6c

    const/16 v5, 0x141

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x99

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "cs"

    const/16 v2, 0x22

    const/16 v3, 0x16f

    const/16 v4, 0x22

    const/16 v5, 0x24

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x9a

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "cs"

    const/16 v2, 0x23

    const/16 v3, 0xa7

    const/16 v4, 0x21

    const/16 v5, 0xdf

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x9b

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "cs"

    const/16 v2, 0x24

    const/16 v3, -0xff

    const/16 v4, -0xff

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x9c

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "cs"

    const/16 v2, 0x25

    const/16 v3, 0xa8

    const/16 v4, 0x27

    const/16 v5, 0xa4

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x9d

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "cs"

    const/16 v2, 0x26

    const/16 v3, 0x79

    const/16 v4, 0x79

    const/16 v5, 0x3e

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x9e

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "cs"

    const/16 v2, 0x27

    const/16 v3, 0x78

    const/16 v4, 0x78

    const/16 v5, 0x23

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x9f

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "cs"

    const/16 v2, 0x28

    const/16 v3, 0x63

    const/16 v4, 0x63

    const/16 v5, 0x26

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0xa0

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "cs"

    const/16 v2, 0x29

    const/16 v3, 0x76

    const/16 v4, 0x76

    const/16 v5, 0x40

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0xa1

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "cs"

    const/16 v2, 0x2a

    const/16 v3, 0x62

    const/16 v4, 0x62

    const/16 v5, 0x7b

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0xa2

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "cs"

    const/16 v2, 0x2b

    const/16 v3, 0x6e

    const/16 v4, 0x6e

    const/16 v5, 0x7d

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0xa3

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "cs"

    const/16 v2, 0x2d

    const/16 v3, 0x2c

    const/16 v4, 0x3f

    const/16 v5, 0x3c

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0xa4

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "cs"

    const/16 v2, 0x2e

    const/16 v3, 0x2e

    const/16 v4, 0x3a

    const/16 v5, 0x3e

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0xa5

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "cs"

    const/16 v2, 0x2f

    const/16 v3, 0x2d

    const/16 v4, 0x5f

    const/16 v5, 0x2a

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0xa6

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "da"

    const/4 v2, 0x0

    const/16 v3, 0xa7

    const/16 v4, 0xbd

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0xa7

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "da"

    const/4 v2, 0x1

    const/16 v3, 0x31

    const/16 v4, 0x21

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0xa8

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "da"

    const/4 v2, 0x2

    const/16 v3, 0x32

    const/16 v4, 0x22

    const/16 v5, 0x40

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0xa9

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "da"

    const/4 v2, 0x3

    const/16 v3, 0x33

    const/16 v4, 0x23

    const/16 v5, 0xa3

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0xaa

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "da"

    const/4 v2, 0x4

    const/16 v3, 0x34

    const/16 v4, 0xa4

    const/16 v5, 0x24

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0xab

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "da"

    const/4 v2, 0x5

    const/16 v3, 0x35

    const/16 v4, 0x25

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0xac

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "da"

    const/4 v2, 0x6

    const/16 v3, 0x36

    const/16 v4, 0x26

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0xad

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "da"

    const/4 v2, 0x7

    const/16 v3, 0x37

    const/16 v4, 0x2f

    const/16 v5, 0x7b

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0xae

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "da"

    const/16 v2, 0x8

    const/16 v3, 0x38

    const/16 v4, 0x28

    const/16 v5, 0x5b

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0xaf

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "da"

    const/16 v2, 0x9

    const/16 v3, 0x39

    const/16 v4, 0x29

    const/16 v5, 0x5d

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0xb0

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "da"

    const/16 v2, 0xa

    const/16 v3, 0x30

    const/16 v4, 0x3d

    const/16 v5, 0x7d

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0xb1

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "da"

    const/16 v2, 0xb

    const/16 v3, 0x2b

    const/16 v4, 0x3f

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0xb2

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "da"

    const/16 v2, 0xc

    const/16 v3, 0xb4

    const/16 v4, 0x60

    const/16 v5, 0x7c

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0xb3

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "da"

    const/16 v2, 0xf

    const/16 v3, 0x65

    const/16 v4, 0x65

    const/16 v5, 0x20ac

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0xb4

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "da"

    const/16 v2, 0x13

    const/16 v3, 0x75

    const/16 v4, 0x75

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0xb5

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "da"

    const/16 v2, 0x14

    const/16 v3, 0x69

    const/16 v4, 0x69

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0xb6

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "da"

    const/16 v2, 0x15

    const/16 v3, 0x6f

    const/16 v4, 0x6f

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0xb7

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "da"

    const/16 v2, 0x17

    const/16 v3, 0xe5

    const/16 v4, 0xe5

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0xb8

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "da"

    const/16 v2, 0x18

    const/16 v3, 0xa8

    const/16 v4, 0x5e

    const/16 v5, 0x7e

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0xb9

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "da"

    const/16 v2, 0x19

    const/16 v3, 0x61

    const/16 v4, 0x61

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0xba

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "da"

    const/16 v2, 0x22

    const/16 v3, 0xe6

    const/16 v4, 0xe6

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0xbb

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "da"

    const/16 v2, 0x23

    const/16 v3, 0xf8

    const/16 v4, 0xf8

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0xbc

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "da"

    const/16 v2, 0x24

    const/16 v3, 0x27

    const/16 v4, 0x2a

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0xbd

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "da"

    const/16 v2, 0x25

    const/16 v3, 0x3c

    const/16 v4, 0x3e

    const/16 v5, 0x5c

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0xbe

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "da"

    const/16 v2, 0x2c

    const/16 v3, 0x6d

    const/16 v4, 0x6d

    const/16 v5, 0x3bc

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0xbf

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "da"

    const/16 v2, 0x2d

    const/16 v3, 0x2c

    const/16 v4, 0x3b

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0xc0

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "da"

    const/16 v2, 0x2e

    const/16 v3, 0x2e

    const/16 v4, 0x3a

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0xc1

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "da"

    const/16 v2, 0x2f

    const/16 v3, 0x2d

    const/16 v4, 0x5f

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0xc2

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "de"

    const/4 v2, 0x0

    const/16 v3, 0x5e

    const/16 v4, 0xb0

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0xc3

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "de"

    const/4 v2, 0x1

    const/16 v3, 0x31

    const/16 v4, 0x21

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0xc4

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "de"

    const/4 v2, 0x2

    const/16 v3, 0x32

    const/16 v4, 0xa8

    const/16 v5, 0xb2

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0xc5

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "de"

    const/4 v2, 0x3

    const/16 v3, 0x33

    const/16 v4, 0xa7

    const/16 v5, 0xb3

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0xc6

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "de"

    const/4 v2, 0x4

    const/16 v3, 0x34

    const/16 v4, 0x24

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0xc7

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "de"

    const/4 v2, 0x5

    const/16 v3, 0x35

    const/16 v4, 0x25

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0xc8

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "de"

    const/4 v2, 0x6

    const/16 v3, 0x36

    const/16 v4, 0x26

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0xc9

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "de"

    const/4 v2, 0x7

    const/16 v3, 0x37

    const/16 v4, 0x2f

    const/16 v5, 0x7b

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0xca

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "de"

    const/16 v2, 0x8

    const/16 v3, 0x38

    const/16 v4, 0x28

    const/16 v5, 0x5b

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0xcb

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "de"

    const/16 v2, 0x9

    const/16 v3, 0x39

    const/16 v4, 0x29

    const/16 v5, 0x5d

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0xcc

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "de"

    const/16 v2, 0xa

    const/16 v3, 0x30

    const/16 v4, 0x3d

    const/16 v5, 0x7d

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0xcd

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "de"

    const/16 v2, 0xb

    const/16 v3, 0xdf

    const/16 v4, 0x3f

    const/16 v5, 0x5c

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0xce

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "de"

    const/16 v2, 0xc

    const/16 v3, 0xb4

    const/16 v4, 0x60

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0xcf

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "de"

    const/16 v2, 0xd

    const/16 v3, 0x71

    const/16 v4, 0x71

    const/16 v5, 0x40

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0xd0

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "de"

    const/16 v2, 0xf

    const/16 v3, 0x65

    const/16 v4, 0x65

    const/16 v5, 0x20ac

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0xd1

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "de"

    const/16 v2, 0x12

    const/16 v3, 0x7a

    const/16 v4, 0x7a

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0xd2

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "de"

    const/16 v2, 0x13

    const/16 v3, 0x75

    const/16 v4, 0x75

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0xd3

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "de"

    const/16 v2, 0x14

    const/16 v3, 0x69

    const/16 v4, 0x69

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0xd4

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "de"

    const/16 v2, 0x15

    const/16 v3, 0x6f

    const/16 v4, 0x6f

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0xd5

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "de"

    const/16 v2, 0x17

    const/16 v3, 0xfc

    const/16 v4, 0xfc

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0xd6

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "de"

    const/16 v2, 0x18

    const/16 v3, 0x2b

    const/16 v4, 0x2a

    const/16 v5, 0x7e

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0xd7

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "de"

    const/16 v2, 0x19

    const/16 v3, 0x61

    const/16 v4, 0x61

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0xd8

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "de"

    const/16 v2, 0x22

    const/16 v3, 0xf6

    const/16 v4, 0xf6

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0xd9

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "de"

    const/16 v2, 0x23

    const/16 v3, 0xe4

    const/16 v4, 0xe4

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0xda

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "de"

    const/16 v2, 0x24

    const/16 v3, 0x23

    const/16 v4, 0x27

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0xdb

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "de"

    const/16 v2, 0x25

    const/16 v3, 0x3c

    const/16 v4, 0x3e

    const/16 v5, 0x7c

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0xdc

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "de"

    const/16 v2, 0x26

    const/16 v3, 0x79

    const/16 v4, 0x79

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0xdd

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "de"

    const/16 v2, 0x2c

    const/16 v3, 0x6d

    const/16 v4, 0x6d

    const/16 v5, 0x3bc

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0xde

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "de"

    const/16 v2, 0x2d

    const/16 v3, 0x2c

    const/16 v4, 0x3b

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0xdf

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "de"

    const/16 v2, 0x2e

    const/16 v3, 0x2e

    const/16 v4, 0x3a

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0xe0

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "de"

    const/16 v2, 0x2f

    const/16 v3, 0x2d

    const/16 v4, 0x5f

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0xe1

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "de_CH"

    const/4 v2, 0x0

    const/16 v3, 0xa7

    const/16 v4, 0xb0

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0xe2

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "de_CH"

    const/4 v2, 0x1

    const/16 v3, 0x31

    const/16 v4, 0x2b

    const/16 v5, 0x7c

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0xe3

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "de_CH"

    const/4 v2, 0x2

    const/16 v3, 0x32

    const/16 v4, 0xa8

    const/16 v5, 0x40

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0xe4

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "de_CH"

    const/4 v2, 0x3

    const/16 v3, 0x33

    const/16 v4, 0x2a

    const/16 v5, 0x23

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0xe5

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "de_CH"

    const/4 v2, 0x4

    const/16 v3, 0x34

    const/16 v4, 0xc7

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0xe6

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "de_CH"

    const/4 v2, 0x5

    const/16 v3, 0x35

    const/16 v4, 0x25

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0xe7

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "de_CH"

    const/4 v2, 0x6

    const/16 v3, 0x36

    const/16 v4, 0x26

    const/16 v5, 0xac

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0xe8

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "de_CH"

    const/4 v2, 0x7

    const/16 v3, 0x37

    const/16 v4, 0x2f

    const/16 v5, 0xa6

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0xe9

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "de_CH"

    const/16 v2, 0x8

    const/16 v3, 0x38

    const/16 v4, 0x28

    const/16 v5, 0x20b5

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0xea

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "de_CH"

    const/16 v2, 0x9

    const/16 v3, 0x39

    const/16 v4, 0x29

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0xeb

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "de_CH"

    const/16 v2, 0xa

    const/16 v3, 0x30

    const/16 v4, 0x3d

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0xec

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "de_CH"

    const/16 v2, 0xb

    const/16 v3, 0x27

    const/16 v4, 0x3f

    const/16 v5, 0xb4

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0xed

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "de_CH"

    const/16 v2, 0xc

    const/16 v3, 0x5e

    const/16 v4, 0x60

    const/16 v5, 0x7e

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0xee

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "de_CH"

    const/16 v2, 0xd

    const/16 v3, 0x71

    const/16 v4, 0x71

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0xef

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "de_CH"

    const/16 v2, 0xf

    const/16 v3, 0x65

    const/16 v4, 0x65

    const/16 v5, 0x20ac

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0xf0

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "de_CH"

    const/16 v2, 0x12

    const/16 v3, 0x7a

    const/16 v4, 0x7a

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0xf1

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "de_CH"

    const/16 v2, 0x13

    const/16 v3, 0x75

    const/16 v4, 0x75

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0xf2

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "de_CH"

    const/16 v2, 0x14

    const/16 v3, 0x69

    const/16 v4, 0x69

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0xf3

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "de_CH"

    const/16 v2, 0x15

    const/16 v3, 0x6f

    const/16 v4, 0x6f

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0xf4

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "de_CH"

    const/16 v2, 0x17

    const/16 v3, 0xfc

    const/16 v4, 0xe8

    const/16 v5, 0x5b

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0xf5

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "de_CH"

    const/16 v2, 0x18

    const/16 v3, 0xa8

    const/16 v4, 0x21

    const/16 v5, 0x5d

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0xf6

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "de_CH"

    const/16 v2, 0x19

    const/16 v3, 0x61

    const/16 v4, 0x61

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0xf7

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "de_CH"

    const/16 v2, 0x22

    const/16 v3, 0xf6

    const/16 v4, 0xe9

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0xf8

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "de_CH"

    const/16 v2, 0x23

    const/16 v3, 0xe4

    const/16 v4, 0xe0

    const/16 v5, 0x7b

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0xf9

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "de_CH"

    const/16 v2, 0x24

    const/16 v3, 0x24

    const/16 v4, 0xa3

    const/16 v5, 0x7d

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0xfa

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "de_CH"

    const/16 v2, 0x25

    const/16 v3, 0x3c

    const/16 v4, 0x3e

    const/16 v5, 0x5c

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0xfb

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "de_CH"

    const/16 v2, 0x26

    const/16 v3, 0x79

    const/16 v4, 0x79

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0xfc

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "de_CH"

    const/16 v2, 0x2c

    const/16 v3, 0x6d

    const/16 v4, 0x6d

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0xfd

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "de_CH"

    const/16 v2, 0x2d

    const/16 v3, 0x2c

    const/16 v4, 0x3b

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0xfe

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "de_CH"

    const/16 v2, 0x2e

    const/16 v3, 0x2e

    const/16 v4, 0x3a

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0xff

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "de_CH"

    const/16 v2, 0x2f

    const/16 v3, 0x2d

    const/16 v4, 0x5f

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x100

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "el"

    const/4 v2, 0x0

    const/16 v3, 0x60

    const/16 v4, 0x7e

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x101

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "el"

    const/4 v2, 0x1

    const/16 v3, 0x31

    const/16 v4, 0x21

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x102

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "el"

    const/4 v2, 0x2

    const/16 v3, 0x32

    const/16 v4, 0x40

    const/16 v5, 0xb2

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x103

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "el"

    const/4 v2, 0x3

    const/16 v3, 0x33

    const/16 v4, 0x23

    const/16 v5, 0xb3

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x104

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "el"

    const/4 v2, 0x4

    const/16 v3, 0x34

    const/16 v4, 0x24

    const/16 v5, 0xa3

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x105

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "el"

    const/4 v2, 0x5

    const/16 v3, 0x35

    const/16 v4, 0x25

    const/16 v5, 0xa7

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x106

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "el"

    const/4 v2, 0x6

    const/16 v3, 0x36

    const/16 v4, 0x5e

    const/16 v5, 0xb6

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x107

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "el"

    const/16 v2, 0x8

    const/16 v3, 0x38

    const/16 v4, 0x2a

    const/16 v5, 0xa4

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x108

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "el"

    const/16 v2, 0x9

    const/16 v3, 0x39

    const/16 v4, 0x28

    const/16 v5, 0xa6

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x109

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "el"

    const/16 v2, 0xa

    const/16 v3, 0x30

    const/16 v4, 0x29

    const/16 v5, 0xb0

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x10a

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "el"

    const/16 v2, 0xb

    const/16 v3, 0x2d

    const/16 v4, 0x5f

    const/16 v5, 0xb1

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x10b

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "el"

    const/16 v2, 0xc

    const/16 v3, 0x3d

    const/16 v4, 0x2b

    const/16 v5, 0xbd

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x10c

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "el"

    const/16 v2, 0xd

    const/16 v3, 0x3b

    const/16 v4, 0x3a

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x10d

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "el"

    const/16 v2, 0xe

    const/16 v3, 0x3c2

    const/16 v4, 0x385

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x10e

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "el"

    const/16 v2, 0xf

    const/16 v3, 0x3b5

    const/16 v4, 0x3b5

    const/16 v5, 0x20ac

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x10f

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "el"

    const/16 v2, 0x10

    const/16 v3, 0x3c1

    const/16 v4, 0x3c1

    const/16 v5, 0xae

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x110

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "el"

    const/16 v2, 0x11

    const/16 v3, 0x3c4

    const/16 v4, 0x3c4

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x111

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "el"

    const/16 v2, 0x12

    const/16 v3, 0x3c5

    const/16 v4, 0x3c5

    const/16 v5, 0xa5

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x112

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "el"

    const/16 v2, 0x13

    const/16 v3, 0x3b8

    const/16 v4, 0x3b8

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x113

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "el"

    const/16 v2, 0x14

    const/16 v3, 0x3b9

    const/16 v4, 0x3b9

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x114

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "el"

    const/16 v2, 0x15

    const/16 v3, 0x3bf

    const/16 v4, 0x3bf

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x115

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "el"

    const/16 v2, 0x16

    const/16 v3, 0x3c0

    const/16 v4, 0x3c0

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x116

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "el"

    const/16 v2, 0x17

    const/16 v3, 0x5b

    const/16 v4, 0x7b

    const/16 v5, 0xab

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x117

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "el"

    const/16 v2, 0x18

    const/16 v3, 0x5d

    const/16 v4, 0x7d

    const/16 v5, 0xbb

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x118

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "el"

    const/16 v2, 0x19

    const/16 v3, 0x3b1

    const/16 v4, 0x3b1

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x119

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "el"

    const/16 v2, 0x1a

    const/16 v3, 0x3c3

    const/16 v4, 0x3c3

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x11a

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "el"

    const/16 v2, 0x1b

    const/16 v3, 0x3b4

    const/16 v4, 0x3b4

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x11b

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "el"

    const/16 v2, 0x1c

    const/16 v3, 0x3c6

    const/16 v4, 0x3c6

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x11c

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "el"

    const/16 v2, 0x1d

    const/16 v3, 0x3b3

    const/16 v4, 0x3b3

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x11d

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "el"

    const/16 v2, 0x1e

    const/16 v3, 0x3b7

    const/16 v4, 0x3b7

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x11e

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "el"

    const/16 v2, 0x1f

    const/16 v3, 0x3be

    const/16 v4, 0x3be

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x11f

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "el"

    const/16 v2, 0x20

    const/16 v3, 0x3ba

    const/16 v4, 0x3ba

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x120

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "el"

    const/16 v2, 0x21

    const/16 v3, 0x3bb

    const/16 v4, 0x3bb

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x121

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "el"

    const/16 v2, 0x22

    const/16 v3, 0x384

    const/16 v4, 0xa8

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x122

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "el"

    const/16 v2, 0x23

    const/16 v3, 0x27

    const/16 v4, 0x22

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x123

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "el"

    const/16 v2, 0x24

    const/16 v3, 0x5c

    const/16 v4, 0x7c

    const/16 v5, 0xac

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x124

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "el"

    const/16 v2, 0x25

    const/16 v3, 0x3c

    const/16 v4, 0x3e

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x125

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "el"

    const/16 v2, 0x26

    const/16 v3, 0x3b6

    const/16 v4, 0x3b6

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x126

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "el"

    const/16 v2, 0x27

    const/16 v3, 0x3c7

    const/16 v4, 0x3c7

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x127

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "el"

    const/16 v2, 0x28

    const/16 v3, 0x3c8

    const/16 v4, 0x3c8

    const/16 v5, 0xa9

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x128

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "el"

    const/16 v2, 0x29

    const/16 v3, 0x3c9

    const/16 v4, 0x3c9

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x129

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "el"

    const/16 v2, 0x2a

    const/16 v3, 0x3b2

    const/16 v4, 0x3b2

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x12a

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "el"

    const/16 v2, 0x2b

    const/16 v3, 0x3bd

    const/16 v4, 0x3bd

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x12b

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "el"

    const/16 v2, 0x2c

    const/16 v3, 0x3bc

    const/16 v4, 0x3bc

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x12c

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "el"

    const/16 v2, 0x2d

    const/16 v3, 0x2c

    const/16 v4, 0x3c

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x12d

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "el"

    const/16 v2, 0x2e

    const/16 v3, 0x2e

    const/16 v4, 0x3e

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x12e

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "el"

    const/16 v2, 0x2f

    const/16 v3, 0x2f

    const/16 v4, 0x3f

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x12f

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "en_GB"

    const/4 v2, 0x0

    const/16 v3, 0x60

    const/16 v4, 0xac

    const/16 v5, 0xa6

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x130

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "en_GB"

    const/4 v2, 0x1

    const/16 v3, 0x31

    const/16 v4, 0x21

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x131

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "en_GB"

    const/4 v2, 0x2

    const/16 v3, 0x32

    const/16 v4, 0x22

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x132

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "en_GB"

    const/4 v2, 0x3

    const/16 v3, 0x33

    const/16 v4, 0xa3

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x133

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "en_GB"

    const/4 v2, 0x4

    const/16 v3, 0x34

    const/16 v4, 0x24

    const/16 v5, 0x20ac

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x134

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "en_GB"

    const/4 v2, 0x5

    const/16 v3, 0x35

    const/16 v4, 0x25

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x135

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "en_GB"

    const/4 v2, 0x6

    const/16 v3, 0x36

    const/16 v4, 0x5e

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x136

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "en_GB"

    const/4 v2, 0x7

    const/16 v3, 0x37

    const/16 v4, 0x26

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x137

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "en_GB"

    const/16 v2, 0x8

    const/16 v3, 0x38

    const/16 v4, 0x2a

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x138

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "en_GB"

    const/16 v2, 0x9

    const/16 v3, 0x39

    const/16 v4, 0x28

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x139

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "en_GB"

    const/16 v2, 0xa

    const/16 v3, 0x30

    const/16 v4, 0x29

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x13a

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "en_GB"

    const/16 v2, 0xb

    const/16 v3, 0x2d

    const/16 v4, 0x5f

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x13b

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "en_GB"

    const/16 v2, 0xc

    const/16 v3, 0x3d

    const/16 v4, 0x2b

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x13c

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "en_GB"

    const/16 v2, 0xd

    const/16 v3, 0x71

    const/16 v4, 0x71

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x13d

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "en_GB"

    const/16 v2, 0xe

    const/16 v3, 0x77

    const/16 v4, 0x77

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x13e

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "en_GB"

    const/16 v2, 0xf

    const/16 v3, 0x65

    const/16 v4, 0x65

    const/16 v5, 0xe9

    const/16 v6, 0xc9

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x13f

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "en_GB"

    const/16 v2, 0x10

    const/16 v3, 0x72

    const/16 v4, 0x72

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x140

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "en_GB"

    const/16 v2, 0x11

    const/16 v3, 0x74

    const/16 v4, 0x74

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x141

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "en_GB"

    const/16 v2, 0x12

    const/16 v3, 0x79

    const/16 v4, 0x79

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x142

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "en_GB"

    const/16 v2, 0x13

    const/16 v3, 0x75

    const/16 v4, 0x75

    const/16 v5, 0xfa

    const/16 v6, 0xda

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x143

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "en_GB"

    const/16 v2, 0x14

    const/16 v3, 0x69

    const/16 v4, 0x69

    const/16 v5, 0xed

    const/16 v6, 0xcd

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x144

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "en_GB"

    const/16 v2, 0x15

    const/16 v3, 0x6f

    const/16 v4, 0x6f

    const/16 v5, 0xf3

    const/16 v6, 0xd3

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x145

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "en_GB"

    const/16 v2, 0x16

    const/16 v3, 0x70

    const/16 v4, 0x70

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x146

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "en_GB"

    const/16 v2, 0x17

    const/16 v3, 0x5b

    const/16 v4, 0x7b

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x147

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "en_GB"

    const/16 v2, 0x18

    const/16 v3, 0x5d

    const/16 v4, 0x7d

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x148

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "en_GB"

    const/16 v2, 0x19

    const/16 v3, 0x61

    const/16 v4, 0x61

    const/16 v5, 0xe1

    const/16 v6, 0xc1

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x149

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "en_GB"

    const/16 v2, 0x1a

    const/16 v3, 0x73

    const/16 v4, 0x73

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x14a

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "en_GB"

    const/16 v2, 0x1b

    const/16 v3, 0x64

    const/16 v4, 0x64

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x14b

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "en_GB"

    const/16 v2, 0x1c

    const/16 v3, 0x66

    const/16 v4, 0x66

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x14c

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "en_GB"

    const/16 v2, 0x1d

    const/16 v3, 0x67

    const/16 v4, 0x67

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x14d

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "en_GB"

    const/16 v2, 0x1e

    const/16 v3, 0x68

    const/16 v4, 0x68

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x14e

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "en_GB"

    const/16 v2, 0x1f

    const/16 v3, 0x6a

    const/16 v4, 0x6a

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x14f

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "en_GB"

    const/16 v2, 0x20

    const/16 v3, 0x6b

    const/16 v4, 0x6b

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x150

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "en_GB"

    const/16 v2, 0x21

    const/16 v3, 0x6c

    const/16 v4, 0x6c

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x151

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "en_GB"

    const/16 v2, 0x22

    const/16 v3, 0x3b

    const/16 v4, 0x3a

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x152

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "en_GB"

    const/16 v2, 0x23

    const/16 v3, 0x27

    const/16 v4, 0x40

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x153

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "en_GB"

    const/16 v2, 0x24

    const/16 v3, 0x23

    const/16 v4, 0x7e

    const/16 v5, 0x5c

    const/16 v6, 0x7c

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x154

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "en_GB"

    const/16 v2, 0x25

    const/16 v3, 0x5c

    const/16 v4, 0x7c

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x155

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "en_GB"

    const/16 v2, 0x26

    const/16 v3, 0x7a

    const/16 v4, 0x7a

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x156

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "en_GB"

    const/16 v2, 0x27

    const/16 v3, 0x78

    const/16 v4, 0x78

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x157

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "en_GB"

    const/16 v2, 0x28

    const/16 v3, 0x63

    const/16 v4, 0x63

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x158

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "en_GB"

    const/16 v2, 0x29

    const/16 v3, 0x76

    const/16 v4, 0x76

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x159

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "en_GB"

    const/16 v2, 0x2a

    const/16 v3, 0x62

    const/16 v4, 0x62

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x15a

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "en_GB"

    const/16 v2, 0x2b

    const/16 v3, 0x6e

    const/16 v4, 0x6e

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x15b

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "en_GB"

    const/16 v2, 0x2c

    const/16 v3, 0x6d

    const/16 v4, 0x6d

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x15c

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "en_GB"

    const/16 v2, 0x2d

    const/16 v3, 0x2c

    const/16 v4, 0x3c

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x15d

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "en_GB"

    const/16 v2, 0x2e

    const/16 v3, 0x2e

    const/16 v4, 0x3e

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x15e

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "en_GB"

    const/16 v2, 0x2f

    const/16 v3, 0x2f

    const/16 v4, 0x3f

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x15f

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "en_US"

    const/4 v2, 0x0

    const/16 v3, 0x60

    const/16 v4, 0x7e

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x160

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "en_US"

    const/4 v2, 0x1

    const/16 v3, 0x31

    const/16 v4, 0x21

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x161

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "en_US"

    const/4 v2, 0x2

    const/16 v3, 0x32

    const/16 v4, 0x40

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x162

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "en_US"

    const/4 v2, 0x3

    const/16 v3, 0x33

    const/16 v4, 0x23

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x163

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "en_US"

    const/4 v2, 0x4

    const/16 v3, 0x34

    const/16 v4, 0x24

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x164

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "en_US"

    const/4 v2, 0x5

    const/16 v3, 0x35

    const/16 v4, 0x25

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x165

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "en_US"

    const/4 v2, 0x6

    const/16 v3, 0x36

    const/16 v4, 0x5e

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x166

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "en_US"

    const/4 v2, 0x7

    const/16 v3, 0x37

    const/16 v4, 0x26

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x167

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "en_US"

    const/16 v2, 0x8

    const/16 v3, 0x38

    const/16 v4, 0x2a

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x168

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "en_US"

    const/16 v2, 0x9

    const/16 v3, 0x39

    const/16 v4, 0x28

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x169

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "en_US"

    const/16 v2, 0xa

    const/16 v3, 0x30

    const/16 v4, 0x29

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x16a

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "en_US"

    const/16 v2, 0xb

    const/16 v3, 0x2d

    const/16 v4, 0x5f

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x16b

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "en_US"

    const/16 v2, 0xc

    const/16 v3, 0x3d

    const/16 v4, 0x2b

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x16c

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "en_US"

    const/16 v2, 0xd

    const/16 v3, 0x71

    const/16 v4, 0x71

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x16d

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "en_US"

    const/16 v2, 0xe

    const/16 v3, 0x77

    const/16 v4, 0x77

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x16e

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "en_US"

    const/16 v2, 0xf

    const/16 v3, 0x65

    const/16 v4, 0x65

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x16f

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "en_US"

    const/16 v2, 0x10

    const/16 v3, 0x72

    const/16 v4, 0x72

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x170

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "en_US"

    const/16 v2, 0x11

    const/16 v3, 0x74

    const/16 v4, 0x74

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x171

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "en_US"

    const/16 v2, 0x12

    const/16 v3, 0x79

    const/16 v4, 0x79

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x172

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "en_US"

    const/16 v2, 0x13

    const/16 v3, 0x75

    const/16 v4, 0x75

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x173

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "en_US"

    const/16 v2, 0x14

    const/16 v3, 0x69

    const/16 v4, 0x69

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x174

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "en_US"

    const/16 v2, 0x15

    const/16 v3, 0x6f

    const/16 v4, 0x6f

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x175

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "en_US"

    const/16 v2, 0x16

    const/16 v3, 0x70

    const/16 v4, 0x70

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x176

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "en_US"

    const/16 v2, 0x17

    const/16 v3, 0x5b

    const/16 v4, 0x7b

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x177

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "en_US"

    const/16 v2, 0x18

    const/16 v3, 0x5d

    const/16 v4, 0x7d

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x178

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "en_US"

    const/16 v2, 0x19

    const/16 v3, 0x61

    const/16 v4, 0x61

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x179

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "en_US"

    const/16 v2, 0x1a

    const/16 v3, 0x73

    const/16 v4, 0x73

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x17a

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "en_US"

    const/16 v2, 0x1b

    const/16 v3, 0x64

    const/16 v4, 0x64

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x17b

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "en_US"

    const/16 v2, 0x1c

    const/16 v3, 0x66

    const/16 v4, 0x66

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x17c

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "en_US"

    const/16 v2, 0x1d

    const/16 v3, 0x67

    const/16 v4, 0x67

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x17d

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "en_US"

    const/16 v2, 0x1e

    const/16 v3, 0x68

    const/16 v4, 0x68

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x17e

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "en_US"

    const/16 v2, 0x1f

    const/16 v3, 0x6a

    const/16 v4, 0x6a

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x17f

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "en_US"

    const/16 v2, 0x20

    const/16 v3, 0x6b

    const/16 v4, 0x6b

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x180

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "en_US"

    const/16 v2, 0x21

    const/16 v3, 0x6c

    const/16 v4, 0x6c

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x181

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "en_US"

    const/16 v2, 0x22

    const/16 v3, 0x3b

    const/16 v4, 0x3a

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x182

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "en_US"

    const/16 v2, 0x23

    const/16 v3, 0x27

    const/16 v4, 0x22

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x183

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "en_US"

    const/16 v2, 0x24

    const/16 v3, -0xff

    const/16 v4, -0xff

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x184

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "en_US"

    const/16 v2, 0x25

    const/16 v3, 0x5c

    const/16 v4, 0x7c

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x185

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "en_US"

    const/16 v2, 0x26

    const/16 v3, 0x7a

    const/16 v4, 0x7a

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x186

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "en_US"

    const/16 v2, 0x27

    const/16 v3, 0x78

    const/16 v4, 0x78

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x187

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "en_US"

    const/16 v2, 0x28

    const/16 v3, 0x63

    const/16 v4, 0x63

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x188

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "en_US"

    const/16 v2, 0x29

    const/16 v3, 0x76

    const/16 v4, 0x76

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x189

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "en_US"

    const/16 v2, 0x2a

    const/16 v3, 0x62

    const/16 v4, 0x62

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x18a

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "en_US"

    const/16 v2, 0x2b

    const/16 v3, 0x6e

    const/16 v4, 0x6e

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x18b

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "en_US"

    const/16 v2, 0x2c

    const/16 v3, 0x6d

    const/16 v4, 0x6d

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x18c

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "en_US"

    const/16 v2, 0x2d

    const/16 v3, 0x2c

    const/16 v4, 0x3c

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x18d

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "en_US"

    const/16 v2, 0x2e

    const/16 v3, 0x2e

    const/16 v4, 0x3e

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x18e

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "en_US"

    const/16 v2, 0x2f

    const/16 v3, 0x2f

    const/16 v4, 0x3f

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x18f

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "es"

    const/4 v2, 0x0

    const/16 v3, 0xba

    const/16 v4, 0xaa

    const/16 v5, 0x5c

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x190

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "es"

    const/4 v2, 0x1

    const/16 v3, 0x31

    const/16 v4, 0x21

    const/16 v5, 0x7c

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x191

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "es"

    const/4 v2, 0x2

    const/16 v3, 0x32

    const/16 v4, 0x22

    const/16 v5, 0x40

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x192

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "es"

    const/4 v2, 0x3

    const/16 v3, 0x33

    const/16 v4, 0xb7

    const/16 v5, 0x23

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x193

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "es"

    const/4 v2, 0x4

    const/16 v3, 0x34

    const/16 v4, 0x24

    const/16 v5, 0x7e

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x194

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "es"

    const/4 v2, 0x5

    const/16 v3, 0x35

    const/16 v4, 0x25

    const/16 v5, 0x20ac

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x195

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "es"

    const/4 v2, 0x6

    const/16 v3, 0x36

    const/16 v4, 0x26

    const/16 v5, 0xac

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x196

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "es"

    const/4 v2, 0x7

    const/16 v3, 0x37

    const/16 v4, 0x2f

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x197

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "es"

    const/16 v2, 0x8

    const/16 v3, 0x38

    const/16 v4, 0x28

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x198

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "es"

    const/16 v2, 0x9

    const/16 v3, 0x39

    const/16 v4, 0x29

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x199

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "es"

    const/16 v2, 0xa

    const/16 v3, 0x30

    const/16 v4, 0x3d

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x19a

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "es"

    const/16 v2, 0xb

    const/16 v3, 0x27

    const/16 v4, 0x3f

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x19b

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "es"

    const/16 v2, 0xc

    const/16 v3, 0xa1

    const/16 v4, 0xbf

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x19c

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "es"

    const/16 v2, 0xf

    const/16 v3, 0x65

    const/16 v4, 0x65

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x19d

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "es"

    const/16 v2, 0x13

    const/16 v3, 0x75

    const/16 v4, 0x75

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x19e

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "es"

    const/16 v2, 0x14

    const/16 v3, 0x69

    const/16 v4, 0x69

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x19f

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "es"

    const/16 v2, 0x15

    const/16 v3, 0x6f

    const/16 v4, 0x6f

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x1a0

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "es"

    const/16 v2, 0x17

    const/16 v3, 0x60

    const/16 v4, 0x5e

    const/16 v5, 0x5b

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x1a1

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "es"

    const/16 v2, 0x18

    const/16 v3, 0x2b

    const/16 v4, 0x2a

    const/16 v5, 0x5d

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x1a2

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "es"

    const/16 v2, 0x19

    const/16 v3, 0x61

    const/16 v4, 0x61

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x1a3

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "es"

    const/16 v2, 0x22

    const/16 v3, 0xf1

    const/16 v4, 0xf1

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x1a4

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "es"

    const/16 v2, 0x23

    const/16 v3, 0xb4

    const/16 v4, 0xa8

    const/16 v5, 0x7b

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x1a5

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "es"

    const/16 v2, 0x24

    const/16 v3, 0xe7

    const/16 v4, 0xe7

    const/16 v5, 0x7d

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x1a6

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "es"

    const/16 v2, 0x25

    const/16 v3, 0x3c

    const/16 v4, 0x3e

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x1a7

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "es"

    const/16 v2, 0x2d

    const/16 v3, 0x2c

    const/16 v4, 0x3b

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x1a8

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "es"

    const/16 v2, 0x2e

    const/16 v3, 0x2e

    const/16 v4, 0x3a

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x1a9

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "es"

    const/16 v2, 0x2f

    const/16 v3, 0x2d

    const/16 v4, 0x5f

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x1aa

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "es_ES"

    const/4 v2, 0x0

    const/16 v3, 0xba

    const/16 v4, 0xaa

    const/16 v5, 0x5c

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x1ab

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "es_ES"

    const/4 v2, 0x1

    const/16 v3, 0x31

    const/16 v4, 0x21

    const/16 v5, 0x7c

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x1ac

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "es_ES"

    const/4 v2, 0x2

    const/16 v3, 0x32

    const/16 v4, 0x22

    const/16 v5, 0x40

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x1ad

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "es_ES"

    const/4 v2, 0x3

    const/16 v3, 0x33

    const/16 v4, 0xb7

    const/16 v5, 0x23

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x1ae

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "es_ES"

    const/4 v2, 0x4

    const/16 v3, 0x34

    const/16 v4, 0x24

    const/16 v5, 0x7e

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x1af

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "es_ES"

    const/4 v2, 0x5

    const/16 v3, 0x35

    const/16 v4, 0x25

    const/16 v5, 0x20ac

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x1b0

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "es_ES"

    const/4 v2, 0x6

    const/16 v3, 0x36

    const/16 v4, 0x26

    const/16 v5, 0xac

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x1b1

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "es_ES"

    const/4 v2, 0x7

    const/16 v3, 0x37

    const/16 v4, 0x2f

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x1b2

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "es_ES"

    const/16 v2, 0x8

    const/16 v3, 0x38

    const/16 v4, 0x28

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x1b3

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "es_ES"

    const/16 v2, 0x9

    const/16 v3, 0x39

    const/16 v4, 0x29

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x1b4

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "es_ES"

    const/16 v2, 0xa

    const/16 v3, 0x30

    const/16 v4, 0x3d

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x1b5

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "es_ES"

    const/16 v2, 0xb

    const/16 v3, 0x27

    const/16 v4, 0x3f

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x1b6

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "es_ES"

    const/16 v2, 0xc

    const/16 v3, 0xa1

    const/16 v4, 0xbf

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x1b7

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "es_ES"

    const/16 v2, 0xf

    const/16 v3, 0x65

    const/16 v4, 0x65

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x1b8

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "es_ES"

    const/16 v2, 0x13

    const/16 v3, 0x75

    const/16 v4, 0x75

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x1b9

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "es_ES"

    const/16 v2, 0x14

    const/16 v3, 0x69

    const/16 v4, 0x69

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x1ba

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "es_ES"

    const/16 v2, 0x15

    const/16 v3, 0x6f

    const/16 v4, 0x6f

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x1bb

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "es_ES"

    const/16 v2, 0x17

    const/16 v3, 0x60

    const/16 v4, 0x5e

    const/16 v5, 0x5b

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x1bc

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "es_ES"

    const/16 v2, 0x18

    const/16 v3, 0x2b

    const/16 v4, 0x2a

    const/16 v5, 0x5d

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x1bd

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "es_ES"

    const/16 v2, 0x19

    const/16 v3, 0x61

    const/16 v4, 0x61

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x1be

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "es_ES"

    const/16 v2, 0x22

    const/16 v3, 0xf1

    const/16 v4, 0xf1

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x1bf

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "es_ES"

    const/16 v2, 0x23

    const/16 v3, 0xb4

    const/16 v4, 0xa8

    const/16 v5, 0x7b

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x1c0

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "es_ES"

    const/16 v2, 0x24

    const/16 v3, 0xe7

    const/16 v4, 0xe7

    const/16 v5, 0x7d

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x1c1

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "es_ES"

    const/16 v2, 0x25

    const/16 v3, 0x3c

    const/16 v4, 0x3e

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x1c2

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "es_ES"

    const/16 v2, 0x2d

    const/16 v3, 0x2c

    const/16 v4, 0x3b

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x1c3

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "es_ES"

    const/16 v2, 0x2e

    const/16 v3, 0x2e

    const/16 v4, 0x3a

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x1c4

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "es_ES"

    const/16 v2, 0x2f

    const/16 v3, 0x2d

    const/16 v4, 0x5f

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x1c5

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "es_US"

    const/4 v2, 0x0

    const/16 v3, 0x7c

    const/16 v4, 0xba

    const/16 v5, 0xac

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x1c6

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "es_US"

    const/4 v2, 0x1

    const/16 v3, 0x31

    const/16 v4, 0x21

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x1c7

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "es_US"

    const/4 v2, 0x2

    const/16 v3, 0x32

    const/16 v4, 0x22

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x1c8

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "es_US"

    const/4 v2, 0x3

    const/16 v3, 0x33

    const/16 v4, 0x23

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x1c9

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "es_US"

    const/4 v2, 0x4

    const/16 v3, 0x34

    const/16 v4, 0x24

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x1ca

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "es_US"

    const/4 v2, 0x5

    const/16 v3, 0x35

    const/16 v4, 0x25

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x1cb

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "es_US"

    const/4 v2, 0x6

    const/16 v3, 0x36

    const/16 v4, 0x26

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x1cc

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "es_US"

    const/4 v2, 0x7

    const/16 v3, 0x37

    const/16 v4, 0x2f

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x1cd

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "es_US"

    const/16 v2, 0x8

    const/16 v3, 0x38

    const/16 v4, 0x28

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x1ce

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "es_US"

    const/16 v2, 0x9

    const/16 v3, 0x39

    const/16 v4, 0x29

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x1cf

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "es_US"

    const/16 v2, 0xa

    const/16 v3, 0x30

    const/16 v4, 0x3d

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x1d0

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "es_US"

    const/16 v2, 0xb

    const/16 v3, 0x27

    const/16 v4, 0x3f

    const/16 v5, 0x5c

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x1d1

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "es_US"

    const/16 v2, 0xc

    const/16 v3, 0xbf

    const/16 v4, 0xa1

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x1d2

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "es_US"

    const/16 v2, 0xd

    const/16 v3, 0x71

    const/16 v4, 0x71

    const/16 v5, 0x40

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x1d3

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "es_US"

    const/16 v2, 0xf

    const/16 v3, 0x65

    const/16 v4, 0x65

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x1d4

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "es_US"

    const/16 v2, 0x11

    const/16 v3, 0x74

    const/16 v4, 0x74

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x1d5

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "es_US"

    const/16 v2, 0x13

    const/16 v3, 0x75

    const/16 v4, 0x75

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x1d6

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "es_US"

    const/16 v2, 0x14

    const/16 v3, 0x69

    const/16 v4, 0x69

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x1d7

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "es_US"

    const/16 v2, 0x15

    const/16 v3, 0x6f

    const/16 v4, 0x6f

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x1d8

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "es_US"

    const/16 v2, 0x17

    const/16 v3, 0xb4

    const/16 v4, 0xa8

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x1d9

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "es_US"

    const/16 v2, 0x18

    const/16 v3, 0x2b

    const/16 v4, 0x2a

    const/16 v5, 0x7e

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x1da

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "es_US"

    const/16 v2, 0x19

    const/16 v3, 0x61

    const/16 v4, 0x61

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x1db

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "es_US"

    const/16 v2, 0x22

    const/16 v3, 0xf1

    const/16 v4, 0xf1

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x1dc

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "es_US"

    const/16 v2, 0x23

    const/16 v3, 0x7b

    const/16 v4, 0x5b

    const/16 v5, 0x5e

    const/16 v6, 0x5e

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x1dd

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "es_US"

    const/16 v2, 0x24

    const/16 v3, 0x7d

    const/16 v4, 0x5d

    const/16 v5, 0x60

    const/16 v6, 0x60

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x1de

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "es_US"

    const/16 v2, 0x25

    const/16 v3, 0x3c

    const/16 v4, 0x3e

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x1df

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "es_US"

    const/16 v2, 0x2d

    const/16 v3, 0x2c

    const/16 v4, 0x3b

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x1e0

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "es_US"

    const/16 v2, 0x2e

    const/16 v3, 0x2e

    const/16 v4, 0x3a

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x1e1

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "es_US"

    const/16 v2, 0x2f

    const/16 v3, 0x2d

    const/16 v4, 0x5f

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x1e2

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "et"

    const/4 v2, 0x0

    const/16 v3, 0x2c7

    const/16 v4, 0x7e

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x1e3

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "et"

    const/4 v2, 0x1

    const/16 v3, 0x31

    const/16 v4, 0x21

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x1e4

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "et"

    const/4 v2, 0x2

    const/16 v3, 0x32

    const/16 v4, 0x22

    const/16 v5, 0x40

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x1e5

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "et"

    const/4 v2, 0x3

    const/16 v3, 0x33

    const/16 v4, 0x23

    const/16 v5, 0xa3

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x1e6

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "et"

    const/4 v2, 0x4

    const/16 v3, 0x34

    const/16 v4, 0xa4

    const/16 v5, 0x24

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x1e7

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "et"

    const/4 v2, 0x5

    const/16 v3, 0x35

    const/16 v4, 0x25

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x1e8

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "et"

    const/4 v2, 0x6

    const/16 v3, 0x36

    const/16 v4, 0x26

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x1e9

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "et"

    const/4 v2, 0x7

    const/16 v3, 0x37

    const/16 v4, 0x2f

    const/16 v5, 0x7b

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x1ea

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "et"

    const/16 v2, 0x8

    const/16 v3, 0x38

    const/16 v4, 0x28

    const/16 v5, 0x5b

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x1eb

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "et"

    const/16 v2, 0x9

    const/16 v3, 0x39

    const/16 v4, 0x29

    const/16 v5, 0x5d

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x1ec

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "et"

    const/16 v2, 0xa

    const/16 v3, 0x30

    const/16 v4, 0x3d

    const/16 v5, 0x7d

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x1ed

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "et"

    const/16 v2, 0xb

    const/16 v3, 0x2b

    const/16 v4, 0x3f

    const/16 v5, 0x5c

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x1ee

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "et"

    const/16 v2, 0xc

    const/16 v3, 0xb4

    const/16 v4, 0x60

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x1ef

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "et"

    const/16 v2, 0xf

    const/16 v3, 0x65

    const/16 v4, 0x65

    const/16 v5, 0x20ac

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x1f0

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "et"

    const/16 v2, 0x13

    const/16 v3, 0x75

    const/16 v4, 0x75

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x1f1

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "et"

    const/16 v2, 0x14

    const/16 v3, 0x69

    const/16 v4, 0x69

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x1f2

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "et"

    const/16 v2, 0x15

    const/16 v3, 0x6f

    const/16 v4, 0x6f

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x1f3

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "et"

    const/16 v2, 0x17

    const/16 v3, 0xfc

    const/16 v4, 0xfc

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x1f4

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "et"

    const/16 v2, 0x18

    const/16 v3, 0xf5

    const/16 v4, 0xf5

    const/16 v5, 0xa7

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x1f5

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "et"

    const/16 v2, 0x19

    const/16 v3, 0x61

    const/16 v4, 0x61

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x1f6

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "et"

    const/16 v2, 0x22

    const/16 v3, 0xf6

    const/16 v4, 0xf6

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x1f7

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "et"

    const/16 v2, 0x23

    const/16 v3, 0xe4

    const/16 v4, 0xe4

    const/16 v5, 0x5e

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x1f8

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "et"

    const/16 v2, 0x24

    const/16 v3, 0x27

    const/16 v4, 0x2a

    const/16 v5, 0xbd

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x1f9

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "et"

    const/16 v2, 0x25

    const/16 v3, 0x3c

    const/16 v4, 0x3e

    const/16 v5, 0x7c

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x1fa

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "et"

    const/16 v2, 0x2d

    const/16 v3, 0x2c

    const/16 v4, 0x3b

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x1fb

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "et"

    const/16 v2, 0x2e

    const/16 v3, 0x2e

    const/16 v4, 0x3a

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x1fc

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "et"

    const/16 v2, 0x2f

    const/16 v3, 0x2d

    const/16 v4, 0x5f

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x1fd

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "eu"

    const/4 v2, 0x0

    const/16 v3, 0xba

    const/16 v4, 0xaa

    const/16 v5, 0x5c

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x1fe

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "eu"

    const/4 v2, 0x1

    const/16 v3, 0x31

    const/16 v4, 0x21

    const/16 v5, 0x7c

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x1ff

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "eu"

    const/4 v2, 0x2

    const/16 v3, 0x32

    const/16 v4, 0x22

    const/16 v5, 0x40

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x200

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "eu"

    const/4 v2, 0x3

    const/16 v3, 0x33

    const/16 v4, 0xb7

    const/16 v5, 0x23

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x201

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "eu"

    const/4 v2, 0x4

    const/16 v3, 0x34

    const/16 v4, 0x24

    const/16 v5, 0x7e

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x202

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "eu"

    const/4 v2, 0x5

    const/16 v3, 0x35

    const/16 v4, 0x25

    const/16 v5, 0x20ac

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x203

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "eu"

    const/4 v2, 0x6

    const/16 v3, 0x36

    const/16 v4, 0x26

    const/16 v5, 0xac

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x204

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "eu"

    const/4 v2, 0x7

    const/16 v3, 0x37

    const/16 v4, 0x2f

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x205

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "eu"

    const/16 v2, 0x8

    const/16 v3, 0x38

    const/16 v4, 0x28

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x206

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "eu"

    const/16 v2, 0x9

    const/16 v3, 0x39

    const/16 v4, 0x29

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x207

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "eu"

    const/16 v2, 0xa

    const/16 v3, 0x30

    const/16 v4, 0x3d

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x208

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "eu"

    const/16 v2, 0xb

    const/16 v3, 0x27

    const/16 v4, 0x3f

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x209

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "eu"

    const/16 v2, 0xc

    const/16 v3, 0xa1

    const/16 v4, 0xbf

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x20a

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "eu"

    const/16 v2, 0xf

    const/16 v3, 0x65

    const/16 v4, 0x65

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x20b

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "eu"

    const/16 v2, 0x13

    const/16 v3, 0x75

    const/16 v4, 0x75

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x20c

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "eu"

    const/16 v2, 0x14

    const/16 v3, 0x69

    const/16 v4, 0x69

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x20d

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "eu"

    const/16 v2, 0x15

    const/16 v3, 0x6f

    const/16 v4, 0x6f

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x20e

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "eu"

    const/16 v2, 0x17

    const/16 v3, 0x60

    const/16 v4, 0x5e

    const/16 v5, 0x5b

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x20f

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "eu"

    const/16 v2, 0x18

    const/16 v3, 0x2b

    const/16 v4, 0x2a

    const/16 v5, 0x5d

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x210

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "eu"

    const/16 v2, 0x19

    const/16 v3, 0x61

    const/16 v4, 0x61

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x211

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "eu"

    const/16 v2, 0x22

    const/16 v3, 0xf1

    const/16 v4, 0xf1

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x212

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "eu"

    const/16 v2, 0x23

    const/16 v3, 0xb4

    const/16 v4, 0xa8

    const/16 v5, 0x7b

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x213

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "eu"

    const/16 v2, 0x24

    const/16 v3, 0xe7

    const/16 v4, 0xe7

    const/16 v5, 0x7d

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x214

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "eu"

    const/16 v2, 0x25

    const/16 v3, 0x3c

    const/16 v4, 0x3e

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x215

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "eu"

    const/16 v2, 0x2d

    const/16 v3, 0x2c

    const/16 v4, 0x3b

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x216

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "eu"

    const/16 v2, 0x2e

    const/16 v3, 0x2e

    const/16 v4, 0x3a

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x217

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "eu"

    const/16 v2, 0x2f

    const/16 v3, 0x2d

    const/16 v4, 0x5f

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x218

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fi"

    const/4 v2, 0x0

    const/16 v3, 0xa7

    const/16 v4, 0xbd

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x219

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fi"

    const/4 v2, 0x1

    const/16 v3, 0x31

    const/16 v4, 0x21

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x21a

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fi"

    const/4 v2, 0x2

    const/16 v3, 0x32

    const/16 v4, 0x22

    const/16 v5, 0x40

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x21b

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fi"

    const/4 v2, 0x3

    const/16 v3, 0x33

    const/16 v4, 0x23

    const/16 v5, 0xa3

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x21c

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fi"

    const/4 v2, 0x4

    const/16 v3, 0x34

    const/16 v4, 0xa4

    const/16 v5, 0x24

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x21d

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fi"

    const/4 v2, 0x5

    const/16 v3, 0x35

    const/16 v4, 0x25

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x21e

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fi"

    const/4 v2, 0x6

    const/16 v3, 0x36

    const/16 v4, 0x26

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x21f

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fi"

    const/4 v2, 0x7

    const/16 v3, 0x37

    const/16 v4, 0x2f

    const/16 v5, 0x7b

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x220

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fi"

    const/16 v2, 0x8

    const/16 v3, 0x38

    const/16 v4, 0x28

    const/16 v5, 0x5b

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x221

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fi"

    const/16 v2, 0x9

    const/16 v3, 0x39

    const/16 v4, 0x29

    const/16 v5, 0x5d

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x222

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fi"

    const/16 v2, 0xa

    const/16 v3, 0x30

    const/16 v4, 0x3d

    const/16 v5, 0x7d

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x223

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fi"

    const/16 v2, 0xb

    const/16 v3, 0x2b

    const/16 v4, 0x3f

    const/16 v5, 0x5c

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x224

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fi"

    const/16 v2, 0xc

    const/16 v3, 0xb4

    const/16 v4, 0x60

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x225

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fi"

    const/16 v2, 0xf

    const/16 v3, 0x65

    const/16 v4, 0x65

    const/16 v5, 0x20ac

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x226

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fi"

    const/16 v2, 0x13

    const/16 v3, 0x75

    const/16 v4, 0x75

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x227

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fi"

    const/16 v2, 0x14

    const/16 v3, 0x69

    const/16 v4, 0x69

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x228

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fi"

    const/16 v2, 0x15

    const/16 v3, 0x6f

    const/16 v4, 0x6f

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x229

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fi"

    const/16 v2, 0x17

    const/16 v3, 0xe5

    const/16 v4, 0xe5

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x22a

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fi"

    const/16 v2, 0x18

    const/16 v3, 0xa8

    const/16 v4, 0x5e

    const/16 v5, 0x7e

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x22b

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fi"

    const/16 v2, 0x19

    const/16 v3, 0x61

    const/16 v4, 0x61

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x22c

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fi"

    const/16 v2, 0x22

    const/16 v3, 0xf6

    const/16 v4, 0xf6

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x22d

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fi"

    const/16 v2, 0x23

    const/16 v3, 0xe4

    const/16 v4, 0xe4

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x22e

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fi"

    const/16 v2, 0x24

    const/16 v3, 0x27

    const/16 v4, 0x2a

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x22f

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fi"

    const/16 v2, 0x25

    const/16 v3, 0x3c

    const/16 v4, 0x3e

    const/16 v5, 0x7c

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x230

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fi"

    const/16 v2, 0x2c

    const/16 v3, 0x6d

    const/16 v4, 0x6d

    const/16 v5, 0x3bc

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x231

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fi"

    const/16 v2, 0x2d

    const/16 v3, 0x2c

    const/16 v4, 0x3b

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x232

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fi"

    const/16 v2, 0x2e

    const/16 v3, 0x2e

    const/16 v4, 0x3a

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x233

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fi"

    const/16 v2, 0x2f

    const/16 v3, 0x2d

    const/16 v4, 0x5f

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x234

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fr"

    const/4 v2, 0x0

    const/16 v3, 0xb2

    const/16 v4, -0xff

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x235

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fr"

    const/4 v2, 0x1

    const/16 v3, 0x26

    const/16 v4, 0x31

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x236

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fr"

    const/4 v2, 0x2

    const/16 v3, 0xe9

    const/16 v4, 0x32

    const/16 v5, 0x7e

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x237

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fr"

    const/4 v2, 0x3

    const/16 v3, 0x22

    const/16 v4, 0x33

    const/16 v5, 0x23

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x238

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fr"

    const/4 v2, 0x4

    const/16 v3, 0x27

    const/16 v4, 0x34

    const/16 v5, 0x7b

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x239

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fr"

    const/4 v2, 0x5

    const/16 v3, 0x28

    const/16 v4, 0x35

    const/16 v5, 0x5b

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x23a

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fr"

    const/4 v2, 0x6

    const/16 v3, 0x2d

    const/16 v4, 0x36

    const/16 v5, 0x7c

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x23b

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fr"

    const/4 v2, 0x7

    const/16 v3, 0xe8

    const/16 v4, 0x37

    const/16 v5, 0x60

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x23c

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fr"

    const/16 v2, 0x8

    const/16 v3, 0x5f

    const/16 v4, 0x38

    const/16 v5, 0x5c

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x23d

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fr"

    const/16 v2, 0x9

    const/16 v3, 0xe7

    const/16 v4, 0x39

    const/16 v5, 0x5e

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x23e

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fr"

    const/16 v2, 0xa

    const/16 v3, 0xe0

    const/16 v4, 0x30

    const/16 v5, 0x40

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x23f

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fr"

    const/16 v2, 0xb

    const/16 v3, 0x29

    const/16 v4, 0xb0

    const/16 v5, 0x5d

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x240

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fr"

    const/16 v2, 0xc

    const/16 v3, 0x3d

    const/16 v4, 0x2b

    const/16 v5, 0x7d

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x241

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fr"

    const/16 v2, 0xd

    const/16 v3, 0x61

    const/16 v4, 0x61

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x242

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fr"

    const/16 v2, 0xe

    const/16 v3, 0x7a

    const/16 v4, 0x7a

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x243

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fr"

    const/16 v2, 0xf

    const/16 v3, 0x65

    const/16 v4, 0x65

    const/16 v5, 0x20ac

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x244

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fr"

    const/16 v2, 0x13

    const/16 v3, 0x75

    const/16 v4, 0x75

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x245

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fr"

    const/16 v2, 0x14

    const/16 v3, 0x69

    const/16 v4, 0x69

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x246

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fr"

    const/16 v2, 0x15

    const/16 v3, 0x6f

    const/16 v4, 0x6f

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x247

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fr"

    const/16 v2, 0x16

    const/16 v3, 0x70

    const/16 v4, 0x70

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x248

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fr"

    const/16 v2, 0x17

    const/16 v3, 0x5e

    const/16 v4, 0xa8

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x249

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fr"

    const/16 v2, 0x18

    const/16 v3, 0x24

    const/16 v4, 0xa3

    const/16 v5, 0xa4

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x24a

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fr"

    const/16 v2, 0x19

    const/16 v3, 0x71

    const/16 v4, 0x71

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x24b

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fr"

    const/16 v2, 0x22

    const/16 v3, 0x6d

    const/16 v4, 0x6d

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x24c

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fr"

    const/16 v2, 0x23

    const/16 v3, 0xf9

    const/16 v4, 0x25

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x24d

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fr"

    const/16 v2, 0x24

    const/16 v3, 0x2a

    const/16 v4, 0xb5

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x24e

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fr"

    const/16 v2, 0x25

    const/16 v3, 0x3c

    const/16 v4, 0x3e

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x24f

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fr"

    const/16 v2, 0x26

    const/16 v3, 0x77

    const/16 v4, 0x77

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x250

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fr"

    const/16 v2, 0x2c

    const/16 v3, 0x2c

    const/16 v4, 0x3f

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x251

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fr"

    const/16 v2, 0x2d

    const/16 v3, 0x3b

    const/16 v4, 0x2e

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x252

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fr"

    const/16 v2, 0x2e

    const/16 v3, 0x3a

    const/16 v4, 0x2f

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x253

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fr"

    const/16 v2, 0x2f

    const/16 v3, 0x21

    const/16 v4, 0xa7

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x254

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fr_BE"

    const/4 v2, 0x0

    const/16 v3, 0xb2

    const/16 v4, -0xff

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x255

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fr_BE"

    const/4 v2, 0x1

    const/16 v3, 0x26

    const/16 v4, 0x31

    const/16 v5, 0xa6

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x256

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fr_BE"

    const/4 v2, 0x2

    const/16 v3, 0xe9

    const/16 v4, 0x32

    const/16 v5, 0x40

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x257

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fr_BE"

    const/4 v2, 0x3

    const/16 v3, 0x22

    const/16 v4, 0x33

    const/16 v5, 0x23

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x258

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fr_BE"

    const/4 v2, 0x4

    const/16 v3, 0x27

    const/16 v4, 0x34

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x259

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fr_BE"

    const/4 v2, 0x5

    const/16 v3, 0x28

    const/16 v4, 0x35

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x25a

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fr_BE"

    const/4 v2, 0x6

    const/16 v3, 0xa7

    const/16 v4, 0x36

    const/16 v5, 0x5e

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x25b

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fr_BE"

    const/4 v2, 0x7

    const/16 v3, 0xe8

    const/16 v4, 0x37

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x25c

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fr_BE"

    const/16 v2, 0x8

    const/16 v3, 0x21

    const/16 v4, 0x38

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x25d

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fr_BE"

    const/16 v2, 0x9

    const/16 v3, 0xe7

    const/16 v4, 0x39

    const/16 v5, 0x7b

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x25e

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fr_BE"

    const/16 v2, 0xa

    const/16 v3, 0xe0

    const/16 v4, 0x30

    const/16 v5, 0x7d

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x25f

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fr_BE"

    const/16 v2, 0xb

    const/16 v3, 0x29

    const/16 v4, 0xb0

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x260

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fr_BE"

    const/16 v2, 0xc

    const/16 v3, 0x2d

    const/16 v4, 0x5f

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x261

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fr_BE"

    const/16 v2, 0xd

    const/16 v3, 0x61

    const/16 v4, 0x61

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x262

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fr_BE"

    const/16 v2, 0xe

    const/16 v3, 0x7a

    const/16 v4, 0x7a

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x263

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fr_BE"

    const/16 v2, 0xf

    const/16 v3, 0x65

    const/16 v4, 0x65

    const/16 v5, 0x20ac

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x264

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fr_BE"

    const/16 v2, 0x13

    const/16 v3, 0x75

    const/16 v4, 0x75

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x265

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fr_BE"

    const/16 v2, 0x14

    const/16 v3, 0x69

    const/16 v4, 0x69

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x266

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fr_BE"

    const/16 v2, 0x15

    const/16 v3, 0x6f

    const/16 v4, 0x6f

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x267

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fr_BE"

    const/16 v2, 0x16

    const/16 v3, 0x70

    const/16 v4, 0x70

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x268

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fr_BE"

    const/16 v2, 0x17

    const/16 v3, 0x5e

    const/16 v4, 0xa8

    const/16 v5, 0x5b

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x269

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fr_BE"

    const/16 v2, 0x18

    const/16 v3, 0x24

    const/16 v4, 0x2a

    const/16 v5, 0x5d

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x26a

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fr_BE"

    const/16 v2, 0x19

    const/16 v3, 0x71

    const/16 v4, 0x71

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x26b

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fr_BE"

    const/16 v2, 0x22

    const/16 v3, 0x6d

    const/16 v4, 0x6d

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x26c

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fr_BE"

    const/16 v2, 0x23

    const/16 v3, 0xf9

    const/16 v4, 0x25

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x26d

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fr_BE"

    const/16 v2, 0x24

    const/16 v3, 0xb5

    const/16 v4, 0xa3

    const/16 v5, 0x60

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x26e

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fr_BE"

    const/16 v2, 0x25

    const/16 v3, 0x3c

    const/16 v4, 0x3e

    const/16 v5, 0x5c

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x26f

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fr_BE"

    const/16 v2, 0x26

    const/16 v3, 0x77

    const/16 v4, 0x77

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x270

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fr_BE"

    const/16 v2, 0x2c

    const/16 v3, 0x2c

    const/16 v4, 0x3f

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x271

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fr_BE"

    const/16 v2, 0x2d

    const/16 v3, 0x3b

    const/16 v4, 0x2e

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x272

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fr_BE"

    const/16 v2, 0x2e

    const/16 v3, 0x3a

    const/16 v4, 0x2f

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x273

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fr_BE"

    const/16 v2, 0x2f

    const/16 v3, 0x3d

    const/16 v4, 0x2b

    const/16 v5, 0x7e

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x274

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fr_CA"

    const/4 v2, 0x0

    const/16 v3, 0xb2

    const/16 v4, 0x40

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x275

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fr_CA"

    const/4 v2, 0x1

    const/16 v3, 0x26

    const/16 v4, 0x31

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x276

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fr_CA"

    const/4 v2, 0x2

    const/16 v3, 0xe9

    const/16 v4, 0x32

    const/16 v5, 0x7e

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x277

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fr_CA"

    const/4 v2, 0x3

    const/16 v3, 0x22

    const/16 v4, 0x33

    const/16 v5, 0x23

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x278

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fr_CA"

    const/4 v2, 0x4

    const/16 v3, 0x27

    const/16 v4, 0x34

    const/16 v5, 0x7b

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x279

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fr_CA"

    const/4 v2, 0x5

    const/16 v3, 0x28

    const/16 v4, 0x35

    const/16 v5, 0x5b

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x27a

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fr_CA"

    const/4 v2, 0x6

    const/16 v3, 0x2d

    const/16 v4, 0x36

    const/16 v5, 0x7c

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x27b

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fr_CA"

    const/4 v2, 0x7

    const/16 v3, 0xe8

    const/16 v4, 0x37

    const/16 v5, 0x60

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x27c

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fr_CA"

    const/16 v2, 0x8

    const/16 v3, 0x5f

    const/16 v4, 0x38

    const/16 v5, 0x5c

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x27d

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fr_CA"

    const/16 v2, 0x9

    const/16 v3, 0xe7

    const/16 v4, 0x39

    const/16 v5, 0x5e

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x27e

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fr_CA"

    const/16 v2, 0xa

    const/16 v3, 0xe0

    const/16 v4, 0x30

    const/16 v5, 0x40

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x27f

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fr_CA"

    const/16 v2, 0xb

    const/16 v3, 0x29

    const/16 v4, 0xb0

    const/16 v5, 0x5d

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x280

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fr_CA"

    const/16 v2, 0xc

    const/16 v3, 0x3d

    const/16 v4, 0x2b

    const/16 v5, 0x7d

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x281

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fr_CA"

    const/16 v2, 0xd

    const/16 v3, 0x71

    const/16 v4, 0x71

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x282

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fr_CA"

    const/16 v2, 0xe

    const/16 v3, 0x77

    const/16 v4, 0x77

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x283

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fr_CA"

    const/16 v2, 0xf

    const/16 v3, 0x65

    const/16 v4, 0x65

    const/16 v5, 0x20ac

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x284

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fr_CA"

    const/16 v2, 0x13

    const/16 v3, 0x75

    const/16 v4, 0x75

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x285

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fr_CA"

    const/16 v2, 0x14

    const/16 v3, 0x69

    const/16 v4, 0x69

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x286

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fr_CA"

    const/16 v2, 0x15

    const/16 v3, 0x6f

    const/16 v4, 0x6f

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x287

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fr_CA"

    const/16 v2, 0x16

    const/16 v3, 0x70

    const/16 v4, 0x70

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x288

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fr_CA"

    const/16 v2, 0x17

    const/16 v3, 0x5e

    const/16 v4, 0xa8

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x289

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fr_CA"

    const/16 v2, 0x18

    const/16 v3, 0x24

    const/16 v4, 0xa3

    const/16 v5, 0xa4

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x28a

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fr_CA"

    const/16 v2, 0x19

    const/16 v3, 0x61

    const/16 v4, 0x61

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x28b

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fr_CA"

    const/16 v2, 0x22

    const/16 v3, 0x6d

    const/16 v4, 0x6d

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x28c

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fr_CA"

    const/16 v2, 0x23

    const/16 v3, 0xf9

    const/16 v4, 0x25

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x28d

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fr_CA"

    const/16 v2, 0x24

    const/16 v3, 0x2a

    const/16 v4, 0xb5

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x28e

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fr_CA"

    const/16 v2, 0x25

    const/16 v3, 0x3c

    const/16 v4, 0x3e

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x28f

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fr_CA"

    const/16 v2, 0x26

    const/16 v3, 0x7a

    const/16 v4, 0x7a

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x290

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fr_CA"

    const/16 v2, 0x2c

    const/16 v3, 0x2c

    const/16 v4, 0x3f

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x291

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fr_CA"

    const/16 v2, 0x2d

    const/16 v3, 0x3b

    const/16 v4, 0x2e

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x292

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fr_CA"

    const/16 v2, 0x2e

    const/16 v3, 0x3a

    const/16 v4, 0x2f

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x293

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fr_CA"

    const/16 v2, 0x2f

    const/16 v3, 0x21

    const/16 v4, 0xa7

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x294

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fr_CH"

    const/4 v2, 0x0

    const/16 v3, 0xa7

    const/16 v4, 0xb0

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x295

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fr_CH"

    const/4 v2, 0x1

    const/16 v3, 0x31

    const/16 v4, 0x2b

    const/16 v5, 0x7c

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x296

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fr_CH"

    const/4 v2, 0x2

    const/16 v3, 0x32

    const/16 v4, 0xa8

    const/16 v5, 0x40

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x297

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fr_CH"

    const/4 v2, 0x3

    const/16 v3, 0x33

    const/16 v4, 0x2a

    const/16 v5, 0x23

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x298

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fr_CH"

    const/4 v2, 0x4

    const/16 v3, 0x34

    const/16 v4, 0xc7

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x299

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fr_CH"

    const/4 v2, 0x5

    const/16 v3, 0x35

    const/16 v4, 0x25

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x29a

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fr_CH"

    const/4 v2, 0x6

    const/16 v3, 0x36

    const/16 v4, 0x26

    const/16 v5, 0xac

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x29b

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fr_CH"

    const/4 v2, 0x7

    const/16 v3, 0x37

    const/16 v4, 0x2f

    const/16 v5, 0xa6

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x29c

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fr_CH"

    const/16 v2, 0x8

    const/16 v3, 0x38

    const/16 v4, 0x28

    const/16 v5, 0x20b5

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x29d

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fr_CH"

    const/16 v2, 0x9

    const/16 v3, 0x39

    const/16 v4, 0x29

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x29e

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fr_CH"

    const/16 v2, 0xa

    const/16 v3, 0x30

    const/16 v4, 0x3d

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x29f

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fr_CH"

    const/16 v2, 0xb

    const/16 v3, 0x27

    const/16 v4, 0x3f

    const/16 v5, 0xb4

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x2a0

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fr_CH"

    const/16 v2, 0xc

    const/16 v3, 0x5e

    const/16 v4, 0x60

    const/16 v5, 0x7e

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x2a1

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fr_CH"

    const/16 v2, 0xd

    const/16 v3, 0x71

    const/16 v4, 0x71

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x2a2

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fr_CH"

    const/16 v2, 0xf

    const/16 v3, 0x65

    const/16 v4, 0x65

    const/16 v5, 0x20ac

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x2a3

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fr_CH"

    const/16 v2, 0x12

    const/16 v3, 0x7a

    const/16 v4, 0x7a

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x2a4

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fr_CH"

    const/16 v2, 0x13

    const/16 v3, 0x75

    const/16 v4, 0x75

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x2a5

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fr_CH"

    const/16 v2, 0x14

    const/16 v3, 0x69

    const/16 v4, 0x69

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x2a6

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fr_CH"

    const/16 v2, 0x15

    const/16 v3, 0x6f

    const/16 v4, 0x6f

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x2a7

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fr_CH"

    const/16 v2, 0x17

    const/16 v3, 0xfc

    const/16 v4, 0xe8

    const/16 v5, 0x5b

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x2a8

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fr_CH"

    const/16 v2, 0x18

    const/16 v3, 0xa8

    const/16 v4, 0x21

    const/16 v5, 0x5d

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x2a9

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fr_CH"

    const/16 v2, 0x19

    const/16 v3, 0x61

    const/16 v4, 0x61

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x2aa

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fr_CH"

    const/16 v2, 0x22

    const/16 v3, 0xf6

    const/16 v4, 0xe9

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x2ab

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fr_CH"

    const/16 v2, 0x23

    const/16 v3, 0xe4

    const/16 v4, 0xe0

    const/16 v5, 0x7b

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x2ac

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fr_CH"

    const/16 v2, 0x24

    const/16 v3, 0x24

    const/16 v4, 0xa3

    const/16 v5, 0x7d

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x2ad

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fr_CH"

    const/16 v2, 0x25

    const/16 v3, 0x3c

    const/16 v4, 0x3e

    const/16 v5, 0x5c

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x2ae

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fr_CH"

    const/16 v2, 0x26

    const/16 v3, 0x79

    const/16 v4, 0x79

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x2af

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fr_CH"

    const/16 v2, 0x2c

    const/16 v3, 0x6d

    const/16 v4, 0x6d

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x2b0

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fr_CH"

    const/16 v2, 0x2d

    const/16 v3, 0x2c

    const/16 v4, 0x3b

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x2b1

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fr_CH"

    const/16 v2, 0x2e

    const/16 v3, 0x2e

    const/16 v4, 0x3a

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x2b2

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "fr_CH"

    const/16 v2, 0x2f

    const/16 v3, 0x2d

    const/16 v4, 0x5f

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x2b3

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "gl"

    const/4 v2, 0x0

    const/16 v3, 0xba

    const/16 v4, 0xaa

    const/16 v5, 0x5c

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x2b4

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "gl"

    const/4 v2, 0x1

    const/16 v3, 0x31

    const/16 v4, 0x21

    const/16 v5, 0x7c

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x2b5

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "gl"

    const/4 v2, 0x2

    const/16 v3, 0x32

    const/16 v4, 0x22

    const/16 v5, 0x40

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x2b6

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "gl"

    const/4 v2, 0x3

    const/16 v3, 0x33

    const/16 v4, 0xb7

    const/16 v5, 0x23

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x2b7

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "gl"

    const/4 v2, 0x4

    const/16 v3, 0x34

    const/16 v4, 0x24

    const/16 v5, 0x7e

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x2b8

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "gl"

    const/4 v2, 0x5

    const/16 v3, 0x35

    const/16 v4, 0x25

    const/16 v5, 0x20ac

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x2b9

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "gl"

    const/4 v2, 0x6

    const/16 v3, 0x36

    const/16 v4, 0x26

    const/16 v5, 0xac

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x2ba

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "gl"

    const/4 v2, 0x7

    const/16 v3, 0x37

    const/16 v4, 0x2f

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x2bb

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "gl"

    const/16 v2, 0x8

    const/16 v3, 0x38

    const/16 v4, 0x28

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x2bc

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "gl"

    const/16 v2, 0x9

    const/16 v3, 0x39

    const/16 v4, 0x29

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x2bd

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "gl"

    const/16 v2, 0xa

    const/16 v3, 0x30

    const/16 v4, 0x3d

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x2be

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "gl"

    const/16 v2, 0xb

    const/16 v3, 0x27

    const/16 v4, 0x3f

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x2bf

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "gl"

    const/16 v2, 0xc

    const/16 v3, 0xa1

    const/16 v4, 0xbf

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x2c0

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "gl"

    const/16 v2, 0xf

    const/16 v3, 0x65

    const/16 v4, 0x65

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x2c1

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "gl"

    const/16 v2, 0x13

    const/16 v3, 0x75

    const/16 v4, 0x75

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x2c2

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "gl"

    const/16 v2, 0x14

    const/16 v3, 0x69

    const/16 v4, 0x69

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x2c3

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "gl"

    const/16 v2, 0x15

    const/16 v3, 0x6f

    const/16 v4, 0x6f

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x2c4

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "gl"

    const/16 v2, 0x17

    const/16 v3, 0x60

    const/16 v4, 0x5e

    const/16 v5, 0x5b

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x2c5

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "gl"

    const/16 v2, 0x18

    const/16 v3, 0x2b

    const/16 v4, 0x2a

    const/16 v5, 0x5d

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x2c6

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "gl"

    const/16 v2, 0x19

    const/16 v3, 0x61

    const/16 v4, 0x61

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x2c7

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "gl"

    const/16 v2, 0x22

    const/16 v3, 0xf1

    const/16 v4, 0xf1

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x2c8

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "gl"

    const/16 v2, 0x23

    const/16 v3, 0xb4

    const/16 v4, 0xa8

    const/16 v5, 0x7b

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x2c9

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "gl"

    const/16 v2, 0x24

    const/16 v3, 0xe7

    const/16 v4, 0xe7

    const/16 v5, 0x7d

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x2ca

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "gl"

    const/16 v2, 0x25

    const/16 v3, 0x3c

    const/16 v4, 0x3e

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x2cb

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "gl"

    const/16 v2, 0x2d

    const/16 v3, 0x2c

    const/16 v4, 0x3b

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x2cc

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "gl"

    const/16 v2, 0x2e

    const/16 v3, 0x2e

    const/16 v4, 0x3a

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x2cd

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "gl"

    const/16 v2, 0x2f

    const/16 v3, 0x2d

    const/16 v4, 0x5f

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x2ce

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "he"

    const/4 v2, 0x0

    const/16 v3, 0x3b

    const/16 v4, 0x7e

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x2cf

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "he"

    const/4 v2, 0x1

    const/16 v3, 0x31

    const/16 v4, 0x21

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x2d0

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "he"

    const/4 v2, 0x2

    const/16 v3, 0x32

    const/16 v4, 0x40

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x2d1

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "he"

    const/4 v2, 0x3

    const/16 v3, 0x33

    const/16 v4, 0x23

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x2d2

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "he"

    const/4 v2, 0x4

    const/16 v3, 0x34

    const/16 v4, 0x24

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x2d3

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "he"

    const/4 v2, 0x5

    const/16 v3, 0x35

    const/16 v4, 0x25

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x2d4

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "he"

    const/4 v2, 0x6

    const/16 v3, 0x36

    const/16 v4, 0x5e

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x2d5

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "he"

    const/4 v2, 0x7

    const/16 v3, 0x37

    const/16 v4, 0x26

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x2d6

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "he"

    const/16 v2, 0x8

    const/16 v3, 0x38

    const/16 v4, 0x2a

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x2d7

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "he"

    const/16 v2, 0x9

    const/16 v3, 0x39

    const/16 v4, 0x28

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x2d8

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "he"

    const/16 v2, 0xa

    const/16 v3, 0x30

    const/16 v4, 0x29

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x2d9

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "he"

    const/16 v2, 0xb

    const/16 v3, 0x2d

    const/16 v4, 0x5f

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x2da

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "he"

    const/16 v2, 0xc

    const/16 v3, 0x3d

    const/16 v4, 0x2b

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x2db

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "he"

    const/16 v2, 0xd

    const/16 v3, 0x2f

    const/16 v4, 0x71

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x2dc

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "he"

    const/16 v2, 0xe

    const/16 v3, 0x27

    const/16 v4, 0x77

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x2dd

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "he"

    const/16 v2, 0xf

    const/16 v3, 0x5e7

    const/16 v4, 0x65

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x2de

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "he"

    const/16 v2, 0x10

    const/16 v3, 0x5e8

    const/16 v4, 0x72

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x2df

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "he"

    const/16 v2, 0x11

    const/16 v3, 0x5d0

    const/16 v4, 0x74

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x2e0

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "he"

    const/16 v2, 0x12

    const/16 v3, 0x5d8

    const/16 v4, 0x79

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x2e1

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "he"

    const/16 v2, 0x13

    const/16 v3, 0x5d5

    const/16 v4, 0x75

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x2e2

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "he"

    const/16 v2, 0x14

    const/16 v3, 0x5df

    const/16 v4, 0x69

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x2e3

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "he"

    const/16 v2, 0x15

    const/16 v3, 0x5dd

    const/16 v4, 0x6f

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x2e4

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "he"

    const/16 v2, 0x16

    const/16 v3, 0x5e4

    const/16 v4, 0x70

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x2e5

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "he"

    const/16 v2, 0x17

    const/16 v3, 0x5b

    const/16 v4, 0x7b

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x2e6

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "he"

    const/16 v2, 0x18

    const/16 v3, 0x5d

    const/16 v4, 0x7d

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x2e7

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "he"

    const/16 v2, 0x19

    const/16 v3, 0x5e9

    const/16 v4, 0x61

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x2e8

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "he"

    const/16 v2, 0x1a

    const/16 v3, 0x5d3

    const/16 v4, 0x73

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x2e9

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "he"

    const/16 v2, 0x1b

    const/16 v3, 0x5d2

    const/16 v4, 0x64

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x2ea

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "he"

    const/16 v2, 0x1c

    const/16 v3, 0x5db

    const/16 v4, 0x66

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x2eb

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "he"

    const/16 v2, 0x1d

    const/16 v3, 0x5e2

    const/16 v4, 0x67

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x2ec

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "he"

    const/16 v2, 0x1e

    const/16 v3, 0x5d9

    const/16 v4, 0x68

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x2ed

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "he"

    const/16 v2, 0x1f

    const/16 v3, 0x5d7

    const/16 v4, 0x6a

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x2ee

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "he"

    const/16 v2, 0x20

    const/16 v3, 0x5dc

    const/16 v4, 0x6b

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x2ef

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "he"

    const/16 v2, 0x21

    const/16 v3, 0x5da

    const/16 v4, 0x6c

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x2f0

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "he"

    const/16 v2, 0x22

    const/16 v3, 0x5e3

    const/16 v4, 0x3a

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x2f1

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "he"

    const/16 v2, 0x23

    const/16 v3, 0x2c

    const/16 v4, 0x22

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x2f2

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "he"

    const/16 v2, 0x24

    const/16 v3, -0xff

    const/16 v4, -0xff

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x2f3

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "he"

    const/16 v2, 0x25

    const/16 v3, 0x5c

    const/16 v4, 0x7c

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x2f4

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "he"

    const/16 v2, 0x26

    const/16 v3, 0x5d6

    const/16 v4, 0x7a

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x2f5

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "he"

    const/16 v2, 0x27

    const/16 v3, 0x5e1

    const/16 v4, 0x78

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x2f6

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "he"

    const/16 v2, 0x28

    const/16 v3, 0x5d1

    const/16 v4, 0x63

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x2f7

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "he"

    const/16 v2, 0x29

    const/16 v3, 0x5d4

    const/16 v4, 0x76

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x2f8

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "he"

    const/16 v2, 0x2a

    const/16 v3, 0x5e0

    const/16 v4, 0x62

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x2f9

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "he"

    const/16 v2, 0x2b

    const/16 v3, 0x5de

    const/16 v4, 0x6e

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x2fa

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "he"

    const/16 v2, 0x2c

    const/16 v3, 0x5e6

    const/16 v4, 0x6d

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x2fb

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "he"

    const/16 v2, 0x2d

    const/16 v3, 0x5ea

    const/16 v4, 0x3c

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x2fc

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "he"

    const/16 v2, 0x2e

    const/16 v3, 0x5e5

    const/16 v4, 0x3e

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x2fd

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "he"

    const/16 v2, 0x2f

    const/16 v3, 0x2e

    const/16 v4, 0x3f

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x2fe

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "hr"

    const/4 v2, 0x0

    const/16 v3, 0xb8

    const/16 v4, 0xa8

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x2ff

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "hr"

    const/4 v2, 0x1

    const/16 v3, 0x31

    const/16 v4, 0x21

    const/16 v5, 0x7e

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x300

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "hr"

    const/4 v2, 0x2

    const/16 v3, 0x32

    const/16 v4, 0x22

    const/16 v5, 0x2c7

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x301

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "hr"

    const/4 v2, 0x3

    const/16 v3, 0x33

    const/16 v4, 0x23

    const/16 v5, 0x5e

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x302

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "hr"

    const/4 v2, 0x4

    const/16 v3, 0x34

    const/16 v4, 0x24

    const/16 v5, 0x2d8

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x303

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "hr"

    const/4 v2, 0x5

    const/16 v3, 0x35

    const/16 v4, 0x25

    const/16 v5, 0xb0

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x304

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "hr"

    const/4 v2, 0x6

    const/16 v3, 0x36

    const/16 v4, 0x26

    const/16 v5, 0x2db

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x305

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "hr"

    const/4 v2, 0x7

    const/16 v3, 0x37

    const/16 v4, 0x2f

    const/16 v5, 0x60

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x306

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "hr"

    const/16 v2, 0x8

    const/16 v3, 0x38

    const/16 v4, 0x28

    const/16 v5, 0x2d9

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x307

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "hr"

    const/16 v2, 0x9

    const/16 v3, 0x39

    const/16 v4, 0x29

    const/16 v5, 0xb4

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x308

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "hr"

    const/16 v2, 0xa

    const/16 v3, 0x30

    const/16 v4, 0x3d

    const/16 v5, 0x2dd

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x309

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "hr"

    const/16 v2, 0xb

    const/16 v3, 0x27

    const/16 v4, 0x3f

    const/16 v5, 0xa8

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x30a

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "hr"

    const/16 v2, 0xc

    const/16 v3, 0x2b

    const/16 v4, 0x2a

    const/16 v5, 0xb8

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x30b

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "hr"

    const/16 v2, 0xd

    const/16 v3, 0x71

    const/16 v4, 0x71

    const/16 v5, 0x5c

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x30c

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "hr"

    const/16 v2, 0xe

    const/16 v3, 0x77

    const/16 v4, 0x77

    const/16 v5, 0x7c

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x30d

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "hr"

    const/16 v2, 0xf

    const/16 v3, 0x65

    const/16 v4, 0x65

    const/16 v5, 0x20ac

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x30e

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "hr"

    const/16 v2, 0x12

    const/16 v3, 0x7a

    const/16 v4, 0x7a

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x30f

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "hr"

    const/16 v2, 0x13

    const/16 v3, 0x75

    const/16 v4, 0x75

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x310

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "hr"

    const/16 v2, 0x14

    const/16 v3, 0x69

    const/16 v4, 0x69

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x311

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "hr"

    const/16 v2, 0x15

    const/16 v3, 0x6f

    const/16 v4, 0x6f

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x312

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "hr"

    const/16 v2, 0x17

    const/16 v3, 0x161

    const/16 v4, 0x161

    const/16 v5, 0xf7

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x313

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "hr"

    const/16 v2, 0x18

    const/16 v3, 0x111

    const/16 v4, 0x111

    const/16 v5, 0xd7

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x314

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "hr"

    const/16 v2, 0x1c

    const/16 v3, 0x66

    const/16 v4, 0x66

    const/16 v5, 0x5b

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x315

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "hr"

    const/16 v2, 0x1d

    const/16 v3, 0x67

    const/16 v4, 0x67

    const/16 v5, 0x5d

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x316

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "hr"

    const/16 v2, 0x20

    const/16 v3, 0x6b

    const/16 v4, 0x6b

    const/16 v5, 0x142

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x317

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "hr"

    const/16 v2, 0x21

    const/16 v3, 0x6c

    const/16 v4, 0x6c

    const/16 v5, 0x141

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x318

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "hr"

    const/16 v2, 0x22

    const/16 v3, 0x10d

    const/16 v4, 0x10d

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x319

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "hr"

    const/16 v2, 0x23

    const/16 v3, 0x107

    const/16 v4, 0x107

    const/16 v5, 0xdf

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x31a

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "hr"

    const/16 v2, 0x24

    const/16 v3, 0x17e

    const/16 v4, 0x17e

    const/16 v5, 0xa4

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x31b

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "hr"

    const/16 v2, 0x25

    const/16 v3, 0x3c

    const/16 v4, 0x3e

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x31c

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "hr"

    const/16 v2, 0x26

    const/16 v3, 0x79

    const/16 v4, 0x79

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x31d

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "hr"

    const/16 v2, 0x29

    const/16 v3, 0x76

    const/16 v4, 0x76

    const/16 v5, 0x40

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x31e

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "hr"

    const/16 v2, 0x2a

    const/16 v3, 0x62

    const/16 v4, 0x62

    const/16 v5, 0x7b

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x31f

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "hr"

    const/16 v2, 0x2b

    const/16 v3, 0x6e

    const/16 v4, 0x6e

    const/16 v5, 0x7d

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x320

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "hr"

    const/16 v2, 0x2c

    const/16 v3, 0x6d

    const/16 v4, 0x6d

    const/16 v5, 0xa7

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x321

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "hr"

    const/16 v2, 0x2d

    const/16 v3, 0x2c

    const/16 v4, 0x3b

    const/16 v5, 0x3c

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x322

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "hr"

    const/16 v2, 0x2e

    const/16 v3, 0x2e

    const/16 v4, 0x3a

    const/16 v5, 0x3e

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x323

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "hr"

    const/16 v2, 0x2f

    const/16 v3, 0x2d

    const/16 v4, 0x5f

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x324

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "hu"

    const/4 v2, 0x0

    const/16 v3, 0x30

    const/16 v4, 0xa7

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x325

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "hu"

    const/4 v2, 0x1

    const/16 v3, 0x31

    const/16 v4, 0x27

    const/16 v5, 0x7e

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x326

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "hu"

    const/4 v2, 0x2

    const/16 v3, 0x32

    const/16 v4, 0x22

    const/16 v5, 0x2c7

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x327

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "hu"

    const/4 v2, 0x3

    const/16 v3, 0x33

    const/16 v4, 0x2b

    const/16 v5, 0x5e

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x328

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "hu"

    const/4 v2, 0x4

    const/16 v3, 0x34

    const/16 v4, 0x21

    const/16 v5, 0x2d8

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x329

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "hu"

    const/4 v2, 0x5

    const/16 v3, 0x35

    const/16 v4, 0x25

    const/16 v5, 0xb0

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x32a

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "hu"

    const/4 v2, 0x6

    const/16 v3, 0x36

    const/16 v4, 0x2f

    const/16 v5, 0x2db

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x32b

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "hu"

    const/4 v2, 0x7

    const/16 v3, 0x37

    const/16 v4, 0x3d

    const/16 v5, 0x60

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x32c

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "hu"

    const/16 v2, 0x8

    const/16 v3, 0x38

    const/16 v4, 0x28

    const/16 v5, 0x2d9

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x32d

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "hu"

    const/16 v2, 0x9

    const/16 v3, 0x39

    const/16 v4, 0x29

    const/16 v5, 0xb4

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x32e

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "hu"

    const/16 v2, 0xa

    const/16 v3, 0xf6

    const/16 v4, 0xf6

    const/16 v5, 0x2dd

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x32f

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "hu"

    const/16 v2, 0xb

    const/16 v3, 0xfc

    const/16 v4, 0xfc

    const/16 v5, 0xa8

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x330

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "hu"

    const/16 v2, 0xc

    const/16 v3, 0xf3

    const/16 v4, 0xf3

    const/16 v5, 0xb8

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x331

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "hu"

    const/16 v2, 0xd

    const/16 v3, 0x71

    const/16 v4, 0x71

    const/16 v5, 0x5c

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x332

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "hu"

    const/16 v2, 0xe

    const/16 v3, 0x77

    const/16 v4, 0x77

    const/16 v5, 0x7c

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x333

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "hu"

    const/16 v2, 0xf

    const/16 v3, 0x65

    const/16 v4, 0x65

    const/16 v5, 0xc4

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x334

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "hu"

    const/16 v2, 0x10

    const/16 v3, 0x72

    const/16 v4, 0x72

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x335

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "hu"

    const/16 v2, 0x11

    const/16 v3, 0x74

    const/16 v4, 0x74

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x336

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "hu"

    const/16 v2, 0x12

    const/16 v3, 0x7a

    const/16 v4, 0x7a

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x337

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "hu"

    const/16 v2, 0x13

    const/16 v3, 0x75

    const/16 v4, 0x75

    const/16 v5, 0x20ac

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x338

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "hu"

    const/16 v2, 0x14

    const/16 v3, 0x69

    const/16 v4, 0x69

    const/16 v5, 0xcd

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x339

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "hu"

    const/16 v2, 0x15

    const/16 v3, 0x6f

    const/16 v4, 0x6f

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x33a

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "hu"

    const/16 v2, 0x16

    const/16 v3, 0x70

    const/16 v4, 0x70

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x33b

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "hu"

    const/16 v2, 0x17

    const/16 v3, 0x151

    const/16 v4, 0x151

    const/16 v5, 0xf7

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x33c

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "hu"

    const/16 v2, 0x18

    const/16 v3, 0xfa

    const/16 v4, 0xfa

    const/16 v5, 0xd7

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x33d

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "hu"

    const/16 v2, 0x19

    const/16 v3, 0x61

    const/16 v4, 0x61

    const/16 v5, 0xe4

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x33e

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "hu"

    const/16 v2, 0x1a

    const/16 v3, 0x73

    const/16 v4, 0x73

    const/16 v5, 0x111

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x33f

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "hu"

    const/16 v2, 0x1b

    const/16 v3, 0x64

    const/16 v4, 0x64

    const/16 v5, 0x110

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x340

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "hu"

    const/16 v2, 0x1c

    const/16 v3, 0x66

    const/16 v4, 0x66

    const/16 v5, 0x5b

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x341

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "hu"

    const/16 v2, 0x1d

    const/16 v3, 0x67

    const/16 v4, 0x67

    const/16 v5, 0x5d

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x342

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "hu"

    const/16 v2, 0x1e

    const/16 v3, 0x68

    const/16 v4, 0x68

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x343

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "hu"

    const/16 v2, 0x1f

    const/16 v3, 0x6a

    const/16 v4, 0x6a

    const/16 v5, 0xed

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x344

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "hu"

    const/16 v2, 0x20

    const/16 v3, 0x6b

    const/16 v4, 0x6b

    const/16 v5, 0x142

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x345

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "hu"

    const/16 v2, 0x21

    const/16 v3, 0x6c

    const/16 v4, 0x6c

    const/16 v5, 0x141

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x346

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "hu"

    const/16 v2, 0x22

    const/16 v3, 0xe9

    const/16 v4, 0xe9

    const/16 v5, 0x24

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x347

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "hu"

    const/16 v2, 0x23

    const/16 v3, 0xe1

    const/16 v4, 0xe1

    const/16 v5, 0xdf

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x348

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "hu"

    const/16 v2, 0x24

    const/16 v3, 0x171

    const/16 v4, 0x171

    const/16 v5, 0xa4

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x349

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "hu"

    const/16 v2, 0x25

    const/16 v3, 0xed

    const/16 v4, 0xed

    const/16 v5, 0x3c

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x34a

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "hu"

    const/16 v2, 0x26

    const/16 v3, 0x79

    const/16 v4, 0x79

    const/16 v5, 0x3e

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x34b

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "hu"

    const/16 v2, 0x27

    const/16 v3, 0x78

    const/16 v4, 0x78

    const/16 v5, 0x23

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x34c

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "hu"

    const/16 v2, 0x28

    const/16 v3, 0x63

    const/16 v4, 0x63

    const/16 v5, 0x26

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x34d

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "hu"

    const/16 v2, 0x29

    const/16 v3, 0x76

    const/16 v4, 0x76

    const/16 v5, 0x40

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x34e

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "hu"

    const/16 v2, 0x2a

    const/16 v3, 0x62

    const/16 v4, 0x62

    const/16 v5, 0x7b

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x34f

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "hu"

    const/16 v2, 0x2b

    const/16 v3, 0x6e

    const/16 v4, 0x6e

    const/16 v5, 0x7d

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x350

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "hu"

    const/16 v2, 0x2c

    const/16 v3, 0x6d

    const/16 v4, 0x6d

    const/16 v5, 0x3c

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x351

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "hu"

    const/16 v2, 0x2d

    const/16 v3, 0x2c

    const/16 v4, 0x3f

    const/16 v5, 0x3b

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x352

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "hu"

    const/16 v2, 0x2e

    const/16 v3, 0x2e

    const/16 v4, 0x3a

    const/16 v5, 0x3e

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x353

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "hu"

    const/16 v2, 0x2f

    const/16 v3, 0x2d

    const/16 v4, 0x5f

    const/16 v5, 0x2a

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x354

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "is"

    const/4 v2, 0x0

    const/16 v3, 0xa7

    const/16 v4, 0xbd

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x355

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "is"

    const/4 v2, 0x1

    const/16 v3, 0x31

    const/16 v4, 0x21

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x356

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "is"

    const/4 v2, 0x2

    const/16 v3, 0x32

    const/16 v4, 0x22

    const/16 v5, 0x40

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x357

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "is"

    const/4 v2, 0x3

    const/16 v3, 0x33

    const/16 v4, 0x23

    const/16 v5, 0xa3

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x358

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "is"

    const/4 v2, 0x4

    const/16 v3, 0x34

    const/16 v4, 0xa4

    const/16 v5, 0x24

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x359

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "is"

    const/4 v2, 0x5

    const/16 v3, 0x35

    const/16 v4, 0x25

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x35a

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "is"

    const/4 v2, 0x6

    const/16 v3, 0x36

    const/16 v4, 0x26

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x35b

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "is"

    const/4 v2, 0x7

    const/16 v3, 0x37

    const/16 v4, 0x2f

    const/16 v5, 0x7b

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x35c

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "is"

    const/16 v2, 0x8

    const/16 v3, 0x38

    const/16 v4, 0x28

    const/16 v5, 0x5b

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x35d

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "is"

    const/16 v2, 0x9

    const/16 v3, 0x39

    const/16 v4, 0x29

    const/16 v5, 0x5d

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x35e

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "is"

    const/16 v2, 0xa

    const/16 v3, 0x30

    const/16 v4, 0x3d

    const/16 v5, 0x7d

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x35f

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "is"

    const/16 v2, 0xb

    const/16 v3, 0xf6

    const/16 v4, 0xf6

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x360

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "is"

    const/16 v2, 0xc

    const/16 v3, 0x2d

    const/16 v4, 0x5f

    const/16 v5, 0x7c

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x361

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "is"

    const/16 v2, 0xf

    const/16 v3, 0x65

    const/16 v4, 0x65

    const/16 v5, 0x20ac

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x362

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "is"

    const/16 v2, 0x13

    const/16 v3, 0x75

    const/16 v4, 0x75

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x363

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "is"

    const/16 v2, 0x14

    const/16 v3, 0x69

    const/16 v4, 0x69

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x364

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "is"

    const/16 v2, 0x15

    const/16 v3, 0x6f

    const/16 v4, 0x6f

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x365

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "is"

    const/16 v2, 0x17

    const/16 v3, 0xf0

    const/16 v4, 0xf0

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x366

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "is"

    const/16 v2, 0x18

    const/16 v3, 0x27

    const/16 v4, 0x3f

    const/16 v5, 0x7e

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x367

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "is"

    const/16 v2, 0x19

    const/16 v3, 0x61

    const/16 v4, 0x61

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x368

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "is"

    const/16 v2, 0x22

    const/16 v3, 0xe6

    const/16 v4, 0x4d5

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x369

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "is"

    const/16 v2, 0x23

    const/16 v3, 0x301

    const/16 v4, -0xff

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x36a

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "is"

    const/16 v2, 0x24

    const/16 v3, 0x2a

    const/16 v4, 0x2b

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x36b

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "is"

    const/16 v2, 0x25

    const/16 v3, 0x3c

    const/16 v4, 0x3e

    const/16 v5, 0x5c

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x36c

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "is"

    const/16 v2, 0x2c

    const/16 v3, 0x6d

    const/16 v4, 0x6d

    const/16 v5, 0x3bc

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x36d

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "is"

    const/16 v2, 0x2d

    const/16 v3, 0x2c

    const/16 v4, 0x3b

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x36e

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "is"

    const/16 v2, 0x2e

    const/16 v3, 0x2e

    const/16 v4, 0x3a

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x36f

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "is"

    const/16 v2, 0x2f

    const/16 v3, 0xfe

    const/16 v4, 0xfe

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x370

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "it"

    const/4 v2, 0x0

    const/16 v3, 0x5c

    const/16 v4, 0x7c

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x371

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "it"

    const/4 v2, 0x1

    const/16 v3, 0x31

    const/16 v4, 0x21

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x372

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "it"

    const/4 v2, 0x2

    const/16 v3, 0x32

    const/16 v4, 0x22

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x373

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "it"

    const/4 v2, 0x3

    const/16 v3, 0x33

    const/16 v4, 0xa3

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x374

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "it"

    const/4 v2, 0x4

    const/16 v3, 0x34

    const/16 v4, 0x24

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x375

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "it"

    const/4 v2, 0x5

    const/16 v3, 0x35

    const/16 v4, 0x25

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x376

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "it"

    const/4 v2, 0x6

    const/16 v3, 0x36

    const/16 v4, 0x26

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x377

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "it"

    const/4 v2, 0x7

    const/16 v3, 0x37

    const/16 v4, 0x2f

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x378

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "it"

    const/16 v2, 0x8

    const/16 v3, 0x38

    const/16 v4, 0x28

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x379

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "it"

    const/16 v2, 0x9

    const/16 v3, 0x39

    const/16 v4, 0x29

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x37a

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "it"

    const/16 v2, 0xa

    const/16 v3, 0x30

    const/16 v4, 0x3d

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x37b

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "it"

    const/16 v2, 0xb

    const/16 v3, 0x27

    const/16 v4, 0x3f

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x37c

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "it"

    const/16 v2, 0xc

    const/16 v3, 0xec

    const/16 v4, 0x5e

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x37d

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "it"

    const/16 v2, 0xf

    const/16 v3, 0x65

    const/16 v4, 0x65

    const/16 v5, 0x20ac

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x37e

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "it"

    const/16 v2, 0x13

    const/16 v3, 0x75

    const/16 v4, 0x75

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x37f

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "it"

    const/16 v2, 0x14

    const/16 v3, 0x69

    const/16 v4, 0x69

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x380

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "it"

    const/16 v2, 0x15

    const/16 v3, 0x6f

    const/16 v4, 0x6f

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x381

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "it"

    const/16 v2, 0x17

    const/16 v3, 0xe8

    const/16 v4, 0xe9

    const/16 v5, 0x5b

    const/16 v6, 0x7b

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x382

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "it"

    const/16 v2, 0x18

    const/16 v3, 0x2b

    const/16 v4, 0x2a

    const/16 v5, 0x5d

    const/16 v6, 0x7d

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x383

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "it"

    const/16 v2, 0x19

    const/16 v3, 0x61

    const/16 v4, 0x61

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x384

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "it"

    const/16 v2, 0x22

    const/16 v3, 0xf2

    const/16 v4, 0xe7

    const/16 v5, 0x40

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x385

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "it"

    const/16 v2, 0x23

    const/16 v3, 0xe0

    const/16 v4, 0xb0

    const/16 v5, 0x23

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x386

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "it"

    const/16 v2, 0x24

    const/16 v3, 0xf9

    const/16 v4, 0xa7

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x387

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "it"

    const/16 v2, 0x25

    const/16 v3, 0x3c

    const/16 v4, 0x3e

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x388

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "it"

    const/16 v2, 0x2d

    const/16 v3, 0x2c

    const/16 v4, 0x3b

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x389

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "it"

    const/16 v2, 0x2e

    const/16 v3, 0x2e

    const/16 v4, 0x3a

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x38a

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "it"

    const/16 v2, 0x2f

    const/16 v3, 0x2d

    const/16 v4, 0x5f

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x38b

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "iw"

    const/4 v2, 0x0

    const/16 v3, 0x3b

    const/16 v4, 0x7e

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x38c

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "iw"

    const/4 v2, 0x1

    const/16 v3, 0x31

    const/16 v4, 0x21

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x38d

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "iw"

    const/4 v2, 0x2

    const/16 v3, 0x32

    const/16 v4, 0x40

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x38e

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "iw"

    const/4 v2, 0x3

    const/16 v3, 0x33

    const/16 v4, 0x23

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x38f

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "iw"

    const/4 v2, 0x4

    const/16 v3, 0x34

    const/16 v4, 0x24

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x390

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "iw"

    const/4 v2, 0x5

    const/16 v3, 0x35

    const/16 v4, 0x25

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x391

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "iw"

    const/4 v2, 0x6

    const/16 v3, 0x36

    const/16 v4, 0x5e

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x392

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "iw"

    const/4 v2, 0x7

    const/16 v3, 0x37

    const/16 v4, 0x26

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x393

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "iw"

    const/16 v2, 0x8

    const/16 v3, 0x38

    const/16 v4, 0x2a

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x394

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "iw"

    const/16 v2, 0x9

    const/16 v3, 0x39

    const/16 v4, 0x28

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x395

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "iw"

    const/16 v2, 0xa

    const/16 v3, 0x30

    const/16 v4, 0x29

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x396

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "iw"

    const/16 v2, 0xb

    const/16 v3, 0x2d

    const/16 v4, 0x5f

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x397

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "iw"

    const/16 v2, 0xc

    const/16 v3, 0x3d

    const/16 v4, 0x2b

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x398

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "iw"

    const/16 v2, 0xd

    const/16 v3, 0x2f

    const/16 v4, 0x71

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x399

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "iw"

    const/16 v2, 0xe

    const/16 v3, 0x27

    const/16 v4, 0x77

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x39a

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "iw"

    const/16 v2, 0xf

    const/16 v3, 0x5e7

    const/16 v4, 0x65

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x39b

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "iw"

    const/16 v2, 0x10

    const/16 v3, 0x5e8

    const/16 v4, 0x72

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x39c

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "iw"

    const/16 v2, 0x11

    const/16 v3, 0x5d0

    const/16 v4, 0x74

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x39d

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "iw"

    const/16 v2, 0x12

    const/16 v3, 0x5d8

    const/16 v4, 0x79

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x39e

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "iw"

    const/16 v2, 0x13

    const/16 v3, 0x5d5

    const/16 v4, 0x75

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x39f

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "iw"

    const/16 v2, 0x14

    const/16 v3, 0x5df

    const/16 v4, 0x69

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x3a0

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "iw"

    const/16 v2, 0x15

    const/16 v3, 0x5dd

    const/16 v4, 0x6f

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x3a1

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "iw"

    const/16 v2, 0x16

    const/16 v3, 0x5e4

    const/16 v4, 0x70

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x3a2

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "iw"

    const/16 v2, 0x17

    const/16 v3, 0x5b

    const/16 v4, 0x7b

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x3a3

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "iw"

    const/16 v2, 0x18

    const/16 v3, 0x5d

    const/16 v4, 0x7d

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x3a4

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "iw"

    const/16 v2, 0x19

    const/16 v3, 0x5e9

    const/16 v4, 0x61

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x3a5

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "iw"

    const/16 v2, 0x1a

    const/16 v3, 0x5d3

    const/16 v4, 0x73

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x3a6

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "iw"

    const/16 v2, 0x1b

    const/16 v3, 0x5d2

    const/16 v4, 0x64

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x3a7

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "iw"

    const/16 v2, 0x1c

    const/16 v3, 0x5db

    const/16 v4, 0x66

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x3a8

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "iw"

    const/16 v2, 0x1d

    const/16 v3, 0x5e2

    const/16 v4, 0x67

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x3a9

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "iw"

    const/16 v2, 0x1e

    const/16 v3, 0x5d9

    const/16 v4, 0x68

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x3aa

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "iw"

    const/16 v2, 0x1f

    const/16 v3, 0x5d7

    const/16 v4, 0x6a

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x3ab

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "iw"

    const/16 v2, 0x20

    const/16 v3, 0x5dc

    const/16 v4, 0x6b

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x3ac

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "iw"

    const/16 v2, 0x21

    const/16 v3, 0x5da

    const/16 v4, 0x6c

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x3ad

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "iw"

    const/16 v2, 0x22

    const/16 v3, 0x5e3

    const/16 v4, 0x3a

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x3ae

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "iw"

    const/16 v2, 0x23

    const/16 v3, 0x2c

    const/16 v4, 0x22

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x3af

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "iw"

    const/16 v2, 0x24

    const/16 v3, -0xff

    const/16 v4, -0xff

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x3b0

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "iw"

    const/16 v2, 0x25

    const/16 v3, 0x5c

    const/16 v4, 0x7c

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x3b1

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "iw"

    const/16 v2, 0x26

    const/16 v3, 0x5d6

    const/16 v4, 0x7a

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x3b2

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "iw"

    const/16 v2, 0x27

    const/16 v3, 0x5e1

    const/16 v4, 0x78

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x3b3

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "iw"

    const/16 v2, 0x28

    const/16 v3, 0x5d1

    const/16 v4, 0x63

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x3b4

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "iw"

    const/16 v2, 0x29

    const/16 v3, 0x5d4

    const/16 v4, 0x76

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x3b5

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "iw"

    const/16 v2, 0x2a

    const/16 v3, 0x5e0

    const/16 v4, 0x62

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x3b6

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "iw"

    const/16 v2, 0x2b

    const/16 v3, 0x5de

    const/16 v4, 0x6e

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x3b7

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "iw"

    const/16 v2, 0x2c

    const/16 v3, 0x5e6

    const/16 v4, 0x6d

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x3b8

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "iw"

    const/16 v2, 0x2d

    const/16 v3, 0x5ea

    const/16 v4, 0x3c

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x3b9

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "iw"

    const/16 v2, 0x2e

    const/16 v3, 0x5e5

    const/16 v4, 0x3e

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x3ba

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "iw"

    const/16 v2, 0x2f

    const/16 v3, 0x2e

    const/16 v4, 0x3f

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x3bb

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "kk"

    const/4 v2, 0x0

    const/16 v3, 0x451

    const/16 v4, 0x401

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x3bc

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "kk"

    const/4 v2, 0x2

    const/16 v3, 0x32

    const/16 v4, 0x22

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x3bd

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "kk"

    const/4 v2, 0x3

    const/16 v3, 0x33

    const/16 v4, 0x2116

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x3be

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "kk"

    const/4 v2, 0x4

    const/16 v3, 0x34

    const/16 v4, 0x3b

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x3bf

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "kk"

    const/4 v2, 0x6

    const/16 v3, 0x36

    const/16 v4, 0x3a

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x3c0

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "kk"

    const/4 v2, 0x7

    const/16 v3, 0x37

    const/16 v4, 0x3f

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x3c1

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "kk"

    const/16 v2, 0xd

    const/16 v3, 0x439

    const/16 v4, 0x439

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x3c2

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "kk"

    const/16 v2, 0xe

    const/16 v3, 0x446

    const/16 v4, 0x446

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x3c3

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "kk"

    const/16 v2, 0xf

    const/16 v3, 0x443

    const/16 v4, 0x443

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x3c4

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "kk"

    const/16 v2, 0x10

    const/16 v3, 0x43a

    const/16 v4, 0x43a

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x3c5

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "kk"

    const/16 v2, 0x11

    const/16 v3, 0x435

    const/16 v4, 0x435

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x3c6

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "kk"

    const/16 v2, 0x12

    const/16 v3, 0x43d

    const/16 v4, 0x43d

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x3c7

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "kk"

    const/16 v2, 0x13

    const/16 v3, 0x433

    const/16 v4, 0x433

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x3c8

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "kk"

    const/16 v2, 0x14

    const/16 v3, 0x448

    const/16 v4, 0x448

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x3c9

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "kk"

    const/16 v2, 0x15

    const/16 v3, 0x449

    const/16 v4, 0x449

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x3ca

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "kk"

    const/16 v2, 0x16

    const/16 v3, 0x437

    const/16 v4, 0x437

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x3cb

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "kk"

    const/16 v2, 0x17

    const/16 v3, 0x445

    const/16 v4, 0x445

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x3cc

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "kk"

    const/16 v2, 0x18

    const/16 v3, 0x44a

    const/16 v4, 0x44a

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x3cd

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "kk"

    const/16 v2, 0x19

    const/16 v3, 0x444

    const/16 v4, 0x444

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x3ce

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "kk"

    const/16 v2, 0x1a

    const/16 v3, 0x44b

    const/16 v4, 0x44b

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x3cf

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "kk"

    const/16 v2, 0x1b

    const/16 v3, 0x432

    const/16 v4, 0x432

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x3d0

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "kk"

    const/16 v2, 0x1c

    const/16 v3, 0x430

    const/16 v4, 0x430

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x3d1

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "kk"

    const/16 v2, 0x1d

    const/16 v3, 0x43f

    const/16 v4, 0x43f

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x3d2

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "kk"

    const/16 v2, 0x1e

    const/16 v3, 0x440

    const/16 v4, 0x440

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x3d3

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "kk"

    const/16 v2, 0x1f

    const/16 v3, 0x43e

    const/16 v4, 0x43e

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x3d4

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "kk"

    const/16 v2, 0x20

    const/16 v3, 0x43b

    const/16 v4, 0x43b

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x3d5

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "kk"

    const/16 v2, 0x21

    const/16 v3, 0x434

    const/16 v4, 0x434

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x3d6

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "kk"

    const/16 v2, 0x22

    const/16 v3, 0x436

    const/16 v4, 0x436

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x3d7

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "kk"

    const/16 v2, 0x23

    const/16 v3, 0x44d

    const/16 v4, 0x44d

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x3d8

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "kk"

    const/16 v2, 0x24

    const/16 v3, -0xff

    const/16 v4, -0xff

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x3d9

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "kk"

    const/16 v2, 0x25

    const/16 v3, 0x2f

    const/16 v4, 0x7c

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x3da

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "kk"

    const/16 v2, 0x26

    const/16 v3, 0x44f

    const/16 v4, 0x44f

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x3db

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "kk"

    const/16 v2, 0x27

    const/16 v3, 0x447

    const/16 v4, 0x447

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x3dc

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "kk"

    const/16 v2, 0x28

    const/16 v3, 0x441

    const/16 v4, 0x441

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x3dd

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "kk"

    const/16 v2, 0x29

    const/16 v3, 0x43c

    const/16 v4, 0x43c

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x3de

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "kk"

    const/16 v2, 0x2a

    const/16 v3, 0x438

    const/16 v4, 0x438

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x3df

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "kk"

    const/16 v2, 0x2b

    const/16 v3, 0x442

    const/16 v4, 0x442

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x3e0

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "kk"

    const/16 v2, 0x2c

    const/16 v3, 0x44c

    const/16 v4, 0x44c

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x3e1

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "kk"

    const/16 v2, 0x2d

    const/16 v3, 0x431

    const/16 v4, 0x431

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x3e2

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "kk"

    const/16 v2, 0x2e

    const/16 v3, 0x44e

    const/16 v4, 0x44e

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x3e3

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "kk"

    const/16 v2, 0x2f

    const/16 v3, 0x2e

    const/16 v4, 0x2c

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x3e4

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ko"

    const/4 v2, 0x0

    const/16 v3, 0x60

    const/16 v4, 0x7e

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x3e5

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ko"

    const/4 v2, 0x1

    const/16 v3, 0x31

    const/16 v4, 0x21

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x3e6

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ko"

    const/4 v2, 0x2

    const/16 v3, 0x32

    const/16 v4, 0x40

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x3e7

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ko"

    const/4 v2, 0x3

    const/16 v3, 0x33

    const/16 v4, 0x23

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x3e8

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ko"

    const/4 v2, 0x4

    const/16 v3, 0x34

    const/16 v4, 0x24

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x3e9

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ko"

    const/4 v2, 0x5

    const/16 v3, 0x35

    const/16 v4, 0x25

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x3ea

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ko"

    const/4 v2, 0x6

    const/16 v3, 0x36

    const/16 v4, 0x5e

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x3eb

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ko"

    const/4 v2, 0x7

    const/16 v3, 0x37

    const/16 v4, 0x26

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x3ec

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ko"

    const/16 v2, 0x8

    const/16 v3, 0x38

    const/16 v4, 0x2a

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x3ed

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ko"

    const/16 v2, 0x9

    const/16 v3, 0x39

    const/16 v4, 0x28

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x3ee

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ko"

    const/16 v2, 0xa

    const/16 v3, 0x30

    const/16 v4, 0x29

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x3ef

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ko"

    const/16 v2, 0xb

    const/16 v3, 0x2d

    const/16 v4, 0x5f

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x3f0

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ko"

    const/16 v2, 0xc

    const/16 v3, 0x3d

    const/16 v4, 0x2b

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x3f1

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ko"

    const/16 v2, 0xd

    const/16 v3, 0x3142

    const/16 v4, 0x3142

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x3f2

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ko"

    const/16 v2, 0xe

    const/16 v3, 0x3148

    const/16 v4, 0x3148

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x3f3

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ko"

    const/16 v2, 0xf

    const/16 v3, 0x3137

    const/16 v4, 0x3137

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x3f4

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ko"

    const/16 v2, 0x10

    const/16 v3, 0x3131

    const/16 v4, 0x3131

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x3f5

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ko"

    const/16 v2, 0x11

    const/16 v3, 0x3145

    const/16 v4, 0x3145

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x3f6

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ko"

    const/16 v2, 0x12

    const/16 v3, 0x315b

    const/16 v4, 0x315b

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x3f7

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ko"

    const/16 v2, 0x13

    const/16 v3, 0x3155

    const/16 v4, 0x3155

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x3f8

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ko"

    const/16 v2, 0x14

    const/16 v3, 0x3151

    const/16 v4, 0x3151

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x3f9

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ko"

    const/16 v2, 0x15

    const/16 v3, 0x3150

    const/16 v4, 0x3150

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x3fa

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ko"

    const/16 v2, 0x16

    const/16 v3, 0x3154

    const/16 v4, 0x3154

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x3fb

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ko"

    const/16 v2, 0x17

    const/16 v3, 0x5b

    const/16 v4, 0x7b

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x3fc

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ko"

    const/16 v2, 0x18

    const/16 v3, 0x5d

    const/16 v4, 0x7d

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x3fd

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ko"

    const/16 v2, 0x19

    const/16 v3, 0x3141

    const/16 v4, 0x3141

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x3fe

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ko"

    const/16 v2, 0x1a

    const/16 v3, 0x3134

    const/16 v4, 0x3134

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x3ff

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ko"

    const/16 v2, 0x1b

    const/16 v3, 0x3147

    const/16 v4, 0x3147

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x400

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ko"

    const/16 v2, 0x1c

    const/16 v3, 0x3139

    const/16 v4, 0x3139

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x401

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ko"

    const/16 v2, 0x1d

    const/16 v3, 0x314e

    const/16 v4, 0x314e

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x402

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ko"

    const/16 v2, 0x1e

    const/16 v3, 0x3157

    const/16 v4, 0x3157

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x403

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ko"

    const/16 v2, 0x1f

    const/16 v3, 0x3153

    const/16 v4, 0x3153

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x404

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ko"

    const/16 v2, 0x20

    const/16 v3, 0x314f

    const/16 v4, 0x314f

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x405

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ko"

    const/16 v2, 0x21

    const/16 v3, 0x3163

    const/16 v4, 0x3163

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x406

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ko"

    const/16 v2, 0x23

    const/16 v3, 0x27

    const/16 v4, 0x22

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x407

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ko"

    const/16 v2, 0x24

    const v3, 0xffe6

    const/16 v4, 0x7c

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x408

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ko"

    const/16 v2, 0x25

    const v3, 0xffe6

    const/16 v4, 0x7c

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x409

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ko"

    const/16 v2, 0x26

    const/16 v3, 0x314b

    const/16 v4, 0x314b

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x40a

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ko"

    const/16 v2, 0x27

    const/16 v3, 0x314c

    const/16 v4, 0x314c

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x40b

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ko"

    const/16 v2, 0x28

    const/16 v3, 0x314a

    const/16 v4, 0x314a

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x40c

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ko"

    const/16 v2, 0x29

    const/16 v3, 0x314d

    const/16 v4, 0x314d

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x40d

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ko"

    const/16 v2, 0x2a

    const/16 v3, 0x3160

    const/16 v4, 0x3160

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x40e

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ko"

    const/16 v2, 0x2b

    const/16 v3, 0x315c

    const/16 v4, 0x315c

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x40f

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ko"

    const/16 v2, 0x2c

    const/16 v3, 0x3161

    const/16 v4, 0x3161

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x410

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "lt"

    const/4 v2, 0x0

    const/16 v3, 0x60

    const/16 v4, 0x7e

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x411

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "lt"

    const/4 v2, 0x1

    const/16 v3, 0x31

    const/16 v4, 0x21

    const/16 v5, 0x105

    const/16 v6, 0x104

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x412

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "lt"

    const/4 v2, 0x2

    const/16 v3, 0x32

    const/16 v4, 0x40

    const/16 v5, 0x10d

    const/16 v6, 0x10c

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x413

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "lt"

    const/4 v2, 0x3

    const/16 v3, 0x33

    const/16 v4, 0x23

    const/16 v5, 0x119

    const/16 v6, 0x118

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x414

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "lt"

    const/4 v2, 0x4

    const/16 v3, 0x34

    const/16 v4, 0x24

    const/16 v5, 0x117

    const/16 v6, 0x116

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x415

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "lt"

    const/4 v2, 0x5

    const/16 v3, 0x35

    const/16 v4, 0x25

    const/16 v5, 0x12f

    const/16 v6, 0x12e

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x416

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "lt"

    const/4 v2, 0x6

    const/16 v3, 0x36

    const/16 v4, 0x5e

    const/16 v5, 0x161

    const/16 v6, 0x160

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x417

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "lt"

    const/4 v2, 0x7

    const/16 v3, 0x37

    const/16 v4, 0x26

    const/16 v5, 0x173

    const/16 v6, 0x172

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x418

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "lt"

    const/16 v2, 0x8

    const/16 v3, 0x38

    const/16 v4, 0x2a

    const/16 v5, 0x16b

    const/16 v6, 0x16a

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x419

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "lt"

    const/16 v2, 0x9

    const/16 v3, 0x39

    const/16 v4, 0x28

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x41a

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "lt"

    const/16 v2, 0xa

    const/16 v3, 0x30

    const/16 v4, 0x29

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x41b

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "lt"

    const/16 v2, 0xb

    const/16 v3, 0x2d

    const/16 v4, 0x5f

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x41c

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "lt"

    const/16 v2, 0xc

    const/16 v3, 0x3d

    const/16 v4, 0x2b

    const/16 v5, 0x17e

    const/16 v6, 0x17d

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x41d

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "lt"

    const/16 v2, 0xd

    const/16 v3, 0x71

    const/16 v4, 0x71

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x41e

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "lt"

    const/16 v2, 0xe

    const/16 v3, 0x77

    const/16 v4, 0x77

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x41f

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "lt"

    const/16 v2, 0xf

    const/16 v3, 0x65

    const/16 v4, 0x65

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x420

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "lt"

    const/16 v2, 0x10

    const/16 v3, 0x72

    const/16 v4, 0x72

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x421

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "lt"

    const/16 v2, 0x11

    const/16 v3, 0x74

    const/16 v4, 0x74

    const/16 v5, 0x20ac

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x422

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "lt"

    const/16 v2, 0x12

    const/16 v3, 0x79

    const/16 v4, 0x79

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x423

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "lt"

    const/16 v2, 0x13

    const/16 v3, 0x75

    const/16 v4, 0x75

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x424

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "lt"

    const/16 v2, 0x14

    const/16 v3, 0x69

    const/16 v4, 0x69

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x425

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "lt"

    const/16 v2, 0x15

    const/16 v3, 0x6f

    const/16 v4, 0x6f

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x426

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "lt"

    const/16 v2, 0x16

    const/16 v3, 0x70

    const/16 v4, 0x70

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x427

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "lt"

    const/16 v2, 0x17

    const/16 v3, 0x5b

    const/16 v4, 0x7b

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x428

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "lt"

    const/16 v2, 0x18

    const/16 v3, 0x5d

    const/16 v4, 0x7d

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x429

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "lt"

    const/16 v2, 0x19

    const/16 v3, 0x61

    const/16 v4, 0x61

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x42a

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "lt"

    const/16 v2, 0x1a

    const/16 v3, 0x73

    const/16 v4, 0x73

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x42b

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "lt"

    const/16 v2, 0x1b

    const/16 v3, 0x64

    const/16 v4, 0x64

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x42c

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "lt"

    const/16 v2, 0x1c

    const/16 v3, 0x66

    const/16 v4, 0x66

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x42d

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "lt"

    const/16 v2, 0x1d

    const/16 v3, 0x67

    const/16 v4, 0x67

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x42e

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "lt"

    const/16 v2, 0x1e

    const/16 v3, 0x68

    const/16 v4, 0x68

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x42f

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "lt"

    const/16 v2, 0x1f

    const/16 v3, 0x6a

    const/16 v4, 0x6a

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x430

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "lt"

    const/16 v2, 0x20

    const/16 v3, 0x6b

    const/16 v4, 0x6b

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x431

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "lt"

    const/16 v2, 0x21

    const/16 v3, 0x6c

    const/16 v4, 0x6c

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x432

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "lt"

    const/16 v2, 0x22

    const/16 v3, 0x3b

    const/16 v4, 0x3a

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x433

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "lt"

    const/16 v2, 0x23

    const/16 v3, 0x27

    const/16 v4, 0x22

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x434

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "lt"

    const/16 v2, 0x24

    const/16 v3, -0xff

    const/16 v4, -0xff

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x435

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "lt"

    const/16 v2, 0x25

    const/16 v3, 0x5c

    const/16 v4, 0x7c

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x436

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "lt"

    const/16 v2, 0x26

    const/16 v3, 0x7a

    const/16 v4, 0x7a

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x437

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "lt"

    const/16 v2, 0x27

    const/16 v3, 0x78

    const/16 v4, 0x78

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x438

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "lt"

    const/16 v2, 0x28

    const/16 v3, 0x63

    const/16 v4, 0x63

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x439

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "lt"

    const/16 v2, 0x29

    const/16 v3, 0x76

    const/16 v4, 0x76

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x43a

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "lt"

    const/16 v2, 0x2a

    const/16 v3, 0x62

    const/16 v4, 0x62

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x43b

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "lt"

    const/16 v2, 0x2b

    const/16 v3, 0x6e

    const/16 v4, 0x6e

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x43c

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "lt"

    const/16 v2, 0x2c

    const/16 v3, 0x6d

    const/16 v4, 0x6d

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x43d

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "lt"

    const/16 v2, 0x2d

    const/16 v3, 0x2c

    const/16 v4, 0x3c

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x43e

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "lt"

    const/16 v2, 0x2e

    const/16 v3, 0x2e

    const/16 v4, 0x3e

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x43f

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "lt"

    const/16 v2, 0x2f

    const/16 v3, 0x2f

    const/16 v4, 0x3f

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x440

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "lv"

    const/4 v2, 0x0

    const/16 v3, 0x60

    const/16 v4, 0x7e

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x441

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "lv"

    const/4 v2, 0x1

    const/16 v3, 0x31

    const/16 v4, 0x21

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x442

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "lv"

    const/4 v2, 0x2

    const/16 v3, 0x32

    const/16 v4, 0x40

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x443

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "lv"

    const/4 v2, 0x3

    const/16 v3, 0x33

    const/16 v4, 0x23

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x444

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "lv"

    const/4 v2, 0x4

    const/16 v3, 0x34

    const/16 v4, 0x24

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x445

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "lv"

    const/4 v2, 0x5

    const/16 v3, 0x35

    const/16 v4, 0x25

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x446

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "lv"

    const/4 v2, 0x6

    const/16 v3, 0x36

    const/16 v4, 0x5e

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x447

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "lv"

    const/4 v2, 0x7

    const/16 v3, 0x37

    const/16 v4, 0x26

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x448

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "lv"

    const/16 v2, 0x8

    const/16 v3, 0x38

    const/16 v4, 0x2a

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x449

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "lv"

    const/16 v2, 0x9

    const/16 v3, 0x39

    const/16 v4, 0x28

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x44a

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "lv"

    const/16 v2, 0xa

    const/16 v3, 0x30

    const/16 v4, 0x29

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x44b

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "lv"

    const/16 v2, 0xb

    const/16 v3, 0x2d

    const/16 v4, 0x5f

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x44c

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "lv"

    const/16 v2, 0xc

    const/16 v3, 0x3d

    const/16 v4, 0x2b

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x44d

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "lv"

    const/16 v2, 0xd

    const/16 v3, 0x71

    const/16 v4, 0x71

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x44e

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "lv"

    const/16 v2, 0xe

    const/16 v3, 0x77

    const/16 v4, 0x77

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x44f

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "lv"

    const/16 v2, 0xf

    const/16 v3, 0x65

    const/16 v4, 0x65

    const/16 v5, 0x113

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x450

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "lv"

    const/16 v2, 0x10

    const/16 v3, 0x72

    const/16 v4, 0x72

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x451

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "lv"

    const/16 v2, 0x11

    const/16 v3, 0x74

    const/16 v4, 0x74

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x452

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "lv"

    const/16 v2, 0x12

    const/16 v3, 0x79

    const/16 v4, 0x79

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x453

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "lv"

    const/16 v2, 0x13

    const/16 v3, 0x75

    const/16 v4, 0x75

    const/16 v5, 0x16b

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x454

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "lv"

    const/16 v2, 0x14

    const/16 v3, 0x69

    const/16 v4, 0x69

    const/16 v5, 0x12b

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x455

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "lv"

    const/16 v2, 0x15

    const/16 v3, 0x6f

    const/16 v4, 0x6f

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x456

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "lv"

    const/16 v2, 0x16

    const/16 v3, 0x70

    const/16 v4, 0x70

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x457

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "lv"

    const/16 v2, 0x17

    const/16 v3, 0x5b

    const/16 v4, 0x7b

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x458

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "lv"

    const/16 v2, 0x18

    const/16 v3, 0x5d

    const/16 v4, 0x7d

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x459

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "lv"

    const/16 v2, 0x19

    const/16 v3, 0x61

    const/16 v4, 0x61

    const/16 v5, 0x101

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x45a

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "lv"

    const/16 v2, 0x1a

    const/16 v3, 0x73

    const/16 v4, 0x73

    const/16 v5, 0x161

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x45b

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "lv"

    const/16 v2, 0x1b

    const/16 v3, 0x64

    const/16 v4, 0x64

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x45c

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "lv"

    const/16 v2, 0x1c

    const/16 v3, 0x66

    const/16 v4, 0x66

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x45d

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "lv"

    const/16 v2, 0x1d

    const/16 v3, 0x67

    const/16 v4, 0x67

    const/16 v5, 0x123

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x45e

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "lv"

    const/16 v2, 0x1e

    const/16 v3, 0x68

    const/16 v4, 0x68

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x45f

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "lv"

    const/16 v2, 0x1f

    const/16 v3, 0x6a

    const/16 v4, 0x6a

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x460

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "lv"

    const/16 v2, 0x20

    const/16 v3, 0x6b

    const/16 v4, 0x6b

    const/16 v5, 0x137

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x461

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "lv"

    const/16 v2, 0x21

    const/16 v3, 0x6c

    const/16 v4, 0x6c

    const/16 v5, 0x13c

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x462

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "lv"

    const/16 v2, 0x22

    const/16 v3, 0x3b

    const/16 v4, 0x3a

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x463

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "lv"

    const/16 v2, 0x23

    const/16 v3, 0x27

    const/16 v4, 0x22

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x464

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "lv"

    const/16 v2, 0x24

    const/16 v3, -0xff

    const/16 v4, -0xff

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x465

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "lv"

    const/16 v2, 0x25

    const/16 v3, 0x5c

    const/16 v4, 0x7c

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x466

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "lv"

    const/16 v2, 0x26

    const/16 v3, 0x7a

    const/16 v4, 0x7a

    const/16 v5, 0x17e

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x467

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "lv"

    const/16 v2, 0x27

    const/16 v3, 0x78

    const/16 v4, 0x78

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x468

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "lv"

    const/16 v2, 0x28

    const/16 v3, 0x63

    const/16 v4, 0x63

    const/16 v5, 0x10d

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x469

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "lv"

    const/16 v2, 0x29

    const/16 v3, 0x76

    const/16 v4, 0x76

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x46a

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "lv"

    const/16 v2, 0x2a

    const/16 v3, 0x62

    const/16 v4, 0x62

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x46b

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "lv"

    const/16 v2, 0x2b

    const/16 v3, 0x6e

    const/16 v4, 0x6e

    const/16 v5, 0x146

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x46c

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "lv"

    const/16 v2, 0x2c

    const/16 v3, 0x6d

    const/16 v4, 0x6d

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x46d

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "lv"

    const/16 v2, 0x2d

    const/16 v3, 0x2c

    const/16 v4, 0x3c

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x46e

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "lv"

    const/16 v2, 0x2e

    const/16 v3, 0x2e

    const/16 v4, 0x3e

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x46f

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "lv"

    const/16 v2, 0x2f

    const/16 v3, 0x2f

    const/16 v4, 0x3f

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x470

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "nb"

    const/4 v2, 0x0

    const/16 v3, 0xa7

    const/16 v4, 0xbd

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x471

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "nb"

    const/4 v2, 0x1

    const/16 v3, 0x31

    const/16 v4, 0x21

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x472

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "nb"

    const/4 v2, 0x2

    const/16 v3, 0x32

    const/16 v4, 0x22

    const/16 v5, 0x40

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x473

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "nb"

    const/4 v2, 0x3

    const/16 v3, 0x33

    const/16 v4, 0x23

    const/16 v5, 0xa3

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x474

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "nb"

    const/4 v2, 0x4

    const/16 v3, 0x34

    const/16 v4, 0xa4

    const/16 v5, 0x24

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x475

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "nb"

    const/4 v2, 0x5

    const/16 v3, 0x35

    const/16 v4, 0x25

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x476

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "nb"

    const/4 v2, 0x6

    const/16 v3, 0x36

    const/16 v4, 0x26

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x477

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "nb"

    const/4 v2, 0x7

    const/16 v3, 0x37

    const/16 v4, 0x2f

    const/16 v5, 0x7b

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x478

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "nb"

    const/16 v2, 0x8

    const/16 v3, 0x38

    const/16 v4, 0x28

    const/16 v5, 0x5b

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x479

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "nb"

    const/16 v2, 0x9

    const/16 v3, 0x39

    const/16 v4, 0x29

    const/16 v5, 0x5d

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x47a

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "nb"

    const/16 v2, 0xa

    const/16 v3, 0x30

    const/16 v4, 0x3d

    const/16 v5, 0x7d

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x47b

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "nb"

    const/16 v2, 0xb

    const/16 v3, 0x2b

    const/16 v4, 0x3f

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x47c

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "nb"

    const/16 v2, 0xc

    const/16 v3, 0x5c

    const/16 v4, 0x60

    const/16 v5, 0x27

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x47d

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "nb"

    const/16 v2, 0xf

    const/16 v3, 0x65

    const/16 v4, 0x65

    const/16 v5, 0x20ac

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x47e

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "nb"

    const/16 v2, 0x13

    const/16 v3, 0x75

    const/16 v4, 0x75

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x47f

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "nb"

    const/16 v2, 0x14

    const/16 v3, 0x69

    const/16 v4, 0x69

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x480

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "nb"

    const/16 v2, 0x15

    const/16 v3, 0x6f

    const/16 v4, 0x6f

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x481

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "nb"

    const/16 v2, 0x17

    const/16 v3, 0xe5

    const/16 v4, 0xe5

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x482

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "nb"

    const/16 v2, 0x18

    const/16 v3, 0xa8

    const/16 v4, 0x5e

    const/16 v5, 0x7e

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x483

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "nb"

    const/16 v2, 0x19

    const/16 v3, 0x61

    const/16 v4, 0x61

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x484

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "nb"

    const/16 v2, 0x22

    const/16 v3, 0xf8

    const/16 v4, 0xf8

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x485

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "nb"

    const/16 v2, 0x23

    const/16 v3, 0xe6

    const/16 v4, 0xe6

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x486

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "nb"

    const/16 v2, 0x24

    const/16 v3, 0x27

    const/16 v4, 0x2a

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x487

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "nb"

    const/16 v2, 0x25

    const/16 v3, 0x3c

    const/16 v4, 0x3e

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x488

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "nb"

    const/16 v2, 0x2c

    const/16 v3, 0x6d

    const/16 v4, 0x6d

    const/16 v5, 0x3bc

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x489

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "nb"

    const/16 v2, 0x2d

    const/16 v3, 0x2c

    const/16 v4, 0x3b

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x48a

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "nb"

    const/16 v2, 0x2e

    const/16 v3, 0x2e

    const/16 v4, 0x3a

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x48b

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "nb"

    const/16 v2, 0x2f

    const/16 v3, 0x2d

    const/16 v4, 0x5f

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x48c

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "nl"

    const/4 v2, 0x0

    const/16 v3, 0x60

    const/16 v4, 0x7e

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x48d

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "nl"

    const/4 v2, 0x1

    const/16 v3, 0x31

    const/16 v4, 0x21

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x48e

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "nl"

    const/4 v2, 0x2

    const/16 v3, 0x32

    const/16 v4, 0x40

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x48f

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "nl"

    const/4 v2, 0x3

    const/16 v3, 0x33

    const/16 v4, 0x23

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x490

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "nl"

    const/4 v2, 0x4

    const/16 v3, 0x34

    const/16 v4, 0x24

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x491

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "nl"

    const/4 v2, 0x5

    const/16 v3, 0x35

    const/16 v4, 0x25

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x492

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "nl"

    const/4 v2, 0x6

    const/16 v3, 0x36

    const/16 v4, 0x5e

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x493

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "nl"

    const/4 v2, 0x7

    const/16 v3, 0x37

    const/16 v4, 0x26

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x494

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "nl"

    const/16 v2, 0x8

    const/16 v3, 0x38

    const/16 v4, 0x2a

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x495

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "nl"

    const/16 v2, 0x9

    const/16 v3, 0x39

    const/16 v4, 0x28

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x496

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "nl"

    const/16 v2, 0xa

    const/16 v3, 0x30

    const/16 v4, 0x29

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x497

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "nl"

    const/16 v2, 0xb

    const/16 v3, 0x2d

    const/16 v4, 0x5f

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x498

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "nl"

    const/16 v2, 0xc

    const/16 v3, 0x3d

    const/16 v4, 0x2b

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x499

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "nl"

    const/16 v2, 0xd

    const/16 v3, 0x71

    const/16 v4, 0x71

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x49a

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "nl"

    const/16 v2, 0xe

    const/16 v3, 0x77

    const/16 v4, 0x77

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x49b

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "nl"

    const/16 v2, 0xf

    const/16 v3, 0x65

    const/16 v4, 0x65

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x49c

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "nl"

    const/16 v2, 0x10

    const/16 v3, 0x72

    const/16 v4, 0x72

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x49d

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "nl"

    const/16 v2, 0x11

    const/16 v3, 0x74

    const/16 v4, 0x74

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x49e

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "nl"

    const/16 v2, 0x12

    const/16 v3, 0x79

    const/16 v4, 0x79

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x49f

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "nl"

    const/16 v2, 0x13

    const/16 v3, 0x75

    const/16 v4, 0x75

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x4a0

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "nl"

    const/16 v2, 0x14

    const/16 v3, 0x69

    const/16 v4, 0x69

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x4a1

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "nl"

    const/16 v2, 0x15

    const/16 v3, 0x6f

    const/16 v4, 0x6f

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x4a2

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "nl"

    const/16 v2, 0x16

    const/16 v3, 0x70

    const/16 v4, 0x70

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x4a3

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "nl"

    const/16 v2, 0x17

    const/16 v3, 0x5b

    const/16 v4, 0x7b

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x4a4

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "nl"

    const/16 v2, 0x18

    const/16 v3, 0x5d

    const/16 v4, 0x7d

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x4a5

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "nl"

    const/16 v2, 0x19

    const/16 v3, 0x61

    const/16 v4, 0x61

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x4a6

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "nl"

    const/16 v2, 0x1a

    const/16 v3, 0x73

    const/16 v4, 0x73

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x4a7

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "nl"

    const/16 v2, 0x1b

    const/16 v3, 0x64

    const/16 v4, 0x64

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x4a8

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "nl"

    const/16 v2, 0x1c

    const/16 v3, 0x66

    const/16 v4, 0x66

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x4a9

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "nl"

    const/16 v2, 0x1d

    const/16 v3, 0x67

    const/16 v4, 0x67

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x4aa

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "nl"

    const/16 v2, 0x1e

    const/16 v3, 0x68

    const/16 v4, 0x68

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x4ab

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "nl"

    const/16 v2, 0x1f

    const/16 v3, 0x6a

    const/16 v4, 0x6a

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x4ac

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "nl"

    const/16 v2, 0x20

    const/16 v3, 0x6b

    const/16 v4, 0x6b

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x4ad

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "nl"

    const/16 v2, 0x21

    const/16 v3, 0x6c

    const/16 v4, 0x6c

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x4ae

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "nl"

    const/16 v2, 0x22

    const/16 v3, 0x3b

    const/16 v4, 0x3a

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x4af

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "nl"

    const/16 v2, 0x23

    const/16 v3, 0x27

    const/16 v4, 0x22

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x4b0

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "nl"

    const/16 v2, 0x24

    const/16 v3, -0xff

    const/16 v4, -0xff

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x4b1

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "nl"

    const/16 v2, 0x25

    const/16 v3, 0x5c

    const/16 v4, 0x7c

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x4b2

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "nl"

    const/16 v2, 0x26

    const/16 v3, 0x7a

    const/16 v4, 0x7a

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x4b3

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "nl"

    const/16 v2, 0x27

    const/16 v3, 0x78

    const/16 v4, 0x78

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x4b4

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "nl"

    const/16 v2, 0x28

    const/16 v3, 0x63

    const/16 v4, 0x63

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x4b5

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "nl"

    const/16 v2, 0x29

    const/16 v3, 0x76

    const/16 v4, 0x76

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x4b6

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "nl"

    const/16 v2, 0x2a

    const/16 v3, 0x62

    const/16 v4, 0x62

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x4b7

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "nl"

    const/16 v2, 0x2b

    const/16 v3, 0x6e

    const/16 v4, 0x6e

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x4b8

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "nl"

    const/16 v2, 0x2c

    const/16 v3, 0x6d

    const/16 v4, 0x6d

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x4b9

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "nl"

    const/16 v2, 0x2d

    const/16 v3, 0x2c

    const/16 v4, 0x3c

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x4ba

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "nl"

    const/16 v2, 0x2e

    const/16 v3, 0x2e

    const/16 v4, 0x3e

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x4bb

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "nl"

    const/16 v2, 0x2f

    const/16 v3, 0x2f

    const/16 v4, 0x3f

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x4bc

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "nl_BE"

    const/4 v2, 0x0

    const/16 v3, 0xb2

    const/16 v4, -0xff

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x4bd

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "nl_BE"

    const/4 v2, 0x1

    const/16 v3, 0x26

    const/16 v4, 0x31

    const/16 v5, 0xa6

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x4be

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "nl_BE"

    const/4 v2, 0x2

    const/16 v3, 0xe9

    const/16 v4, 0x32

    const/16 v5, 0x40

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x4bf

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "nl_BE"

    const/4 v2, 0x3

    const/16 v3, 0x22

    const/16 v4, 0x33

    const/16 v5, 0x23

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x4c0

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "nl_BE"

    const/4 v2, 0x4

    const/16 v3, 0x27

    const/16 v4, 0x34

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x4c1

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "nl_BE"

    const/4 v2, 0x5

    const/16 v3, 0x28

    const/16 v4, 0x35

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x4c2

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "nl_BE"

    const/4 v2, 0x6

    const/16 v3, 0xa7

    const/16 v4, 0x36

    const/16 v5, 0x5e

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x4c3

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "nl_BE"

    const/4 v2, 0x7

    const/16 v3, 0xe8

    const/16 v4, 0x37

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x4c4

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "nl_BE"

    const/16 v2, 0x8

    const/16 v3, 0x21

    const/16 v4, 0x38

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x4c5

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "nl_BE"

    const/16 v2, 0x9

    const/16 v3, 0xe7

    const/16 v4, 0x39

    const/16 v5, 0x7b

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x4c6

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "nl_BE"

    const/16 v2, 0xa

    const/16 v3, 0xe0

    const/16 v4, 0x30

    const/16 v5, 0x7d

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x4c7

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "nl_BE"

    const/16 v2, 0xb

    const/16 v3, 0x29

    const/16 v4, 0xb0

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x4c8

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "nl_BE"

    const/16 v2, 0xc

    const/16 v3, 0x2d

    const/16 v4, 0x5f

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x4c9

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "nl_BE"

    const/16 v2, 0xd

    const/16 v3, 0x61

    const/16 v4, 0x61

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x4ca

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "nl_BE"

    const/16 v2, 0xe

    const/16 v3, 0x7a

    const/16 v4, 0x7a

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x4cb

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "nl_BE"

    const/16 v2, 0xf

    const/16 v3, 0x65

    const/16 v4, 0x65

    const/16 v5, 0x20ac

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x4cc

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "nl_BE"

    const/16 v2, 0x13

    const/16 v3, 0x75

    const/16 v4, 0x75

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x4cd

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "nl_BE"

    const/16 v2, 0x14

    const/16 v3, 0x69

    const/16 v4, 0x69

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x4ce

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "nl_BE"

    const/16 v2, 0x15

    const/16 v3, 0x6f

    const/16 v4, 0x6f

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x4cf

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "nl_BE"

    const/16 v2, 0x16

    const/16 v3, 0x70

    const/16 v4, 0x70

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x4d0

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "nl_BE"

    const/16 v2, 0x17

    const/16 v3, 0x5e

    const/16 v4, 0xa8

    const/16 v5, 0x5b

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x4d1

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "nl_BE"

    const/16 v2, 0x18

    const/16 v3, 0x24

    const/16 v4, 0x2a

    const/16 v5, 0x5d

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x4d2

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "nl_BE"

    const/16 v2, 0x19

    const/16 v3, 0x71

    const/16 v4, 0x71

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x4d3

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "nl_BE"

    const/16 v2, 0x22

    const/16 v3, 0x6d

    const/16 v4, 0x6d

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x4d4

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "nl_BE"

    const/16 v2, 0x23

    const/16 v3, 0xf9

    const/16 v4, 0x25

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x4d5

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "nl_BE"

    const/16 v2, 0x24

    const/16 v3, 0xb5

    const/16 v4, 0xa3

    const/16 v5, 0x60

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x4d6

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "nl_BE"

    const/16 v2, 0x25

    const/16 v3, 0x3c

    const/16 v4, 0x3e

    const/16 v5, 0x5c

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x4d7

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "nl_BE"

    const/16 v2, 0x26

    const/16 v3, 0x77

    const/16 v4, 0x77

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x4d8

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "nl_BE"

    const/16 v2, 0x2c

    const/16 v3, 0x2c

    const/16 v4, 0x3f

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x4d9

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "nl_BE"

    const/16 v2, 0x2d

    const/16 v3, 0x3b

    const/16 v4, 0x2e

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x4da

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "nl_BE"

    const/16 v2, 0x2e

    const/16 v3, 0x3a

    const/16 v4, 0x2f

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x4db

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "nl_BE"

    const/16 v2, 0x2f

    const/16 v3, 0x3d

    const/16 v4, 0x2b

    const/16 v5, 0x7e

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x4dc

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "pl"

    const/4 v2, 0x0

    const/16 v3, 0x60

    const/16 v4, 0xac

    const/16 v5, 0x7c

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x4dd

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "pl"

    const/4 v2, 0x1

    const/16 v3, 0x31

    const/16 v4, 0x21

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x4de

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "pl"

    const/4 v2, 0x2

    const/16 v3, 0x32

    const/16 v4, 0x22

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x4df

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "pl"

    const/4 v2, 0x3

    const/16 v3, 0x33

    const/16 v4, 0xa3

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x4e0

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "pl"

    const/4 v2, 0x4

    const/16 v3, 0x34

    const/16 v4, 0x24

    const/16 v5, 0x20ac

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x4e1

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "pl"

    const/4 v2, 0x5

    const/16 v3, 0x35

    const/16 v4, 0x25

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x4e2

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "pl"

    const/4 v2, 0x6

    const/16 v3, 0x36

    const/16 v4, 0x5e

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x4e3

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "pl"

    const/4 v2, 0x7

    const/16 v3, 0x37

    const/16 v4, 0x26

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x4e4

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "pl"

    const/16 v2, 0x8

    const/16 v3, 0x38

    const/16 v4, 0x2a

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x4e5

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "pl"

    const/16 v2, 0x9

    const/16 v3, 0x39

    const/16 v4, 0x28

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x4e6

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "pl"

    const/16 v2, 0xa

    const/16 v3, 0x30

    const/16 v4, 0x29

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x4e7

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "pl"

    const/16 v2, 0xb

    const/16 v3, 0x2d

    const/16 v4, 0x5f

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x4e8

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "pl"

    const/16 v2, 0xc

    const/16 v3, 0x3d

    const/16 v4, 0x2b

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x4e9

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "pl"

    const/16 v2, 0xd

    const/16 v3, 0x71

    const/16 v4, 0x71

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x4ea

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "pl"

    const/16 v2, 0xe

    const/16 v3, 0x77

    const/16 v4, 0x77

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x4eb

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "pl"

    const/16 v2, 0xf

    const/16 v3, 0x65

    const/16 v4, 0x65

    const/16 v5, 0xe9

    const/16 v6, 0xc9

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x4ec

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "pl"

    const/16 v2, 0x10

    const/16 v3, 0x72

    const/16 v4, 0x72

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x4ed

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "pl"

    const/16 v2, 0x11

    const/16 v3, 0x74

    const/16 v4, 0x74

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x4ee

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "pl"

    const/16 v2, 0x12

    const/16 v3, 0x79

    const/16 v4, 0x79

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x4ef

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "pl"

    const/16 v2, 0x13

    const/16 v3, 0x75

    const/16 v4, 0x75

    const/16 v5, 0xfa

    const/16 v6, 0xda

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x4f0

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "pl"

    const/16 v2, 0x14

    const/16 v3, 0x69

    const/16 v4, 0x69

    const/16 v5, 0xed

    const/16 v6, 0xcd

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x4f1

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "pl"

    const/16 v2, 0x15

    const/16 v3, 0x6f

    const/16 v4, 0x6f

    const/16 v5, 0xf3

    const/16 v6, 0xd3

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x4f2

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "pl"

    const/16 v2, 0x16

    const/16 v3, 0x70

    const/16 v4, 0x70

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x4f3

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "pl"

    const/16 v2, 0x17

    const/16 v3, 0x5b

    const/16 v4, 0x7b

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x4f4

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "pl"

    const/16 v2, 0x18

    const/16 v3, 0x5d

    const/16 v4, 0x7d

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x4f5

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "pl"

    const/16 v2, 0x19

    const/16 v3, 0x61

    const/16 v4, 0x61

    const/16 v5, 0xe1

    const/16 v6, 0xc1

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x4f6

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "pl"

    const/16 v2, 0x1a

    const/16 v3, 0x73

    const/16 v4, 0x73

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x4f7

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "pl"

    const/16 v2, 0x1b

    const/16 v3, 0x64

    const/16 v4, 0x64

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x4f8

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "pl"

    const/16 v2, 0x1c

    const/16 v3, 0x66

    const/16 v4, 0x66

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x4f9

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "pl"

    const/16 v2, 0x1d

    const/16 v3, 0x67

    const/16 v4, 0x67

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x4fa

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "pl"

    const/16 v2, 0x1e

    const/16 v3, 0x68

    const/16 v4, 0x68

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x4fb

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "pl"

    const/16 v2, 0x1f

    const/16 v3, 0x6a

    const/16 v4, 0x6a

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x4fc

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "pl"

    const/16 v2, 0x20

    const/16 v3, 0x6b

    const/16 v4, 0x6b

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x4fd

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "pl"

    const/16 v2, 0x21

    const/16 v3, 0x6c

    const/16 v4, 0x6c

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x4fe

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "pl"

    const/16 v2, 0x22

    const/16 v3, 0x3b

    const/16 v4, 0x3a

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x4ff

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "pl"

    const/16 v2, 0x23

    const/16 v3, 0x27

    const/16 v4, 0x40

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x500

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "pl"

    const/16 v2, 0x24

    const/16 v3, 0x23

    const/16 v4, 0x7e

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x501

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "pl"

    const/16 v2, 0x25

    const/16 v3, 0x5c

    const/16 v4, 0x7c

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x502

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "pl"

    const/16 v2, 0x26

    const/16 v3, 0x7a

    const/16 v4, 0x7a

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x503

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "pl"

    const/16 v2, 0x27

    const/16 v3, 0x78

    const/16 v4, 0x78

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x504

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "pl"

    const/16 v2, 0x28

    const/16 v3, 0x63

    const/16 v4, 0x63

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x505

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "pl"

    const/16 v2, 0x29

    const/16 v3, 0x76

    const/16 v4, 0x76

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x506

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "pl"

    const/16 v2, 0x2a

    const/16 v3, 0x62

    const/16 v4, 0x62

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x507

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "pl"

    const/16 v2, 0x2b

    const/16 v3, 0x6e

    const/16 v4, 0x6e

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x508

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "pl"

    const/16 v2, 0x2c

    const/16 v3, 0x6d

    const/16 v4, 0x6d

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x509

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "pl"

    const/16 v2, 0x2d

    const/16 v3, 0x2c

    const/16 v4, 0x3c

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x50a

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "pl"

    const/16 v2, 0x2e

    const/16 v3, 0x2e

    const/16 v4, 0x3e

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x50b

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "pl"

    const/16 v2, 0x2f

    const/16 v3, 0x2f

    const/16 v4, 0x3f

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x50c

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "pt"

    const/4 v2, 0x0

    const/16 v3, 0x5c

    const/16 v4, 0x7c

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x50d

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "pt"

    const/4 v2, 0x2

    const/16 v3, 0x32

    const/16 v4, 0x22

    const/16 v5, 0x40

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x50e

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "pt"

    const/4 v2, 0x3

    const/16 v3, 0x33

    const/16 v4, 0x23

    const/16 v5, 0xa3

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x50f

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "pt"

    const/4 v2, 0x4

    const/16 v3, 0x34

    const/16 v4, 0x24

    const/16 v5, 0xa7

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x510

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "pt"

    const/4 v2, 0x5

    const/16 v3, 0x35

    const/16 v4, 0x25

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x511

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "pt"

    const/4 v2, 0x6

    const/16 v3, 0x36

    const/16 v4, 0x26

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x512

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "pt"

    const/4 v2, 0x7

    const/16 v3, 0x37

    const/16 v4, 0x2f

    const/16 v5, 0x7b

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x513

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "pt"

    const/16 v2, 0x8

    const/16 v3, 0x38

    const/16 v4, 0x28

    const/16 v5, 0x5b

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x514

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "pt"

    const/16 v2, 0x9

    const/16 v3, 0x39

    const/16 v4, 0x29

    const/16 v5, 0x5d

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x515

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "pt"

    const/16 v2, 0xa

    const/16 v3, 0x30

    const/16 v4, 0x3d

    const/16 v5, 0x7d

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x516

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "pt"

    const/16 v2, 0xb

    const/16 v3, 0x27

    const/16 v4, 0x3f

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x517

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "pt"

    const/16 v2, 0xc

    const/16 v3, 0xab

    const/16 v4, 0xbb

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x518

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "pt"

    const/16 v2, 0xf

    const/16 v3, 0x65

    const/16 v4, 0x65

    const/16 v5, 0x20ac

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x519

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "pt"

    const/16 v2, 0x13

    const/16 v3, 0x75

    const/16 v4, 0x75

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x51a

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "pt"

    const/16 v2, 0x14

    const/16 v3, 0x69

    const/16 v4, 0x69

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x51b

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "pt"

    const/16 v2, 0x15

    const/16 v3, 0x6f

    const/16 v4, 0x6f

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x51c

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "pt"

    const/16 v2, 0x17

    const/16 v3, 0x2b

    const/16 v4, 0x2a

    const/16 v5, 0xa8

    const/16 v6, 0xa8

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x51d

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "pt"

    const/16 v2, 0x18

    const/16 v3, 0xb4

    const/16 v4, 0x60

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x51e

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "pt"

    const/16 v2, 0x19

    const/16 v3, 0x61

    const/16 v4, 0x61

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x51f

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "pt"

    const/16 v2, 0x22

    const/16 v3, 0xe7

    const/16 v4, 0xe7

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x520

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "pt"

    const/16 v2, 0x23

    const/16 v3, 0xba

    const/16 v4, 0xaa

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x521

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "pt"

    const/16 v2, 0x24

    const/16 v3, 0x7e

    const/16 v4, 0x5e

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x522

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "pt"

    const/16 v2, 0x25

    const/16 v3, 0x3c

    const/16 v4, 0x3e

    const/16 v5, 0x5c

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x523

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "pt"

    const/16 v2, 0x2d

    const/16 v3, 0x2c

    const/16 v4, 0x3b

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x524

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "pt"

    const/16 v2, 0x2e

    const/16 v3, 0x2e

    const/16 v4, 0x3a

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x525

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "pt"

    const/16 v2, 0x2f

    const/16 v3, 0x2d

    const/16 v4, 0x5f

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x526

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "pt_BR"

    const/4 v2, 0x0

    const/16 v3, 0x27

    const/16 v4, 0x22

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x527

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "pt_BR"

    const/4 v2, 0x1

    const/16 v3, 0x31

    const/16 v4, 0x21

    const/16 v5, 0xb9

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x528

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "pt_BR"

    const/4 v2, 0x2

    const/16 v3, 0x32

    const/16 v4, 0x40

    const/16 v5, 0xb2

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x529

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "pt_BR"

    const/4 v2, 0x3

    const/16 v3, 0x33

    const/16 v4, 0x23

    const/16 v5, 0xb3

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x52a

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "pt_BR"

    const/4 v2, 0x4

    const/16 v3, 0x34

    const/16 v4, 0x24

    const/16 v5, 0xa3

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x52b

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "pt_BR"

    const/4 v2, 0x5

    const/16 v3, 0x35

    const/16 v4, 0x25

    const/16 v5, 0xa2

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x52c

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "pt_BR"

    const/4 v2, 0x6

    const/16 v3, 0x36

    const/16 v4, 0xa8

    const/16 v5, 0xac

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x52d

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "pt_BR"

    const/4 v2, 0x7

    const/16 v3, 0x37

    const/16 v4, 0x26

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x52e

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "pt_BR"

    const/16 v2, 0x8

    const/16 v3, 0x38

    const/16 v4, 0x2a

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x52f

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "pt_BR"

    const/16 v2, 0x9

    const/16 v3, 0x39

    const/16 v4, 0x28

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x530

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "pt_BR"

    const/16 v2, 0xa

    const/16 v3, 0x30

    const/16 v4, 0x29

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x531

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "pt_BR"

    const/16 v2, 0xb

    const/16 v3, 0x2d

    const/16 v4, 0x5f

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x532

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "pt_BR"

    const/16 v2, 0xc

    const/16 v3, 0x3d

    const/16 v4, 0x2b

    const/16 v5, 0xa7

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x533

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "pt_BR"

    const/16 v2, 0xd

    const/16 v3, 0x71

    const/16 v4, 0x71

    const/16 v5, 0x2f

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x534

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "pt_BR"

    const/16 v2, 0xe

    const/16 v3, 0x77

    const/16 v4, 0x77

    const/16 v5, 0x3f

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x535

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "pt_BR"

    const/16 v2, 0xf

    const/16 v3, 0x65

    const/16 v4, 0x65

    const/16 v5, 0x20ac

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x536

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "pt_BR"

    const/16 v2, 0x11

    const/16 v3, 0x74

    const/16 v4, 0x74

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x537

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "pt_BR"

    const/16 v2, 0x13

    const/16 v3, 0x75

    const/16 v4, 0x75

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x538

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "pt_BR"

    const/16 v2, 0x14

    const/16 v3, 0x69

    const/16 v4, 0x69

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x539

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "pt_BR"

    const/16 v2, 0x15

    const/16 v3, 0x6f

    const/16 v4, 0x6f

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x53a

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "pt_BR"

    const/16 v2, 0x17

    const/16 v3, 0xb4

    const/16 v4, 0x60

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x53b

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "pt_BR"

    const/16 v2, 0x18

    const/16 v3, 0x5b

    const/16 v4, 0x7b

    const/16 v5, 0xaa

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x53c

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "pt_BR"

    const/16 v2, 0x19

    const/16 v3, 0x61

    const/16 v4, 0x61

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x53d

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "pt_BR"

    const/16 v2, 0x22

    const/16 v3, 0xe7

    const/16 v4, 0xe7

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x53e

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "pt_BR"

    const/16 v2, 0x23

    const/16 v3, 0x7e

    const/16 v4, 0x5e

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x53f

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "pt_BR"

    const/16 v2, 0x24

    const/16 v3, 0x5d

    const/16 v4, 0x7d

    const/16 v5, 0xba

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x540

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "pt_BR"

    const/16 v2, 0x25

    const/16 v3, 0x5c

    const/16 v4, 0x7c

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x541

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "pt_BR"

    const/16 v2, 0x28

    const/16 v3, 0x63

    const/16 v4, 0x63

    const/16 v5, 0x20a2

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x542

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "pt_BR"

    const/16 v2, 0x2d

    const/16 v3, 0x2c

    const/16 v4, 0x3c

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x543

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "pt_BR"

    const/16 v2, 0x2e

    const/16 v3, 0x2e

    const/16 v4, 0x3e

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x544

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "pt_BR"

    const/16 v2, 0x2f

    const/16 v3, 0x3b

    const/16 v4, 0x3a

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x545

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ro"

    const/4 v2, 0x0

    const/16 v3, 0x60

    const/16 v4, 0x7e

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x546

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ro"

    const/4 v2, 0x1

    const/16 v3, 0x31

    const/16 v4, 0x21

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x547

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ro"

    const/4 v2, 0x2

    const/16 v3, 0x32

    const/16 v4, 0x40

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x548

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ro"

    const/4 v2, 0x3

    const/16 v3, 0x33

    const/16 v4, 0x23

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x549

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ro"

    const/4 v2, 0x4

    const/16 v3, 0x34

    const/16 v4, 0x24

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x54a

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ro"

    const/4 v2, 0x5

    const/16 v3, 0x35

    const/16 v4, 0x25

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x54b

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ro"

    const/4 v2, 0x6

    const/16 v3, 0x36

    const/16 v4, 0x5e

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x54c

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ro"

    const/4 v2, 0x7

    const/16 v3, 0x37

    const/16 v4, 0x26

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x54d

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ro"

    const/16 v2, 0x8

    const/16 v3, 0x38

    const/16 v4, 0x2a

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x54e

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ro"

    const/16 v2, 0x9

    const/16 v3, 0x39

    const/16 v4, 0x28

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x54f

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ro"

    const/16 v2, 0xa

    const/16 v3, 0x30

    const/16 v4, 0x29

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x550

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ro"

    const/16 v2, 0xb

    const/16 v3, 0x2d

    const/16 v4, 0x5f

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x551

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ro"

    const/16 v2, 0xc

    const/16 v3, 0x3d

    const/16 v4, 0x2b

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x552

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ro"

    const/16 v2, 0xd

    const/16 v3, 0x71

    const/16 v4, 0x71

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x553

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ro"

    const/16 v2, 0xe

    const/16 v3, 0x77

    const/16 v4, 0x77

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x554

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ro"

    const/16 v2, 0xf

    const/16 v3, 0x65

    const/16 v4, 0x65

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x555

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ro"

    const/16 v2, 0x10

    const/16 v3, 0x72

    const/16 v4, 0x72

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x556

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ro"

    const/16 v2, 0x11

    const/16 v3, 0x74

    const/16 v4, 0x74

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x557

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ro"

    const/16 v2, 0x12

    const/16 v3, 0x79

    const/16 v4, 0x79

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x558

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ro"

    const/16 v2, 0x13

    const/16 v3, 0x75

    const/16 v4, 0x75

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x559

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ro"

    const/16 v2, 0x14

    const/16 v3, 0x69

    const/16 v4, 0x69

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x55a

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ro"

    const/16 v2, 0x15

    const/16 v3, 0x6f

    const/16 v4, 0x6f

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x55b

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ro"

    const/16 v2, 0x16

    const/16 v3, 0x70

    const/16 v4, 0x70

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x55c

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ro"

    const/16 v2, 0x17

    const/16 v3, 0x5b

    const/16 v4, 0x7b

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x55d

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ro"

    const/16 v2, 0x18

    const/16 v3, 0x5d

    const/16 v4, 0x7d

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x55e

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ro"

    const/16 v2, 0x19

    const/16 v3, 0x61

    const/16 v4, 0x61

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x55f

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ro"

    const/16 v2, 0x1a

    const/16 v3, 0x73

    const/16 v4, 0x73

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x560

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ro"

    const/16 v2, 0x1b

    const/16 v3, 0x64

    const/16 v4, 0x64

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x561

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ro"

    const/16 v2, 0x1c

    const/16 v3, 0x66

    const/16 v4, 0x66

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x562

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ro"

    const/16 v2, 0x1d

    const/16 v3, 0x67

    const/16 v4, 0x67

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x563

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ro"

    const/16 v2, 0x1e

    const/16 v3, 0x68

    const/16 v4, 0x68

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x564

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ro"

    const/16 v2, 0x1f

    const/16 v3, 0x6a

    const/16 v4, 0x6a

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x565

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ro"

    const/16 v2, 0x20

    const/16 v3, 0x6b

    const/16 v4, 0x6b

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x566

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ro"

    const/16 v2, 0x21

    const/16 v3, 0x6c

    const/16 v4, 0x6c

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x567

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ro"

    const/16 v2, 0x22

    const/16 v3, 0x3b

    const/16 v4, 0x3a

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x568

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ro"

    const/16 v2, 0x23

    const/16 v3, 0x27

    const/16 v4, 0x22

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x569

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ro"

    const/16 v2, 0x24

    const/16 v3, -0xff

    const/16 v4, -0xff

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x56a

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ro"

    const/16 v2, 0x25

    const/16 v3, 0x5c

    const/16 v4, 0x7c

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x56b

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ro"

    const/16 v2, 0x26

    const/16 v3, 0x7a

    const/16 v4, 0x7a

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x56c

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ro"

    const/16 v2, 0x27

    const/16 v3, 0x78

    const/16 v4, 0x78

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x56d

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ro"

    const/16 v2, 0x28

    const/16 v3, 0x63

    const/16 v4, 0x63

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x56e

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ro"

    const/16 v2, 0x29

    const/16 v3, 0x76

    const/16 v4, 0x76

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x56f

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ro"

    const/16 v2, 0x2a

    const/16 v3, 0x62

    const/16 v4, 0x62

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x570

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ro"

    const/16 v2, 0x2b

    const/16 v3, 0x6e

    const/16 v4, 0x6e

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x571

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ro"

    const/16 v2, 0x2c

    const/16 v3, 0x6d

    const/16 v4, 0x6d

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x572

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ro"

    const/16 v2, 0x2d

    const/16 v3, 0x2c

    const/16 v4, 0x3c

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x573

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ro"

    const/16 v2, 0x2e

    const/16 v3, 0x2e

    const/16 v4, 0x3e

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x574

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ro"

    const/16 v2, 0x2f

    const/16 v3, 0x2f

    const/16 v4, 0x3f

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x575

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ru"

    const/4 v2, 0x0

    const/16 v3, 0x451

    const/16 v4, 0x401

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x576

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ru"

    const/4 v2, 0x2

    const/16 v3, 0x32

    const/16 v4, 0x22

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x577

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ru"

    const/4 v2, 0x3

    const/16 v3, 0x33

    const/16 v4, 0x2116

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x578

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ru"

    const/4 v2, 0x4

    const/16 v3, 0x34

    const/16 v4, 0x3b

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x579

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ru"

    const/4 v2, 0x6

    const/16 v3, 0x36

    const/16 v4, 0x3a

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x57a

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ru"

    const/4 v2, 0x7

    const/16 v3, 0x37

    const/16 v4, 0x3f

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x57b

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ru"

    const/16 v2, 0xd

    const/16 v3, 0x439

    const/16 v4, 0x439

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x57c

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ru"

    const/16 v2, 0xe

    const/16 v3, 0x446

    const/16 v4, 0x446

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x57d

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ru"

    const/16 v2, 0xf

    const/16 v3, 0x443

    const/16 v4, 0x443

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x57e

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ru"

    const/16 v2, 0x10

    const/16 v3, 0x43a

    const/16 v4, 0x43a

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x57f

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ru"

    const/16 v2, 0x11

    const/16 v3, 0x435

    const/16 v4, 0x435

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x580

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ru"

    const/16 v2, 0x12

    const/16 v3, 0x43d

    const/16 v4, 0x43d

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x581

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ru"

    const/16 v2, 0x13

    const/16 v3, 0x433

    const/16 v4, 0x433

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x582

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ru"

    const/16 v2, 0x14

    const/16 v3, 0x448

    const/16 v4, 0x448

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x583

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ru"

    const/16 v2, 0x15

    const/16 v3, 0x449

    const/16 v4, 0x449

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x584

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ru"

    const/16 v2, 0x16

    const/16 v3, 0x437

    const/16 v4, 0x437

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x585

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ru"

    const/16 v2, 0x17

    const/16 v3, 0x445

    const/16 v4, 0x445

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x586

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ru"

    const/16 v2, 0x18

    const/16 v3, 0x44a

    const/16 v4, 0x44a

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x587

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ru"

    const/16 v2, 0x19

    const/16 v3, 0x444

    const/16 v4, 0x444

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x588

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ru"

    const/16 v2, 0x1a

    const/16 v3, 0x44b

    const/16 v4, 0x44b

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x589

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ru"

    const/16 v2, 0x1b

    const/16 v3, 0x432

    const/16 v4, 0x432

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x58a

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ru"

    const/16 v2, 0x1c

    const/16 v3, 0x430

    const/16 v4, 0x430

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x58b

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ru"

    const/16 v2, 0x1d

    const/16 v3, 0x43f

    const/16 v4, 0x43f

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x58c

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ru"

    const/16 v2, 0x1e

    const/16 v3, 0x440

    const/16 v4, 0x440

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x58d

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ru"

    const/16 v2, 0x1f

    const/16 v3, 0x43e

    const/16 v4, 0x43e

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x58e

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ru"

    const/16 v2, 0x20

    const/16 v3, 0x43b

    const/16 v4, 0x43b

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x58f

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ru"

    const/16 v2, 0x21

    const/16 v3, 0x434

    const/16 v4, 0x434

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x590

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ru"

    const/16 v2, 0x22

    const/16 v3, 0x436

    const/16 v4, 0x436

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x591

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ru"

    const/16 v2, 0x23

    const/16 v3, 0x44d

    const/16 v4, 0x44d

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x592

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ru"

    const/16 v2, 0x24

    const/16 v3, -0xff

    const/16 v4, -0xff

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x593

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ru"

    const/16 v2, 0x25

    const/16 v3, 0x2f

    const/16 v4, 0x7c

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x594

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ru"

    const/16 v2, 0x26

    const/16 v3, 0x44f

    const/16 v4, 0x44f

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x595

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ru"

    const/16 v2, 0x27

    const/16 v3, 0x447

    const/16 v4, 0x447

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x596

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ru"

    const/16 v2, 0x28

    const/16 v3, 0x441

    const/16 v4, 0x441

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x597

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ru"

    const/16 v2, 0x29

    const/16 v3, 0x43c

    const/16 v4, 0x43c

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x598

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ru"

    const/16 v2, 0x2a

    const/16 v3, 0x438

    const/16 v4, 0x438

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x599

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ru"

    const/16 v2, 0x2b

    const/16 v3, 0x442

    const/16 v4, 0x442

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x59a

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ru"

    const/16 v2, 0x2c

    const/16 v3, 0x44c

    const/16 v4, 0x44c

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x59b

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ru"

    const/16 v2, 0x2d

    const/16 v3, 0x431

    const/16 v4, 0x431

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x59c

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ru"

    const/16 v2, 0x2e

    const/16 v3, 0x44e

    const/16 v4, 0x44e

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x59d

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "ru"

    const/16 v2, 0x2f

    const/16 v3, 0x2e

    const/16 v4, 0x2c

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x59e

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sk"

    const/4 v2, 0x0

    const/16 v3, 0x3b

    const/16 v4, 0xb0

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x59f

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sk"

    const/4 v2, 0x1

    const/16 v3, 0x2b

    const/16 v4, 0x31

    const/16 v5, 0x7e

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x5a0

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sk"

    const/4 v2, 0x2

    const/16 v3, 0x13e

    const/16 v4, 0x32

    const/16 v5, 0x2c7

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x5a1

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sk"

    const/4 v2, 0x3

    const/16 v3, 0x161

    const/16 v4, 0x33

    const/16 v5, 0x5e

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x5a2

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sk"

    const/4 v2, 0x4

    const/16 v3, 0x10d

    const/16 v4, 0x34

    const/16 v5, 0x2d8

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x5a3

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sk"

    const/4 v2, 0x5

    const/16 v3, 0x165

    const/16 v4, 0x35

    const/16 v5, 0xb0

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x5a4

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sk"

    const/4 v2, 0x6

    const/16 v3, 0x17e

    const/16 v4, 0x36

    const/16 v5, 0x2db

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x5a5

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sk"

    const/4 v2, 0x7

    const/16 v3, 0xfd

    const/16 v4, 0x37

    const/16 v5, 0x60

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x5a6

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sk"

    const/16 v2, 0x8

    const/16 v3, 0xe1

    const/16 v4, 0x38

    const/16 v5, 0x2d9

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x5a7

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sk"

    const/16 v2, 0x9

    const/16 v3, 0xed

    const/16 v4, 0x39

    const/16 v5, 0xb4

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x5a8

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sk"

    const/16 v2, 0xa

    const/16 v3, 0xe9

    const/16 v4, 0x30

    const/16 v5, 0x2dd

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x5a9

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sk"

    const/16 v2, 0xb

    const/16 v3, 0x3d

    const/16 v4, 0x25

    const/16 v5, 0xa8

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x5aa

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sk"

    const/16 v2, 0xc

    const/16 v3, 0xb4

    const/16 v4, 0x2c7

    const/16 v5, 0xb8

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x5ab

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sk"

    const/16 v2, 0xd

    const/16 v3, 0x71

    const/16 v4, 0x71

    const/16 v5, 0x5c

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x5ac

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sk"

    const/16 v2, 0xe

    const/16 v3, 0x77

    const/16 v4, 0x77

    const/16 v5, 0x7c

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x5ad

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sk"

    const/16 v2, 0xf

    const/16 v3, 0x65

    const/16 v4, 0x65

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x5ae

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sk"

    const/16 v2, 0x10

    const/16 v3, 0x72

    const/16 v4, 0x72

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x5af

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sk"

    const/16 v2, 0x11

    const/16 v3, 0x74

    const/16 v4, 0x74

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x5b0

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sk"

    const/16 v2, 0x12

    const/16 v3, 0x7a

    const/16 v4, 0x7a

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x5b1

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sk"

    const/16 v2, 0x13

    const/16 v3, 0x75

    const/16 v4, 0x75

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x5b2

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sk"

    const/16 v2, 0x14

    const/16 v3, 0x69

    const/16 v4, 0x69

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x5b3

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sk"

    const/16 v2, 0x15

    const/16 v3, 0x6f

    const/16 v4, 0x6f

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x5b4

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sk"

    const/16 v2, 0x16

    const/16 v3, 0x70

    const/16 v4, 0x70

    const/16 v5, 0x27

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x5b5

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sk"

    const/16 v2, 0x17

    const/16 v3, 0xfa

    const/16 v4, 0x2f

    const/16 v5, 0xf7

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x5b6

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sk"

    const/16 v2, 0x18

    const/16 v3, 0xe4

    const/16 v4, -0xff

    const/16 v5, 0xd7

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x5b7

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sk"

    const/16 v2, 0x19

    const/16 v3, 0x61

    const/16 v4, 0x61

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x5b8

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sk"

    const/16 v2, 0x1a

    const/16 v3, 0x73

    const/16 v4, 0x73

    const/16 v5, 0x111

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x5b9

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sk"

    const/16 v2, 0x1b

    const/16 v3, 0x64

    const/16 v4, 0x64

    const/16 v5, 0x110

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x5ba

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sk"

    const/16 v2, 0x1c

    const/16 v3, 0x66

    const/16 v4, 0x66

    const/16 v5, 0x5b

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x5bb

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sk"

    const/16 v2, 0x1d

    const/16 v3, 0x67

    const/16 v4, 0x67

    const/16 v5, 0x5d

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x5bc

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sk"

    const/16 v2, 0x1e

    const/16 v3, 0x68

    const/16 v4, 0x68

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x5bd

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sk"

    const/16 v2, 0x1f

    const/16 v3, 0x6a

    const/16 v4, 0x6a

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x5be

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sk"

    const/16 v2, 0x20

    const/16 v3, 0x6b

    const/16 v4, 0x6b

    const/16 v5, 0x142

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x5bf

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sk"

    const/16 v2, 0x21

    const/16 v3, 0x6c

    const/16 v4, 0x6c

    const/16 v5, 0x141

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x5c0

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sk"

    const/16 v2, 0x22

    const/16 v3, 0xf4

    const/16 v4, 0x22

    const/16 v5, 0x24

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x5c1

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sk"

    const/16 v2, 0x23

    const/16 v3, 0xa7

    const/16 v4, 0x21

    const/16 v5, 0xdf

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x5c2

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sk"

    const/16 v2, 0x24

    const/16 v3, -0xff

    const/16 v4, -0xff

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x5c3

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sk"

    const/16 v2, 0x25

    const/16 v3, 0x148

    const/16 v4, 0x27

    const/16 v5, 0xa4

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x5c4

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sk"

    const/16 v2, 0x26

    const/16 v3, 0x79

    const/16 v4, 0x79

    const/16 v5, 0x3e

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x5c5

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sk"

    const/16 v2, 0x27

    const/16 v3, 0x78

    const/16 v4, 0x78

    const/16 v5, 0x23

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x5c6

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sk"

    const/16 v2, 0x28

    const/16 v3, 0x63

    const/16 v4, 0x63

    const/16 v5, 0x26

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x5c7

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sk"

    const/16 v2, 0x29

    const/16 v3, 0x76

    const/16 v4, 0x76

    const/16 v5, 0x40

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x5c8

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sk"

    const/16 v2, 0x2a

    const/16 v3, 0x62

    const/16 v4, 0x62

    const/16 v5, 0x7b

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x5c9

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sk"

    const/16 v2, 0x2b

    const/16 v3, 0x6e

    const/16 v4, 0x6e

    const/16 v5, 0x7d

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x5ca

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sk"

    const/16 v2, 0x2c

    const/16 v3, 0x6d

    const/16 v4, 0x6d

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x5cb

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sk"

    const/16 v2, 0x2d

    const/16 v3, 0x2c

    const/16 v4, 0x3f

    const/16 v5, 0x3c

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x5cc

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sk"

    const/16 v2, 0x2e

    const/16 v3, 0x2e

    const/16 v4, 0x3a

    const/16 v5, 0x3e

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x5cd

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sk"

    const/16 v2, 0x2f

    const/16 v3, 0x2d

    const/16 v4, 0x5f

    const/16 v5, 0x2a

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x5ce

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sl"

    const/4 v2, 0x0

    const/16 v3, 0xb8

    const/16 v4, 0xa8

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x5cf

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sl"

    const/4 v2, 0x1

    const/16 v3, 0x31

    const/16 v4, 0x21

    const/16 v5, 0x7e

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x5d0

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sl"

    const/4 v2, 0x2

    const/16 v3, 0x32

    const/16 v4, 0x22

    const/16 v5, 0x2c7

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x5d1

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sl"

    const/4 v2, 0x3

    const/16 v3, 0x33

    const/16 v4, 0x23

    const/16 v5, 0x5e

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x5d2

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sl"

    const/4 v2, 0x4

    const/16 v3, 0x34

    const/16 v4, 0x24

    const/16 v5, 0x2d8

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x5d3

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sl"

    const/4 v2, 0x5

    const/16 v3, 0x35

    const/16 v4, 0x25

    const/16 v5, 0xb0

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x5d4

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sl"

    const/4 v2, 0x6

    const/16 v3, 0x36

    const/16 v4, 0x26

    const/16 v5, 0x2db

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x5d5

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sl"

    const/4 v2, 0x7

    const/16 v3, 0x37

    const/16 v4, 0x2f

    const/16 v5, 0x60

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x5d6

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sl"

    const/16 v2, 0x8

    const/16 v3, 0x38

    const/16 v4, 0x28

    const/16 v5, 0x2d9

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x5d7

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sl"

    const/16 v2, 0x9

    const/16 v3, 0x39

    const/16 v4, 0x29

    const/16 v5, 0xb4

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x5d8

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sl"

    const/16 v2, 0xa

    const/16 v3, 0x30

    const/16 v4, 0x3d

    const/16 v5, 0x2dd

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x5d9

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sl"

    const/16 v2, 0xb

    const/16 v3, 0x27

    const/16 v4, 0x3f

    const/16 v5, 0xa8

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x5da

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sl"

    const/16 v2, 0xc

    const/16 v3, 0x2b

    const/16 v4, 0x2a

    const/16 v5, 0xb8

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x5db

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sl"

    const/16 v2, 0xd

    const/16 v3, 0x71

    const/16 v4, 0x71

    const/16 v5, 0x5c

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x5dc

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sl"

    const/16 v2, 0xe

    const/16 v3, 0x77

    const/16 v4, 0x77

    const/16 v5, 0x7c

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x5dd

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sl"

    const/16 v2, 0xf

    const/16 v3, 0x65

    const/16 v4, 0x65

    const/16 v5, 0x20ac

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x5de

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sl"

    const/16 v2, 0x12

    const/16 v3, 0x7a

    const/16 v4, 0x7a

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x5df

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sl"

    const/16 v2, 0x13

    const/16 v3, 0x75

    const/16 v4, 0x75

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x5e0

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sl"

    const/16 v2, 0x14

    const/16 v3, 0x69

    const/16 v4, 0x69

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x5e1

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sl"

    const/16 v2, 0x15

    const/16 v3, 0x6f

    const/16 v4, 0x6f

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x5e2

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sl"

    const/16 v2, 0x17

    const/16 v3, 0x161

    const/16 v4, 0x161

    const/16 v5, 0xf7

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x5e3

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sl"

    const/16 v2, 0x18

    const/16 v3, 0x111

    const/16 v4, 0x111

    const/16 v5, 0xd7

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x5e4

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sl"

    const/16 v2, 0x19

    const/16 v3, 0x61

    const/16 v4, 0x61

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x5e5

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sl"

    const/16 v2, 0x1c

    const/16 v3, 0x66

    const/16 v4, 0x66

    const/16 v5, 0x5b

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x5e6

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sl"

    const/16 v2, 0x1d

    const/16 v3, 0x67

    const/16 v4, 0x67

    const/16 v5, 0x5d

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x5e7

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sl"

    const/16 v2, 0x20

    const/16 v3, 0x6b

    const/16 v4, 0x6b

    const/16 v5, 0x142

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x5e8

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sl"

    const/16 v2, 0x21

    const/16 v3, 0x6c

    const/16 v4, 0x6c

    const/16 v5, 0x141

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x5e9

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sl"

    const/16 v2, 0x22

    const/16 v3, 0x10d

    const/16 v4, 0x10d

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x5ea

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sl"

    const/16 v2, 0x23

    const/16 v3, 0x107

    const/16 v4, 0x107

    const/16 v5, 0xdf

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x5eb

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sl"

    const/16 v2, 0x24

    const/16 v3, 0x17e

    const/16 v4, 0x17e

    const/16 v5, 0xa4

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x5ec

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sl"

    const/16 v2, 0x25

    const/16 v3, 0x3c

    const/16 v4, 0x3e

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x5ed

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sl"

    const/16 v2, 0x26

    const/16 v3, 0x79

    const/16 v4, 0x79

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x5ee

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sl"

    const/16 v2, 0x29

    const/16 v3, 0x76

    const/16 v4, 0x76

    const/16 v5, 0x40

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x5ef

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sl"

    const/16 v2, 0x2a

    const/16 v3, 0x62

    const/16 v4, 0x62

    const/16 v5, 0x7b

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x5f0

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sl"

    const/16 v2, 0x2b

    const/16 v3, 0x6e

    const/16 v4, 0x6e

    const/16 v5, 0x7d

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x5f1

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sl"

    const/16 v2, 0x2c

    const/16 v3, 0x6d

    const/16 v4, 0x6d

    const/16 v5, 0xa7

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x5f2

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sl"

    const/16 v2, 0x2d

    const/16 v3, 0x2c

    const/16 v4, 0x3b

    const/16 v5, 0x3c

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x5f3

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sl"

    const/16 v2, 0x2e

    const/16 v3, 0x2e

    const/16 v4, 0x3a

    const/16 v5, 0x3e

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x5f4

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sl"

    const/16 v2, 0x2f

    const/16 v3, 0x2d

    const/16 v4, 0x5f

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x5f5

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sr"

    const/4 v2, 0x0

    const/16 v3, 0xb8

    const/16 v4, 0xa8

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x5f6

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sr"

    const/4 v2, 0x1

    const/16 v3, 0x31

    const/16 v4, 0x21

    const/16 v5, 0x7e

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x5f7

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sr"

    const/4 v2, 0x2

    const/16 v3, 0x32

    const/16 v4, 0x22

    const/16 v5, 0x2c7

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x5f8

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sr"

    const/4 v2, 0x3

    const/16 v3, 0x33

    const/16 v4, 0x23

    const/16 v5, 0x5e

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x5f9

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sr"

    const/4 v2, 0x4

    const/16 v3, 0x34

    const/16 v4, 0x24

    const/16 v5, 0x2d8

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x5fa

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sr"

    const/4 v2, 0x5

    const/16 v3, 0x35

    const/16 v4, 0x25

    const/16 v5, 0xb0

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x5fb

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sr"

    const/4 v2, 0x6

    const/16 v3, 0x36

    const/16 v4, 0x26

    const/16 v5, 0x2db

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x5fc

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sr"

    const/4 v2, 0x7

    const/16 v3, 0x37

    const/16 v4, 0x2f

    const/16 v5, 0x60

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x5fd

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sr"

    const/16 v2, 0x8

    const/16 v3, 0x38

    const/16 v4, 0x28

    const/16 v5, 0x2d9

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x5fe

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sr"

    const/16 v2, 0x9

    const/16 v3, 0x39

    const/16 v4, 0x29

    const/16 v5, 0xb4

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x5ff

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sr"

    const/16 v2, 0xa

    const/16 v3, 0x30

    const/16 v4, 0x3d

    const/16 v5, 0x2dd

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x600

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sr"

    const/16 v2, 0xb

    const/16 v3, 0x27

    const/16 v4, 0x3f

    const/16 v5, 0xa8

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x601

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sr"

    const/16 v2, 0xc

    const/16 v3, 0x2b

    const/16 v4, 0x2a

    const/16 v5, 0xb8

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x602

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sr"

    const/16 v2, 0xd

    const/16 v3, 0x71

    const/16 v4, 0x71

    const/16 v5, 0x5c

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x603

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sr"

    const/16 v2, 0xe

    const/16 v3, 0x77

    const/16 v4, 0x77

    const/16 v5, 0x7c

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x604

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sr"

    const/16 v2, 0xf

    const/16 v3, 0x65

    const/16 v4, 0x65

    const/16 v5, 0x20ac

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x605

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sr"

    const/16 v2, 0x12

    const/16 v3, 0x7a

    const/16 v4, 0x7a

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x606

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sr"

    const/16 v2, 0x13

    const/16 v3, 0x75

    const/16 v4, 0x75

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x607

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sr"

    const/16 v2, 0x14

    const/16 v3, 0x69

    const/16 v4, 0x69

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x608

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sr"

    const/16 v2, 0x15

    const/16 v3, 0x6f

    const/16 v4, 0x6f

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x609

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sr"

    const/16 v2, 0x17

    const/16 v3, 0x161

    const/16 v4, 0x161

    const/16 v5, 0xf7

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x60a

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sr"

    const/16 v2, 0x18

    const/16 v3, 0x111

    const/16 v4, 0x111

    const/16 v5, 0xd7

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x60b

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sr"

    const/16 v2, 0x19

    const/16 v3, 0x61

    const/16 v4, 0x61

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x60c

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sr"

    const/16 v2, 0x1c

    const/16 v3, 0x66

    const/16 v4, 0x66

    const/16 v5, 0x5b

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x60d

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sr"

    const/16 v2, 0x1d

    const/16 v3, 0x67

    const/16 v4, 0x67

    const/16 v5, 0x5d

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x60e

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sr"

    const/16 v2, 0x20

    const/16 v3, 0x6b

    const/16 v4, 0x6b

    const/16 v5, 0x142

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x60f

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sr"

    const/16 v2, 0x21

    const/16 v3, 0x6c

    const/16 v4, 0x6c

    const/16 v5, 0x141

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x610

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sr"

    const/16 v2, 0x22

    const/16 v3, 0x10d

    const/16 v4, 0x10d

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x611

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sr"

    const/16 v2, 0x23

    const/16 v3, 0x107

    const/16 v4, 0x107

    const/16 v5, 0xdf

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x612

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sr"

    const/16 v2, 0x24

    const/16 v3, 0x17e

    const/16 v4, 0x17e

    const/16 v5, 0xa4

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x613

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sr"

    const/16 v2, 0x25

    const/16 v3, 0x3c

    const/16 v4, 0x3e

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x614

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sr"

    const/16 v2, 0x26

    const/16 v3, 0x79

    const/16 v4, 0x79

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x615

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sr"

    const/16 v2, 0x29

    const/16 v3, 0x76

    const/16 v4, 0x76

    const/16 v5, 0x40

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x616

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sr"

    const/16 v2, 0x2a

    const/16 v3, 0x62

    const/16 v4, 0x62

    const/16 v5, 0x7b

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x617

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sr"

    const/16 v2, 0x2b

    const/16 v3, 0x6e

    const/16 v4, 0x6e

    const/16 v5, 0x7d

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x618

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sr"

    const/16 v2, 0x2c

    const/16 v3, 0x6d

    const/16 v4, 0x6d

    const/16 v5, 0xa7

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x619

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sr"

    const/16 v2, 0x2d

    const/16 v3, 0x2c

    const/16 v4, 0x3b

    const/16 v5, 0x3c

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x61a

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sr"

    const/16 v2, 0x2e

    const/16 v3, 0x2e

    const/16 v4, 0x3a

    const/16 v5, 0x3e

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x61b

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sr"

    const/16 v2, 0x2f

    const/16 v3, 0x2d

    const/16 v4, 0x5f

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x61c

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sv"

    const/4 v2, 0x0

    const/16 v3, 0xa7

    const/16 v4, 0xbd

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x61d

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sv"

    const/4 v2, 0x1

    const/16 v3, 0x31

    const/16 v4, 0x21

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x61e

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sv"

    const/4 v2, 0x2

    const/16 v3, 0x32

    const/16 v4, 0x22

    const/16 v5, 0x40

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x61f

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sv"

    const/4 v2, 0x3

    const/16 v3, 0x33

    const/16 v4, 0x23

    const/16 v5, 0xa3

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x620

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sv"

    const/4 v2, 0x4

    const/16 v3, 0x34

    const/16 v4, 0xa4

    const/16 v5, 0x24

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x621

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sv"

    const/4 v2, 0x5

    const/16 v3, 0x35

    const/16 v4, 0x25

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x622

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sv"

    const/4 v2, 0x6

    const/16 v3, 0x36

    const/16 v4, 0x26

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x623

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sv"

    const/4 v2, 0x7

    const/16 v3, 0x37

    const/16 v4, 0x2f

    const/16 v5, 0x7b

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x624

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sv"

    const/16 v2, 0x8

    const/16 v3, 0x38

    const/16 v4, 0x28

    const/16 v5, 0x5b

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x625

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sv"

    const/16 v2, 0x9

    const/16 v3, 0x39

    const/16 v4, 0x29

    const/16 v5, 0x5d

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x626

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sv"

    const/16 v2, 0xa

    const/16 v3, 0x30

    const/16 v4, 0x3d

    const/16 v5, 0x7d

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x627

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sv"

    const/16 v2, 0xb

    const/16 v3, 0x2b

    const/16 v4, 0x3f

    const/16 v5, 0x5c

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x628

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sv"

    const/16 v2, 0xc

    const/16 v3, 0xb4

    const/16 v4, 0x60

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x629

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sv"

    const/16 v2, 0xf

    const/16 v3, 0x65

    const/16 v4, 0x65

    const/16 v5, 0x20ac

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x62a

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sv"

    const/16 v2, 0x13

    const/16 v3, 0x75

    const/16 v4, 0x75

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x62b

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sv"

    const/16 v2, 0x14

    const/16 v3, 0x69

    const/16 v4, 0x69

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x62c

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sv"

    const/16 v2, 0x15

    const/16 v3, 0x6f

    const/16 v4, 0x6f

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x62d

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sv"

    const/16 v2, 0x17

    const/16 v3, 0xe5

    const/16 v4, 0xe5

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x62e

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sv"

    const/16 v2, 0x18

    const/16 v3, 0xa8

    const/16 v4, 0x5e

    const/16 v5, 0x7e

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x62f

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sv"

    const/16 v2, 0x19

    const/16 v3, 0x61

    const/16 v4, 0x61

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x630

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sv"

    const/16 v2, 0x22

    const/16 v3, 0xf6

    const/16 v4, 0xf6

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x631

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sv"

    const/16 v2, 0x23

    const/16 v3, 0xe4

    const/16 v4, 0xe4

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x632

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sv"

    const/16 v2, 0x24

    const/16 v3, 0x27

    const/16 v4, 0x2a

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x633

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sv"

    const/16 v2, 0x25

    const/16 v3, 0x3c

    const/16 v4, 0x3e

    const/16 v5, 0x7c

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x634

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sv"

    const/16 v2, 0x2c

    const/16 v3, 0x6d

    const/16 v4, 0x6d

    const/16 v5, 0x3bc

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x635

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sv"

    const/16 v2, 0x2d

    const/16 v3, 0x2c

    const/16 v4, 0x3b

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x636

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sv"

    const/16 v2, 0x2e

    const/16 v3, 0x2e

    const/16 v4, 0x3a

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x637

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "sv"

    const/16 v2, 0x2f

    const/16 v3, 0x2d

    const/16 v4, 0x5f

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x638

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "th"

    const/4 v2, 0x0

    const/16 v3, 0x5f

    const/16 v4, 0x25

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x639

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "th"

    const/4 v2, 0x1

    const/16 v3, 0xe45

    const/16 v4, 0x2b

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x63a

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "th"

    const/4 v2, 0x2

    const/16 v3, 0x2f

    const/16 v4, 0xe51

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x63b

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "th"

    const/4 v2, 0x3

    const/16 v3, 0x2d

    const/16 v4, 0xe52

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x63c

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "th"

    const/4 v2, 0x4

    const/16 v3, 0xe20

    const/16 v4, 0xe53

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x63d

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "th"

    const/4 v2, 0x5

    const/16 v3, 0xe16

    const/16 v4, 0xe54

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x63e

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "th"

    const/4 v2, 0x6

    const/16 v3, 0xe38

    const/16 v4, 0xe39

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x63f

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "th"

    const/4 v2, 0x7

    const/16 v3, 0xe36

    const/16 v4, 0xe3f

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x640

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "th"

    const/16 v2, 0x8

    const/16 v3, 0xe04

    const/16 v4, 0xe55

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x641

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "th"

    const/16 v2, 0x9

    const/16 v3, 0xe15

    const/16 v4, 0xe56

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x642

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "th"

    const/16 v2, 0xa

    const/16 v3, 0xe08

    const/16 v4, 0xe57

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x643

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "th"

    const/16 v2, 0xb

    const/16 v3, 0xe02

    const/16 v4, 0xe58

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x644

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "th"

    const/16 v2, 0xc

    const/16 v3, 0xe0a

    const/16 v4, 0xe59

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x645

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "th"

    const/16 v2, 0xd

    const/16 v3, 0xe46

    const/16 v4, 0xe50

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x646

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "th"

    const/16 v2, 0xe

    const/16 v3, 0xe44

    const/16 v4, 0x22

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x647

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "th"

    const/16 v2, 0xf

    const/16 v3, 0xe33

    const/16 v4, 0xe0e

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x648

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "th"

    const/16 v2, 0x10

    const/16 v3, 0xe1e

    const/16 v4, 0xe11

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x649

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "th"

    const/16 v2, 0x11

    const/16 v3, 0xe30

    const/16 v4, 0xe18

    const/16 v5, 0x20ac

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x64a

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "th"

    const/16 v2, 0x12

    const/16 v3, 0xe31

    const/16 v4, 0xe4d

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x64b

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "th"

    const/16 v2, 0x13

    const/16 v3, 0xe35

    const/16 v4, 0xe4a

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x64c

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "th"

    const/16 v2, 0x14

    const/16 v3, 0xe23

    const/16 v4, 0xe13

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x64d

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "th"

    const/16 v2, 0x15

    const/16 v3, 0xe19

    const/16 v4, 0xe2f

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x64e

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "th"

    const/16 v2, 0x16

    const/16 v3, 0xe22

    const/16 v4, 0xe0d

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x64f

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "th"

    const/16 v2, 0x17

    const/16 v3, 0xe1a

    const/16 v4, 0xe10

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x650

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "th"

    const/16 v2, 0x18

    const/16 v3, 0xe25

    const/16 v4, 0x2c

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x651

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "th"

    const/16 v2, 0x19

    const/16 v3, 0xe1f

    const/16 v4, 0xe24

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x652

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "th"

    const/16 v2, 0x1a

    const/16 v3, 0xe2b

    const/16 v4, 0xe06

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x653

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "th"

    const/16 v2, 0x1b

    const/16 v3, 0xe01

    const/16 v4, 0xe0f

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x654

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "th"

    const/16 v2, 0x1c

    const/16 v3, 0xe14

    const/16 v4, 0xe42

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x655

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "th"

    const/16 v2, 0x1d

    const/16 v3, 0xe40

    const/16 v4, 0xe0c

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x656

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "th"

    const/16 v2, 0x1e

    const/16 v3, 0xe49

    const/16 v4, 0xe47

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x657

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "th"

    const/16 v2, 0x1f

    const/16 v3, 0xe48

    const/16 v4, 0xe4b

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x658

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "th"

    const/16 v2, 0x20

    const/16 v3, 0xe32

    const/16 v4, 0xe29

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x659

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "th"

    const/16 v2, 0x21

    const/16 v3, 0xe2a

    const/16 v4, 0xe28

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x65a

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "th"

    const/16 v2, 0x22

    const/16 v3, 0xe27

    const/16 v4, 0xe0b

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x65b

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "th"

    const/16 v2, 0x23

    const/16 v3, 0xe07

    const/16 v4, 0x2e

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x65c

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "th"

    const/16 v2, 0x24

    const/16 v3, 0xe03

    const/16 v4, 0xe05

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x65d

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "th"

    const/16 v2, 0x25

    const/16 v3, 0xe03

    const/16 v4, 0xe05

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x65e

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "th"

    const/16 v2, 0x26

    const/16 v3, 0xe1c

    const/16 v4, 0x28

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x65f

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "th"

    const/16 v2, 0x27

    const/16 v3, 0xe1b

    const/16 v4, 0x29

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x660

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "th"

    const/16 v2, 0x28

    const/16 v3, 0xe41

    const/16 v4, 0xe09

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x661

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "th"

    const/16 v2, 0x29

    const/16 v3, 0xe2d

    const/16 v4, 0xe2e

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x662

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "th"

    const/16 v2, 0x2a

    const/16 v3, 0xe34

    const/16 v4, 0xe3a

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x663

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "th"

    const/16 v2, 0x2b

    const/16 v3, 0xe37

    const/16 v4, 0xe4c

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x664

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "th"

    const/16 v2, 0x2c

    const/16 v3, 0xe17

    const/16 v4, 0x3f

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x665

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "th"

    const/16 v2, 0x2d

    const/16 v3, 0xe21

    const/16 v4, 0xe12

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x666

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "th"

    const/16 v2, 0x2e

    const/16 v3, 0xe43

    const/16 v4, 0xe2c

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x667

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "th"

    const/16 v2, 0x2f

    const/16 v3, 0xe1d

    const/16 v4, 0xe26

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x668

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "tr"

    const/4 v2, 0x0

    const/16 v3, 0x22

    const/16 v4, 0xe9

    const/16 v5, 0x3c

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x669

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "tr"

    const/4 v2, 0x1

    const/16 v3, 0x31

    const/16 v4, 0x21

    const/16 v5, 0x3e

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x66a

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "tr"

    const/4 v2, 0x2

    const/16 v3, 0x32

    const/16 v4, 0x27

    const/16 v5, 0xa3

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x66b

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "tr"

    const/4 v2, 0x3

    const/16 v3, 0x33

    const/16 v4, 0x5e

    const/16 v5, 0x23

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x66c

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "tr"

    const/4 v2, 0x4

    const/16 v3, 0x34

    const/16 v4, 0x2b

    const/16 v5, 0x24

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x66d

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "tr"

    const/4 v2, 0x5

    const/16 v3, 0x35

    const/16 v4, 0x25

    const/16 v5, 0xbd

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x66e

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "tr"

    const/4 v2, 0x6

    const/16 v3, 0x36

    const/16 v4, 0x26

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x66f

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "tr"

    const/4 v2, 0x7

    const/16 v3, 0x37

    const/16 v4, 0x2f

    const/16 v5, 0x7b

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x670

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "tr"

    const/16 v2, 0x8

    const/16 v3, 0x38

    const/16 v4, 0x28

    const/16 v5, 0x5b

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x671

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "tr"

    const/16 v2, 0x9

    const/16 v3, 0x39

    const/16 v4, 0x29

    const/16 v5, 0x5d

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x672

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "tr"

    const/16 v2, 0xa

    const/16 v3, 0x30

    const/16 v4, 0x3d

    const/16 v5, 0x7d

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x673

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "tr"

    const/16 v2, 0xb

    const/16 v3, 0x2a

    const/16 v4, 0x3f

    const/16 v5, 0x5c

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x674

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "tr"

    const/16 v2, 0xc

    const/16 v3, 0x2d

    const/16 v4, 0x5f

    const/16 v5, 0x7c

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x675

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "tr"

    const/16 v2, 0xd

    const/16 v3, 0x71

    const/16 v4, 0x71

    const/16 v5, 0x40

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x676

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "tr"

    const/16 v2, 0xf

    const/16 v3, 0x65

    const/16 v4, 0x65

    const/16 v5, 0x20ac

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x677

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "tr"

    const/16 v2, 0x13

    const/16 v3, 0x75

    const/16 v4, 0x75

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x678

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "tr"

    const/16 v2, 0x14

    const/16 v3, 0x131

    const/16 v4, 0x131

    const/16 v5, 0x69

    const/16 v6, 0x130

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x679

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "tr"

    const/16 v2, 0x15

    const/16 v3, 0x6f

    const/16 v4, 0x6f

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x67a

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "tr"

    const/16 v2, 0x17

    const/16 v3, 0x11f

    const/16 v4, 0x11f

    const/16 v5, 0xa8

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x67b

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "tr"

    const/16 v2, 0x18

    const/16 v3, 0xfc

    const/16 v4, 0xfc

    const/16 v5, 0x7e

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x67c

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "tr"

    const/16 v2, 0x19

    const/16 v3, 0x61

    const/16 v4, 0x61

    const/16 v5, 0xe6

    const/16 v6, 0xc6

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x67d

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "tr"

    const/16 v2, 0x1a

    const/16 v3, 0x73

    const/16 v4, 0x73

    const/16 v5, 0x3b2

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x67e

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "tr"

    const/16 v2, 0x22

    const/16 v3, 0x15f

    const/16 v4, 0x15f

    const/16 v5, 0xb4

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x67f

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "tr"

    const/16 v2, 0x23

    const/16 v3, 0x69

    const/16 v4, 0x130

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x680

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "tr"

    const/16 v2, 0x24

    const/16 v3, 0x2c

    const/16 v4, 0x3b

    const/16 v5, 0x60

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x681

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "tr"

    const/16 v2, 0x25

    const/16 v3, 0x3c

    const/16 v4, 0x3e

    const/16 v5, 0x7c

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x682

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "tr"

    const/16 v2, 0x2d

    const/16 v3, 0xf6

    const/16 v4, 0xf6

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x683

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "tr"

    const/16 v2, 0x2e

    const/16 v3, 0xe7

    const/16 v4, 0xe7

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x684

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "tr"

    const/16 v2, 0x2f

    const/16 v3, 0x2e

    const/16 v4, 0x3a

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x685

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "uk"

    const/4 v2, 0x0

    const/16 v3, 0x451

    const/16 v4, 0x401

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x686

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "uk"

    const/4 v2, 0x2

    const/16 v3, 0x32

    const/16 v4, 0x22

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x687

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "uk"

    const/4 v2, 0x3

    const/16 v3, 0x33

    const/16 v4, 0x2116

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x688

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "uk"

    const/4 v2, 0x4

    const/16 v3, 0x34

    const/16 v4, 0x3b

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x689

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "uk"

    const/4 v2, 0x6

    const/16 v3, 0x36

    const/16 v4, 0x3a

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x68a

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "uk"

    const/4 v2, 0x7

    const/16 v3, 0x37

    const/16 v4, 0x3f

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x68b

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "uk"

    const/16 v2, 0xd

    const/16 v3, 0x439

    const/16 v4, 0x439

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x68c

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "uk"

    const/16 v2, 0xe

    const/16 v3, 0x446

    const/16 v4, 0x446

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x68d

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "uk"

    const/16 v2, 0xf

    const/16 v3, 0x443

    const/16 v4, 0x443

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x68e

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "uk"

    const/16 v2, 0x10

    const/16 v3, 0x43a

    const/16 v4, 0x43a

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x68f

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "uk"

    const/16 v2, 0x11

    const/16 v3, 0x435

    const/16 v4, 0x435

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x690

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "uk"

    const/16 v2, 0x12

    const/16 v3, 0x43d

    const/16 v4, 0x43d

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x691

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "uk"

    const/16 v2, 0x13

    const/16 v3, 0x433

    const/16 v4, 0x433

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x692

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "uk"

    const/16 v2, 0x14

    const/16 v3, 0x448

    const/16 v4, 0x448

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x693

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "uk"

    const/16 v2, 0x15

    const/16 v3, 0x449

    const/16 v4, 0x449

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x694

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "uk"

    const/16 v2, 0x16

    const/16 v3, 0x437

    const/16 v4, 0x437

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x695

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "uk"

    const/16 v2, 0x17

    const/16 v3, 0x445

    const/16 v4, 0x445

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x696

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "uk"

    const/16 v2, 0x18

    const/16 v3, 0x457

    const/16 v4, 0x457

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x697

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "uk"

    const/16 v2, 0x19

    const/16 v3, 0x444

    const/16 v4, 0x444

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x698

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "uk"

    const/16 v2, 0x1a

    const/16 v3, 0x456

    const/16 v4, 0x456

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x699

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "uk"

    const/16 v2, 0x1b

    const/16 v3, 0x432

    const/16 v4, 0x432

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x69a

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "uk"

    const/16 v2, 0x1c

    const/16 v3, 0x430

    const/16 v4, 0x430

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x69b

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "uk"

    const/16 v2, 0x1d

    const/16 v3, 0x43f

    const/16 v4, 0x43f

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x69c

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "uk"

    const/16 v2, 0x1e

    const/16 v3, 0x440

    const/16 v4, 0x440

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x69d

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "uk"

    const/16 v2, 0x1f

    const/16 v3, 0x43e

    const/16 v4, 0x43e

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x69e

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "uk"

    const/16 v2, 0x20

    const/16 v3, 0x43b

    const/16 v4, 0x43b

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x69f

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "uk"

    const/16 v2, 0x21

    const/16 v3, 0x434

    const/16 v4, 0x434

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x6a0

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "uk"

    const/16 v2, 0x22

    const/16 v3, 0x436

    const/16 v4, 0x436

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x6a1

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "uk"

    const/16 v2, 0x23

    const/16 v3, 0x454

    const/16 v4, 0x454

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x6a2

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "uk"

    const/16 v2, 0x24

    const/16 v3, -0xff

    const/16 v4, -0xff

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x6a3

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "uk"

    const/16 v2, 0x25

    const/16 v3, 0x2f

    const/16 v4, 0x7c

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x6a4

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "uk"

    const/16 v2, 0x26

    const/16 v3, 0x44f

    const/16 v4, 0x44f

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x6a5

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "uk"

    const/16 v2, 0x27

    const/16 v3, 0x447

    const/16 v4, 0x447

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x6a6

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "uk"

    const/16 v2, 0x28

    const/16 v3, 0x441

    const/16 v4, 0x441

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x6a7

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "uk"

    const/16 v2, 0x29

    const/16 v3, 0x43c

    const/16 v4, 0x43c

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x6a8

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "uk"

    const/16 v2, 0x2a

    const/16 v3, 0x438

    const/16 v4, 0x438

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x6a9

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "uk"

    const/16 v2, 0x2b

    const/16 v3, 0x442

    const/16 v4, 0x442

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x6aa

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "uk"

    const/16 v2, 0x2c

    const/16 v3, 0x44c

    const/16 v4, 0x44c

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x6ab

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "uk"

    const/16 v2, 0x2d

    const/16 v3, 0x431

    const/16 v4, 0x431

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x6ac

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "uk"

    const/16 v2, 0x2e

    const/16 v3, 0x44e

    const/16 v4, 0x44e

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x6ad

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "uk"

    const/16 v2, 0x2f

    const/16 v3, 0x2e

    const/16 v4, 0x2c

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x6ae

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "zh_CN"

    const/4 v2, 0x0

    const/16 v3, 0x60

    const/16 v4, 0x7e

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x6af

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "zh_CN"

    const/4 v2, 0x1

    const/16 v3, 0x31

    const/16 v4, 0x21

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x6b0

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "zh_CN"

    const/4 v2, 0x2

    const/16 v3, 0x32

    const/16 v4, 0x40

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x6b1

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "zh_CN"

    const/4 v2, 0x3

    const/16 v3, 0x33

    const/16 v4, 0x23

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x6b2

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "zh_CN"

    const/4 v2, 0x4

    const/16 v3, 0x34

    const/16 v4, 0x24

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x6b3

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "zh_CN"

    const/4 v2, 0x5

    const/16 v3, 0x35

    const/16 v4, 0x25

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x6b4

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "zh_CN"

    const/4 v2, 0x6

    const/16 v3, 0x36

    const/16 v4, 0x5e

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x6b5

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "zh_CN"

    const/4 v2, 0x7

    const/16 v3, 0x37

    const/16 v4, 0x26

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x6b6

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "zh_CN"

    const/16 v2, 0x8

    const/16 v3, 0x38

    const/16 v4, 0x2a

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x6b7

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "zh_CN"

    const/16 v2, 0x9

    const/16 v3, 0x39

    const/16 v4, 0x28

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x6b8

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "zh_CN"

    const/16 v2, 0xa

    const/16 v3, 0x30

    const/16 v4, 0x29

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x6b9

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "zh_CN"

    const/16 v2, 0xb

    const/16 v3, 0x2d

    const/16 v4, 0x5f

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x6ba

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "zh_CN"

    const/16 v2, 0xc

    const/16 v3, 0x3d

    const/16 v4, 0x2b

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x6bb

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "zh_CN"

    const/16 v2, 0xd

    const/16 v3, 0x71

    const/16 v4, 0x71

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x6bc

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "zh_CN"

    const/16 v2, 0xe

    const/16 v3, 0x77

    const/16 v4, 0x77

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x6bd

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "zh_CN"

    const/16 v2, 0xf

    const/16 v3, 0x65

    const/16 v4, 0x65

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x6be

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "zh_CN"

    const/16 v2, 0x10

    const/16 v3, 0x72

    const/16 v4, 0x72

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x6bf

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "zh_CN"

    const/16 v2, 0x11

    const/16 v3, 0x74

    const/16 v4, 0x74

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x6c0

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "zh_CN"

    const/16 v2, 0x12

    const/16 v3, 0x79

    const/16 v4, 0x79

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x6c1

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "zh_CN"

    const/16 v2, 0x13

    const/16 v3, 0x75

    const/16 v4, 0x75

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x6c2

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "zh_CN"

    const/16 v2, 0x14

    const/16 v3, 0x69

    const/16 v4, 0x69

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x6c3

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "zh_CN"

    const/16 v2, 0x15

    const/16 v3, 0x6f

    const/16 v4, 0x6f

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x6c4

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "zh_CN"

    const/16 v2, 0x16

    const/16 v3, 0x70

    const/16 v4, 0x70

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x6c5

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "zh_CN"

    const/16 v2, 0x17

    const/16 v3, 0x5b

    const/16 v4, 0x7b

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x6c6

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "zh_CN"

    const/16 v2, 0x18

    const/16 v3, 0x5d

    const/16 v4, 0x7d

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x6c7

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "zh_CN"

    const/16 v2, 0x19

    const/16 v3, 0x61

    const/16 v4, 0x61

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x6c8

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "zh_CN"

    const/16 v2, 0x1a

    const/16 v3, 0x73

    const/16 v4, 0x73

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x6c9

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "zh_CN"

    const/16 v2, 0x1b

    const/16 v3, 0x64

    const/16 v4, 0x64

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x6ca

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "zh_CN"

    const/16 v2, 0x1c

    const/16 v3, 0x66

    const/16 v4, 0x66

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x6cb

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "zh_CN"

    const/16 v2, 0x1d

    const/16 v3, 0x67

    const/16 v4, 0x67

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x6cc

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "zh_CN"

    const/16 v2, 0x1e

    const/16 v3, 0x68

    const/16 v4, 0x68

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x6cd

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "zh_CN"

    const/16 v2, 0x1f

    const/16 v3, 0x6a

    const/16 v4, 0x6a

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x6ce

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "zh_CN"

    const/16 v2, 0x20

    const/16 v3, 0x6b

    const/16 v4, 0x6b

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x6cf

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "zh_CN"

    const/16 v2, 0x21

    const/16 v3, 0x6c

    const/16 v4, 0x6c

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x6d0

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "zh_CN"

    const/16 v2, 0x22

    const/16 v3, 0x3b

    const/16 v4, 0x3a

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x6d1

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "zh_CN"

    const/16 v2, 0x23

    const/16 v3, 0x27

    const/16 v4, 0x22

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x6d2

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "zh_CN"

    const/16 v2, 0x24

    const/16 v3, -0xff

    const/16 v4, -0xff

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x6d3

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "zh_CN"

    const/16 v2, 0x25

    const/16 v3, 0x5c

    const/16 v4, 0x7c

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x6d4

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "zh_CN"

    const/16 v2, 0x26

    const/16 v3, 0x7a

    const/16 v4, 0x7a

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x6d5

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "zh_CN"

    const/16 v2, 0x27

    const/16 v3, 0x78

    const/16 v4, 0x78

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x6d6

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "zh_CN"

    const/16 v2, 0x28

    const/16 v3, 0x63

    const/16 v4, 0x63

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x6d7

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "zh_CN"

    const/16 v2, 0x29

    const/16 v3, 0x76

    const/16 v4, 0x76

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x6d8

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "zh_CN"

    const/16 v2, 0x2a

    const/16 v3, 0x62

    const/16 v4, 0x62

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x6d9

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "zh_CN"

    const/16 v2, 0x2b

    const/16 v3, 0x6e

    const/16 v4, 0x6e

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x6da

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "zh_CN"

    const/16 v2, 0x2c

    const/16 v3, 0x6d

    const/16 v4, 0x6d

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x6db

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "zh_CN"

    const/16 v2, 0x2d

    const v3, 0xff0c

    const/16 v4, 0x3c

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x6dc

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "zh_CN"

    const/16 v2, 0x2e

    const/16 v3, 0x3002

    const/16 v4, 0x3e

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x6dd

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "zh_CN"

    const/16 v2, 0x2f

    const/16 v3, 0x2f

    const/16 v4, 0x3f

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x6de

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "zh_HK"

    const/4 v2, 0x0

    const/16 v3, 0x60

    const/16 v4, 0x7e

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x6df

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "zh_HK"

    const/4 v2, 0x1

    const/16 v3, 0x31

    const/16 v4, 0x21

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x6e0

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "zh_HK"

    const/4 v2, 0x2

    const/16 v3, 0x32

    const/16 v4, 0x40

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x6e1

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "zh_HK"

    const/4 v2, 0x3

    const/16 v3, 0x33

    const/16 v4, 0x23

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x6e2

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "zh_HK"

    const/4 v2, 0x4

    const/16 v3, 0x34

    const/16 v4, 0x24

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x6e3

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "zh_HK"

    const/4 v2, 0x5

    const/16 v3, 0x35

    const/16 v4, 0x25

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x6e4

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "zh_HK"

    const/4 v2, 0x6

    const/16 v3, 0x36

    const/16 v4, 0x5e

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x6e5

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "zh_HK"

    const/4 v2, 0x7

    const/16 v3, 0x37

    const/16 v4, 0x26

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x6e6

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "zh_HK"

    const/16 v2, 0x8

    const/16 v3, 0x38

    const/16 v4, 0x2a

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x6e7

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "zh_HK"

    const/16 v2, 0x9

    const/16 v3, 0x39

    const/16 v4, 0x28

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x6e8

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "zh_HK"

    const/16 v2, 0xa

    const/16 v3, 0x30

    const/16 v4, 0x29

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x6e9

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "zh_HK"

    const/16 v2, 0xb

    const/16 v3, 0x2d

    const/16 v4, 0x5f

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x6ea

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "zh_HK"

    const/16 v2, 0xc

    const/16 v3, 0x3d

    const/16 v4, 0x2b

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x6eb

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "zh_HK"

    const/16 v2, 0x17

    const/16 v3, 0x5b

    const/16 v4, 0x7b

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x6ec

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "zh_HK"

    const/16 v2, 0x18

    const/16 v3, 0x5d

    const/16 v4, 0x7d

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x6ed

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "zh_HK"

    const/16 v2, 0x22

    const/16 v3, 0x3b

    const/16 v4, 0x3a

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x6ee

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "zh_HK"

    const/16 v2, 0x23

    const/16 v3, 0x27

    const/16 v4, 0x22

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x6ef

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "zh_HK"

    const/16 v2, 0x24

    const/16 v3, -0xff

    const/16 v4, -0xff

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x6f0

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "zh_HK"

    const/16 v2, 0x25

    const/16 v3, 0x5c

    const/16 v4, 0x7c

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x6f1

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "zh_HK"

    const/16 v2, 0x26

    const/16 v3, -0xff

    const/16 v4, -0xff

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x6f2

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "zh_HK"

    const/16 v2, 0x2d

    const v3, 0xff0c

    const/16 v4, 0x3c

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x6f3

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "zh_HK"

    const/16 v2, 0x2e

    const/16 v3, 0x3002

    const/16 v4, 0x3e

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x6f4

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "zh_HK"

    const/16 v2, 0x2f

    const/16 v3, 0x2f

    const/16 v4, 0x3f

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x6f5

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "zh_TW"

    const/4 v2, 0x0

    const/16 v3, 0x60

    const/16 v4, 0x7e

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x6f6

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "zh_TW"

    const/4 v2, 0x1

    const/16 v3, 0x3105

    const/16 v4, 0x21

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x6f7

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "zh_TW"

    const/4 v2, 0x2

    const/16 v3, 0x3109

    const/16 v4, 0x40

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x6f8

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "zh_TW"

    const/4 v2, 0x3

    const/16 v3, 0x2c7

    const/16 v4, 0x23

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x6f9

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "zh_TW"

    const/4 v2, 0x4

    const/16 v3, 0x2cb

    const/16 v4, 0x24

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x6fa

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "zh_TW"

    const/4 v2, 0x5

    const/16 v3, 0x3113

    const/16 v4, 0x25

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x6fb

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "zh_TW"

    const/4 v2, 0x6

    const/16 v3, 0x2ca

    const/16 v4, 0x5e

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x6fc

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "zh_TW"

    const/4 v2, 0x7

    const/16 v3, 0x2d9

    const/16 v4, 0x26

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x6fd

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "zh_TW"

    const/16 v2, 0x8

    const/16 v3, 0x311a

    const/16 v4, 0x2a

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x6fe

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "zh_TW"

    const/16 v2, 0x9

    const/16 v3, 0x311e

    const/16 v4, 0x28

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x6ff

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "zh_TW"

    const/16 v2, 0xa

    const/16 v3, 0x3122

    const/16 v4, 0x29

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x700

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "zh_TW"

    const/16 v2, 0xb

    const/16 v3, 0x3126

    const/16 v4, 0x5f

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x701

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "zh_TW"

    const/16 v2, 0xc

    const/16 v3, 0x3d

    const/16 v4, 0x2b

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x702

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "zh_TW"

    const/16 v2, 0xd

    const/16 v3, 0x3106

    const/16 v4, 0x3106

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x703

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "zh_TW"

    const/16 v2, 0xe

    const/16 v3, 0x310a

    const/16 v4, 0x310a

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x704

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "zh_TW"

    const/16 v2, 0xf

    const/16 v3, 0x310d

    const/16 v4, 0x310d

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x705

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "zh_TW"

    const/16 v2, 0x10

    const/16 v3, 0x3110

    const/16 v4, 0x3110

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x706

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "zh_TW"

    const/16 v2, 0x11

    const/16 v3, 0x3114

    const/16 v4, 0x3114

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x707

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "zh_TW"

    const/16 v2, 0x12

    const/16 v3, 0x3117

    const/16 v4, 0x3117

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x708

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "zh_TW"

    const/16 v2, 0x13

    const/16 v3, 0x3127

    const/16 v4, 0x3127

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x709

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "zh_TW"

    const/16 v2, 0x14

    const/16 v3, 0x311b

    const/16 v4, 0x311b

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x70a

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "zh_TW"

    const/16 v2, 0x15

    const/16 v3, 0x311f

    const/16 v4, 0x311f

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x70b

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "zh_TW"

    const/16 v2, 0x16

    const/16 v3, 0x3123

    const/16 v4, 0x3123

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x70c

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "zh_TW"

    const/16 v2, 0x17

    const/16 v3, 0x5b

    const/16 v4, 0x7b

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x70d

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "zh_TW"

    const/16 v2, 0x18

    const/16 v3, 0x5d

    const/16 v4, 0x7d

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x70e

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "zh_TW"

    const/16 v2, 0x19

    const/16 v3, 0x3107

    const/16 v4, 0x3107

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x70f

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "zh_TW"

    const/16 v2, 0x1a

    const/16 v3, 0x310b

    const/16 v4, 0x310b

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x710

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "zh_TW"

    const/16 v2, 0x1b

    const/16 v3, 0x310e

    const/16 v4, 0x310e

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x711

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "zh_TW"

    const/16 v2, 0x1c

    const/16 v3, 0x3111

    const/16 v4, 0x3111

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x712

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "zh_TW"

    const/16 v2, 0x1d

    const/16 v3, 0x3115

    const/16 v4, 0x3115

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x713

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "zh_TW"

    const/16 v2, 0x1e

    const/16 v3, 0x3118

    const/16 v4, 0x3118

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x714

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "zh_TW"

    const/16 v2, 0x1f

    const/16 v3, 0x3128

    const/16 v4, 0x3128

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x715

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "zh_TW"

    const/16 v2, 0x20

    const/16 v3, 0x311c

    const/16 v4, 0x311c

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x716

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "zh_TW"

    const/16 v2, 0x21

    const/16 v3, 0x3120

    const/16 v4, 0x3120

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x717

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "zh_TW"

    const/16 v2, 0x22

    const/16 v3, 0x3124

    const/16 v4, 0x3a

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x718

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "zh_TW"

    const/16 v2, 0x23

    const/16 v3, 0x27

    const/16 v4, 0x22

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x719

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "zh_TW"

    const/16 v2, 0x24

    const/16 v3, 0x5c

    const/16 v4, 0x7c

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x71a

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "zh_TW"

    const/16 v2, 0x25

    const/16 v3, 0x5c

    const/16 v4, 0x7c

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x71b

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "zh_TW"

    const/16 v2, 0x26

    const/16 v3, 0x3108

    const/16 v4, 0x3108

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x71c

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "zh_TW"

    const/16 v2, 0x27

    const/16 v3, 0x310c

    const/16 v4, 0x310c

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x71d

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "zh_TW"

    const/16 v2, 0x28

    const/16 v3, 0x310f

    const/16 v4, 0x310f

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x71e

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "zh_TW"

    const/16 v2, 0x29

    const/16 v3, 0x3112

    const/16 v4, 0x3112

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x71f

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "zh_TW"

    const/16 v2, 0x2a

    const/16 v3, 0x3116

    const/16 v4, 0x3116

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x720

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "zh_TW"

    const/16 v2, 0x2b

    const/16 v3, 0x3119

    const/16 v4, 0x3119

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x721

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "zh_TW"

    const/16 v2, 0x2c

    const/16 v3, 0x3129

    const/16 v4, 0x3129

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x722

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "zh_TW"

    const/16 v2, 0x2d

    const/16 v3, 0x311d

    const/16 v4, 0x3c

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x723

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "zh_TW"

    const/16 v2, 0x2e

    const/16 v3, 0x3121

    const/16 v4, 0x3e

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    const/16 v8, 0x724

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const-string v1, "zh_TW"

    const/16 v2, 0x2f

    const/16 v3, 0x3125

    const/16 v4, 0x3f

    const/16 v5, -0xff

    const/16 v6, -0xff

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;-><init>(Ljava/lang/String;IIIII)V

    aput-object v0, v7, v8

    sput-object v7, Lcom/diotek/ime/framework/input/hw/HwKeyMap;->HWKEY_MAP:[Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    const/16 v0, 0x5c

    new-array v0, v0, [Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;

    const/4 v1, 0x0

    new-instance v2, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;

    const-string v3, "en_US"

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, -0xff

    aput v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;-><init>(Ljava/lang/String;I[I)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;

    const-string v3, "en_US"

    const/4 v4, 0x1

    const/4 v5, 0x4

    new-array v5, v5, [I

    fill-array-data v5, :array_1

    invoke-direct {v2, v3, v4, v5}, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;-><init>(Ljava/lang/String;I[I)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;

    const-string v3, "en_US"

    const/4 v4, 0x2

    const/4 v5, 0x3

    new-array v5, v5, [I

    fill-array-data v5, :array_2

    invoke-direct {v2, v3, v4, v5}, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;-><init>(Ljava/lang/String;I[I)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;

    const-string v3, "en_US"

    const/4 v4, 0x3

    const/4 v5, 0x3

    new-array v5, v5, [I

    fill-array-data v5, :array_3

    invoke-direct {v2, v3, v4, v5}, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;-><init>(Ljava/lang/String;I[I)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;

    const-string v3, "en_US"

    const/4 v4, 0x4

    const/4 v5, 0x3

    new-array v5, v5, [I

    fill-array-data v5, :array_4

    invoke-direct {v2, v3, v4, v5}, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;-><init>(Ljava/lang/String;I[I)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;

    const-string v3, "en_US"

    const/4 v4, 0x5

    const/4 v5, 0x3

    new-array v5, v5, [I

    fill-array-data v5, :array_5

    invoke-direct {v2, v3, v4, v5}, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;-><init>(Ljava/lang/String;I[I)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;

    const-string v3, "en_US"

    const/4 v4, 0x6

    const/4 v5, 0x3

    new-array v5, v5, [I

    fill-array-data v5, :array_6

    invoke-direct {v2, v3, v4, v5}, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;-><init>(Ljava/lang/String;I[I)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;

    const-string v3, "en_US"

    const/4 v4, 0x7

    const/4 v5, 0x4

    new-array v5, v5, [I

    fill-array-data v5, :array_7

    invoke-direct {v2, v3, v4, v5}, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;-><init>(Ljava/lang/String;I[I)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;

    const-string v3, "en_US"

    const/16 v4, 0x8

    const/4 v5, 0x3

    new-array v5, v5, [I

    fill-array-data v5, :array_8

    invoke-direct {v2, v3, v4, v5}, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;-><init>(Ljava/lang/String;I[I)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;

    const-string v3, "en_US"

    const/16 v4, 0x9

    const/4 v5, 0x4

    new-array v5, v5, [I

    fill-array-data v5, :array_9

    invoke-direct {v2, v3, v4, v5}, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;-><init>(Ljava/lang/String;I[I)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;

    const-string v3, "en_US"

    const/16 v4, 0xa

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, -0xff

    aput v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;-><init>(Ljava/lang/String;I[I)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;

    const-string v3, "en_US"

    const/16 v4, 0xb

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, -0xff

    aput v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;-><init>(Ljava/lang/String;I[I)V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;

    const-string v3, "en_US"

    const/16 v4, 0xc

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, -0xff

    aput v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;-><init>(Ljava/lang/String;I[I)V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;

    const-string v3, "en_US"

    const/16 v4, 0xd

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, -0xff

    aput v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;-><init>(Ljava/lang/String;I[I)V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;

    const-string v3, "en_US"

    const/16 v4, 0xe

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, -0xff

    aput v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;-><init>(Ljava/lang/String;I[I)V

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-instance v2, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;

    const-string v3, "en_US"

    const/16 v4, 0xf

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, -0xff

    aput v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;-><init>(Ljava/lang/String;I[I)V

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-instance v2, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;

    const-string v3, "en_US"

    const/16 v4, 0x10

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, -0xff

    aput v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;-><init>(Ljava/lang/String;I[I)V

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-instance v2, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;

    const-string v3, "en_US"

    const/16 v4, 0x11

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, -0xff

    aput v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;-><init>(Ljava/lang/String;I[I)V

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-instance v2, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;

    const-string v3, "en_US"

    const/16 v4, 0x12

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, -0xff

    aput v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;-><init>(Ljava/lang/String;I[I)V

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-instance v2, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;

    const-string v3, "en_US"

    const/16 v4, 0x13

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, -0xff

    aput v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;-><init>(Ljava/lang/String;I[I)V

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-instance v2, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;

    const-string v3, "en_US"

    const/16 v4, 0x14

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, -0xff

    aput v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;-><init>(Ljava/lang/String;I[I)V

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-instance v2, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;

    const-string v3, "en_US"

    const/16 v4, 0x15

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, -0xff

    aput v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;-><init>(Ljava/lang/String;I[I)V

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-instance v2, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;

    const-string v3, "en_US"

    const/16 v4, 0x16

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, -0xff

    aput v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;-><init>(Ljava/lang/String;I[I)V

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-instance v2, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;

    const-string v3, "en_US"

    const/16 v4, 0x17

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, -0xff

    aput v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;-><init>(Ljava/lang/String;I[I)V

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-instance v2, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;

    const-string v3, "en_US"

    const/16 v4, 0x18

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, -0xff

    aput v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;-><init>(Ljava/lang/String;I[I)V

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-instance v2, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;

    const-string v3, "en_US"

    const/16 v4, 0x19

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, -0xff

    aput v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;-><init>(Ljava/lang/String;I[I)V

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-instance v2, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;

    const-string v3, "en_US"

    const/16 v4, 0x1a

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, -0xff

    aput v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;-><init>(Ljava/lang/String;I[I)V

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-instance v2, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;

    const-string v3, "en_US"

    const/16 v4, 0x1b

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, -0xff

    aput v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;-><init>(Ljava/lang/String;I[I)V

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-instance v2, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;

    const-string v3, "en_US"

    const/16 v4, 0x1c

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, -0xff

    aput v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;-><init>(Ljava/lang/String;I[I)V

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-instance v2, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;

    const-string v3, "en_US"

    const/16 v4, 0x1d

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, -0xff

    aput v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;-><init>(Ljava/lang/String;I[I)V

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-instance v2, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;

    const-string v3, "en_US"

    const/16 v4, 0x1e

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, -0xff

    aput v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;-><init>(Ljava/lang/String;I[I)V

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-instance v2, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;

    const-string v3, "en_US"

    const/16 v4, 0x1f

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, -0xff

    aput v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;-><init>(Ljava/lang/String;I[I)V

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-instance v2, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;

    const-string v3, "en_US"

    const/16 v4, 0x20

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, -0xff

    aput v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;-><init>(Ljava/lang/String;I[I)V

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-instance v2, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;

    const-string v3, "en_US"

    const/16 v4, 0x21

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, -0xff

    aput v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;-><init>(Ljava/lang/String;I[I)V

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-instance v2, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;

    const-string v3, "en_US"

    const/16 v4, 0x22

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, -0xff

    aput v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;-><init>(Ljava/lang/String;I[I)V

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-instance v2, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;

    const-string v3, "en_US"

    const/16 v4, 0x23

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, -0xff

    aput v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;-><init>(Ljava/lang/String;I[I)V

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-instance v2, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;

    const-string v3, "en_US"

    const/16 v4, 0x24

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0x20

    aput v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;-><init>(Ljava/lang/String;I[I)V

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-instance v2, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;

    const-string v3, "en_US"

    const/16 v4, 0x25

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, -0xff

    aput v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;-><init>(Ljava/lang/String;I[I)V

    aput-object v2, v0, v1

    const/16 v1, 0x26

    new-instance v2, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;

    const-string v3, "en_US"

    const/16 v4, 0x26

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, -0xff

    aput v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;-><init>(Ljava/lang/String;I[I)V

    aput-object v2, v0, v1

    const/16 v1, 0x27

    new-instance v2, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;

    const-string v3, "en_US"

    const/16 v4, 0x27

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, -0xff

    aput v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;-><init>(Ljava/lang/String;I[I)V

    aput-object v2, v0, v1

    const/16 v1, 0x28

    new-instance v2, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;

    const-string v3, "en_US"

    const/16 v4, 0x28

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, -0xff

    aput v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;-><init>(Ljava/lang/String;I[I)V

    aput-object v2, v0, v1

    const/16 v1, 0x29

    new-instance v2, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;

    const-string v3, "en_US"

    const/16 v4, 0x29

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, -0xff

    aput v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;-><init>(Ljava/lang/String;I[I)V

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    new-instance v2, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;

    const-string v3, "en_US"

    const/16 v4, 0x2a

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, -0xff

    aput v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;-><init>(Ljava/lang/String;I[I)V

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    new-instance v2, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;

    const-string v3, "en_US"

    const/16 v4, 0x2b

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, -0xff

    aput v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;-><init>(Ljava/lang/String;I[I)V

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    new-instance v2, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;

    const-string v3, "en_US"

    const/16 v4, 0x2c

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, -0xff

    aput v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;-><init>(Ljava/lang/String;I[I)V

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    new-instance v2, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;

    const-string v3, "en_US"

    const/16 v4, 0x2d

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, -0xff

    aput v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;-><init>(Ljava/lang/String;I[I)V

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    new-instance v2, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;

    const-string v3, "en_US"

    const/16 v4, 0x2e

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, -0xff

    aput v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;-><init>(Ljava/lang/String;I[I)V

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    new-instance v2, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;

    const-string v3, "en_US"

    const/16 v4, 0x2f

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, -0xff

    aput v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;-><init>(Ljava/lang/String;I[I)V

    aput-object v2, v0, v1

    const/16 v1, 0x30

    new-instance v2, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;

    const-string v3, "ko"

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, -0xff

    aput v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;-><init>(Ljava/lang/String;I[I)V

    aput-object v2, v0, v1

    const/16 v1, 0x31

    new-instance v2, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;

    const-string v3, "ko"

    const/4 v4, 0x1

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0x3163

    aput v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;-><init>(Ljava/lang/String;I[I)V

    aput-object v2, v0, v1

    const/16 v1, 0x32

    new-instance v2, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;

    const-string v3, "ko"

    const/4 v4, 0x2

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0x119e

    aput v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;-><init>(Ljava/lang/String;I[I)V

    aput-object v2, v0, v1

    const/16 v1, 0x33

    new-instance v2, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;

    const-string v3, "ko"

    const/4 v4, 0x3

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0x3161

    aput v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;-><init>(Ljava/lang/String;I[I)V

    aput-object v2, v0, v1

    const/16 v1, 0x34

    new-instance v2, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;

    const-string v3, "ko"

    const/4 v4, 0x4

    const/4 v5, 0x3

    new-array v5, v5, [I

    fill-array-data v5, :array_a

    invoke-direct {v2, v3, v4, v5}, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;-><init>(Ljava/lang/String;I[I)V

    aput-object v2, v0, v1

    const/16 v1, 0x35

    new-instance v2, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;

    const-string v3, "ko"

    const/4 v4, 0x5

    const/4 v5, 0x2

    new-array v5, v5, [I

    fill-array-data v5, :array_b

    invoke-direct {v2, v3, v4, v5}, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;-><init>(Ljava/lang/String;I[I)V

    aput-object v2, v0, v1

    const/16 v1, 0x36

    new-instance v2, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;

    const-string v3, "ko"

    const/4 v4, 0x6

    const/4 v5, 0x3

    new-array v5, v5, [I

    fill-array-data v5, :array_c

    invoke-direct {v2, v3, v4, v5}, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;-><init>(Ljava/lang/String;I[I)V

    aput-object v2, v0, v1

    const/16 v1, 0x37

    new-instance v2, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;

    const-string v3, "ko"

    const/4 v4, 0x7

    const/4 v5, 0x3

    new-array v5, v5, [I

    fill-array-data v5, :array_d

    invoke-direct {v2, v3, v4, v5}, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;-><init>(Ljava/lang/String;I[I)V

    aput-object v2, v0, v1

    const/16 v1, 0x38

    new-instance v2, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;

    const-string v3, "ko"

    const/16 v4, 0x8

    const/4 v5, 0x3

    new-array v5, v5, [I

    fill-array-data v5, :array_e

    invoke-direct {v2, v3, v4, v5}, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;-><init>(Ljava/lang/String;I[I)V

    aput-object v2, v0, v1

    const/16 v1, 0x39

    new-instance v2, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;

    const-string v3, "ko"

    const/16 v4, 0x9

    const/4 v5, 0x3

    new-array v5, v5, [I

    fill-array-data v5, :array_f

    invoke-direct {v2, v3, v4, v5}, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;-><init>(Ljava/lang/String;I[I)V

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    new-instance v2, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;

    const-string v3, "ko"

    const/16 v4, 0xa

    const/4 v5, 0x2

    new-array v5, v5, [I

    fill-array-data v5, :array_10

    invoke-direct {v2, v3, v4, v5}, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;-><init>(Ljava/lang/String;I[I)V

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    new-instance v2, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;

    const-string v3, "ko"

    const/16 v4, 0xb

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, -0xff

    aput v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;-><init>(Ljava/lang/String;I[I)V

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    new-instance v2, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;

    const-string v3, "ko"

    const/16 v4, 0xc

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, -0xff

    aput v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;-><init>(Ljava/lang/String;I[I)V

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    new-instance v2, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;

    const-string v3, "ko"

    const/16 v4, 0xd

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, -0xff

    aput v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;-><init>(Ljava/lang/String;I[I)V

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    new-instance v2, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;

    const-string v3, "ko"

    const/16 v4, 0xe

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, -0xff

    aput v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;-><init>(Ljava/lang/String;I[I)V

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    new-instance v2, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;

    const-string v3, "ko"

    const/16 v4, 0xf

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, -0xff

    aput v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;-><init>(Ljava/lang/String;I[I)V

    aput-object v2, v0, v1

    const/16 v1, 0x40

    new-instance v2, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;

    const-string v3, "ko"

    const/16 v4, 0x10

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, -0xff

    aput v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;-><init>(Ljava/lang/String;I[I)V

    aput-object v2, v0, v1

    const/16 v1, 0x41

    new-instance v2, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;

    const-string v3, "ko"

    const/16 v4, 0x11

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, -0xff

    aput v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;-><init>(Ljava/lang/String;I[I)V

    aput-object v2, v0, v1

    const/16 v1, 0x42

    new-instance v2, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;

    const-string v3, "ko"

    const/16 v4, 0x12

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, -0xff

    aput v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;-><init>(Ljava/lang/String;I[I)V

    aput-object v2, v0, v1

    const/16 v1, 0x43

    new-instance v2, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;

    const-string v3, "ko"

    const/16 v4, 0x13

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, -0xff

    aput v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;-><init>(Ljava/lang/String;I[I)V

    aput-object v2, v0, v1

    const/16 v1, 0x44

    new-instance v2, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;

    const-string v3, "ko"

    const/16 v4, 0x14

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, -0xff

    aput v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;-><init>(Ljava/lang/String;I[I)V

    aput-object v2, v0, v1

    const/16 v1, 0x45

    new-instance v2, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;

    const-string v3, "ko"

    const/16 v4, 0x15

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, -0xff

    aput v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;-><init>(Ljava/lang/String;I[I)V

    aput-object v2, v0, v1

    const/16 v1, 0x46

    new-instance v2, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;

    const-string v3, "ko"

    const/16 v4, 0x16

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, -0xff

    aput v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;-><init>(Ljava/lang/String;I[I)V

    aput-object v2, v0, v1

    const/16 v1, 0x47

    new-instance v2, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;

    const-string v3, "ko"

    const/16 v4, 0x17

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, -0xff

    aput v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;-><init>(Ljava/lang/String;I[I)V

    aput-object v2, v0, v1

    const/16 v1, 0x48

    new-instance v2, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;

    const-string v3, "ko"

    const/16 v4, 0x18

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, -0xff

    aput v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;-><init>(Ljava/lang/String;I[I)V

    aput-object v2, v0, v1

    const/16 v1, 0x49

    new-instance v2, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;

    const-string v3, "ko"

    const/16 v4, 0x19

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, -0xff

    aput v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;-><init>(Ljava/lang/String;I[I)V

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    new-instance v2, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;

    const-string v3, "ko"

    const/16 v4, 0x1a

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, -0xff

    aput v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;-><init>(Ljava/lang/String;I[I)V

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    new-instance v2, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;

    const-string v3, "ko"

    const/16 v4, 0x1b

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, -0xff

    aput v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;-><init>(Ljava/lang/String;I[I)V

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    new-instance v2, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;

    const-string v3, "ko"

    const/16 v4, 0x1c

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, -0xff

    aput v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;-><init>(Ljava/lang/String;I[I)V

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    new-instance v2, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;

    const-string v3, "ko"

    const/16 v4, 0x1d

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, -0xff

    aput v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;-><init>(Ljava/lang/String;I[I)V

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    new-instance v2, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;

    const-string v3, "ko"

    const/16 v4, 0x1e

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, -0xff

    aput v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;-><init>(Ljava/lang/String;I[I)V

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    new-instance v2, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;

    const-string v3, "ko"

    const/16 v4, 0x1f

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, -0xff

    aput v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;-><init>(Ljava/lang/String;I[I)V

    aput-object v2, v0, v1

    const/16 v1, 0x50

    new-instance v2, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;

    const-string v3, "ko"

    const/16 v4, 0x20

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, -0xff

    aput v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;-><init>(Ljava/lang/String;I[I)V

    aput-object v2, v0, v1

    const/16 v1, 0x51

    new-instance v2, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;

    const-string v3, "ko"

    const/16 v4, 0x21

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, -0xff

    aput v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;-><init>(Ljava/lang/String;I[I)V

    aput-object v2, v0, v1

    const/16 v1, 0x52

    new-instance v2, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;

    const-string v3, "ko"

    const/16 v4, 0x23

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, -0xff

    aput v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;-><init>(Ljava/lang/String;I[I)V

    aput-object v2, v0, v1

    const/16 v1, 0x53

    new-instance v2, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;

    const-string v3, "ko"

    const/16 v4, 0x24

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0x20

    aput v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;-><init>(Ljava/lang/String;I[I)V

    aput-object v2, v0, v1

    const/16 v1, 0x54

    new-instance v2, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;

    const-string v3, "ko"

    const/16 v4, 0x25

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, -0xff

    aput v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;-><init>(Ljava/lang/String;I[I)V

    aput-object v2, v0, v1

    const/16 v1, 0x55

    new-instance v2, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;

    const-string v3, "ko"

    const/16 v4, 0x26

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, -0xff

    aput v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;-><init>(Ljava/lang/String;I[I)V

    aput-object v2, v0, v1

    const/16 v1, 0x56

    new-instance v2, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;

    const-string v3, "ko"

    const/16 v4, 0x27

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, -0xff

    aput v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;-><init>(Ljava/lang/String;I[I)V

    aput-object v2, v0, v1

    const/16 v1, 0x57

    new-instance v2, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;

    const-string v3, "ko"

    const/16 v4, 0x28

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, -0xff

    aput v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;-><init>(Ljava/lang/String;I[I)V

    aput-object v2, v0, v1

    const/16 v1, 0x58

    new-instance v2, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;

    const-string v3, "ko"

    const/16 v4, 0x29

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, -0xff

    aput v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;-><init>(Ljava/lang/String;I[I)V

    aput-object v2, v0, v1

    const/16 v1, 0x59

    new-instance v2, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;

    const-string v3, "ko"

    const/16 v4, 0x2a

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, -0xff

    aput v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;-><init>(Ljava/lang/String;I[I)V

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    new-instance v2, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;

    const-string v3, "ko"

    const/16 v4, 0x2b

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, -0xff

    aput v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;-><init>(Ljava/lang/String;I[I)V

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    new-instance v2, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;

    const-string v3, "ko"

    const/16 v4, 0x2c

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, -0xff

    aput v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;-><init>(Ljava/lang/String;I[I)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/diotek/ime/framework/input/hw/HwKeyMap;->HW_PHONEPAD_KEY_MAP:[Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;

    return-void

    :array_0
    .array-data 4
        0x44
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x7
        0x45
        0x46
        0x2d
        0x33
        0x21
        0x2e
        0x30
        0x35
        0x31
        0x25
        0x2b
        0x2c
        0x47
        0x48
        0x1d
        0x2f
        0x20
        0x22
        0x23
        0x24
        0x26
        0x27
        0x28
        0x4a
        0x4b
        0x12
        0x49
        0x36
        0x34
        0x1f
        0x32
        0x1e
        0x2a
        0x29
        0x37
        0x38
        0x4c
    .end array-data

    :array_1
    .array-data 4
        0x2e
        0x2c
        0x3f
        0x21
    .end array-data

    :array_2
    .array-data 4
        0x61
        0x62
        0x63
    .end array-data

    :array_3
    .array-data 4
        0x64
        0x65
        0x66
    .end array-data

    :array_4
    .array-data 4
        0x67
        0x68
        0x69
    .end array-data

    :array_5
    .array-data 4
        0x6a
        0x6b
        0x6c
    .end array-data

    :array_6
    .array-data 4
        0x6d
        0x6e
        0x6f
    .end array-data

    :array_7
    .array-data 4
        0x70
        0x71
        0x72
        0x73
    .end array-data

    :array_8
    .array-data 4
        0x74
        0x75
        0x76
    .end array-data

    :array_9
    .array-data 4
        0x77
        0x78
        0x79
        0x7a
    .end array-data

    :array_a
    .array-data 4
        0x3131
        0x314b
        0x3132
    .end array-data

    :array_b
    .array-data 4
        0x3134
        0x3139
    .end array-data

    :array_c
    .array-data 4
        0x3137
        0x314c
        0x3138
    .end array-data

    :array_d
    .array-data 4
        0x3142
        0x314d
        0x3143
    .end array-data

    :array_e
    .array-data 4
        0x3145
        0x314e
        0x3146
    .end array-data

    :array_f
    .array-data 4
        0x3148
        0x314a
        0x3149
    .end array-data

    :array_10
    .array-data 4
        0x3147
        0x3141
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHwKeyCodeMap()[I
    .locals 1

    sget-object v0, Lcom/diotek/ime/framework/input/hw/HwKeyMap;->HWKEY_CODE_MAP:[I

    return-object v0
.end method

.method public static getHwKeyMap()[Lcom/diotek/ime/framework/input/hw/HwKeyInfo;
    .locals 1

    sget-object v0, Lcom/diotek/ime/framework/input/hw/HwKeyMap;->HWKEY_MAP:[Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    return-object v0
.end method

.method public static getHwPhonepadKeyMap()[Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;
    .locals 1

    sget-object v0, Lcom/diotek/ime/framework/input/hw/HwKeyMap;->HW_PHONEPAD_KEY_MAP:[Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;

    return-object v0
.end method
