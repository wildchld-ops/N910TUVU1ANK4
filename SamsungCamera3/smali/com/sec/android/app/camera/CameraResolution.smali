.class public Lcom/sec/android/app/camera/CameraResolution;
.super Ljava/lang/Object;
.source "CameraResolution.java"


# static fields
.field public static final RESOLUTION_1024X576:I = 0x27

.field public static final RESOLUTION_1024X768:I = 0x25

.field public static final RESOLUTION_1072X1072:I = 0x2f

.field public static final RESOLUTION_1088X1088:I = 0x38

.field public static final RESOLUTION_1248X672:I = 0x1d

.field public static final RESOLUTION_1280X720:I = 0xe

.field public static final RESOLUTION_1280X800:I = 0x16

.field public static final RESOLUTION_1280X960:I = 0xa

.field public static final RESOLUTION_1392X1392:I = 0x18

.field public static final RESOLUTION_1440X1080:I = 0x1f

.field public static final RESOLUTION_1440X1440:I = 0x37

.field public static final RESOLUTION_1536X864:I = 0x1c

.field public static final RESOLUTION_1600X1200:I = 0x8

.field public static final RESOLUTION_1600X960:I = 0x9

.field public static final RESOLUTION_1632X880:I = 0x1b

.field public static final RESOLUTION_176X144:I = 0x13

.field public static final RESOLUTION_1920X1080:I = 0xd

.field public static final RESOLUTION_1920X1080_60FPS:I = 0x2a

.field public static final RESOLUTION_1920X1440:I = 0x34

.field public static final RESOLUTION_1920X1920:I = 0x36

.field public static final RESOLUTION_2048X1104:I = 0x1a

.field public static final RESOLUTION_2048X1152:I = 0x17

.field public static final RESOLUTION_2048X1232:I = 0x7

.field public static final RESOLUTION_2048X1536:I = 0x6

.field public static final RESOLUTION_2448X2448:I = 0x30

.field public static final RESOLUTION_2560X1440:I = 0x15

.field public static final RESOLUTION_2560X1536:I = 0x5

.field public static final RESOLUTION_2560X1920:I = 0x4

.field public static final RESOLUTION_2576X1932:I = 0x35

.field public static final RESOLUTION_2592X1944:I = 0x19

.field public static final RESOLUTION_2592X2592:I = 0x33

.field public static final RESOLUTION_2976X2976:I = 0x2e

.field public static final RESOLUTION_3072X1856:I = 0x3

.field public static final RESOLUTION_3072X2304:I = 0x2

.field public static final RESOLUTION_3096X3096:I = 0x2b

.field public static final RESOLUTION_320X240:I = 0x12

.field public static final RESOLUTION_3264X1836:I = 0x14

.field public static final RESOLUTION_3264X1968:I = 0x1

.field public static final RESOLUTION_3264X2448:I = 0x0

.field public static final RESOLUTION_3456X2592:I = 0x32

.field public static final RESOLUTION_352X288:I = 0x11

.field public static final RESOLUTION_3840X2160:I = 0x28

.field public static final RESOLUTION_3984X2988:I = 0x2d

.field public static final RESOLUTION_400X240:I = 0x10

.field public static final RESOLUTION_4096X2304:I = 0x24

.field public static final RESOLUTION_4096X3072:I = 0x1e

.field public static final RESOLUTION_4128X2322:I = 0x21

.field public static final RESOLUTION_4128X3096:I = 0x20

.field public static final RESOLUTION_4608X2592:I = 0x31

.field public static final RESOLUTION_5312X2988:I = 0x2c

.field public static final RESOLUTION_640X360:I = 0x29

.field public static final RESOLUTION_640X480:I = 0xb

.field public static final RESOLUTION_720X480:I = 0xf

.field public static final RESOLUTION_800X450:I = 0x23

.field public static final RESOLUTION_800X480:I = 0xc

.field public static final RESOLUTION_960X540:I = 0x26

.field public static final RESOLUTION_960X720:I = 0x22


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compare(II)I
    .locals 4

    invoke-static {p0}, Lcom/sec/android/app/camera/CameraResolution;->getIntWidth(I)I

    move-result v2

    invoke-static {p1}, Lcom/sec/android/app/camera/CameraResolution;->getIntWidth(I)I

    move-result v3

    sub-int v1, v2, v3

    invoke-static {p0}, Lcom/sec/android/app/camera/CameraResolution;->getIntHeight(I)I

    move-result v2

    invoke-static {p1}, Lcom/sec/android/app/camera/CameraResolution;->getIntHeight(I)I

    move-result v3

    sub-int v0, v2, v3

    if-lez v1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-nez v1, :cond_0

    if-lez v0, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getCamcorderProfileQualityLevel(I)I
    .locals 1

    sparse-switch p0, :sswitch_data_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :sswitch_0
    const/4 v0, 0x6

    goto :goto_0

    :sswitch_1
    const/4 v0, 0x5

    goto :goto_0

    :sswitch_2
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_3
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const/4 v0, 0x7

    goto :goto_0

    :sswitch_5
    const/4 v0, 0x2

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0xd -> :sswitch_0
        0xe -> :sswitch_1
        0xf -> :sswitch_2
        0x11 -> :sswitch_3
        0x12 -> :sswitch_4
        0x13 -> :sswitch_5
        0x2a -> :sswitch_0
    .end sparse-switch
.end method

.method public static getIntHeight(I)I
    .locals 3

    const/16 v0, 0x990

    const/16 v1, 0x5a0

    const/16 v2, 0x1e0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    :pswitch_1
    return v0

    :pswitch_2
    const/16 v0, 0xc18

    goto :goto_0

    :pswitch_3
    const/16 v0, 0xc00

    goto :goto_0

    :pswitch_4
    const/16 v0, 0xbac

    goto :goto_0

    :pswitch_5
    const/16 v0, 0xba0

    goto :goto_0

    :pswitch_6
    const/16 v0, 0x440

    goto :goto_0

    :pswitch_7
    const/16 v0, 0xa20

    goto :goto_0

    :pswitch_8
    const/16 v0, 0x912

    goto :goto_0

    :pswitch_9
    const/16 v0, 0x900

    goto :goto_0

    :pswitch_a
    const/16 v0, 0x7b0

    goto :goto_0

    :pswitch_b
    const/16 v0, 0x798

    goto :goto_0

    :pswitch_c
    const/16 v0, 0x78c

    goto :goto_0

    :pswitch_d
    const/16 v0, 0x780

    goto :goto_0

    :pswitch_e
    const/16 v0, 0x740

    goto :goto_0

    :pswitch_f
    const/16 v0, 0x72c

    goto :goto_0

    :pswitch_10
    const/16 v0, 0x600

    goto :goto_0

    :pswitch_11
    move v0, v1

    goto :goto_0

    :pswitch_12
    const/16 v0, 0x4d0

    goto :goto_0

    :pswitch_13
    const/16 v0, 0x4b0

    goto :goto_0

    :pswitch_14
    const/16 v0, 0x570

    goto :goto_0

    :pswitch_15
    const/16 v0, 0x480

    goto :goto_0

    :pswitch_16
    const/16 v0, 0x450

    goto :goto_0

    :pswitch_17
    const/16 v0, 0x438

    goto :goto_0

    :pswitch_18
    const/16 v0, 0x3c0

    goto :goto_0

    :pswitch_19
    const/16 v0, 0x370

    goto :goto_0

    :pswitch_1a
    const/16 v0, 0x360

    goto :goto_0

    :pswitch_1b
    const/16 v0, 0x320

    goto :goto_0

    :pswitch_1c
    const/16 v0, 0x21c

    goto :goto_0

    :pswitch_1d
    move v0, v2

    goto :goto_0

    :pswitch_1e
    const/16 v0, 0x1c2

    goto :goto_0

    :pswitch_1f
    const/16 v0, 0x2d0

    goto :goto_0

    :pswitch_20
    const/16 v0, 0x2a0

    goto :goto_0

    :pswitch_21
    move v0, v2

    goto :goto_0

    :pswitch_22
    const/16 v0, 0x168

    goto :goto_0

    :pswitch_23
    const/16 v0, 0xf0

    goto :goto_0

    :pswitch_24
    const/16 v0, 0x90

    goto :goto_0

    :pswitch_25
    const/16 v0, 0x300

    goto :goto_0

    :pswitch_26
    const/16 v0, 0x240

    goto :goto_0

    :pswitch_27
    const/16 v0, 0x870

    goto :goto_0

    :pswitch_28
    const/16 v0, 0x430

    goto :goto_0

    :pswitch_29
    move v0, v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_a
        :pswitch_9
        :pswitch_e
        :pswitch_d
        :pswitch_10
        :pswitch_10
        :pswitch_12
        :pswitch_13
        :pswitch_18
        :pswitch_18
        :pswitch_1d
        :pswitch_1d
        :pswitch_17
        :pswitch_1f
        :pswitch_21
        :pswitch_23
        :pswitch_0
        :pswitch_23
        :pswitch_24
        :pswitch_f
        :pswitch_11
        :pswitch_1b
        :pswitch_15
        :pswitch_14
        :pswitch_b
        :pswitch_16
        :pswitch_19
        :pswitch_1a
        :pswitch_20
        :pswitch_3
        :pswitch_17
        :pswitch_2
        :pswitch_8
        :pswitch_1f
        :pswitch_1e
        :pswitch_9
        :pswitch_25
        :pswitch_1c
        :pswitch_26
        :pswitch_27
        :pswitch_22
        :pswitch_17
        :pswitch_2
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_28
        :pswitch_1
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_29
        :pswitch_c
        :pswitch_d
        :pswitch_29
        :pswitch_6
    .end packed-switch
.end method

.method public static getIntWidth(I)I
    .locals 1

    const/16 v0, 0x780

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    :pswitch_1
    return v0

    :pswitch_2
    const/16 v0, 0x14c0

    goto :goto_0

    :pswitch_3
    const/16 v0, 0x1200

    goto :goto_0

    :pswitch_4
    const/16 v0, 0x1020

    goto :goto_0

    :pswitch_5
    const/16 v0, 0x1000

    goto :goto_0

    :pswitch_6
    const/16 v0, 0xf90

    goto :goto_0

    :pswitch_7
    const/16 v0, 0xd80

    goto :goto_0

    :pswitch_8
    const/16 v0, 0xcc0

    goto :goto_0

    :pswitch_9
    const/16 v0, 0xc18

    goto :goto_0

    :pswitch_a
    const/16 v0, 0xc00

    goto :goto_0

    :pswitch_b
    const/16 v0, 0xba0

    goto :goto_0

    :pswitch_c
    const/16 v0, 0xa20

    goto :goto_0

    :pswitch_d
    const/16 v0, 0xa10

    goto :goto_0

    :pswitch_e
    const/16 v0, 0xa00

    goto :goto_0

    :pswitch_f
    const/16 v0, 0x800

    goto :goto_0

    :pswitch_10
    const/16 v0, 0x660

    goto :goto_0

    :pswitch_11
    const/16 v0, 0x640

    goto :goto_0

    :pswitch_12
    const/16 v0, 0x600

    goto :goto_0

    :pswitch_13
    const/16 v0, 0x5a0

    goto :goto_0

    :pswitch_14
    const/16 v0, 0x570

    goto :goto_0

    :pswitch_15
    const/16 v0, 0x500

    goto :goto_0

    :pswitch_16
    const/16 v0, 0x4e0

    goto :goto_0

    :pswitch_17
    const/16 v0, 0x3c0

    goto :goto_0

    :pswitch_18
    const/16 v0, 0x320

    goto :goto_0

    :pswitch_19
    const/16 v0, 0x2d0

    goto :goto_0

    :pswitch_1a
    const/16 v0, 0x280

    goto :goto_0

    :pswitch_1b
    const/16 v0, 0x190

    goto :goto_0

    :pswitch_1c
    const/16 v0, 0x140

    goto :goto_0

    :pswitch_1d
    const/16 v0, 0xb0

    goto :goto_0

    :pswitch_1e
    const/16 v0, 0x400

    goto :goto_0

    :pswitch_1f
    const/16 v0, 0xf00

    goto :goto_0

    :pswitch_20
    const/16 v0, 0x430

    goto :goto_0

    :pswitch_21
    const/16 v0, 0x990

    goto :goto_0

    :pswitch_22
    const/16 v0, 0x440

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_8
        :pswitch_a
        :pswitch_a
        :pswitch_e
        :pswitch_e
        :pswitch_f
        :pswitch_f
        :pswitch_11
        :pswitch_11
        :pswitch_15
        :pswitch_1a
        :pswitch_18
        :pswitch_1
        :pswitch_15
        :pswitch_19
        :pswitch_1b
        :pswitch_0
        :pswitch_1c
        :pswitch_1d
        :pswitch_8
        :pswitch_e
        :pswitch_15
        :pswitch_f
        :pswitch_14
        :pswitch_c
        :pswitch_f
        :pswitch_10
        :pswitch_12
        :pswitch_16
        :pswitch_5
        :pswitch_13
        :pswitch_4
        :pswitch_4
        :pswitch_17
        :pswitch_18
        :pswitch_5
        :pswitch_1e
        :pswitch_17
        :pswitch_1e
        :pswitch_1f
        :pswitch_1a
        :pswitch_1
        :pswitch_9
        :pswitch_2
        :pswitch_6
        :pswitch_b
        :pswitch_20
        :pswitch_21
        :pswitch_3
        :pswitch_7
        :pswitch_c
        :pswitch_1
        :pswitch_d
        :pswitch_1
        :pswitch_13
        :pswitch_22
    .end packed-switch
.end method

.method public static getResolutionFullString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const-string v0, "176x144"

    :goto_0
    return-object v0

    :pswitch_1
    const-string v0, "w16.0M (5312x2988)"

    goto :goto_0

    :pswitch_2
    const-string v0, "13.0M (4128x3096)"

    goto :goto_0

    :pswitch_3
    const-string v0, "12M (4608x2592)"

    goto :goto_0

    :pswitch_4
    const-string v0, "12M (3984x2988)"

    goto :goto_0

    :pswitch_5
    const-string v0, "9M (3456x2592)"

    goto :goto_0

    :pswitch_6
    const-string v0, "9.6M (3096x3096)"

    goto :goto_0

    :pswitch_7
    const-string v0, "9M (2976x2976)"

    goto :goto_0

    :pswitch_8
    const-string v0, "w9.6M (4128x2322)"

    goto :goto_0

    :pswitch_9
    const-string v0, "13.0M (4096x3072)"

    goto :goto_0

    :pswitch_a
    const-string v0, "w9.4M (4096x2304)"

    goto :goto_0

    :pswitch_b
    const-string v0, "8.0M (3264x2448)"

    goto :goto_0

    :pswitch_c
    const-string v0, "w6.5M (3264x1968)"

    goto :goto_0

    :pswitch_d
    const-string v0, "w6.0M (3264x1836)"

    goto :goto_0

    :pswitch_e
    const-string v0, "7.1M (3072x2304)"

    goto :goto_0

    :pswitch_f
    const-string v0, "w5.7M (3072x1856)"

    goto :goto_0

    :pswitch_10
    const-string v0, "6.7M (2592x2592)"

    goto :goto_0

    :pswitch_11
    const-string v0, "5.1M (2592x1944)"

    goto :goto_0

    :pswitch_12
    const-string v0, "5.0M (2576x1932)"

    goto :goto_0

    :pswitch_13
    const-string v0, "5.0M (2560x1920)"

    goto :goto_0

    :pswitch_14
    const-string v0, "w4.0M (2560x1536)"

    goto :goto_0

    :pswitch_15
    const-string v0, "3.7M (1920x1920)"

    goto :goto_0

    :pswitch_16
    const-string v0, "w3.7M (2560x1440)"

    goto :goto_0

    :pswitch_17
    const-string v0, "3.0M (2048x1536)"

    goto :goto_0

    :pswitch_18
    const-string v0, "w2.6M (2048x1232)"

    goto :goto_0

    :pswitch_19
    const-string v0, "w2.4M (2048x1152)"

    goto :goto_0

    :pswitch_1a
    const-string v0, "w2.3M 2048x1104"

    goto :goto_0

    :pswitch_1b
    const-string v0, "w2.0M (1920x1080)"

    goto :goto_0

    :pswitch_1c
    const-string v0, "w1.5M (1632x880)"

    goto :goto_0

    :pswitch_1d
    const-string v0, "2.0M (1600x1200)"

    goto :goto_0

    :pswitch_1e
    const-string v0, "w1.6M (1600x960)"

    goto :goto_0

    :pswitch_1f
    const-string v0, "w1.4M 1536x864"

    goto :goto_0

    :pswitch_20
    const-string v0, "1.9M (1392x1392)"

    goto :goto_0

    :pswitch_21
    const-string v0, "1.6M (1440x1080)"

    goto :goto_0

    :pswitch_22
    const-string v0, "1.3M (1280x960)"

    goto :goto_0

    :pswitch_23
    const-string v0, "1.2M (1072x1072)"

    goto :goto_0

    :pswitch_24
    const-string v0, "w1.0M (1280x800)"

    goto :goto_0

    :pswitch_25
    const-string v0, "w0.5M (960x540)"

    goto :goto_0

    :pswitch_26
    const-string v0, "w0.4M (800x480)"

    goto :goto_0

    :pswitch_27
    const-string v0, "w0.4M (800x450)"

    goto :goto_0

    :pswitch_28
    const-string v0, "0.3M (640x480)"

    goto :goto_0

    :pswitch_29
    const-string v0, "w0.3M (640x360)"

    goto :goto_0

    :pswitch_2a
    const-string v0, "w0.8M (1248x672)"

    goto :goto_0

    :pswitch_2b
    const-string v0, "w0.9M (1280x720)"

    goto/16 :goto_0

    :pswitch_2c
    const-string v0, "0.7M (960x720)"

    goto/16 :goto_0

    :pswitch_2d
    const-string v0, "0.4M (720x480)"

    goto/16 :goto_0

    :pswitch_2e
    const-string v0, "400x240"

    goto/16 :goto_0

    :pswitch_2f
    const-string v0, "320x240"

    goto/16 :goto_0

    :pswitch_30
    const-string v0, "176x144"

    goto/16 :goto_0

    :pswitch_31
    const-string v0, "6.0M (2448x2448)"

    goto/16 :goto_0

    :pswitch_32
    const-string v0, "2.8M (1920x1440)"

    goto/16 :goto_0

    :pswitch_33
    const-string v0, "2.1M (1440x1440)"

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_c
        :pswitch_e
        :pswitch_f
        :pswitch_13
        :pswitch_14
        :pswitch_17
        :pswitch_18
        :pswitch_1d
        :pswitch_1e
        :pswitch_22
        :pswitch_28
        :pswitch_26
        :pswitch_1b
        :pswitch_2b
        :pswitch_2d
        :pswitch_2e
        :pswitch_0
        :pswitch_2f
        :pswitch_30
        :pswitch_d
        :pswitch_16
        :pswitch_24
        :pswitch_19
        :pswitch_20
        :pswitch_11
        :pswitch_1a
        :pswitch_1c
        :pswitch_1f
        :pswitch_2a
        :pswitch_9
        :pswitch_21
        :pswitch_2
        :pswitch_8
        :pswitch_2c
        :pswitch_27
        :pswitch_a
        :pswitch_0
        :pswitch_25
        :pswitch_0
        :pswitch_0
        :pswitch_29
        :pswitch_1b
        :pswitch_6
        :pswitch_1
        :pswitch_4
        :pswitch_7
        :pswitch_23
        :pswitch_31
        :pswitch_3
        :pswitch_5
        :pswitch_10
        :pswitch_32
        :pswitch_12
        :pswitch_15
        :pswitch_33
    .end packed-switch
.end method

.method public static getResolutionID(Ljava/lang/String;)I
    .locals 2

    const/16 v0, 0x23

    const-string v1, "4128x3096"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x20

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "5312x2988"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0x2c

    goto :goto_0

    :cond_2
    const-string v1, "4608x2592"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v0, 0x31

    goto :goto_0

    :cond_3
    const-string v1, "3984x2988"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v0, 0x2d

    goto :goto_0

    :cond_4
    const-string v1, "3456x2592"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v0, 0x32

    goto :goto_0

    :cond_5
    const-string v1, "2976x2976"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v0, 0x2e

    goto :goto_0

    :cond_6
    const-string v1, "1088x1088"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/16 v0, 0x38

    goto :goto_0

    :cond_7
    const-string v1, "3096x3096"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v0, 0x2b

    goto :goto_0

    :cond_8
    const-string v1, "4128x2322"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/16 v0, 0x21

    goto :goto_0

    :cond_9
    const-string v1, "4096x3072"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/16 v0, 0x1e

    goto :goto_0

    :cond_a
    const-string v1, "4096x2304"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/16 v0, 0x24

    goto :goto_0

    :cond_b
    const-string v1, "3264x2448"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v0, 0x0

    goto :goto_0

    :cond_c
    const-string v1, "3264x1968"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_d
    const-string v1, "3264x1836"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/16 v0, 0x14

    goto/16 :goto_0

    :cond_e
    const-string v1, "3072x2304"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v0, 0x2

    goto/16 :goto_0

    :cond_f
    const-string v1, "3072x1856"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v0, 0x3

    goto/16 :goto_0

    :cond_10
    const-string v1, "2592x2592"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    const/16 v0, 0x33

    goto/16 :goto_0

    :cond_11
    const-string v1, "2592x1944"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/16 v0, 0x19

    goto/16 :goto_0

    :cond_12
    const-string v1, "2576x1932"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    const/16 v0, 0x35

    goto/16 :goto_0

    :cond_13
    const-string v1, "2560x1920"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    const/4 v0, 0x4

    goto/16 :goto_0

    :cond_14
    const-string v1, "2560x1536"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    const/4 v0, 0x5

    goto/16 :goto_0

    :cond_15
    const-string v1, "1920x1920"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    const/16 v0, 0x36

    goto/16 :goto_0

    :cond_16
    const-string v1, "2560x1440"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    const/16 v0, 0x15

    goto/16 :goto_0

    :cond_17
    const-string v1, "2048x1536"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    const/4 v0, 0x6

    goto/16 :goto_0

    :cond_18
    const-string v1, "2048x1232"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    const/4 v0, 0x7

    goto/16 :goto_0

    :cond_19
    const-string v1, "2048x1152"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const/16 v0, 0x17

    goto/16 :goto_0

    :cond_1a
    const-string v1, "2048x1104"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    const/16 v0, 0x1a

    goto/16 :goto_0

    :cond_1b
    const-string v1, "1920x1080"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    const/16 v0, 0xd

    goto/16 :goto_0

    :cond_1c
    const-string v1, "1920x1080_60FPS"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    const/16 v0, 0x2a

    goto/16 :goto_0

    :cond_1d
    const-string v1, "1440x1080"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    const/16 v0, 0x1f

    goto/16 :goto_0

    :cond_1e
    const-string v1, "1632x880"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    const/16 v0, 0x1b

    goto/16 :goto_0

    :cond_1f
    const-string v1, "1600x1200"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    const/16 v0, 0x8

    goto/16 :goto_0

    :cond_20
    const-string v1, "1600x960"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    const/16 v0, 0x9

    goto/16 :goto_0

    :cond_21
    const-string v1, "1536x864"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    const/16 v0, 0x1c

    goto/16 :goto_0

    :cond_22
    const-string v1, "1392x1392"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    const/16 v0, 0x18

    goto/16 :goto_0

    :cond_23
    const-string v1, "1280x960"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    const/16 v0, 0xa

    goto/16 :goto_0

    :cond_24
    const-string v1, "960x720"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    const/16 v0, 0x22

    goto/16 :goto_0

    :cond_25
    const-string v1, "800x480"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    const/16 v0, 0xc

    goto/16 :goto_0

    :cond_26
    const-string v1, "800x450"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "640x480"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    const/16 v0, 0xb

    goto/16 :goto_0

    :cond_27
    const-string v1, "640x360"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    const/16 v0, 0x29

    goto/16 :goto_0

    :cond_28
    const-string v1, "1280x800"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    const/16 v0, 0x16

    goto/16 :goto_0

    :cond_29
    const-string v1, "1280x720"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    const/16 v0, 0xe

    goto/16 :goto_0

    :cond_2a
    const-string v1, "1248x672"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    const/16 v0, 0x1d

    goto/16 :goto_0

    :cond_2b
    const-string v1, "800x450"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "720x480"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    const/16 v0, 0xf

    goto/16 :goto_0

    :cond_2c
    const-string v0, "400x240"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    const/16 v0, 0x10

    goto/16 :goto_0

    :cond_2d
    const-string v0, "320x240"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    const/16 v0, 0x12

    goto/16 :goto_0

    :cond_2e
    const-string v0, "176x144"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    const/16 v0, 0x13

    goto/16 :goto_0

    :cond_2f
    const-string v0, "1024x768"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    const/16 v0, 0x25

    goto/16 :goto_0

    :cond_30
    const-string v0, "1024x576"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    const/16 v0, 0x27

    goto/16 :goto_0

    :cond_31
    const-string v0, "960x540"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    const/16 v0, 0x26

    goto/16 :goto_0

    :cond_32
    const-string v0, "3840x2160"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    const/16 v0, 0x28

    goto/16 :goto_0

    :cond_33
    const-string v0, "1072x1072"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    const/16 v0, 0x2f

    goto/16 :goto_0

    :cond_34
    const-string v0, "2448x2448"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    const/16 v0, 0x30

    goto/16 :goto_0

    :cond_35
    const-string v0, "1920x1440"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    const/16 v0, 0x34

    goto/16 :goto_0

    :cond_36
    const-string v0, "1440x1440"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    const/16 v0, 0x37

    goto/16 :goto_0

    :cond_37
    const/4 v0, -0x1

    goto/16 :goto_0
.end method

.method public static getResolutionString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const-string v0, "176x144"

    :goto_0
    return-object v0

    :pswitch_1
    const-string v0, "5312x2988"

    goto :goto_0

    :pswitch_2
    const-string v0, "4608x2592"

    goto :goto_0

    :pswitch_3
    const-string v0, "4128x3096"

    goto :goto_0

    :pswitch_4
    const-string v0, "3456x2592"

    goto :goto_0

    :pswitch_5
    const-string v0, "3096x3096"

    goto :goto_0

    :pswitch_6
    const-string v0, "4128x2322"

    goto :goto_0

    :pswitch_7
    const-string v0, "4096x3072"

    goto :goto_0

    :pswitch_8
    const-string v0, "4096x2304"

    goto :goto_0

    :pswitch_9
    const-string v0, "3984x2988"

    goto :goto_0

    :pswitch_a
    const-string v0, "3264x2448"

    goto :goto_0

    :pswitch_b
    const-string v0, "3264x1968"

    goto :goto_0

    :pswitch_c
    const-string v0, "3264x1836"

    goto :goto_0

    :pswitch_d
    const-string v0, "3072x2304"

    goto :goto_0

    :pswitch_e
    const-string v0, "3072x1856"

    goto :goto_0

    :pswitch_f
    const-string v0, "2976x2976"

    goto :goto_0

    :pswitch_10
    const-string v0, "1088x1088"

    goto :goto_0

    :pswitch_11
    const-string v0, "2592x2592"

    goto :goto_0

    :pswitch_12
    const-string v0, "2592x1944"

    goto :goto_0

    :pswitch_13
    const-string v0, "2576x1932"

    goto :goto_0

    :pswitch_14
    const-string v0, "2560x1920"

    goto :goto_0

    :pswitch_15
    const-string v0, "2560x1536"

    goto :goto_0

    :pswitch_16
    const-string v0, "1920x1920"

    goto :goto_0

    :pswitch_17
    const-string v0, "2560x1440"

    goto :goto_0

    :pswitch_18
    const-string v0, "2048x1536"

    goto :goto_0

    :pswitch_19
    const-string v0, "2048x1232"

    goto :goto_0

    :pswitch_1a
    const-string v0, "2048x1152"

    goto :goto_0

    :pswitch_1b
    const-string v0, "2048x1104"

    goto :goto_0

    :pswitch_1c
    const-string v0, "1920x1080"

    goto :goto_0

    :pswitch_1d
    const-string v0, "1632x880"

    goto :goto_0

    :pswitch_1e
    const-string v0, "1600x1200"

    goto :goto_0

    :pswitch_1f
    const-string v0, "1600x960"

    goto :goto_0

    :pswitch_20
    const-string v0, "1536x864"

    goto :goto_0

    :pswitch_21
    const-string v0, "1392x1392"

    goto :goto_0

    :pswitch_22
    const-string v0, "1440x1080"

    goto :goto_0

    :pswitch_23
    const-string v0, "1280x960"

    goto :goto_0

    :pswitch_24
    const-string v0, "1280x800"

    goto :goto_0

    :pswitch_25
    const-string v0, "960x540"

    goto :goto_0

    :pswitch_26
    const-string v0, "800x480"

    goto :goto_0

    :pswitch_27
    const-string v0, "800x450"

    goto :goto_0

    :pswitch_28
    const-string v0, "640x480"

    goto :goto_0

    :pswitch_29
    const-string v0, "640x360"

    goto :goto_0

    :pswitch_2a
    const-string v0, "1248x672"

    goto :goto_0

    :pswitch_2b
    const-string v0, "1280x720"

    goto/16 :goto_0

    :pswitch_2c
    const-string v0, "960x720"

    goto/16 :goto_0

    :pswitch_2d
    const-string v0, "720x480"

    goto/16 :goto_0

    :pswitch_2e
    const-string v0, "400x240"

    goto/16 :goto_0

    :pswitch_2f
    const-string v0, "320x240"

    goto/16 :goto_0

    :pswitch_30
    const-string v0, "176x144"

    goto/16 :goto_0

    :pswitch_31
    const-string v0, "1024x768"

    goto/16 :goto_0

    :pswitch_32
    const-string v0, "1024x576"

    goto/16 :goto_0

    :pswitch_33
    const-string v0, "3840x2160"

    goto/16 :goto_0

    :pswitch_34
    const-string v0, "1072x1072"

    goto/16 :goto_0

    :pswitch_35
    const-string v0, "2448x2448"

    goto/16 :goto_0

    :pswitch_36
    const-string v0, "1920x1440"

    goto/16 :goto_0

    :pswitch_37
    const-string v0, "1440x1440"

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_b
        :pswitch_d
        :pswitch_e
        :pswitch_14
        :pswitch_15
        :pswitch_18
        :pswitch_19
        :pswitch_1e
        :pswitch_1f
        :pswitch_23
        :pswitch_28
        :pswitch_26
        :pswitch_1c
        :pswitch_2b
        :pswitch_2d
        :pswitch_2e
        :pswitch_0
        :pswitch_2f
        :pswitch_30
        :pswitch_c
        :pswitch_17
        :pswitch_24
        :pswitch_1a
        :pswitch_21
        :pswitch_12
        :pswitch_1b
        :pswitch_1d
        :pswitch_20
        :pswitch_2a
        :pswitch_7
        :pswitch_22
        :pswitch_3
        :pswitch_6
        :pswitch_2c
        :pswitch_27
        :pswitch_8
        :pswitch_31
        :pswitch_25
        :pswitch_32
        :pswitch_33
        :pswitch_29
        :pswitch_1c
        :pswitch_5
        :pswitch_1
        :pswitch_9
        :pswitch_f
        :pswitch_34
        :pswitch_35
        :pswitch_2
        :pswitch_4
        :pswitch_11
        :pswitch_36
        :pswitch_13
        :pswitch_16
        :pswitch_37
        :pswitch_10
    .end packed-switch
.end method

.method public static isSquareResolution(I)Z
    .locals 1

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2b
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static isWideResolution(I)Z
    .locals 1

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
