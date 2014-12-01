.class public Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;
.super Ljava/lang/Object;
.source "ContextAwareLanguageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$PreferredLanguage;,
        Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$PreferredLanguageSet;,
        Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;
    }
.end annotation


# static fields
.field private static mInstance:Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;


# instance fields
.field private final CACHE_MAX_SIZE:I

.field private final CHECKSUM:B

.field private final CLM_MODE_CSL:I

.field private final CLM_MODE_NONE:I

.field private final CSL_DB:Ljava/lang/String;

.field private final DB_DIR:Ljava/lang/String;

.field private final FILE_MAX_SIZE:I

.field private final HEADER_SIZE:I

.field private final INT_BYTE_SIZE:I

.field private final LIMITATION_PREFERENCE:I

.field private final LONG_BYTE_SIZE:I

.field private final NOT_USE_SUBITEM:B

.field private final NUMBER_OF_PREFERRED_LANGUAGE:I

.field private final PLANG_DATA_LENGTH:I

.field private final SUBKEY_SIZE:I

.field private final TAG:Ljava/lang/String;

.field private final USE_SUBITEM:B

.field private mCSLCount:I

.field private mCSLMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;",
            ">;"
        }
    .end annotation
.end field

.field private mCSLTotalSize:I

.field private mCacheCSLMap:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$PreferredLanguage;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentLanguageData:Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;

.field private mCurrentMode:I

.field private mDir:Ljava/io/File;

.field private mDirtyIndex:I

.field private final mIndexComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;",
            ">;"
        }
    .end annotation
.end field

.field private mInitializedMode:I

.field private mIsUseContextAwareLanguage:Z

.field private final mTimeStampComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mInstance:Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ContextAwareLanguageManager"

    iput-object v0, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->TAG:Ljava/lang/String;

    const-string v0, "lang"

    iput-object v0, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->DB_DIR:Ljava/lang/String;

    const-string v0, "csl.db"

    iput-object v0, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->CSL_DB:Ljava/lang/String;

    iput v3, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->NUMBER_OF_PREFERRED_LANGUAGE:I

    const/16 v0, 0xe

    iput v0, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->HEADER_SIZE:I

    iput v4, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->SUBKEY_SIZE:I

    const/16 v0, 0xf

    iput v0, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->PLANG_DATA_LENGTH:I

    const/high16 v0, 0x20000

    iput v0, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->FILE_MAX_SIZE:I

    iput v3, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->LIMITATION_PREFERENCE:I

    const/16 v0, -0x7f

    iput-byte v0, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->CHECKSUM:B

    iput-byte v1, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->NOT_USE_SUBITEM:B

    iput-byte v2, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->USE_SUBITEM:B

    iput v4, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->INT_BYTE_SIZE:I

    const/16 v0, 0x8

    iput v0, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->LONG_BYTE_SIZE:I

    const/16 v0, 0x14

    iput v0, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->CACHE_MAX_SIZE:I

    iput v1, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->CLM_MODE_NONE:I

    iput v2, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->CLM_MODE_CSL:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mCSLMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mCacheCSLMap:Ljava/util/LinkedList;

    iput-object v5, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mDir:Ljava/io/File;

    iput v1, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mCSLTotalSize:I

    iput v1, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mCSLCount:I

    iput-object v5, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mCurrentLanguageData:Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;

    iput-boolean v1, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mIsUseContextAwareLanguage:Z

    iput v1, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mInitializedMode:I

    iput v1, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mCurrentMode:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mDirtyIndex:I

    new-instance v0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$1;

    invoke-direct {v0, p0}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$1;-><init>(Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;)V

    iput-object v0, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mComparator:Ljava/util/Comparator;

    new-instance v0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$2;

    invoke-direct {v0, p0}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$2;-><init>(Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;)V

    iput-object v0, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mTimeStampComparator:Ljava/util/Comparator;

    new-instance v0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$3;

    invoke-direct {v0, p0}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$3;-><init>(Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;)V

    iput-object v0, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mIndexComparator:Ljava/util/Comparator;

    invoke-direct {p0}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;)Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mDir:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$100(Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;Ljava/io/File;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->loadDb(Ljava/io/File;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->saveCSL()V

    return-void
.end method

.method static synthetic access$300(Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;IZ)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->getTotalLanguageDataLength(IZ)I

    move-result v0

    return v0
.end method

.method static synthetic access$402(Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;I)I
    .locals 0

    iput p1, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mDirtyIndex:I

    return p1
.end method

.method static synthetic access$500(Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;)Ljava/util/Comparator;
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mComparator:Ljava/util/Comparator;

    return-object v0
.end method

.method private addCSLData([BIZIJ)V
    .locals 3

    if-eqz p1, :cond_0

    array-length v1, p1

    const/4 v2, 0x0

    invoke-direct {p0, p4, v2}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->getTotalLanguageDataLength(IZ)I

    move-result v2

    if-ge v1, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct/range {p0 .. p6}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->decodeData([BIZIJ)Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mCSLMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private addLanguageDataInCache(Ljava/util/LinkedList;Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;",
            ">;>;",
            "Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/util/Pair;

    invoke-virtual {p2}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v1, 0x14

    if-le v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    goto :goto_0
.end method

.method private byteArrayToInteger([BI)I
    .locals 7

    const/4 v6, 0x4

    const/4 v3, 0x4

    if-eqz p1, :cond_0

    array-length v4, p1

    if-lt v4, v6, :cond_0

    array-length v4, p1

    add-int/lit8 v5, p2, 0x4

    if-ge v4, v5, :cond_1

    :cond_0
    const/4 v4, -0x1

    :goto_0
    return v4

    :cond_1
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    new-array v2, v6, [B

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v6, :cond_2

    add-int v4, v1, p2

    aget-byte v4, p1, v4

    aput-byte v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    goto :goto_0
.end method

.method private byteArrayToLong([BI)Ljava/lang/Long;
    .locals 7

    const/16 v6, 0x8

    const/16 v3, 0x8

    if-eqz p1, :cond_0

    array-length v4, p1

    if-lt v4, v6, :cond_0

    array-length v4, p1

    add-int/lit8 v5, p2, 0x8

    if-ge v4, v5, :cond_1

    :cond_0
    const-wide/16 v4, -0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    :goto_0
    return-object v4

    :cond_1
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    new-array v2, v6, [B

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v6, :cond_2

    add-int v4, v1, p2

    aget-byte v4, p1, v4

    aput-byte v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    goto :goto_0
.end method

.method private checkSumData([B)Z
    .locals 2

    if-eqz p1, :cond_0

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aget-byte v0, p1, v0

    const/16 v1, -0x7f

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private decodeData([BIZIJ)Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;
    .locals 22

    if-nez p1, :cond_0

    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_0
    const/4 v15, 0x0

    move-object/from16 v0, p1

    array-length v3, v0

    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->getTotalLanguageDataLength(IZ)I

    move-result v4

    sub-int v18, v3, v4

    new-instance v6, Ljava/lang/String;

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-direct {v6, v0, v15, v1}, Ljava/lang/String;-><init>([BII)V

    add-int v15, v15, v18

    if-nez p3, :cond_3

    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    const/16 v17, 0x0

    :goto_1
    const/4 v3, 0x3

    move/from16 v0, v17

    if-ge v0, v3, :cond_1

    move-object/from16 v0, p1

    array-length v3, v0

    add-int/lit8 v4, v15, 0x5

    if-ge v3, v4, :cond_2

    :cond_1
    new-instance v3, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v4, p0

    move/from16 v5, p2

    invoke-direct/range {v3 .. v8}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;-><init>(Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;ILjava/lang/String;Ljava/lang/Long;Ljava/util/LinkedList;)V

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->byteArrayToInteger([BI)I

    move-result v20

    add-int/lit8 v15, v15, 0x4

    aget-byte v19, p1, v15

    add-int/lit8 v15, v15, 0x1

    new-instance v3, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$PreferredLanguage;

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-direct {v3, v0, v1, v2}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$PreferredLanguage;-><init>(Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;IB)V

    invoke-virtual {v8, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    :cond_3
    new-instance v14, Landroid/util/SparseArray;

    invoke-direct {v14}, Landroid/util/SparseArray;-><init>()V

    const/16 v16, 0x0

    :goto_2
    move/from16 v0, v16

    move/from16 v1, p4

    if-ge v0, v1, :cond_4

    move-object/from16 v0, p1

    array-length v3, v0

    add-int/lit8 v4, v15, 0x4

    if-ge v3, v4, :cond_5

    :cond_4
    new-instance v9, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    move-object/from16 v10, p0

    move/from16 v11, p2

    move-object v12, v6

    invoke-direct/range {v9 .. v14}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;-><init>(Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;ILjava/lang/String;Ljava/lang/Long;Landroid/util/SparseArray;)V

    move-object v3, v9

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->byteArrayToInteger([BI)I

    move-result v21

    add-int/lit8 v15, v15, 0x4

    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    const/16 v17, 0x0

    :goto_3
    const/4 v3, 0x3

    move/from16 v0, v17

    if-ge v0, v3, :cond_6

    move-object/from16 v0, p1

    array-length v3, v0

    add-int/lit8 v4, v15, 0x5

    if-ge v3, v4, :cond_7

    :cond_6
    new-instance v3, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$PreferredLanguageSet;

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v3, v0, v1, v8}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$PreferredLanguageSet;-><init>(Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;ILjava/util/LinkedList;)V

    move/from16 v0, v21

    invoke-virtual {v14, v0, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->byteArrayToInteger([BI)I

    move-result v20

    add-int/lit8 v15, v15, 0x4

    aget-byte v19, p1, v15

    add-int/lit8 v15, v15, 0x1

    new-instance v3, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$PreferredLanguage;

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-direct {v3, v0, v1, v2}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$PreferredLanguage;-><init>(Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;IB)V

    invoke-virtual {v8, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v17, v17, 0x1

    goto :goto_3
.end method

.method private findCSLLanguageData(Ljava/lang/String;)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget v2, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mInitializedMode:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->findLanguageDataInCSLCache(Ljava/lang/String;)Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mCSLMap:Ljava/util/HashMap;

    invoke-direct {p0, v2, p1}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->getLanguageDataInMap(Ljava/util/HashMap;Ljava/lang/String;)Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mCacheCSLMap:Ljava/util/LinkedList;

    invoke-direct {p0, v2, v0}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->addLanguageDataInCache(Ljava/util/LinkedList;Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;)V

    :cond_0
    if-eqz v0, :cond_1

    iput-object v0, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mCurrentLanguageData:Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;

    iput v1, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mCurrentMode:I

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private findLanguageData(Ljava/lang/String;II)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->findCSLLanguageData(Ljava/lang/String;)Z

    move-result v0

    :cond_0
    if-nez v0, :cond_1

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mCurrentLanguageData:Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;

    const/4 v1, 0x0

    iput v1, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mCurrentMode:I

    :cond_1
    return v0
.end method

.method private findLanguageDataInCSLCache(Ljava/lang/String;)Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;
    .locals 2

    iget v0, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mCurrentMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mCurrentLanguageData:Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mCurrentLanguageData:Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mCurrentLanguageData:Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mCacheCSLMap:Ljava/util/LinkedList;

    invoke-direct {p0, v0, p1}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->findLanguageDataInCache(Ljava/util/LinkedList;Ljava/lang/String;)Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;

    move-result-object v0

    goto :goto_0
.end method

.method private findLanguageDataInCache(Ljava/util/LinkedList;Ljava/lang/String;)Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;",
            ">;>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v4

    if-ne v3, v4, :cond_0

    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;

    :cond_1
    return-object v0
.end method

.method private getDefaultCSLData(ILjava/lang/String;I)Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;
    .locals 7

    const/4 v4, 0x0

    new-instance v0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v5, p3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;-><init>(Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;ILjava/lang/String;IIZ)V

    return-object v0
.end method

.method private getIndexOrLastData(ILjava/util/HashMap;)Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;",
            ">;)",
            "Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;"
        }
    .end annotation

    const/4 v5, -0x1

    const/4 v1, 0x0

    invoke-virtual {p2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->getIndex()I

    move-result v6

    if-ne v6, p1, :cond_1

    :goto_1
    return-object v2

    :cond_1
    invoke-virtual {v2}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->getIndex()I

    move-result v6

    if-le v6, v5, :cond_0

    move-object v1, v2

    invoke-virtual {v2}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->getIndex()I

    move-result v5

    goto :goto_0

    :cond_2
    move-object v2, v1

    goto :goto_1
.end method

.method public static getInstance()Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;
    .locals 1

    sget-object v0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mInstance:Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;

    invoke-direct {v0}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mInstance:Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;

    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mInstance:Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;

    return-object v0
.end method

.method private getLanguageDataInMap(Ljava/util/HashMap;Ljava/lang/String;)Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;

    goto :goto_0
.end method

.method private getTotalLanguageDataLength(IZ)I
    .locals 1

    if-eqz p2, :cond_0

    mul-int/lit8 v0, p1, 0x13

    add-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    mul-int/lit8 v0, p1, 0xf

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private init()V
    .locals 4

    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "lang"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mDir:Ljava/io/File;

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$4;

    invoke-direct {v2, p0}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$4;-><init>(Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private integerToByteArray(I)[B
    .locals 3

    const/4 v1, 0x4

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    return-object v2
.end method

.method private isAvailablePreferredLanguage(II)Z
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    and-int/lit8 v1, p1, 0xf

    if-ne v1, v0, :cond_0

    and-int/lit16 v1, p1, 0xff0

    const/16 v2, 0x80

    if-eq v1, v2, :cond_0

    and-int/lit16 v1, p1, 0xff0

    const/16 v2, 0x90

    if-eq v1, v2, :cond_0

    and-int/lit16 v1, p1, 0xff0

    const/16 v2, 0xe0

    if-eq v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadDb(Ljava/io/File;Ljava/lang/String;I)V
    .locals 18

    new-instance v10, Ljava/io/File;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-direct {v10, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mInitializedMode:I

    or-int v2, v2, p3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mInitializedMode:I

    :goto_0
    return-void

    :cond_0
    const/4 v13, 0x0

    :try_start_0
    new-instance v14, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    invoke-direct {v14, v10, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v2, 0xe

    :try_start_1
    new-array v11, v2, [B

    const/4 v15, -0x1

    const/4 v4, 0x0

    :cond_1
    invoke-virtual {v14, v11}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v15

    if-lez v15, :cond_3

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v2}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->byteArrayToInteger([BI)I

    move-result v12

    const/4 v2, 0x4

    aget-byte v2, v11, v2

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v2, v0, :cond_5

    const/4 v5, 0x1

    :goto_1
    const/4 v2, 0x5

    aget-byte v6, v11, v2

    const/4 v2, 0x6

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v2}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->byteArrayToLong([BI)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    if-lez v12, :cond_2

    new-array v3, v12, [B

    invoke-virtual {v14, v3}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v15

    if-lez v15, :cond_2

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->checkSumData([B)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "csl.db"

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->addCSLData([BIZIJ)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mCSLTotalSize:I

    add-int/lit8 v16, v12, 0xe

    add-int v2, v2, v16

    move-object/from16 v0, p0

    iput v2, v0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mCSLTotalSize:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mCSLCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mCSLCount:I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    :cond_3
    const/4 v2, -0x1

    if-ne v15, v2, :cond_1

    if-eqz v14, :cond_8

    :try_start_2
    invoke-virtual {v14}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v13, v14

    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mInitializedMode:I

    or-int v2, v2, p3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mInitializedMode:I

    goto :goto_0

    :cond_5
    const/4 v5, 0x0

    goto :goto_1

    :catch_0
    move-exception v9

    const-string v2, "ContextAwareLanguageManager"

    const-string v16, "loadDb IOException "

    move-object/from16 v0, v16

    invoke-static {v2, v0, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v13, v14

    goto :goto_2

    :catch_1
    move-exception v9

    :goto_3
    :try_start_3
    const-string v2, "ContextAwareLanguageManager"

    const-string v16, "loadDb FileNotFoundException "

    move-object/from16 v0, v16

    invoke-static {v2, v0, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v13, :cond_4

    :try_start_4
    invoke-virtual {v13}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception v9

    const-string v2, "ContextAwareLanguageManager"

    const-string v16, "loadDb IOException "

    move-object/from16 v0, v16

    invoke-static {v2, v0, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :catch_3
    move-exception v9

    :goto_4
    :try_start_5
    const-string v2, "ContextAwareLanguageManager"

    const-string v16, "loadDb IOException "

    move-object/from16 v0, v16

    invoke-static {v2, v0, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v13, :cond_4

    :try_start_6
    invoke-virtual {v13}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_2

    :catch_4
    move-exception v9

    const-string v2, "ContextAwareLanguageManager"

    const-string v16, "loadDb IOException "

    move-object/from16 v0, v16

    invoke-static {v2, v0, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :catch_5
    move-exception v9

    :goto_5
    :try_start_7
    const-string v2, "ContextAwareLanguageManager"

    const-string v16, "loadDb OutOfMemoryError "

    move-object/from16 v0, v16

    invoke-static {v2, v0, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v10}, Ljava/io/File;->delete()Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_6
    if-eqz v13, :cond_4

    :try_start_8
    invoke-virtual {v13}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_2

    :catch_6
    move-exception v9

    const-string v2, "ContextAwareLanguageManager"

    const-string v16, "loadDb IOException "

    move-object/from16 v0, v16

    invoke-static {v2, v0, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :catchall_0
    move-exception v2

    :goto_6
    if-eqz v13, :cond_7

    :try_start_9
    invoke-virtual {v13}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    :cond_7
    :goto_7
    throw v2

    :catch_7
    move-exception v9

    const-string v16, "ContextAwareLanguageManager"

    const-string v17, "loadDb IOException "

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    :catchall_1
    move-exception v2

    move-object v13, v14

    goto :goto_6

    :catch_8
    move-exception v9

    move-object v13, v14

    goto :goto_5

    :catch_9
    move-exception v9

    move-object v13, v14

    goto :goto_4

    :catch_a
    move-exception v9

    move-object v13, v14

    goto/16 :goto_3

    :cond_8
    move-object v13, v14

    goto/16 :goto_2
.end method

.method private longToByteArray(J)[B
    .locals 3

    const/16 v1, 0x8

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    return-object v2
.end method

.method private makeNewLanguageData(Ljava/lang/String;II)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mCSLMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-direct {p0, v0, p1, p3}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->getDefaultCSLData(ILjava/lang/String;I)Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mCurrentLanguageData:Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;

    iget-object v0, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mCSLMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mCurrentLanguageData:Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    iput v0, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mCurrentMode:I

    iget-object v0, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mCurrentLanguageData:Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->getIndex()I

    move-result v0

    iput v0, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mDirtyIndex:I

    :cond_0
    return-void
.end method

.method private declared-synchronized saveCSL()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "csl.db"

    iget-object v1, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mCSLMap:Ljava/util/HashMap;

    invoke-direct {p0, v0, v1}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->writeDB(Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private writeDB(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;",
            ">;)V"
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v9, 0x0

    const-string v19, "csl.db"

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mCSLCount:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mCSLTotalSize:I

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mDir:Ljava/io/File;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z

    move-result v19

    if-nez v19, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mDir:Ljava/io/File;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->mkdir()Z

    move-result v17

    const-string v19, "ContextAwareLanguageManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "lang directory created = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v11, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mDir:Ljava/io/File;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct {v11, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/16 v18, 0x0

    const/4 v15, 0x0

    :try_start_0
    new-instance v16, Ljava/io/RandomAccessFile;

    const-string v19, "rw"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-direct {v0, v11, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_11
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_a
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/high16 v19, 0x20000

    move/from16 v0, v19

    if-le v9, v0, :cond_5

    :try_start_1
    invoke-virtual/range {p2 .. p2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mTimeStampComparator:Ljava/util/Comparator;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v14, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v3, 0x0

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    move v4, v3

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_9

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->getDataSize()I

    move-result v19

    add-int v19, v19, v18

    const/high16 v20, 0x20000

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_4

    invoke-virtual {v6}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->getKey()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_10
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_f
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v10

    move-object/from16 v15, v16

    :goto_1
    :try_start_2
    const-string v19, "ContextAwareLanguageManager"

    const-string v20, "writeDB is FileNotFoundException : "

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v10}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v15, :cond_3

    :try_start_3
    const-string v19, "csl.db"

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2

    invoke-virtual/range {p2 .. p2}, Ljava/util/HashMap;->size()I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mCSLCount:I

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mCSLTotalSize:I

    :cond_2
    const/16 v19, -0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mDirtyIndex:I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v19, v0

    :try_start_4
    move-wide/from16 v0, v19

    invoke-virtual {v15, v0, v1}, Ljava/io/RandomAccessFile;->setLength(J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    :goto_2
    :try_start_5
    invoke-virtual {v15}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    :cond_3
    :goto_3
    return-void

    :cond_4
    :try_start_6
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v6}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->writeData(Ljava/io/RandomAccessFile;Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;)I

    move-result v19

    add-int v18, v18, v19

    add-int/lit8 v3, v4, 0x1

    invoke-virtual {v6, v4}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->setIndex(I)V

    move v4, v3

    goto :goto_0

    :cond_5
    invoke-virtual/range {p2 .. p2}, Ljava/util/HashMap;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v7, v0, :cond_b

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    move-result v19

    move/from16 v0, v19

    if-ne v0, v9, :cond_9

    move/from16 v18, v9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mDirtyIndex:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->getIndexOrLastData(ILjava/util/HashMap;)Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_10
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_f
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result-object v6

    if-nez v6, :cond_8

    if-eqz v16, :cond_7

    :try_start_7
    const-string v19, "csl.db"

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_6

    invoke-virtual/range {p2 .. p2}, Ljava/util/HashMap;->size()I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mCSLCount:I

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mCSLTotalSize:I

    :cond_6
    const/16 v19, -0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mDirtyIndex:I
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v19, v0

    :try_start_8
    move-object/from16 v0, v16

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->setLength(J)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    :goto_4
    :try_start_9
    invoke-virtual/range {v16 .. v16}, Ljava/io/RandomAccessFile;->close()V

    :cond_7
    :goto_5
    move-object/from16 v15, v16

    goto :goto_3

    :catch_1
    move-exception v10

    invoke-virtual/range {v16 .. v16}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_4

    :catch_2
    move-exception v10

    const-string v19, "ContextAwareLanguageManager"

    const-string v20, "writeDB is IOException : "

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    :cond_8
    :try_start_a
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v6}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->writeData(Ljava/io/RandomAccessFile;Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;)I
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_a .. :try_end_a} :catch_10
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_f
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    move-result v19

    add-int v18, v18, v19

    :cond_9
    :goto_6
    if-eqz v16, :cond_14

    :try_start_b
    const-string v19, "csl.db"

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_a

    invoke-virtual/range {p2 .. p2}, Ljava/util/HashMap;->size()I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mCSLCount:I

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mCSLTotalSize:I

    :cond_a
    const/16 v19, -0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mDirtyIndex:I
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v19, v0

    :try_start_c
    move-object/from16 v0, v16

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->setLength(J)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4

    :goto_7
    :try_start_d
    invoke-virtual/range {v16 .. v16}, Ljava/io/RandomAccessFile;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4

    move-object/from16 v15, v16

    goto/16 :goto_3

    :cond_b
    :try_start_e
    invoke-virtual/range {p2 .. p2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mIndexComparator:Ljava/util/Comparator;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v14, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v12, 0x0

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_8
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_9

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->getIndex()I

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mDirtyIndex:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_d

    invoke-virtual {v6}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->isUseSubItem()Z

    move-result v19

    if-eqz v19, :cond_c

    invoke-virtual {v6}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->isAddNewSubItem()Z

    move-result v19

    if-eqz v19, :cond_c

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v6}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->writeData(Ljava/io/RandomAccessFile;Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;)I

    invoke-virtual {v6}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->clearIsAddNewSubItem()V

    const/4 v12, 0x1

    const/16 v19, -0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mDirtyIndex:I

    invoke-virtual {v6}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->getDataSize()I

    move-result v19

    add-int v18, v18, v19

    goto :goto_8

    :cond_c
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v6}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->writeData(Ljava/io/RandomAccessFile;Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;)I

    const/16 v19, -0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mDirtyIndex:I

    move/from16 v18, v9

    goto/16 :goto_6

    :cond_d
    if-eqz v12, :cond_e

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v6}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->writeData(Ljava/io/RandomAccessFile;Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;)I

    invoke-virtual {v6}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->getDataSize()I

    move-result v19

    add-int v18, v18, v19

    goto :goto_8

    :cond_e
    invoke-virtual {v6}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->getDataSize()I

    move-result v8

    invoke-virtual {v6}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->getDataSize()I

    move-result v19

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->skipBytes(I)I
    :try_end_e
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_e} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_e .. :try_end_e} :catch_10
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_f
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    add-int v18, v18, v8

    goto :goto_8

    :catch_3
    move-exception v10

    :try_start_f
    invoke-virtual/range {v16 .. v16}, Ljava/io/RandomAccessFile;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_4

    goto/16 :goto_7

    :catch_4
    move-exception v10

    const-string v19, "ContextAwareLanguageManager"

    const-string v20, "writeDB is IOException : "

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object/from16 v15, v16

    goto/16 :goto_3

    :catch_5
    move-exception v10

    :try_start_10
    invoke-virtual {v15}, Ljava/io/RandomAccessFile;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_6

    goto/16 :goto_2

    :catch_6
    move-exception v10

    const-string v19, "ContextAwareLanguageManager"

    const-string v20, "writeDB is IOException : "

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    :catch_7
    move-exception v10

    :goto_9
    :try_start_11
    const-string v19, "ContextAwareLanguageManager"

    const-string v20, "writeDB is OutOfMemoryError : "

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v10}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v19

    if-eqz v19, :cond_f

    invoke-virtual {v11}, Ljava/io/File;->delete()Z
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    :cond_f
    if-eqz v15, :cond_3

    :try_start_12
    const-string v19, "csl.db"

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_10

    invoke-virtual/range {p2 .. p2}, Ljava/util/HashMap;->size()I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mCSLCount:I

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mCSLTotalSize:I

    :cond_10
    const/16 v19, -0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mDirtyIndex:I
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_8

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v19, v0

    :try_start_13
    move-wide/from16 v0, v19

    invoke-virtual {v15, v0, v1}, Ljava/io/RandomAccessFile;->setLength(J)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_9
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_8

    :goto_a
    :try_start_14
    invoke-virtual {v15}, Ljava/io/RandomAccessFile;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_8

    goto/16 :goto_3

    :catch_8
    move-exception v10

    const-string v19, "ContextAwareLanguageManager"

    const-string v20, "writeDB is IOException : "

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    :catch_9
    move-exception v10

    :try_start_15
    invoke-virtual {v15}, Ljava/io/RandomAccessFile;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_8

    goto :goto_a

    :catch_a
    move-exception v10

    :goto_b
    :try_start_16
    const-string v19, "ContextAwareLanguageManager"

    const-string v20, "writeDB is IOException : "

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v10}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    if-eqz v15, :cond_3

    :try_start_17
    const-string v19, "csl.db"

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_11

    invoke-virtual/range {p2 .. p2}, Ljava/util/HashMap;->size()I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mCSLCount:I

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mCSLTotalSize:I

    :cond_11
    const/16 v19, -0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mDirtyIndex:I
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_b

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v19, v0

    :try_start_18
    move-wide/from16 v0, v19

    invoke-virtual {v15, v0, v1}, Ljava/io/RandomAccessFile;->setLength(J)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_c
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_b

    :goto_c
    :try_start_19
    invoke-virtual {v15}, Ljava/io/RandomAccessFile;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_b

    goto/16 :goto_3

    :catch_b
    move-exception v10

    const-string v19, "ContextAwareLanguageManager"

    const-string v20, "writeDB is IOException : "

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    :catch_c
    move-exception v10

    :try_start_1a
    invoke-virtual {v15}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_b

    goto :goto_c

    :catchall_0
    move-exception v19

    :goto_d
    if-eqz v15, :cond_13

    :try_start_1b
    const-string v20, "csl.db"

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_12

    invoke-virtual/range {p2 .. p2}, Ljava/util/HashMap;->size()I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mCSLCount:I

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mCSLTotalSize:I

    :cond_12
    const/16 v20, -0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mDirtyIndex:I
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_e

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v20, v0

    :try_start_1c
    move-wide/from16 v0, v20

    invoke-virtual {v15, v0, v1}, Ljava/io/RandomAccessFile;->setLength(J)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_d
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_e

    :goto_e
    :try_start_1d
    invoke-virtual {v15}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_e

    :cond_13
    :goto_f
    throw v19

    :catch_d
    move-exception v10

    :try_start_1e
    invoke-virtual {v15}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_e

    goto :goto_e

    :catch_e
    move-exception v10

    const-string v20, "ContextAwareLanguageManager"

    const-string v21, "writeDB is IOException : "

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f

    :catchall_1
    move-exception v19

    move-object/from16 v15, v16

    goto :goto_d

    :catch_f
    move-exception v10

    move-object/from16 v15, v16

    goto/16 :goto_b

    :catch_10
    move-exception v10

    move-object/from16 v15, v16

    goto/16 :goto_9

    :catch_11
    move-exception v10

    goto/16 :goto_1

    :cond_14
    move-object/from16 v15, v16

    goto/16 :goto_3
.end method

.method private writeData(Ljava/io/RandomAccessFile;Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;)I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/FileNotFoundException;,
            Ljava/lang/OutOfMemoryError;
        }
    .end annotation

    const/16 v10, -0x7f

    const/4 v9, 0x0

    const/4 v8, 0x1

    invoke-virtual {p2}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {p2}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->isUseSubItem()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p2}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->getSubItemCount()I

    move-result v5

    array-length v6, v3

    invoke-direct {p0, v5, v8}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->getTotalLanguageDataLength(IZ)I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {p0, v6}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->integerToByteArray(I)[B

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/RandomAccessFile;->write([B)V

    invoke-virtual {p1, v8}, Ljava/io/RandomAccessFile;->write(I)V

    int-to-byte v6, v5

    invoke-virtual {p1, v6}, Ljava/io/RandomAccessFile;->write(I)V

    invoke-virtual {p2}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->getTimestamp()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-direct {p0, v6, v7}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->longToByteArray(J)[B

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/RandomAccessFile;->write([B)V

    invoke-virtual {p1, v3}, Ljava/io/RandomAccessFile;->write([B)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v5, :cond_1

    invoke-virtual {p2, v1}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->getPreferredLanguageListSet(I)Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$PreferredLanguageSet;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$PreferredLanguageSet;->getKey()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->integerToByteArray(I)[B

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/RandomAccessFile;->write([B)V

    invoke-virtual {v4}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$PreferredLanguageSet;->getPreferredLanguageList()Ljava/util/LinkedList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$PreferredLanguage;

    iget v6, v0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$PreferredLanguage;->languageID:I

    invoke-direct {p0, v6}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->integerToByteArray(I)[B

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/RandomAccessFile;->write([B)V

    iget-byte v6, v0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$PreferredLanguage;->preference:B

    invoke-virtual {p1, v6}, Ljava/io/RandomAccessFile;->write(I)V

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v10}, Ljava/io/RandomAccessFile;->write(I)V

    array-length v6, v3

    invoke-direct {p0, v5, v8}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->getTotalLanguageDataLength(IZ)I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, 0xe

    :goto_2
    return v6

    :cond_2
    array-length v6, v3

    invoke-direct {p0, v8, v9}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->getTotalLanguageDataLength(IZ)I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {p0, v6}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->integerToByteArray(I)[B

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/RandomAccessFile;->write([B)V

    invoke-virtual {p1, v9}, Ljava/io/RandomAccessFile;->write(I)V

    invoke-virtual {p1, v8}, Ljava/io/RandomAccessFile;->write(I)V

    invoke-virtual {p2}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->getTimestamp()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-direct {p0, v6, v7}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->longToByteArray(J)[B

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/RandomAccessFile;->write([B)V

    invoke-virtual {p1, v3}, Ljava/io/RandomAccessFile;->write([B)V

    invoke-virtual {p2}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->getCurrentPreferredLanguageList()Ljava/util/LinkedList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$PreferredLanguage;

    iget v6, v0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$PreferredLanguage;->languageID:I

    invoke-direct {p0, v6}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->integerToByteArray(I)[B

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/RandomAccessFile;->write([B)V

    iget-byte v6, v0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$PreferredLanguage;->preference:B

    invoke-virtual {p1, v6}, Ljava/io/RandomAccessFile;->write(I)V

    goto :goto_3

    :cond_3
    invoke-virtual {p1, v10}, Ljava/io/RandomAccessFile;->write(I)V

    array-length v6, v3

    invoke-direct {p0, v8, v9}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->getTotalLanguageDataLength(IZ)I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, 0xe

    goto :goto_2
.end method


# virtual methods
.method public findLanguage([Lcom/diotek/ime/framework/common/Language;Lcom/diotek/ime/framework/common/Language;Ljava/lang/String;Ljava/lang/String;II[Z)Lcom/diotek/ime/framework/common/Language;
    .locals 8

    const/4 v7, -0x1

    const/4 v6, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-object p2

    :cond_1
    iput-boolean v6, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mIsUseContextAwareLanguage:Z

    if-eqz p4, :cond_6

    invoke-direct {p0, p5, p6}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->isAvailablePreferredLanguage(II)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {p2}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v5

    invoke-direct {p0, p3, p5, v5}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->findLanguageData(Ljava/lang/String;II)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mCurrentLanguageData:Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mCurrentLanguageData:Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;

    invoke-virtual {v5, v7}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->getBestPreferredLanguageID(I)I

    move-result v4

    if-eq v4, v7, :cond_5

    move-object v0, p1

    array-length v3, v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_5

    aget-object v2, v0, v1

    invoke-virtual {v2}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v5

    if-ne v5, v4, :cond_3

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mIsUseContextAwareLanguage:Z

    if-eqz p7, :cond_2

    array-length v5, p7

    if-lez v5, :cond_2

    iget-boolean v5, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mIsUseContextAwareLanguage:Z

    aput-boolean v5, p7, v6

    :cond_2
    move-object p2, v2

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {p2}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v5

    invoke-direct {p0, p3, p5, v5}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->makeNewLanguageData(Ljava/lang/String;II)V

    :cond_5
    :goto_2
    if-eqz p7, :cond_0

    array-length v5, p7

    if-lez v5, :cond_0

    iget-boolean v5, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mIsUseContextAwareLanguage:Z

    aput-boolean v5, p7, v6

    goto :goto_0

    :cond_6
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mCurrentLanguageData:Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;

    goto :goto_2
.end method

.method public isUseContextAwareLanguage()Z
    .locals 1

    iget-boolean v0, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mIsUseContextAwareLanguage:Z

    return v0
.end method

.method public reset()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mCurrentLanguageData:Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;

    iput-boolean v1, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mIsUseContextAwareLanguage:Z

    iput v1, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mCurrentMode:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mDirtyIndex:I

    return-void
.end method

.method public save()V
    .locals 2

    iget-object v0, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mCurrentLanguageData:Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mDirtyIndex:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mCurrentMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$5;

    invoke-direct {v1, p0}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$5;-><init>(Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public updateCurrentLanguage(I)V
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mCurrentLanguageData:Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->mCurrentLanguageData:Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;

    invoke-virtual {v0, p1}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->updatePreferredLanguage(I)V

    :cond_0
    return-void
.end method
