.class Landroid/hardware/scontext/SContextVersion;
.super Ljava/lang/Object;
.source "SContextVersion.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SContextVersion"


# instance fields
.field private mAvailableServiceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mVersionMapWithSensorhub:[[I

.field private final mVersionMapWithoutSensorhub:[[I


# direct methods
.method constructor <init>(IZ)V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v4, 0xa

    const/4 v3, 0x3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/scontext/SContextVersion;->mAvailableServiceMap:Ljava/util/HashMap;

    const/16 v0, 0x24

    new-array v0, v0, [[I

    new-array v1, v4, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v5

    new-array v1, v4, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v6

    new-array v1, v4, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v7

    new-array v1, v4, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v3

    const/4 v1, 0x4

    new-array v2, v4, [I

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v4, [I

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v4, [I

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v4, [I

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v4, [I

    fill-array-data v2, :array_8

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v4, [I

    fill-array-data v2, :array_9

    aput-object v2, v0, v1

    new-array v1, v4, [I

    fill-array-data v1, :array_a

    aput-object v1, v0, v4

    const/16 v1, 0xb

    new-array v2, v4, [I

    fill-array-data v2, :array_b

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v4, [I

    fill-array-data v2, :array_c

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v4, [I

    fill-array-data v2, :array_d

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v4, [I

    fill-array-data v2, :array_e

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v4, [I

    fill-array-data v2, :array_f

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v4, [I

    fill-array-data v2, :array_10

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v4, [I

    fill-array-data v2, :array_11

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v4, [I

    fill-array-data v2, :array_12

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v4, [I

    fill-array-data v2, :array_13

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v4, [I

    fill-array-data v2, :array_14

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v4, [I

    fill-array-data v2, :array_15

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v4, [I

    fill-array-data v2, :array_16

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v2, v4, [I

    fill-array-data v2, :array_17

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-array v2, v4, [I

    fill-array-data v2, :array_18

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-array v2, v4, [I

    fill-array-data v2, :array_19

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-array v2, v4, [I

    fill-array-data v2, :array_1a

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-array v2, v4, [I

    fill-array-data v2, :array_1b

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-array v2, v4, [I

    fill-array-data v2, :array_1c

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-array v2, v4, [I

    fill-array-data v2, :array_1d

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-array v2, v4, [I

    fill-array-data v2, :array_1e

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-array v2, v4, [I

    fill-array-data v2, :array_1f

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-array v2, v4, [I

    fill-array-data v2, :array_20

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-array v2, v4, [I

    fill-array-data v2, :array_21

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-array v2, v4, [I

    fill-array-data v2, :array_22

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-array v2, v4, [I

    fill-array-data v2, :array_23

    aput-object v2, v0, v1

    iput-object v0, p0, Landroid/hardware/scontext/SContextVersion;->mVersionMapWithSensorhub:[[I

    const/16 v0, 0x24

    new-array v0, v0, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_24

    aput-object v1, v0, v5

    new-array v1, v3, [I

    fill-array-data v1, :array_25

    aput-object v1, v0, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_26

    aput-object v1, v0, v7

    new-array v1, v3, [I

    fill-array-data v1, :array_27

    aput-object v1, v0, v3

    const/4 v1, 0x4

    new-array v2, v3, [I

    fill-array-data v2, :array_28

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_29

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_2a

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [I

    fill-array-data v2, :array_2b

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [I

    fill-array-data v2, :array_2c

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [I

    fill-array-data v2, :array_2d

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_2e

    aput-object v1, v0, v4

    const/16 v1, 0xb

    new-array v2, v3, [I

    fill-array-data v2, :array_2f

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v3, [I

    fill-array-data v2, :array_30

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v3, [I

    fill-array-data v2, :array_31

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v3, [I

    fill-array-data v2, :array_32

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v3, [I

    fill-array-data v2, :array_33

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v3, [I

    fill-array-data v2, :array_34

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v3, [I

    fill-array-data v2, :array_35

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v3, [I

    fill-array-data v2, :array_36

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v3, [I

    fill-array-data v2, :array_37

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v3, [I

    fill-array-data v2, :array_38

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v3, [I

    fill-array-data v2, :array_39

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v3, [I

    fill-array-data v2, :array_3a

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v2, v3, [I

    fill-array-data v2, :array_3b

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-array v2, v3, [I

    fill-array-data v2, :array_3c

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-array v2, v3, [I

    fill-array-data v2, :array_3d

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-array v2, v3, [I

    fill-array-data v2, :array_3e

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-array v2, v3, [I

    fill-array-data v2, :array_3f

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-array v2, v3, [I

    fill-array-data v2, :array_40

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-array v2, v3, [I

    fill-array-data v2, :array_41

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-array v2, v3, [I

    fill-array-data v2, :array_42

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-array v2, v3, [I

    fill-array-data v2, :array_43

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-array v2, v3, [I

    fill-array-data v2, :array_44

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-array v2, v3, [I

    fill-array-data v2, :array_45

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-array v2, v3, [I

    fill-array-data v2, :array_46

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-array v2, v3, [I

    fill-array-data v2, :array_47

    aput-object v2, v0, v1

    iput-object v0, p0, Landroid/hardware/scontext/SContextVersion;->mVersionMapWithoutSensorhub:[[I

    invoke-direct {p0, p1, p2}, Landroid/hardware/scontext/SContextVersion;->initialize(IZ)V

    return-void

    :array_0
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x0
        0x1
        0x1
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x2
        0x0
        0x2
        0x2
        0x1
        0x2
        0x2
        0x3
        0x4
        0x3
    .end array-data

    :array_2
    .array-data 4
        0x3
        0x1
        0x0
        0x1
        0x0
        0x1
        0x0
        0x0
        0x1
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x5
        0x1
        0x1
        0x1
        0x1
        0x1
        0x2
        0x1
        0x1
        0x1
    .end array-data

    :array_5
    .array-data 4
        0x6
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_6
    .array-data 4
        0x7
        0x0
        0x1
        0x2
        0x0
        0x2
        0x0
        0x3
        0x3
        0x0
    .end array-data

    :array_7
    .array-data 4
        0x8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_8
    .array-data 4
        0x9
        0x0
        0x1
        0x1
        0x1
        0x1
        0x0
        0x1
        0x0
        0x1
    .end array-data

    :array_9
    .array-data 4
        0xa
        0x0
        0x1
        0x1
        0x1
        0x1
        0x0
        0x1
        0x0
        0x1
    .end array-data

    :array_a
    .array-data 4
        0xb
        0x0
        0x1
        0x1
        0x1
        0x1
        0x0
        0x1
        0x1
        0x1
    .end array-data

    :array_b
    .array-data 4
        0xc
        0x0
        0x1
        0x1
        0x0
        0x0
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_c
    .array-data 4
        0xd
        0x0
        0x1
        0x0
        0x0
        0x1
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_d
    .array-data 4
        0xe
        0x0
        0x1
        0x0
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_e
    .array-data 4
        0xf
        0x0
        0x1
        0x1
        0x1
        0x1
        0x0
        0x1
        0x1
        0x1
    .end array-data

    :array_f
    .array-data 4
        0x10
        0x0
        0x0
        0x1
        0x0
        0x1
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_10
    .array-data 4
        0x11
        0x0
        0x0
        0x0
        0x0
        0x1
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_11
    .array-data 4
        0x12
        0x0
        0x0
        0x0
        0x0
        0x1
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_12
    .array-data 4
        0x13
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
        0x0
        0x0
        0x0
    .end array-data

    :array_13
    .array-data 4
        0x14
        0x0
        0x0
        0x1
        0x0
        0x1
        0x0
        0x1
        0x1
        0x1
    .end array-data

    :array_14
    .array-data 4
        0x15
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
        0x0
        0x0
        0x0
    .end array-data

    :array_15
    .array-data 4
        0x16
        0x0
        0x1
        0x1
        0x0
        0x0
        0x0
        0x1
        0x1
        0x1
    .end array-data

    :array_16
    .array-data 4
        0x17
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_17
    .array-data 4
        0x18
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
        0x1
        0x1
    .end array-data

    :array_18
    .array-data 4
        0x19
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
        0x1
        0x1
    .end array-data

    :array_19
    .array-data 4
        0x1a
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
        0x1
        0x1
    .end array-data

    :array_1a
    .array-data 4
        0x1b
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
        0x1
        0x1
    .end array-data

    :array_1b
    .array-data 4
        0x1c
        0x0
        0x1
        0x1
        0x0
        0x0
        0x0
        0x1
        0x0
        0x1
    .end array-data

    :array_1c
    .array-data 4
        0x1d
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
        0x0
        0x0
        0x0
    .end array-data

    :array_1d
    .array-data 4
        0x1e
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
        0x1
        0x1
    .end array-data

    :array_1e
    .array-data 4
        0x1f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1f
    .array-data 4
        0x20
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
        0x1
        0x1
    .end array-data

    :array_20
    .array-data 4
        0x21
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
        0x0
    .end array-data

    :array_21
    .array-data 4
        0x22
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
        0x0
    .end array-data

    :array_22
    .array-data 4
        0x23
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
        0x0
    .end array-data

    :array_23
    .array-data 4
        0x24
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
        0x0
    .end array-data

    :array_24
    .array-data 4
        0x1
        0x0
        0x0
    .end array-data

    :array_25
    .array-data 4
        0x2
        0x3
        0x3
    .end array-data

    :array_26
    .array-data 4
        0x3
        0x0
        0x0
    .end array-data

    :array_27
    .array-data 4
        0x4
        0x0
        0x0
    .end array-data

    :array_28
    .array-data 4
        0x5
        0x0
        0x0
    .end array-data

    :array_29
    .array-data 4
        0x6
        0x0
        0x0
    .end array-data

    :array_2a
    .array-data 4
        0x7
        0x0
        0x0
    .end array-data

    :array_2b
    .array-data 4
        0x8
        0x0
        0x0
    .end array-data

    :array_2c
    .array-data 4
        0x9
        0x0
        0x0
    .end array-data

    :array_2d
    .array-data 4
        0xa
        0x0
        0x0
    .end array-data

    :array_2e
    .array-data 4
        0xb
        0x0
        0x0
    .end array-data

    :array_2f
    .array-data 4
        0xc
        0x0
        0x0
    .end array-data

    :array_30
    .array-data 4
        0xd
        0x0
        0x0
    .end array-data

    :array_31
    .array-data 4
        0xe
        0x0
        0x0
    .end array-data

    :array_32
    .array-data 4
        0xf
        0x0
        0x0
    .end array-data

    :array_33
    .array-data 4
        0x10
        0x0
        0x0
    .end array-data

    :array_34
    .array-data 4
        0x11
        0x0
        0x0
    .end array-data

    :array_35
    .array-data 4
        0x12
        0x0
        0x0
    .end array-data

    :array_36
    .array-data 4
        0x13
        0x0
        0x0
    .end array-data

    :array_37
    .array-data 4
        0x14
        0x0
        0x0
    .end array-data

    :array_38
    .array-data 4
        0x15
        0x0
        0x0
    .end array-data

    :array_39
    .array-data 4
        0x16
        0x0
        0x0
    .end array-data

    :array_3a
    .array-data 4
        0x17
        0x0
        0x0
    .end array-data

    :array_3b
    .array-data 4
        0x18
        0x0
        0x0
    .end array-data

    :array_3c
    .array-data 4
        0x19
        0x0
        0x0
    .end array-data

    :array_3d
    .array-data 4
        0x1a
        0x0
        0x0
    .end array-data

    :array_3e
    .array-data 4
        0x1b
        0x0
        0x0
    .end array-data

    :array_3f
    .array-data 4
        0x1c
        0x0
        0x0
    .end array-data

    :array_40
    .array-data 4
        0x1d
        0x0
        0x0
    .end array-data

    :array_41
    .array-data 4
        0x1e
        0x0
        0x0
    .end array-data

    :array_42
    .array-data 4
        0x1f
        0x0
        0x0
    .end array-data

    :array_43
    .array-data 4
        0x20
        0x0
        0x0
    .end array-data

    :array_44
    .array-data 4
        0x21
        0x0
        0x0
    .end array-data

    :array_45
    .array-data 4
        0x22
        0x0
        0x0
    .end array-data

    :array_46
    .array-data 4
        0x23
        0x0
        0x0
    .end array-data

    :array_47
    .array-data 4
        0x24
        0x0
        0x0
    .end array-data
.end method

.method private initialize(IZ)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    const/4 v2, 0x0

    check-cast v2, [[I

    if-eqz p2, :cond_1

    iget-object v2, p0, Landroid/hardware/scontext/SContextVersion;->mVersionMapWithSensorhub:[[I

    :goto_0
    array-length v1, v2

    if-lez p1, :cond_0

    if-le p1, v1, :cond_2

    :cond_0
    const-string v3, "SContextVersion"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initialize() : this version ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") is not supported!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :cond_1
    iget-object v2, p0, Landroid/hardware/scontext/SContextVersion;->mVersionMapWithoutSensorhub:[[I

    goto :goto_0

    :cond_2
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Landroid/hardware/scontext/SContextVersion;->mAvailableServiceMap:Ljava/util/HashMap;

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v1, :cond_4

    aget-object v3, v2, v0

    aget v3, v3, p1

    if-lez v3, :cond_3

    iget-object v3, p0, Landroid/hardware/scontext/SContextVersion;->mAvailableServiceMap:Ljava/util/HashMap;

    aget-object v4, v2, v0

    const/4 v5, 0x0

    aget v4, v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aget-object v5, v2, v0

    aget v5, v5, p1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    const-string v3, "SContextVersion"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initialize() : this version = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method getAvailableServiceMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/scontext/SContextVersion;->mAvailableServiceMap:Ljava/util/HashMap;

    return-object v0
.end method
