.class public Lcom/sec/android/vector/RightSideData;
.super Ljava/lang/Object;
.source "RightSideData.java"

# interfaces
.implements Lcom/sec/android/vector/IRenderData;


# static fields
.field private static final mDRAW_PATH_TYPE:[Lcom/sec/android/vector/DRAW_PATH_TYPE;

.field private static final mForwardParams:[[[F

.field private static final mFromColor:[I

.field private static final mFromParams:[[[F

.field private static final mToColor:[I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v0, 0x6

    new-array v0, v0, [[[F

    new-array v1, v6, [[F

    new-array v2, v4, [F

    fill-array-data v2, :array_0

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    new-array v1, v7, [[F

    new-array v2, v4, [F

    fill-array-data v2, :array_1

    aput-object v2, v1, v5

    new-array v2, v4, [F

    fill-array-data v2, :array_2

    aput-object v2, v1, v6

    new-array v2, v4, [F

    fill-array-data v2, :array_3

    aput-object v2, v1, v4

    aput-object v1, v0, v6

    new-array v1, v7, [[F

    new-array v2, v4, [F

    fill-array-data v2, :array_4

    aput-object v2, v1, v5

    new-array v2, v4, [F

    fill-array-data v2, :array_5

    aput-object v2, v1, v6

    new-array v2, v4, [F

    fill-array-data v2, :array_6

    aput-object v2, v1, v4

    aput-object v1, v0, v4

    new-array v1, v7, [[F

    new-array v2, v4, [F

    fill-array-data v2, :array_7

    aput-object v2, v1, v5

    new-array v2, v4, [F

    fill-array-data v2, :array_8

    aput-object v2, v1, v6

    new-array v2, v4, [F

    fill-array-data v2, :array_9

    aput-object v2, v1, v4

    aput-object v1, v0, v7

    new-array v1, v7, [[F

    new-array v2, v4, [F

    fill-array-data v2, :array_a

    aput-object v2, v1, v5

    new-array v2, v4, [F

    fill-array-data v2, :array_b

    aput-object v2, v1, v6

    new-array v2, v4, [F

    fill-array-data v2, :array_c

    aput-object v2, v1, v4

    aput-object v1, v0, v8

    const/4 v1, 0x5

    new-array v2, v6, [[F

    new-array v3, v4, [F

    fill-array-data v3, :array_d

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/vector/RightSideData;->mFromParams:[[[F

    const/4 v0, 0x6

    new-array v0, v0, [[[F

    new-array v1, v6, [[F

    new-array v2, v4, [F

    fill-array-data v2, :array_e

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    new-array v1, v7, [[F

    new-array v2, v4, [F

    fill-array-data v2, :array_f

    aput-object v2, v1, v5

    new-array v2, v4, [F

    fill-array-data v2, :array_10

    aput-object v2, v1, v6

    new-array v2, v4, [F

    fill-array-data v2, :array_11

    aput-object v2, v1, v4

    aput-object v1, v0, v6

    new-array v1, v7, [[F

    new-array v2, v4, [F

    fill-array-data v2, :array_12

    aput-object v2, v1, v5

    new-array v2, v4, [F

    fill-array-data v2, :array_13

    aput-object v2, v1, v6

    new-array v2, v4, [F

    fill-array-data v2, :array_14

    aput-object v2, v1, v4

    aput-object v1, v0, v4

    new-array v1, v7, [[F

    new-array v2, v4, [F

    fill-array-data v2, :array_15

    aput-object v2, v1, v5

    new-array v2, v4, [F

    fill-array-data v2, :array_16

    aput-object v2, v1, v6

    new-array v2, v4, [F

    fill-array-data v2, :array_17

    aput-object v2, v1, v4

    aput-object v1, v0, v7

    new-array v1, v7, [[F

    new-array v2, v4, [F

    fill-array-data v2, :array_18

    aput-object v2, v1, v5

    new-array v2, v4, [F

    fill-array-data v2, :array_19

    aput-object v2, v1, v6

    new-array v2, v4, [F

    fill-array-data v2, :array_1a

    aput-object v2, v1, v4

    aput-object v1, v0, v8

    const/4 v1, 0x5

    new-array v2, v6, [[F

    new-array v3, v4, [F

    fill-array-data v3, :array_1b

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/vector/RightSideData;->mForwardParams:[[[F

    new-array v0, v8, [I

    fill-array-data v0, :array_1c

    sput-object v0, Lcom/sec/android/vector/RightSideData;->mFromColor:[I

    new-array v0, v8, [I

    fill-array-data v0, :array_1d

    sput-object v0, Lcom/sec/android/vector/RightSideData;->mToColor:[I

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/sec/android/vector/DRAW_PATH_TYPE;

    sget-object v1, Lcom/sec/android/vector/DRAW_PATH_TYPE;->moveTo:Lcom/sec/android/vector/DRAW_PATH_TYPE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sec/android/vector/DRAW_PATH_TYPE;->cubicTo:Lcom/sec/android/vector/DRAW_PATH_TYPE;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sec/android/vector/DRAW_PATH_TYPE;->cubicTo:Lcom/sec/android/vector/DRAW_PATH_TYPE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/android/vector/DRAW_PATH_TYPE;->cubicTo:Lcom/sec/android/vector/DRAW_PATH_TYPE;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sec/android/vector/DRAW_PATH_TYPE;->cubicTo:Lcom/sec/android/vector/DRAW_PATH_TYPE;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/sec/android/vector/DRAW_PATH_TYPE;->lineTo:Lcom/sec/android/vector/DRAW_PATH_TYPE;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/vector/RightSideData;->mDRAW_PATH_TYPE:[Lcom/sec/android/vector/DRAW_PATH_TYPE;

    return-void

    :array_0
    .array-data 4
        0x4316cccd
        0x42ac6666
    .end array-data

    :array_1
    .array-data 4
        0x4329cccd
        0x42ac6666
    .end array-data

    :array_2
    .array-data 4
        0x433acccd
        0x42bd999a
    .end array-data

    :array_3
    .array-data 4
        0x43460000
        0x42d8cccd
    .end array-data

    :array_4
    .array-data 4
        0x434e999a
        0x42ee0000
    .end array-data

    :array_5
    .array-data 4
        0x4353cccd
        0x43048000
    .end array-data

    :array_6
    .array-data 4
        0x4353cccd
        0x43133333
    .end array-data

    :array_7
    .array-data 4
        0x4353cccd
        0x43233333
    .end array-data

    :array_8
    .array-data 4
        0x434d999a
        0x4331e666
    .end array-data

    :array_9
    .array-data 4
        0x43438000
        0x433ccccd
    .end array-data

    :array_a
    .array-data 4
        0x43384ccd
        0x4348b333
    .end array-data

    :array_b
    .array-data 4
        0x43288000
        0x43503333
    .end array-data

    :array_c
    .array-data 4
        0x4316cccd
        0x43503333
    .end array-data

    :array_d
    .array-data 4
        0x4316cccd
        0x42ac6666
    .end array-data

    :array_e
    .array-data 4
        0x43258000
        0x42c06666
    .end array-data

    :array_f
    .array-data 4
        0x43258000
        0x42c06666
    .end array-data

    :array_10
    .array-data 4
        0x43258000
        0x42c06666
    .end array-data

    :array_11
    .array-data 4
        0x43480000
        0x42c06666
    .end array-data

    :array_12
    .array-data 4
        0x43480000
        0x42c06666
    .end array-data

    :array_13
    .array-data 4
        0x43480000
        0x42c06666
    .end array-data

    :array_14
    .array-data 4
        0x43480000
        0x43153333
    .end array-data

    :array_15
    .array-data 4
        0x43480000
        0x43153333
    .end array-data

    :array_16
    .array-data 4
        0x43480000
        0x43153333
    .end array-data

    :array_17
    .array-data 4
        0x43480000
        0x43483333
    .end array-data

    :array_18
    .array-data 4
        0x43480000
        0x43483333
    .end array-data

    :array_19
    .array-data 4
        0x43480000
        0x43483333
    .end array-data

    :array_1a
    .array-data 4
        0x43258000
        0x43483333
    .end array-data

    :array_1b
    .array-data 4
        0x43258000
        0x43483333
    .end array-data

    :array_1c
    .array-data 4
        0xbf
        0x3c
        0x41
        0xff
    .end array-data

    :array_1d
    .array-data 4
        0xe4
        0xe4
        0xe4
        0xff
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getToForwardParams()[[[F
    .locals 1

    sget-object v0, Lcom/sec/android/vector/RightSideData;->mForwardParams:[[[F

    return-object v0
.end method


# virtual methods
.method public getCommands()[Lcom/sec/android/vector/DRAW_PATH_TYPE;
    .locals 1

    sget-object v0, Lcom/sec/android/vector/RightSideData;->mDRAW_PATH_TYPE:[Lcom/sec/android/vector/DRAW_PATH_TYPE;

    return-object v0
.end method

.method public getFromColor()[I
    .locals 1

    sget-object v0, Lcom/sec/android/vector/RightSideData;->mFromColor:[I

    return-object v0
.end method

.method public getFromParams()[[[F
    .locals 1

    sget-object v0, Lcom/sec/android/vector/RightSideData;->mFromParams:[[[F

    return-object v0
.end method

.method public getToColor()[I
    .locals 1

    sget-object v0, Lcom/sec/android/vector/RightSideData;->mToColor:[I

    return-object v0
.end method

.method public getToParams()[[[F
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/vector/RightSideData;->getToForwardParams()[[[F

    move-result-object v0

    return-object v0
.end method
