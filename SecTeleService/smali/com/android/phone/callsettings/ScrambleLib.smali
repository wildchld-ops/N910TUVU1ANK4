.class public Lcom/android/phone/callsettings/ScrambleLib;
.super Ljava/lang/Object;
.source "ScrambleLib.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/callsettings/ScrambleLib$UUID;
    }
.end annotation


# instance fields
.field private lplpwScramleArray:[[I

.field private mBuffer:[B

.field private mContext:Landroid/content/Context;

.field private mDataLength:I

.field private mScrambleSize:I

.field private final myUUID:Lcom/android/phone/callsettings/ScrambleLib$UUID;

.field private nScrambleArraySize:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/android/phone/callsettings/ScrambleLib;->nScrambleArraySize:I

    const/16 v0, 0x10

    const/16 v1, 0x100

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lcom/android/phone/callsettings/ScrambleLib;->lplpwScramleArray:[[I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/callsettings/ScrambleLib;->mBuffer:[B

    iput v2, p0, Lcom/android/phone/callsettings/ScrambleLib;->mDataLength:I

    iput v2, p0, Lcom/android/phone/callsettings/ScrambleLib;->mScrambleSize:I

    new-instance v0, Lcom/android/phone/callsettings/ScrambleLib$UUID;

    invoke-direct {v0, p0}, Lcom/android/phone/callsettings/ScrambleLib$UUID;-><init>(Lcom/android/phone/callsettings/ScrambleLib;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/ScrambleLib;->myUUID:Lcom/android/phone/callsettings/ScrambleLib$UUID;

    iget-object v0, p0, Lcom/android/phone/callsettings/ScrambleLib;->myUUID:Lcom/android/phone/callsettings/ScrambleLib$UUID;

    invoke-virtual {v0}, Lcom/android/phone/callsettings/ScrambleLib$UUID;->UpdateUUID()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/android/phone/callsettings/ScrambleLib;->nScrambleArraySize:I

    const/16 v0, 0x10

    const/16 v1, 0x100

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lcom/android/phone/callsettings/ScrambleLib;->lplpwScramleArray:[[I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/callsettings/ScrambleLib;->mBuffer:[B

    iput v2, p0, Lcom/android/phone/callsettings/ScrambleLib;->mDataLength:I

    iput v2, p0, Lcom/android/phone/callsettings/ScrambleLib;->mScrambleSize:I

    iput-object p1, p0, Lcom/android/phone/callsettings/ScrambleLib;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/phone/callsettings/ScrambleLib$UUID;

    invoke-direct {v0, p0}, Lcom/android/phone/callsettings/ScrambleLib$UUID;-><init>(Lcom/android/phone/callsettings/ScrambleLib;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/ScrambleLib;->myUUID:Lcom/android/phone/callsettings/ScrambleLib$UUID;

    iget-object v0, p0, Lcom/android/phone/callsettings/ScrambleLib;->myUUID:Lcom/android/phone/callsettings/ScrambleLib$UUID;

    invoke-virtual {v0}, Lcom/android/phone/callsettings/ScrambleLib$UUID;->UpdateUUID()V

    return-void
.end method

.method public static final ByteToInt([B)I
    .locals 2
    .param p0    # [B

    const/4 v0, 0x0

    aget-byte v0, p0, v0

    shl-int/lit8 v0, v0, 0x18

    const/4 v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    const/4 v1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const/4 v1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method private InitScambleArray()V
    .locals 7

    const/4 v0, 0x0

    :goto_0
    const/16 v5, 0x10

    if-ge v0, v5, :cond_2

    const/4 v1, 0x0

    :goto_1
    iget v5, p0, Lcom/android/phone/callsettings/ScrambleLib;->mScrambleSize:I

    if-ge v1, v5, :cond_0

    iget-object v5, p0, Lcom/android/phone/callsettings/ScrambleLib;->lplpwScramleArray:[[I

    aget-object v5, v5, v0

    aput v1, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    new-instance v3, Ljava/util/Random;

    iget-object v5, p0, Lcom/android/phone/callsettings/ScrambleLib;->myUUID:Lcom/android/phone/callsettings/ScrambleLib$UUID;

    # getter for: Lcom/android/phone/callsettings/ScrambleLib$UUID;->Data3:I
    invoke-static {v5}, Lcom/android/phone/callsettings/ScrambleLib$UUID;->access$200(Lcom/android/phone/callsettings/ScrambleLib$UUID;)I

    move-result v5

    add-int/2addr v5, v0

    const v6, 0x186a0

    rem-int/2addr v5, v6

    int-to-long v5, v5

    invoke-direct {v3, v5, v6}, Ljava/util/Random;-><init>(J)V

    const/4 v1, 0x0

    :goto_2
    iget v5, p0, Lcom/android/phone/callsettings/ScrambleLib;->mScrambleSize:I

    if-ge v1, v5, :cond_1

    iget v5, p0, Lcom/android/phone/callsettings/ScrambleLib;->mScrambleSize:I

    invoke-virtual {v3, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    iget-object v5, p0, Lcom/android/phone/callsettings/ScrambleLib;->lplpwScramleArray:[[I

    aget-object v5, v5, v0

    aget v4, v5, v1

    iget-object v5, p0, Lcom/android/phone/callsettings/ScrambleLib;->lplpwScramleArray:[[I

    aget-object v5, v5, v0

    iget-object v6, p0, Lcom/android/phone/callsettings/ScrambleLib;->lplpwScramleArray:[[I

    aget-object v6, v6, v0

    aget v6, v6, v2

    aput v6, v5, v1

    iget-object v5, p0, Lcom/android/phone/callsettings/ScrambleLib;->lplpwScramleArray:[[I

    aget-object v5, v5, v0

    aput v4, v5, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget v5, p0, Lcom/android/phone/callsettings/ScrambleLib;->mScrambleSize:I

    iput v5, p0, Lcom/android/phone/callsettings/ScrambleLib;->nScrambleArraySize:I

    return-void
.end method

.method public static final IntToByte(I)[B
    .locals 3
    .param p0    # I

    const/4 v0, 0x4

    new-array v0, v0, [B

    const/4 v1, 0x0

    shr-int/lit8 v2, p0, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    shr-int/lit8 v2, p0, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    shr-int/lit8 v2, p0, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    int-to-byte v2, p0

    aput-byte v2, v0, v1

    return-object v0
.end method

.method static synthetic access$000(Lcom/android/phone/callsettings/ScrambleLib;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/phone/callsettings/ScrambleLib;

    iget-object v0, p0, Lcom/android/phone/callsettings/ScrambleLib;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/callsettings/ScrambleLib;)Lcom/android/phone/callsettings/ScrambleLib$UUID;
    .locals 1
    .param p0    # Lcom/android/phone/callsettings/ScrambleLib;

    iget-object v0, p0, Lcom/android/phone/callsettings/ScrambleLib;->myUUID:Lcom/android/phone/callsettings/ScrambleLib$UUID;

    return-object v0
.end method


# virtual methods
.method public decode()Z
    .locals 14

    const/4 v13, 0x4

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/high16 v12, -0x80000000

    iget v9, p0, Lcom/android/phone/callsettings/ScrambleLib;->mDataLength:I

    iget v10, p0, Lcom/android/phone/callsettings/ScrambleLib;->mScrambleSize:I

    if-ge v9, v10, :cond_0

    :goto_0
    return v7

    :cond_0
    iget v9, p0, Lcom/android/phone/callsettings/ScrambleLib;->mDataLength:I

    add-int/lit8 v9, v9, 0x11

    rem-int/lit8 v5, v9, 0x20

    const/4 v3, 0x0

    :goto_1
    iget v9, p0, Lcom/android/phone/callsettings/ScrambleLib;->mScrambleSize:I

    div-int/lit8 v9, v9, 0x4

    if-ge v3, v9, :cond_6

    mul-int/lit8 v6, v3, 0x4

    new-array v1, v13, [B

    iget-object v9, p0, Lcom/android/phone/callsettings/ScrambleLib;->mBuffer:[B

    aget-byte v9, v9, v6

    aput-byte v9, v1, v7

    iget-object v9, p0, Lcom/android/phone/callsettings/ScrambleLib;->mBuffer:[B

    add-int/lit8 v10, v6, 0x1

    aget-byte v9, v9, v10

    aput-byte v9, v1, v8

    const/4 v9, 0x2

    iget-object v10, p0, Lcom/android/phone/callsettings/ScrambleLib;->mBuffer:[B

    add-int/lit8 v11, v6, 0x2

    aget-byte v10, v10, v11

    aput-byte v10, v1, v9

    const/4 v9, 0x3

    iget-object v10, p0, Lcom/android/phone/callsettings/ScrambleLib;->mBuffer:[B

    add-int/lit8 v11, v6, 0x3

    aget-byte v10, v10, v11

    aput-byte v10, v1, v9

    invoke-static {v1}, Lcom/android/phone/callsettings/ScrambleLib;->ByteToInt([B)I

    move-result v2

    xor-int/lit16 v2, v2, 0x1732

    const/16 v9, 0x10

    if-lt v5, v9, :cond_2

    const/4 v4, 0x0

    :goto_2
    rsub-int/lit8 v9, v5, 0x20

    if-ge v4, v9, :cond_4

    and-int v9, v12, v2

    if-eqz v9, :cond_1

    shl-int/lit8 v9, v2, 0x1

    or-int/lit8 v2, v9, 0x1

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_1
    shl-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_2
    const/4 v4, 0x0

    :goto_4
    if-ge v4, v5, :cond_4

    and-int/lit8 v9, v2, 0x1

    if-eqz v9, :cond_3

    ushr-int/lit8 v9, v2, 0x1

    or-int v2, v9, v12

    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_3
    ushr-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_4
    invoke-static {v2}, Lcom/android/phone/callsettings/ScrambleLib;->IntToByte(I)[B

    move-result-object v1

    const/4 v4, 0x0

    :goto_6
    if-ge v4, v13, :cond_5

    iget-object v9, p0, Lcom/android/phone/callsettings/ScrambleLib;->mBuffer:[B

    add-int v10, v6, v4

    aget-byte v11, v1, v4

    aput-byte v11, v9, v10

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    const/4 v3, 0x0

    :goto_7
    iget v7, p0, Lcom/android/phone/callsettings/ScrambleLib;->mScrambleSize:I

    if-ge v3, v7, :cond_7

    iget-object v7, p0, Lcom/android/phone/callsettings/ScrambleLib;->mBuffer:[B

    iget v9, p0, Lcom/android/phone/callsettings/ScrambleLib;->mScrambleSize:I

    add-int/lit8 v9, v9, -0x1

    sub-int/2addr v9, v3

    aget-byte v0, v7, v9

    iget-object v7, p0, Lcom/android/phone/callsettings/ScrambleLib;->mBuffer:[B

    iget v9, p0, Lcom/android/phone/callsettings/ScrambleLib;->mScrambleSize:I

    add-int/lit8 v9, v9, -0x1

    sub-int/2addr v9, v3

    iget-object v10, p0, Lcom/android/phone/callsettings/ScrambleLib;->mBuffer:[B

    iget-object v11, p0, Lcom/android/phone/callsettings/ScrambleLib;->lplpwScramleArray:[[I

    iget v12, p0, Lcom/android/phone/callsettings/ScrambleLib;->mDataLength:I

    add-int/lit8 v12, v12, 0x11

    rem-int/lit8 v12, v12, 0x10

    aget-object v11, v11, v12

    iget v12, p0, Lcom/android/phone/callsettings/ScrambleLib;->mScrambleSize:I

    add-int/lit8 v12, v12, -0x1

    sub-int/2addr v12, v3

    aget v11, v11, v12

    aget-byte v10, v10, v11

    aput-byte v10, v7, v9

    iget-object v7, p0, Lcom/android/phone/callsettings/ScrambleLib;->mBuffer:[B

    iget-object v9, p0, Lcom/android/phone/callsettings/ScrambleLib;->lplpwScramleArray:[[I

    iget v10, p0, Lcom/android/phone/callsettings/ScrambleLib;->mDataLength:I

    add-int/lit8 v10, v10, 0x11

    rem-int/lit8 v10, v10, 0x10

    aget-object v9, v9, v10

    iget v10, p0, Lcom/android/phone/callsettings/ScrambleLib;->mScrambleSize:I

    add-int/lit8 v10, v10, -0x1

    sub-int/2addr v10, v3

    aget v9, v9, v10

    aput-byte v0, v7, v9

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_7
    move v7, v8

    goto/16 :goto_0
.end method

.method public setScrambleData([BII)V
    .locals 2
    .param p1    # [B
    .param p2    # I
    .param p3    # I

    iput-object p1, p0, Lcom/android/phone/callsettings/ScrambleLib;->mBuffer:[B

    iput p2, p0, Lcom/android/phone/callsettings/ScrambleLib;->mDataLength:I

    iput p3, p0, Lcom/android/phone/callsettings/ScrambleLib;->mScrambleSize:I

    iget v0, p0, Lcom/android/phone/callsettings/ScrambleLib;->nScrambleArraySize:I

    iget v1, p0, Lcom/android/phone/callsettings/ScrambleLib;->mScrambleSize:I

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/phone/callsettings/ScrambleLib;->InitScambleArray()V

    :cond_0
    return-void
.end method
