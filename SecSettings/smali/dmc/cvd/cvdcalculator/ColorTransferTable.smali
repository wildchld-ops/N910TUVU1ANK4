.class public Ldmc/cvd/cvdcalculator/ColorTransferTable;
.super Ljava/lang/Object;
.source "ColorTransferTable.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getColorTransferValue(IIDD)I
    .locals 12

    const/4 v4, 0x0

    check-cast v4, [I

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-direct/range {p0 .. p6}, Ldmc/cvd/cvdcalculator/ColorTransferTable;->getMaxMinColorTransferValue(IIDD)[I

    move-result-object v4

    const/4 v6, 0x0

    aget v6, v4, v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_0

    const/4 v6, 0x1

    aget v6, v4, v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_0

    const/4 v6, -0x1

    :goto_0
    return v6

    :cond_0
    const/4 v6, 0x0

    aget v6, v4, v6

    const/4 v7, 0x1

    aget v7, v4, v7

    sub-int v2, v6, v7

    move-wide/from16 v0, p5

    invoke-direct {p0, v0, v1}, Ldmc/cvd/cvdcalculator/ColorTransferTable;->roundHalfUp(D)I

    move-result v3

    int-to-double v6, v2

    int-to-double v8, v3

    const-wide/high16 v10, 0x4024000000000000L

    div-double/2addr v8, v10

    mul-double/2addr v6, v8

    const/4 v8, 0x1

    aget v8, v4, v8

    int-to-double v8, v8

    add-double/2addr v6, v8

    double-to-int v5, v6

    move v6, v5

    goto :goto_0
.end method

.method private getMaxMinColorTransferValue(IIDD)[I
    .locals 7

    const/4 v2, 0x1

    const/4 v1, -0x1

    const/4 v6, 0x0

    check-cast v6, [I

    if-ne p1, v2, :cond_0

    move-object v0, p0

    move v1, p2

    move-wide v2, p3

    move-wide v4, p5

    invoke-direct/range {v0 .. v5}, Ldmc/cvd/cvdcalculator/ColorTransferTable;->getMaxMinColorTrnasferValueRed(IDD)[I

    move-result-object v6

    :goto_0
    return-object v6

    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    move-object v0, p0

    move v1, p2

    move-wide v2, p3

    move-wide v4, p5

    invoke-direct/range {v0 .. v5}, Ldmc/cvd/cvdcalculator/ColorTransferTable;->getMaxMinColorTrnasferValueGreen(IDD)[I

    move-result-object v6

    goto :goto_0

    :cond_1
    const/4 v0, 0x6

    if-ne p1, v0, :cond_2

    move-object v0, p0

    move v1, p2

    move-wide v2, p3

    move-wide v4, p5

    invoke-direct/range {v0 .. v5}, Ldmc/cvd/cvdcalculator/ColorTransferTable;->getMaxMinColorTrnasferValueMagenta(IDD)[I

    move-result-object v6

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    new-array v6, v0, [I

    const/4 v0, 0x0

    aput v1, v6, v0

    aput v1, v6, v2

    goto :goto_0
.end method

.method private getMaxMinColorTrnasferValueGreen(IDD)[I
    .locals 6

    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v4, 0x2

    new-array v2, v4, [I

    invoke-direct {p0, p2, p3}, Ldmc/cvd/cvdcalculator/ColorTransferTable;->roundHalfUp(D)I

    move-result v0

    if-nez p1, :cond_0

    packed-switch v0, :pswitch_data_0

    :goto_0
    const/4 v4, 0x0

    aput v1, v2, v4

    aput v3, v2, v5

    return-object v2

    :pswitch_0
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_1
    const/16 v3, 0x13

    const/16 v1, 0x13

    goto :goto_0

    :pswitch_2
    const/16 v3, 0x25

    const/16 v1, 0x25

    goto :goto_0

    :pswitch_3
    const/16 v3, 0x33

    const/16 v1, 0x33

    goto :goto_0

    :pswitch_4
    const/16 v3, 0x3f

    const/16 v1, 0x3f

    goto :goto_0

    :pswitch_5
    const/16 v3, 0x4b

    const/16 v1, 0x4b

    goto :goto_0

    :pswitch_6
    const/16 v3, 0x55

    const/16 v1, 0x55

    goto :goto_0

    :pswitch_7
    const/16 v3, 0x5d

    const/16 v1, 0x5d

    goto :goto_0

    :pswitch_8
    const/16 v3, 0x67

    const/16 v1, 0x67

    goto :goto_0

    :pswitch_9
    const/16 v3, 0x6d

    const/16 v1, 0x6d

    goto :goto_0

    :pswitch_a
    const/16 v3, 0x73

    const/16 v1, 0x73

    goto :goto_0

    :cond_0
    if-ne p1, v5, :cond_1

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_b
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_c
    const/16 v3, 0x13

    const/16 v1, 0x13

    goto :goto_0

    :pswitch_d
    const/16 v3, 0x23

    const/16 v1, 0x23

    goto :goto_0

    :pswitch_e
    const/16 v3, 0x2f

    const/16 v1, 0x2f

    goto :goto_0

    :pswitch_f
    const/16 v3, 0x39

    const/16 v1, 0x39

    goto :goto_0

    :pswitch_10
    const/16 v3, 0x41

    const/16 v1, 0x41

    goto :goto_0

    :pswitch_11
    const/16 v3, 0x49

    const/16 v1, 0x49

    goto :goto_0

    :pswitch_12
    const/16 v3, 0x4f

    const/16 v1, 0x4f

    goto :goto_0

    :pswitch_13
    const/16 v3, 0x55

    const/16 v1, 0x55

    goto :goto_0

    :pswitch_14
    const/16 v3, 0x59

    const/16 v1, 0x59

    goto :goto_0

    :pswitch_15
    const/16 v3, 0x5e

    const/16 v1, 0x5e

    goto :goto_0

    :cond_1
    const/4 v3, -0x1

    const/4 v1, -0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
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
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValueMagenta(IDD)[I
    .locals 6

    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v4, 0x2

    new-array v2, v4, [I

    invoke-direct {p0, p2, p3}, Ldmc/cvd/cvdcalculator/ColorTransferTable;->roundHalfUp(D)I

    move-result v0

    if-nez p1, :cond_0

    packed-switch v0, :pswitch_data_0

    :goto_0
    const/4 v4, 0x0

    aput v1, v2, v4

    aput v3, v2, v5

    return-object v2

    :pswitch_0
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_0

    :pswitch_1
    const/16 v3, 0xea

    const/16 v1, 0xee

    goto :goto_0

    :pswitch_2
    const/16 v3, 0xda

    const/16 v1, 0xe4

    goto :goto_0

    :pswitch_3
    const/16 v3, 0xcc

    const/16 v1, 0xe2

    goto :goto_0

    :pswitch_4
    const/16 v3, 0xbe

    const/16 v1, 0xe4

    goto :goto_0

    :pswitch_5
    const/16 v3, 0xb3

    const/16 v1, 0xe4

    goto :goto_0

    :pswitch_6
    const/16 v3, 0xa9

    const/16 v1, 0xea

    goto :goto_0

    :pswitch_7
    const/16 v3, 0xa1

    const/16 v1, 0xf0

    goto :goto_0

    :pswitch_8
    const/16 v3, 0x98

    const/16 v1, 0xf6

    goto :goto_0

    :pswitch_9
    const/16 v3, 0x90

    const/16 v1, 0xfa

    goto :goto_0

    :pswitch_a
    const/16 v3, 0x8a

    const/16 v1, 0xfc

    goto :goto_0

    :cond_0
    if-ne p1, v5, :cond_1

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_b
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_0

    :pswitch_c
    const/16 v3, 0xea

    const/16 v1, 0xee

    goto :goto_0

    :pswitch_d
    const/16 v3, 0xda

    const/16 v1, 0xe4

    goto :goto_0

    :pswitch_e
    const/16 v3, 0xcc

    const/16 v1, 0xe2

    goto :goto_0

    :pswitch_f
    const/16 v3, 0xbe

    const/16 v1, 0xe4

    goto :goto_0

    :pswitch_10
    const/16 v3, 0xb3

    const/16 v1, 0xe4

    goto :goto_0

    :pswitch_11
    const/16 v3, 0xa9

    const/16 v1, 0xea

    goto :goto_0

    :pswitch_12
    const/16 v3, 0xa1

    const/16 v1, 0xf0

    goto :goto_0

    :pswitch_13
    const/16 v3, 0x98

    const/16 v1, 0xf6

    goto :goto_0

    :pswitch_14
    const/16 v3, 0x90

    const/16 v1, 0xfa

    goto :goto_0

    :pswitch_15
    const/16 v3, 0x8a

    const/16 v1, 0xfc

    goto :goto_0

    :cond_1
    const/4 v3, -0x1

    const/4 v1, -0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
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
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValueRed(IDD)[I
    .locals 6

    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v4, 0x2

    new-array v2, v4, [I

    invoke-direct {p0, p2, p3}, Ldmc/cvd/cvdcalculator/ColorTransferTable;->roundHalfUp(D)I

    move-result v0

    if-nez p1, :cond_0

    packed-switch v0, :pswitch_data_0

    :goto_0
    const/4 v4, 0x0

    aput v1, v2, v4

    aput v3, v2, v5

    return-object v2

    :pswitch_0
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_1
    const/4 v3, 0x0

    const/16 v1, 0x24

    goto :goto_0

    :pswitch_2
    const/4 v3, 0x0

    const/16 v1, 0x42

    goto :goto_0

    :pswitch_3
    const/4 v3, 0x0

    const/16 v1, 0x5c

    goto :goto_0

    :pswitch_4
    const/4 v3, 0x0

    const/16 v1, 0x75

    goto :goto_0

    :pswitch_5
    const/4 v3, 0x0

    const/16 v1, 0x88

    goto :goto_0

    :pswitch_6
    const/4 v3, 0x0

    const/16 v1, 0x9c

    goto :goto_0

    :pswitch_7
    const/4 v3, 0x0

    const/16 v1, 0xac

    goto :goto_0

    :pswitch_8
    const/4 v3, 0x0

    const/16 v1, 0xbc

    goto :goto_0

    :pswitch_9
    const/4 v3, 0x0

    const/16 v1, 0xca

    goto :goto_0

    :pswitch_a
    const/4 v3, 0x0

    const/16 v1, 0xd8

    goto :goto_0

    :cond_0
    if-ne p1, v5, :cond_1

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_b
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_c
    const/4 v3, 0x0

    const/16 v1, 0x24

    goto :goto_0

    :pswitch_d
    const/4 v3, 0x0

    const/16 v1, 0x42

    goto :goto_0

    :pswitch_e
    const/4 v3, 0x0

    const/16 v1, 0x5c

    goto :goto_0

    :pswitch_f
    const/4 v3, 0x0

    const/16 v1, 0x75

    goto :goto_0

    :pswitch_10
    const/4 v3, 0x0

    const/16 v1, 0x88

    goto :goto_0

    :pswitch_11
    const/4 v3, 0x0

    const/16 v1, 0x9c

    goto :goto_0

    :pswitch_12
    const/4 v3, 0x0

    const/16 v1, 0xac

    goto :goto_0

    :pswitch_13
    const/4 v3, 0x0

    const/16 v1, 0xbc

    goto :goto_0

    :pswitch_14
    const/4 v3, 0x0

    const/16 v1, 0xca

    goto :goto_0

    :pswitch_15
    const/4 v3, 0x0

    const/16 v1, 0xd8

    goto :goto_0

    :cond_1
    const/4 v3, -0x1

    const/4 v1, -0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
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
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
    .end packed-switch
.end method

.method private roundHalfUp(D)I
    .locals 3

    const/4 v0, 0x0

    const-wide/high16 v1, 0x4024000000000000L

    mul-double/2addr p1, v1

    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-int v0, v1

    return v0
.end method


# virtual methods
.method public getColorTransferValue(IIIDD)I
    .locals 8

    const/4 v3, 0x5

    const/4 v2, 0x3

    const/4 v1, 0x1

    const/4 v7, 0x0

    if-ne p1, v1, :cond_5

    if-ne p2, v1, :cond_2

    if-nez p3, :cond_1

    const/16 v7, 0xfe

    :cond_0
    :goto_0
    return v7

    :cond_1
    if-ne p3, v1, :cond_0

    const/16 v7, 0xff

    goto :goto_0

    :cond_2
    if-ne p2, v2, :cond_4

    if-nez p3, :cond_3

    const/4 v7, 0x0

    goto :goto_0

    :cond_3
    if-ne p3, v1, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_4
    if-ne p2, v3, :cond_0

    move-object v0, p0

    move v1, p1

    move v2, p3

    move-wide v3, p4

    move-wide v5, p6

    invoke-direct/range {v0 .. v6}, Ldmc/cvd/cvdcalculator/ColorTransferTable;->getColorTransferValue(IIDD)I

    move-result v7

    goto :goto_0

    :cond_5
    const/4 v0, 0x2

    if-ne p1, v0, :cond_a

    if-ne p2, v1, :cond_7

    if-nez p3, :cond_6

    const/16 v7, 0xfe

    goto :goto_0

    :cond_6
    if-ne p3, v1, :cond_0

    const/16 v7, 0xff

    goto :goto_0

    :cond_7
    if-ne p2, v2, :cond_9

    if-nez p3, :cond_8

    const/16 v7, 0xff

    goto :goto_0

    :cond_8
    if-ne p3, v1, :cond_0

    const/16 v7, 0xfe

    goto :goto_0

    :cond_9
    if-ne p2, v3, :cond_0

    const/4 v7, 0x0

    goto :goto_0

    :cond_a
    if-ne p1, v2, :cond_f

    if-ne p2, v1, :cond_c

    if-nez p3, :cond_b

    const/4 v7, 0x1

    goto :goto_0

    :cond_b
    if-ne p3, v1, :cond_0

    const/4 v7, 0x0

    goto :goto_0

    :cond_c
    if-ne p2, v2, :cond_e

    if-nez p3, :cond_d

    const/16 v7, 0xff

    goto :goto_0

    :cond_d
    if-ne p3, v1, :cond_0

    const/16 v7, 0xfe

    goto :goto_0

    :cond_e
    if-ne p2, v3, :cond_0

    move-object v0, p0

    move v1, p1

    move v2, p3

    move-wide v3, p4

    move-wide v5, p6

    invoke-direct/range {v0 .. v6}, Ldmc/cvd/cvdcalculator/ColorTransferTable;->getColorTransferValue(IIDD)I

    move-result v7

    goto :goto_0

    :cond_f
    const/4 v0, 0x4

    if-ne p1, v0, :cond_14

    if-ne p2, v1, :cond_11

    if-nez p3, :cond_10

    const/4 v7, 0x1

    goto :goto_0

    :cond_10
    if-ne p3, v1, :cond_0

    const/4 v7, 0x0

    goto :goto_0

    :cond_11
    if-ne p2, v2, :cond_13

    if-nez p3, :cond_12

    const/16 v7, 0xff

    goto :goto_0

    :cond_12
    if-ne p3, v1, :cond_0

    const/16 v7, 0xfe

    goto :goto_0

    :cond_13
    if-ne p2, v3, :cond_0

    const/16 v7, 0xff

    goto :goto_0

    :cond_14
    if-ne p1, v3, :cond_19

    if-ne p2, v1, :cond_16

    if-nez p3, :cond_15

    const/4 v7, 0x1

    goto/16 :goto_0

    :cond_15
    if-ne p3, v1, :cond_0

    const/4 v7, 0x0

    goto/16 :goto_0

    :cond_16
    if-ne p2, v2, :cond_18

    if-nez p3, :cond_17

    const/4 v7, 0x0

    goto/16 :goto_0

    :cond_17
    if-ne p3, v1, :cond_0

    const/4 v7, 0x1

    goto/16 :goto_0

    :cond_18
    if-ne p2, v3, :cond_0

    const/16 v7, 0xfe

    goto/16 :goto_0

    :cond_19
    const/4 v0, 0x6

    if-ne p1, v0, :cond_1e

    if-ne p2, v1, :cond_1b

    if-nez p3, :cond_1a

    const/16 v7, 0xfe

    goto/16 :goto_0

    :cond_1a
    if-ne p3, v1, :cond_0

    const/16 v7, 0xff

    goto/16 :goto_0

    :cond_1b
    if-ne p2, v2, :cond_1d

    if-nez p3, :cond_1c

    const/4 v7, 0x0

    goto/16 :goto_0

    :cond_1c
    if-ne p3, v1, :cond_0

    const/4 v7, 0x1

    goto/16 :goto_0

    :cond_1d
    if-ne p2, v3, :cond_0

    move-object v0, p0

    move v1, p1

    move v2, p3

    move-wide v3, p4

    move-wide v5, p6

    invoke-direct/range {v0 .. v6}, Ldmc/cvd/cvdcalculator/ColorTransferTable;->getColorTransferValue(IIDD)I

    move-result v7

    goto/16 :goto_0

    :cond_1e
    const/4 v7, -0x1

    goto/16 :goto_0
.end method
