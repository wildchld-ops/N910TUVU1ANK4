.class public Lcom/sec/android/vector/CamcorderData;
.super Ljava/lang/Object;
.source "CamcorderData.java"

# interfaces
.implements Lcom/sec/android/vector/IRenderData;


# static fields
.field private static final mDRAW_PATH_TYPE:[Lcom/sec/android/vector/DRAW_PATH_TYPE;

.field private static final mFromColor:[I

.field private static final mFromParams:[[[F

.field private static final mToColor:[I

.field private static final mToParams:[[[F


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x3

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v0, 0x9

    new-array v0, v0, [[[F

    new-array v1, v5, [[F

    new-array v2, v6, [F

    fill-array-data v2, :array_0

    aput-object v2, v1, v4

    aput-object v1, v0, v4

    new-array v1, v5, [[F

    new-array v2, v6, [F

    fill-array-data v2, :array_1

    aput-object v2, v1, v4

    aput-object v1, v0, v5

    new-array v1, v5, [[F

    new-array v2, v6, [F

    fill-array-data v2, :array_2

    aput-object v2, v1, v4

    aput-object v1, v0, v6

    new-array v1, v5, [[F

    new-array v2, v6, [F

    fill-array-data v2, :array_3

    aput-object v2, v1, v4

    aput-object v1, v0, v8

    new-array v1, v5, [[F

    new-array v2, v6, [F

    fill-array-data v2, :array_4

    aput-object v2, v1, v4

    aput-object v1, v0, v7

    const/4 v1, 0x5

    new-array v2, v5, [[F

    new-array v3, v6, [F

    fill-array-data v3, :array_5

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v5, [[F

    new-array v3, v6, [F

    fill-array-data v3, :array_6

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v5, [[F

    new-array v3, v6, [F

    fill-array-data v3, :array_7

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v5, [[F

    new-array v3, v6, [F

    fill-array-data v3, :array_8

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/vector/CamcorderData;->mFromParams:[[[F

    const/16 v0, 0x9

    new-array v0, v0, [[[F

    new-array v1, v5, [[F

    new-array v2, v6, [F

    fill-array-data v2, :array_9

    aput-object v2, v1, v4

    aput-object v1, v0, v4

    new-array v1, v5, [[F

    new-array v2, v6, [F

    fill-array-data v2, :array_a

    aput-object v2, v1, v4

    aput-object v1, v0, v5

    new-array v1, v5, [[F

    new-array v2, v6, [F

    fill-array-data v2, :array_b

    aput-object v2, v1, v4

    aput-object v1, v0, v6

    new-array v1, v5, [[F

    new-array v2, v6, [F

    fill-array-data v2, :array_c

    aput-object v2, v1, v4

    aput-object v1, v0, v8

    new-array v1, v5, [[F

    new-array v2, v6, [F

    fill-array-data v2, :array_d

    aput-object v2, v1, v4

    aput-object v1, v0, v7

    const/4 v1, 0x5

    new-array v2, v5, [[F

    new-array v3, v6, [F

    fill-array-data v3, :array_e

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v5, [[F

    new-array v3, v6, [F

    fill-array-data v3, :array_f

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v5, [[F

    new-array v3, v6, [F

    fill-array-data v3, :array_10

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v5, [[F

    new-array v3, v6, [F

    fill-array-data v3, :array_11

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/vector/CamcorderData;->mToParams:[[[F

    new-array v0, v7, [I

    fill-array-data v0, :array_12

    sput-object v0, Lcom/sec/android/vector/CamcorderData;->mFromColor:[I

    new-array v0, v7, [I

    fill-array-data v0, :array_13

    sput-object v0, Lcom/sec/android/vector/CamcorderData;->mToColor:[I

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/sec/android/vector/DRAW_PATH_TYPE;

    sget-object v1, Lcom/sec/android/vector/DRAW_PATH_TYPE;->moveTo:Lcom/sec/android/vector/DRAW_PATH_TYPE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/android/vector/DRAW_PATH_TYPE;->lineTo:Lcom/sec/android/vector/DRAW_PATH_TYPE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sec/android/vector/DRAW_PATH_TYPE;->lineTo:Lcom/sec/android/vector/DRAW_PATH_TYPE;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sec/android/vector/DRAW_PATH_TYPE;->lineTo:Lcom/sec/android/vector/DRAW_PATH_TYPE;

    aput-object v1, v0, v8

    sget-object v1, Lcom/sec/android/vector/DRAW_PATH_TYPE;->lineTo:Lcom/sec/android/vector/DRAW_PATH_TYPE;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/sec/android/vector/DRAW_PATH_TYPE;->lineTo:Lcom/sec/android/vector/DRAW_PATH_TYPE;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sec/android/vector/DRAW_PATH_TYPE;->lineTo:Lcom/sec/android/vector/DRAW_PATH_TYPE;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sec/android/vector/DRAW_PATH_TYPE;->lineTo:Lcom/sec/android/vector/DRAW_PATH_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/sec/android/vector/DRAW_PATH_TYPE;->lineTo:Lcom/sec/android/vector/DRAW_PATH_TYPE;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/vector/CamcorderData;->mDRAW_PATH_TYPE:[Lcom/sec/android/vector/DRAW_PATH_TYPE;

    return-void

    nop

    :array_0
    .array-data 4
        0x429b0000
        0x42df0000
    .end array-data

    :array_1
    .array-data 4
        0x43338000
        0x42df0000
    .end array-data

    :array_2
    .array-data 4
        0x43338000
        0x430ecccd
    .end array-data

    :array_3
    .array-data 4
        0x435d8000
        0x42e9999a
    .end array-data

    :array_4
    .array-data 4
        0x435d8000
        0x43383333
    .end array-data

    :array_5
    .array-data 4
        0x4332cccd
        0x43223333
    .end array-data

    :array_6
    .array-data 4
        0x4332cccd
        0x433c3333
    .end array-data

    :array_7
    .array-data 4
        0x429b0000
        0x433c3333
    .end array-data

    :array_8
    .array-data 4
        0x429b0000
        0x42df0000
    .end array-data

    :array_9
    .array-data 4
        0x42cd999a
        0x42d06666
    .end array-data

    :array_a
    .array-data 4
        0x43453333
        0x42d06666
    .end array-data

    :array_b
    .array-data 4
        0x43453333
        0x42f86666
    .end array-data

    :array_c
    .array-data 4
        0x43453333
        0x430ecccd
    .end array-data

    :array_d
    .array-data 4
        0x43453333
        0x43203333
    .end array-data

    :array_e
    .array-data 4
        0x43453333
        0x43343333
    .end array-data

    :array_f
    .array-data 4
        0x43453333
        0x4347cccd
    .end array-data

    :array_10
    .array-data 4
        0x42cd999a
        0x4347cccd
    .end array-data

    :array_11
    .array-data 4
        0x42cd999a
        0x42d06666
    .end array-data

    :array_12
    .array-data 4
        0xff
        0xff
        0xff
        0xff
    .end array-data

    :array_13
    .array-data 4
        0xff
        0xff
        0xff
        0xff
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCommands()[Lcom/sec/android/vector/DRAW_PATH_TYPE;
    .locals 1

    sget-object v0, Lcom/sec/android/vector/CamcorderData;->mDRAW_PATH_TYPE:[Lcom/sec/android/vector/DRAW_PATH_TYPE;

    return-object v0
.end method

.method public getFromColor()[I
    .locals 1

    sget-object v0, Lcom/sec/android/vector/CamcorderData;->mFromColor:[I

    return-object v0
.end method

.method public getFromParams()[[[F
    .locals 1

    sget-object v0, Lcom/sec/android/vector/CamcorderData;->mFromParams:[[[F

    return-object v0
.end method

.method public getToColor()[I
    .locals 1

    sget-object v0, Lcom/sec/android/vector/CamcorderData;->mToColor:[I

    return-object v0
.end method

.method public getToParams()[[[F
    .locals 1

    sget-object v0, Lcom/sec/android/vector/CamcorderData;->mToParams:[[[F

    return-object v0
.end method
