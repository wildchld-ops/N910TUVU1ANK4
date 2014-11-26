.class public Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;
.super Ljava/lang/Object;
.source "TouchModalDataStructure.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure$TCentre;
    }
.end annotation


# static fields
.field private static final FIXED_REGION_SIZE:I = 0x5

.field private static final NOP:I = 0xa

.field private static final TAG:Ljava/lang/String;

.field public static count:I


# instance fields
.field private final DB_DIR:Ljava/lang/String;

.field private IS_HD:Z

.field private IS_KORMODE:Z

.field public grid:[[I

.field public initGridCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field public keys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

.field private mKBHeight:I

.field private mKBWidth:I

.field public mKeyCentre:[Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure$TCentre;

.field manager:Lcom/diotek/ime/framework/common/InputManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->count:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v0, v1

    check-cast v0, [[I

    iput-object v0, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->grid:[[I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->initGridCount:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object v1, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->mKeyCentre:[Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure$TCentre;

    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->manager:Lcom/diotek/ime/framework/common/InputManager;

    const-string v0, "grids"

    iput-object v0, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->DB_DIR:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public dump(ZIIIIII[[I)V
    .locals 15
    .param p1    # Z
    .param p2    # I
    .param p3    # I
    .param p4    # I
    .param p5    # I
    .param p6    # I
    .param p7    # I
    .param p8    # [[I

    sget-object v12, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->TAG:Ljava/lang/String;

    const-string v13, "!@dump is called"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "grid_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p4

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p5

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p6

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p7

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".db"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-nez p8, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v7, Ljava/io/File;

    iget-object v12, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->manager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v12

    const-string v13, "grids"

    invoke-direct {v7, v12, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_2

    invoke-virtual {v7}, Ljava/io/File;->mkdir()Z

    move-result v2

    const-string v12, "TMDS"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "++++++++++++++directory created = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v7, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v11, "\n"

    const/4 v5, 0x0

    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    :try_start_0
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v9, 0x0

    :goto_1
    move/from16 v0, p6

    if-ge v9, v0, :cond_4

    const/4 v8, 0x0

    :goto_2
    move/from16 v0, p5

    if-ge v8, v0, :cond_3

    :try_start_1
    aget-object v12, p8, v8

    aget v12, v12, v9

    invoke-virtual {v10, v12}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v12, "\n"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/io/OutputStream;->write([B)V

    const/4 v12, 0x0

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->length()I

    move-result v13

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_4
    if-eqz v6, :cond_5

    :try_start_2
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7

    :cond_5
    :goto_3
    move-object v5, v6

    goto :goto_0

    :catch_0
    move-exception v3

    :goto_4
    :try_start_3
    sget-object v12, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->TAG:Ljava/lang/String;

    const-string v13, "Error in Function dump()"

    invoke-static {v12, v13, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v5, :cond_0

    :try_start_4
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v3

    sget-object v12, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->TAG:Ljava/lang/String;

    const-string v13, "Error in Function dump()"

    :goto_5
    invoke-static {v12, v13, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :catch_2
    move-exception v3

    :goto_6
    :try_start_5
    sget-object v12, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->TAG:Ljava/lang/String;

    const-string v13, "Error in Function dump()- out of memory"

    invoke-static {v12, v13, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_6
    if-eqz v5, :cond_0

    :try_start_6
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v3

    sget-object v12, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->TAG:Ljava/lang/String;

    const-string v13, "Error in Function dump()"

    goto :goto_5

    :catch_4
    move-exception v3

    :goto_7
    :try_start_7
    sget-object v12, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->TAG:Ljava/lang/String;

    const-string v13, "Error in Function dump()"

    invoke-static {v12, v13, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v5, :cond_0

    :try_start_8
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto/16 :goto_0

    :catch_5
    move-exception v3

    sget-object v12, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->TAG:Ljava/lang/String;

    const-string v13, "Error in Function dump()"

    goto :goto_5

    :catchall_0
    move-exception v12

    :goto_8
    if-eqz v5, :cond_7

    :try_start_9
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    :cond_7
    :goto_9
    throw v12

    :catch_6
    move-exception v3

    sget-object v13, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->TAG:Ljava/lang/String;

    const-string v14, "Error in Function dump()"

    invoke-static {v13, v14, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    :catch_7
    move-exception v3

    sget-object v12, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->TAG:Ljava/lang/String;

    const-string v13, "Error in Function dump()"

    invoke-static {v12, v13, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :catchall_1
    move-exception v12

    move-object v5, v6

    goto :goto_8

    :catch_8
    move-exception v3

    move-object v5, v6

    goto :goto_7

    :catch_9
    move-exception v3

    move-object v5, v6

    goto :goto_6

    :catch_a
    move-exception v3

    move-object v5, v6

    goto :goto_4
.end method

.method public getBaseIndex(II)I
    .locals 2
    .param p1    # I
    .param p2    # I

    iget-object v0, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->grid:[[I

    aget-object v0, v0, p1

    aget v0, v0, p2

    const/high16 v1, -0x10000000

    and-int/2addr v0, v1

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->grid:[[I

    aget-object v0, v0, p1

    aget v0, v0, p2

    const v1, 0xfff000

    and-int/2addr v0, v1

    ushr-int/lit8 v0, v0, 0xc

    goto :goto_0
.end method

.method public getKeyIndex(II)I
    .locals 3
    .param p1    # I
    .param p2    # I

    const/4 v0, -0x1

    sget v1, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->count:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->count:I

    iget v1, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->mKBWidth:I

    add-int/lit8 v1, v1, -0x1

    if-gt p1, v1, :cond_0

    iget v1, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->mKBHeight:I

    add-int/lit8 v1, v1, -0x1

    if-le p2, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->grid:[[I

    aget-object v1, v1, p1

    aget v1, v1, p2

    const/high16 v2, -0x10000000

    and-int/2addr v1, v2

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_0

    iget-object v0, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->grid:[[I

    aget-object v0, v0, p1

    aget v0, v0, p2

    and-int/lit16 v0, v0, 0xfff

    goto :goto_0
.end method

.method getValue(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;

    return-void
.end method

.method getValue(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;

    return-void
.end method

.method public increaseBL(III)V
    .locals 14
    .param p1    # I
    .param p2    # I
    .param p3    # I

    const/4 v6, 0x1

    move/from16 v1, p2

    move/from16 v2, p3

    add-int/lit8 v1, p2, -0xa

    :goto_0
    add-int/lit8 v11, p2, 0xa

    if-gt v1, v11, :cond_0

    move v7, v1

    move/from16 v8, p3

    if-ltz v7, :cond_0

    iget v11, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->mKBWidth:I

    add-int/lit8 v11, v11, -0x1

    if-gt v7, v11, :cond_0

    if-ltz v8, :cond_0

    iget v11, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->mKBHeight:I

    add-int/lit8 v11, v11, -0x1

    if-le v8, v11, :cond_4

    :cond_0
    const/4 v6, 0x1

    move/from16 v1, p2

    move/from16 v2, p3

    add-int/lit8 v2, p3, -0xa

    :goto_1
    add-int/lit8 v11, p3, 0xa

    if-gt v2, v11, :cond_1

    move/from16 v7, p2

    move v8, v2

    if-ltz v7, :cond_1

    iget v11, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->mKBWidth:I

    add-int/lit8 v11, v11, -0x1

    if-gt v7, v11, :cond_1

    if-ltz v8, :cond_1

    iget v11, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->mKBHeight:I

    add-int/lit8 v11, v11, -0x1

    if-le v8, v11, :cond_c

    :cond_1
    add-int/lit8 v9, p2, 0xa

    :goto_2
    move/from16 v0, p2

    if-lt v9, v0, :cond_14

    add-int/lit8 v10, p3, -0xa

    :goto_3
    move/from16 v0, p3

    if-gt v10, v0, :cond_13

    iget v11, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->mKBWidth:I

    if-ge v9, v11, :cond_2

    if-ltz v10, :cond_2

    invoke-virtual {p0, v9, v10, p1}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->setKeyIndex(III)V

    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v8, v8, 0x1

    :cond_4
    invoke-virtual {p0, v7, v8}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->getKeyIndex(II)I

    move-result v11

    if-ne v11, p1, :cond_6

    move v2, v8

    if-lez v2, :cond_5

    iget v11, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->mKBHeight:I

    add-int/lit8 v11, v11, -0x1

    if-ge v2, v11, :cond_5

    if-lez v1, :cond_5

    iget v11, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->mKBWidth:I

    add-int/lit8 v11, v11, -0x1

    if-lt v1, v11, :cond_3

    :cond_5
    const/4 v6, 0x0

    :cond_6
    sub-int v11, p3, v2

    sub-int v12, p3, v2

    mul-int/2addr v11, v12

    sub-int v12, p2, v1

    sub-int v13, p2, v1

    mul-int/2addr v12, v13

    add-int/2addr v11, v12

    int-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    double-to-int v3, v11

    rsub-int/lit8 v11, v3, 0xa

    if-gez v11, :cond_8

    const/4 v5, 0x0

    :goto_4
    if-eqz v6, :cond_7

    const/4 v4, 0x0

    :goto_5
    if-gt v4, v5, :cond_7

    add-int v11, v2, v4

    iget v12, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->mKBHeight:I

    add-int/lit8 v12, v12, -0x1

    if-le v11, v12, :cond_9

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_8
    rsub-int/lit8 v5, v3, 0xa

    goto :goto_4

    :cond_9
    add-int v11, v2, v4

    invoke-virtual {p0, v1, v11}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->isFixed(II)Z

    move-result v11

    if-nez v11, :cond_a

    add-int v11, v2, v4

    invoke-virtual {p0, v1, v11, p1}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->setKeyIndex(III)V

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_b
    add-int/lit8 v7, v7, -0x1

    :cond_c
    invoke-virtual {p0, v7, v8}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->getKeyIndex(II)I

    move-result v11

    if-ne v11, p1, :cond_e

    move v1, v7

    if-lez v2, :cond_d

    iget v11, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->mKBHeight:I

    add-int/lit8 v11, v11, -0x1

    if-ge v2, v11, :cond_d

    if-lez v1, :cond_d

    iget v11, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->mKBWidth:I

    add-int/lit8 v11, v11, -0x1

    if-lt v1, v11, :cond_b

    :cond_d
    const/4 v6, 0x0

    :cond_e
    sub-int v11, p3, v2

    sub-int v12, p3, v2

    mul-int/2addr v11, v12

    sub-int v12, p2, v1

    sub-int v13, p2, v1

    mul-int/2addr v12, v13

    add-int/2addr v11, v12

    int-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    double-to-int v3, v11

    rsub-int/lit8 v11, v3, 0xa

    if-gez v11, :cond_10

    const/4 v5, 0x0

    :goto_6
    if-eqz v6, :cond_f

    const/4 v4, 0x0

    :goto_7
    if-gt v4, v5, :cond_f

    sub-int v11, v1, v4

    if-gez v11, :cond_11

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_10
    rsub-int/lit8 v5, v3, 0xa

    goto :goto_6

    :cond_11
    sub-int v11, v1, v4

    invoke-virtual {p0, v11, v2}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->isFixed(II)Z

    move-result v11

    if-nez v11, :cond_12

    sub-int v11, v1, v4

    invoke-virtual {p0, v11, v2, p1}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->setKeyIndex(III)V

    :cond_12
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_13
    add-int/lit8 v9, v9, -0x1

    goto/16 :goto_2

    :cond_14
    return-void
.end method

.method public increaseBR(III)V
    .locals 14
    .param p1    # I
    .param p2    # I
    .param p3    # I

    const/4 v6, 0x1

    move/from16 v1, p2

    move/from16 v2, p3

    add-int/lit8 v1, p2, -0xa

    :goto_0
    add-int/lit8 v11, p2, 0xa

    if-gt v1, v11, :cond_0

    move v7, v1

    move/from16 v8, p3

    if-ltz v7, :cond_0

    iget v11, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->mKBWidth:I

    add-int/lit8 v11, v11, -0x1

    if-gt v7, v11, :cond_0

    if-ltz v8, :cond_0

    iget v11, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->mKBHeight:I

    add-int/lit8 v11, v11, -0x1

    if-le v8, v11, :cond_4

    :cond_0
    const/4 v6, 0x1

    move/from16 v1, p2

    move/from16 v2, p3

    add-int/lit8 v2, p3, -0xa

    :goto_1
    add-int/lit8 v11, p3, 0xa

    if-gt v2, v11, :cond_1

    move/from16 v7, p2

    move v8, v2

    if-ltz v7, :cond_1

    iget v11, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->mKBWidth:I

    add-int/lit8 v11, v11, -0x1

    if-gt v7, v11, :cond_1

    if-ltz v8, :cond_1

    iget v11, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->mKBHeight:I

    add-int/lit8 v11, v11, -0x1

    if-le v8, v11, :cond_c

    :cond_1
    add-int/lit8 v9, p2, -0xa

    :goto_2
    move/from16 v0, p2

    if-gt v9, v0, :cond_14

    add-int/lit8 v10, p3, -0xa

    :goto_3
    move/from16 v0, p3

    if-gt v10, v0, :cond_13

    if-ltz v9, :cond_2

    if-ltz v10, :cond_2

    invoke-virtual {p0, v9, v10, p1}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->setKeyIndex(III)V

    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v8, v8, 0x1

    :cond_4
    invoke-virtual {p0, v7, v8}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->getKeyIndex(II)I

    move-result v11

    if-ne v11, p1, :cond_6

    move v2, v8

    if-lez v2, :cond_5

    iget v11, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->mKBHeight:I

    add-int/lit8 v11, v11, -0x1

    if-ge v2, v11, :cond_5

    if-lez v1, :cond_5

    iget v11, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->mKBWidth:I

    add-int/lit8 v11, v11, -0x1

    if-lt v1, v11, :cond_3

    :cond_5
    const/4 v6, 0x0

    :cond_6
    sub-int v11, p3, v2

    sub-int v12, p3, v2

    mul-int/2addr v11, v12

    sub-int v12, p2, v1

    sub-int v13, p2, v1

    mul-int/2addr v12, v13

    add-int/2addr v11, v12

    int-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    double-to-int v3, v11

    rsub-int/lit8 v11, v3, 0xa

    if-gez v11, :cond_8

    const/4 v5, 0x0

    :goto_4
    if-eqz v6, :cond_7

    const/4 v4, 0x0

    :goto_5
    if-gt v4, v5, :cond_7

    add-int v11, v2, v4

    iget v12, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->mKBHeight:I

    add-int/lit8 v12, v12, -0x1

    if-le v11, v12, :cond_9

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_8
    rsub-int/lit8 v5, v3, 0xa

    goto :goto_4

    :cond_9
    add-int v11, v2, v4

    invoke-virtual {p0, v1, v11}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->isFixed(II)Z

    move-result v11

    if-nez v11, :cond_a

    add-int v11, v2, v4

    invoke-virtual {p0, v1, v11, p1}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->setKeyIndex(III)V

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_b
    add-int/lit8 v7, v7, 0x1

    :cond_c
    invoke-virtual {p0, v7, v8}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->getKeyIndex(II)I

    move-result v11

    if-ne v11, p1, :cond_e

    move v1, v7

    if-lez v2, :cond_d

    iget v11, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->mKBHeight:I

    add-int/lit8 v11, v11, -0x1

    if-ge v2, v11, :cond_d

    if-lez v1, :cond_d

    iget v11, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->mKBWidth:I

    add-int/lit8 v11, v11, -0x1

    if-lt v1, v11, :cond_b

    :cond_d
    const/4 v6, 0x0

    :cond_e
    sub-int v11, p3, v2

    sub-int v12, p3, v2

    mul-int/2addr v11, v12

    sub-int v12, p2, v1

    sub-int v13, p2, v1

    mul-int/2addr v12, v13

    add-int/2addr v11, v12

    int-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    double-to-int v3, v11

    rsub-int/lit8 v11, v3, 0xa

    if-gez v11, :cond_10

    const/4 v5, 0x0

    :goto_6
    if-eqz v6, :cond_f

    const/4 v4, 0x0

    :goto_7
    if-gt v4, v5, :cond_f

    add-int v11, v1, v4

    iget v12, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->mKBWidth:I

    add-int/lit8 v12, v12, -0x1

    if-le v11, v12, :cond_11

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_10
    rsub-int/lit8 v5, v3, 0xa

    goto :goto_6

    :cond_11
    add-int v11, v1, v4

    invoke-virtual {p0, v11, v2}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->isFixed(II)Z

    move-result v11

    if-nez v11, :cond_12

    add-int v11, v1, v4

    invoke-virtual {p0, v11, v2, p1}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->setKeyIndex(III)V

    :cond_12
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_13
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2

    :cond_14
    return-void
.end method

.method public increaseTL(III)V
    .locals 14
    .param p1    # I
    .param p2    # I
    .param p3    # I

    const/4 v6, 0x1

    move/from16 v1, p2

    move/from16 v2, p3

    add-int/lit8 v1, p2, -0xa

    :goto_0
    add-int/lit8 v11, p2, 0xa

    if-gt v1, v11, :cond_0

    move v7, v1

    move/from16 v8, p3

    if-ltz v7, :cond_0

    iget v11, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->mKBWidth:I

    add-int/lit8 v11, v11, -0x1

    if-gt v7, v11, :cond_0

    if-ltz v8, :cond_0

    iget v11, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->mKBHeight:I

    add-int/lit8 v11, v11, -0x1

    if-le v8, v11, :cond_4

    :cond_0
    const/4 v6, 0x1

    move/from16 v1, p2

    move/from16 v2, p3

    add-int/lit8 v2, p3, -0xa

    :goto_1
    add-int/lit8 v11, p3, 0xa

    if-gt v2, v11, :cond_1

    move/from16 v7, p2

    move v8, v2

    if-ltz v7, :cond_1

    iget v11, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->mKBWidth:I

    add-int/lit8 v11, v11, -0x1

    if-gt v7, v11, :cond_1

    if-ltz v8, :cond_1

    iget v11, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->mKBHeight:I

    add-int/lit8 v11, v11, -0x1

    if-le v8, v11, :cond_c

    :cond_1
    add-int/lit8 v9, p2, 0xa

    :goto_2
    move/from16 v0, p2

    if-lt v9, v0, :cond_14

    add-int/lit8 v10, p3, 0xa

    :goto_3
    move/from16 v0, p3

    if-lt v10, v0, :cond_13

    iget v11, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->mKBWidth:I

    if-ge v9, v11, :cond_2

    iget v11, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->mKBHeight:I

    if-ge v10, v11, :cond_2

    invoke-virtual {p0, v9, v10, p1}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->setKeyIndex(III)V

    :cond_2
    add-int/lit8 v10, v10, -0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v8, v8, -0x1

    :cond_4
    invoke-virtual {p0, v7, v8}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->getKeyIndex(II)I

    move-result v11

    if-ne v11, p1, :cond_6

    move v2, v8

    if-lez v2, :cond_5

    iget v11, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->mKBHeight:I

    add-int/lit8 v11, v11, -0x1

    if-ge v2, v11, :cond_5

    if-lez v1, :cond_5

    iget v11, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->mKBWidth:I

    add-int/lit8 v11, v11, -0x1

    if-lt v1, v11, :cond_3

    :cond_5
    const/4 v6, 0x0

    :cond_6
    sub-int v11, p3, v2

    sub-int v12, p3, v2

    mul-int/2addr v11, v12

    sub-int v12, p2, v1

    sub-int v13, p2, v1

    mul-int/2addr v12, v13

    add-int/2addr v11, v12

    int-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    double-to-int v3, v11

    rsub-int/lit8 v11, v3, 0xa

    if-gez v11, :cond_8

    const/4 v5, 0x0

    :goto_4
    if-eqz v6, :cond_7

    const/4 v4, 0x0

    :goto_5
    if-gt v4, v5, :cond_7

    sub-int v11, v2, v4

    if-gez v11, :cond_9

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_8
    rsub-int/lit8 v5, v3, 0xa

    goto :goto_4

    :cond_9
    sub-int v11, v2, v4

    invoke-virtual {p0, v1, v11}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->isFixed(II)Z

    move-result v11

    if-nez v11, :cond_a

    sub-int v11, v2, v4

    invoke-virtual {p0, v1, v11, p1}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->setKeyIndex(III)V

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_b
    add-int/lit8 v7, v7, -0x1

    :cond_c
    invoke-virtual {p0, v7, v8}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->getKeyIndex(II)I

    move-result v11

    if-ne v11, p1, :cond_e

    move v1, v7

    if-lez v2, :cond_d

    iget v11, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->mKBHeight:I

    add-int/lit8 v11, v11, -0x1

    if-ge v2, v11, :cond_d

    if-lez v1, :cond_d

    iget v11, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->mKBWidth:I

    add-int/lit8 v11, v11, -0x1

    if-lt v1, v11, :cond_b

    :cond_d
    const/4 v6, 0x0

    :cond_e
    sub-int v11, p3, v2

    sub-int v12, p3, v2

    mul-int/2addr v11, v12

    sub-int v12, p2, v1

    sub-int v13, p2, v1

    mul-int/2addr v12, v13

    add-int/2addr v11, v12

    int-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    double-to-int v3, v11

    rsub-int/lit8 v11, v3, 0xa

    if-gez v11, :cond_10

    const/4 v5, 0x0

    :goto_6
    if-eqz v6, :cond_f

    const/4 v4, 0x0

    :goto_7
    if-gt v4, v5, :cond_f

    sub-int v11, v1, v4

    if-gez v11, :cond_11

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_10
    rsub-int/lit8 v5, v3, 0xa

    goto :goto_6

    :cond_11
    sub-int v11, v1, v4

    invoke-virtual {p0, v11, v2}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->isFixed(II)Z

    move-result v11

    if-nez v11, :cond_12

    sub-int v11, v1, v4

    invoke-virtual {p0, v11, v2, p1}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->setKeyIndex(III)V

    :cond_12
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_13
    add-int/lit8 v9, v9, -0x1

    goto/16 :goto_2

    :cond_14
    return-void
.end method

.method public increaseTR(III)V
    .locals 14
    .param p1    # I
    .param p2    # I
    .param p3    # I

    const/4 v6, 0x1

    move/from16 v1, p2

    move/from16 v2, p3

    add-int/lit8 v1, p2, -0xa

    :goto_0
    add-int/lit8 v11, p2, 0xa

    if-gt v1, v11, :cond_0

    move v7, v1

    move/from16 v8, p3

    if-ltz v7, :cond_0

    iget v11, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->mKBWidth:I

    add-int/lit8 v11, v11, -0x1

    if-gt v7, v11, :cond_0

    if-ltz v8, :cond_0

    iget v11, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->mKBHeight:I

    add-int/lit8 v11, v11, -0x1

    if-le v8, v11, :cond_4

    :cond_0
    const/4 v6, 0x1

    move/from16 v1, p2

    move/from16 v2, p3

    add-int/lit8 v2, p3, -0xa

    :goto_1
    add-int/lit8 v11, p3, 0xa

    if-gt v2, v11, :cond_1

    move/from16 v7, p2

    move v8, v2

    if-ltz v7, :cond_1

    iget v11, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->mKBWidth:I

    add-int/lit8 v11, v11, -0x1

    if-gt v7, v11, :cond_1

    if-ltz v8, :cond_1

    iget v11, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->mKBHeight:I

    add-int/lit8 v11, v11, -0x1

    if-le v8, v11, :cond_c

    :cond_1
    add-int/lit8 v9, p2, -0xa

    :goto_2
    move/from16 v0, p2

    if-gt v9, v0, :cond_14

    add-int/lit8 v10, p3, 0xa

    :goto_3
    move/from16 v0, p3

    if-lt v10, v0, :cond_13

    if-ltz v9, :cond_2

    iget v11, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->mKBHeight:I

    if-ge v10, v11, :cond_2

    invoke-virtual {p0, v9, v10, p1}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->setKeyIndex(III)V

    :cond_2
    add-int/lit8 v10, v10, -0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v8, v8, -0x1

    :cond_4
    invoke-virtual {p0, v7, v8}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->getKeyIndex(II)I

    move-result v11

    if-ne v11, p1, :cond_6

    move v2, v8

    if-lez v2, :cond_5

    iget v11, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->mKBHeight:I

    add-int/lit8 v11, v11, -0x1

    if-ge v2, v11, :cond_5

    if-lez v1, :cond_5

    iget v11, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->mKBWidth:I

    add-int/lit8 v11, v11, -0x1

    if-lt v1, v11, :cond_3

    :cond_5
    const/4 v6, 0x0

    :cond_6
    sub-int v11, p3, v2

    sub-int v12, p3, v2

    mul-int/2addr v11, v12

    sub-int v12, p2, v1

    sub-int v13, p2, v1

    mul-int/2addr v12, v13

    add-int/2addr v11, v12

    int-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    double-to-int v3, v11

    rsub-int/lit8 v11, v3, 0xa

    if-gez v11, :cond_8

    const/4 v5, 0x0

    :goto_4
    if-eqz v6, :cond_7

    const/4 v4, 0x0

    :goto_5
    if-gt v4, v5, :cond_7

    sub-int v11, v2, v4

    if-gez v11, :cond_9

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_8
    rsub-int/lit8 v5, v3, 0xa

    goto :goto_4

    :cond_9
    sub-int v11, v2, v4

    invoke-virtual {p0, v1, v11}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->isFixed(II)Z

    move-result v11

    if-nez v11, :cond_a

    sub-int v11, v2, v4

    invoke-virtual {p0, v1, v11, p1}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->setKeyIndex(III)V

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_b
    add-int/lit8 v7, v7, 0x1

    :cond_c
    invoke-virtual {p0, v7, v8}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->getKeyIndex(II)I

    move-result v11

    if-ne v11, p1, :cond_e

    move v1, v7

    if-lez v2, :cond_d

    iget v11, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->mKBHeight:I

    add-int/lit8 v11, v11, -0x1

    if-ge v2, v11, :cond_d

    if-lez v1, :cond_d

    iget v11, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->mKBWidth:I

    add-int/lit8 v11, v11, -0x1

    if-lt v1, v11, :cond_b

    :cond_d
    const/4 v6, 0x0

    :cond_e
    sub-int v11, p3, v2

    sub-int v12, p3, v2

    mul-int/2addr v11, v12

    sub-int v12, p2, v1

    sub-int v13, p2, v1

    mul-int/2addr v12, v13

    add-int/2addr v11, v12

    int-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    double-to-int v3, v11

    rsub-int/lit8 v11, v3, 0xa

    if-gez v11, :cond_10

    const/4 v5, 0x0

    :goto_6
    if-eqz v6, :cond_f

    const/4 v4, 0x0

    :goto_7
    if-gt v4, v5, :cond_f

    add-int v11, v1, v4

    iget v12, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->mKBWidth:I

    add-int/lit8 v12, v12, -0x1

    if-le v11, v12, :cond_11

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_10
    rsub-int/lit8 v5, v3, 0xa

    goto :goto_6

    :cond_11
    add-int v11, v1, v4

    invoke-virtual {p0, v11, v2}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->isFixed(II)Z

    move-result v11

    if-nez v11, :cond_12

    add-int v11, v1, v4

    invoke-virtual {p0, v11, v2, p1}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->setKeyIndex(III)V

    :cond_12
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_13
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2

    :cond_14
    return-void
.end method

.method public initialize(Lcom/diotek/ime/framework/view/DefaultKeyboard;IIIIIIZI)Z
    .locals 20
    .param p1    # Lcom/diotek/ime/framework/view/DefaultKeyboard;
    .param p2    # I
    .param p3    # I
    .param p4    # I
    .param p5    # I
    .param p6    # I
    .param p7    # I
    .param p8    # Z
    .param p9    # I

    const/4 v5, 0x0

    new-array v5, v5, [Lcom/diotek/ime/framework/view/Keyboard$Key;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->keys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    invoke-virtual/range {p1 .. p1}, Lcom/diotek/ime/framework/view/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->keys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    invoke-interface {v5, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/diotek/ime/framework/view/Keyboard$Key;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->keys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->keys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    array-length v14, v5

    invoke-virtual/range {p1 .. p1}, Lcom/diotek/ime/framework/view/DefaultKeyboard;->getMinWidth()I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->mKBWidth:I

    invoke-virtual/range {p1 .. p1}, Lcom/diotek/ime/framework/view/DefaultKeyboard;->getHeight()I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->mKBHeight:I

    invoke-virtual/range {p1 .. p1}, Lcom/diotek/ime/framework/view/DefaultKeyboard;->isLandscape()Z

    move-result v5

    move/from16 v0, p8

    if-ne v5, v0, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/diotek/ime/framework/view/DefaultKeyboard;->getMinWidth()I

    move-result v5

    move/from16 v0, p6

    if-ne v5, v0, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/diotek/ime/framework/view/DefaultKeyboard;->getHeight()I

    move-result v5

    move/from16 v0, p7

    if-ne v5, v0, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/diotek/ime/framework/view/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    move/from16 v0, p9

    if-ne v5, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->initGridCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_1

    :cond_0
    const/4 v5, 0x0

    check-cast v5, [[I

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->grid:[[I

    const/4 v5, 0x0

    :goto_0
    return v5

    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->keys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    array-length v5, v5

    new-array v5, v5, [Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure$TCentre;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->mKeyCentre:[Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure$TCentre;

    const/4 v12, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->keys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    array-length v5, v5

    if-ge v12, v5, :cond_3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->mKeyCentre:[Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure$TCentre;

    aget-object v5, v5, v12

    if-nez v5, :cond_2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->mKeyCentre:[Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure$TCentre;

    new-instance v6, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure$TCentre;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure$TCentre;-><init>(Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;)V

    aput-object v6, v5, v12

    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->mKeyCentre:[Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure$TCentre;

    aget-object v5, v5, v12

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->keys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    aget-object v6, v6, v12

    iget v6, v6, Lcom/diotek/ime/framework/view/Keyboard$Key;->x:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->keys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    aget-object v7, v7, v12

    iget v7, v7, Lcom/diotek/ime/framework/view/Keyboard$Key;->width:I

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    iput v6, v5, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure$TCentre;->x:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->mKeyCentre:[Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure$TCentre;

    aget-object v5, v5, v12

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->keys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    aget-object v6, v6, v12

    iget v6, v6, Lcom/diotek/ime/framework/view/Keyboard$Key;->y:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->keys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    aget-object v7, v7, v12

    iget v7, v7, Lcom/diotek/ime/framework/view/Keyboard$Key;->height:I

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    iput v6, v5, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure$TCentre;->y:I

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/diotek/ime/framework/view/DefaultKeyboard;->isLandscape()Z

    move-result v5

    move/from16 v0, p8

    if-ne v5, v0, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/diotek/ime/framework/view/DefaultKeyboard;->getMinWidth()I

    move-result v5

    move/from16 v0, p6

    if-ne v5, v0, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/diotek/ime/framework/view/DefaultKeyboard;->getHeight()I

    move-result v5

    move/from16 v0, p7

    if-ne v5, v0, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/diotek/ime/framework/view/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    move/from16 v0, p9

    if-ne v5, v0, :cond_4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->initGridCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_5

    :cond_4
    const/4 v5, 0x0

    check-cast v5, [[I

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->grid:[[I

    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget v5, v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->mKBWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->mKBHeight:I

    filled-new-array {v5, v6}, [I

    move-result-object v5

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[I

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->grid:[[I

    invoke-virtual/range {p1 .. p1}, Lcom/diotek/ime/framework/view/DefaultKeyboard;->isLandscape()Z

    move-result v5

    move/from16 v0, p8

    if-ne v5, v0, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/diotek/ime/framework/view/DefaultKeyboard;->getMinWidth()I

    move-result v5

    move/from16 v0, p6

    if-ne v5, v0, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/diotek/ime/framework/view/DefaultKeyboard;->getHeight()I

    move-result v5

    move/from16 v0, p7

    if-ne v5, v0, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/diotek/ime/framework/view/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    move/from16 v0, p9

    if-ne v5, v0, :cond_6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->initGridCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_7

    :cond_6
    const/4 v5, 0x0

    check-cast v5, [[I

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->grid:[[I

    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_7
    move-object/from16 v3, p0

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p8

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p1

    move/from16 v11, p9

    invoke-virtual/range {v3 .. v11}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->readGrid(IIIZIILcom/diotek/ime/framework/view/DefaultKeyboard;I)Z

    move-result v5

    if-eqz v5, :cond_8

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->grid:[[I

    if-nez v5, :cond_9

    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_9
    const/4 v13, 0x1

    :goto_2
    if-ge v13, v14, :cond_f

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->keys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    aget-object v5, v5, v13

    iget v5, v5, Lcom/diotek/ime/framework/view/Keyboard$Key;->y:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->keys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    aget-object v6, v6, v13

    iget v6, v6, Lcom/diotek/ime/framework/view/Keyboard$Key;->height:I

    add-int v16, v5, v6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->keys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    aget-object v5, v5, v13

    iget v5, v5, Lcom/diotek/ime/framework/view/Keyboard$Key;->x:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->keys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    aget-object v6, v6, v13

    iget v6, v6, Lcom/diotek/ime/framework/view/Keyboard$Key;->width:I

    add-int v15, v5, v6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->keys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    aget-object v5, v5, v13

    iget v0, v5, Lcom/diotek/ime/framework/view/Keyboard$Key;->y:I

    move/from16 v18, v0

    :goto_3
    move/from16 v0, v18

    move/from16 v1, v16

    if-gt v0, v1, :cond_e

    move-object/from16 v0, p0

    iget v5, v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->mKBHeight:I

    move/from16 v0, v18

    if-ge v0, v5, :cond_e

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->keys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    aget-object v5, v5, v13

    iget v0, v5, Lcom/diotek/ime/framework/view/Keyboard$Key;->x:I

    move/from16 v17, v0

    :goto_4
    move/from16 v0, v17

    if-gt v0, v15, :cond_d

    move-object/from16 v0, p0

    iget v5, v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->mKBWidth:I

    move/from16 v0, v17

    if-ge v0, v5, :cond_d

    invoke-virtual/range {p1 .. p1}, Lcom/diotek/ime/framework/view/DefaultKeyboard;->isLandscape()Z

    move-result v5

    move/from16 v0, p8

    if-ne v5, v0, :cond_a

    invoke-virtual/range {p1 .. p1}, Lcom/diotek/ime/framework/view/DefaultKeyboard;->getMinWidth()I

    move-result v5

    move/from16 v0, p6

    if-ne v5, v0, :cond_a

    invoke-virtual/range {p1 .. p1}, Lcom/diotek/ime/framework/view/DefaultKeyboard;->getHeight()I

    move-result v5

    move/from16 v0, p7

    if-ne v5, v0, :cond_a

    invoke-virtual/range {p1 .. p1}, Lcom/diotek/ime/framework/view/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    move/from16 v0, p9

    if-ne v5, v0, :cond_a

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->initGridCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_b

    :cond_a
    const/4 v5, 0x0

    check-cast v5, [[I

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->grid:[[I

    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_b
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2, v13}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->setBaseIndex(III)V

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2, v13}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->setKeyIndex(III)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->keys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    aget-object v5, v5, v13

    iget v5, v5, Lcom/diotek/ime/framework/view/Keyboard$Key;->x:I

    add-int/lit8 v5, v5, 0x5

    move/from16 v0, v17

    if-le v0, v5, :cond_c

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->keys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    aget-object v5, v5, v13

    iget v5, v5, Lcom/diotek/ime/framework/view/Keyboard$Key;->x:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->keys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    aget-object v6, v6, v13

    iget v6, v6, Lcom/diotek/ime/framework/view/Keyboard$Key;->width:I

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x5

    move/from16 v0, v17

    if-ge v0, v5, :cond_c

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->keys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    aget-object v5, v5, v13

    iget v5, v5, Lcom/diotek/ime/framework/view/Keyboard$Key;->y:I

    add-int/lit8 v5, v5, 0x5

    move/from16 v0, v18

    if-le v0, v5, :cond_c

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->keys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    aget-object v5, v5, v13

    iget v5, v5, Lcom/diotek/ime/framework/view/Keyboard$Key;->y:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->keys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    aget-object v6, v6, v13

    iget v6, v6, Lcom/diotek/ime/framework/view/Keyboard$Key;->height:I

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x5

    move/from16 v0, v18

    if-ge v0, v5, :cond_c

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2, v5}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->setFixed(IIZ)V

    :goto_5
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_4

    :cond_c
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2, v5}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->setFixed(IIZ)V

    goto :goto_5

    :cond_d
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_3

    :cond_e
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_2

    :cond_f
    const/4 v4, 0x0

    :goto_6
    move-object/from16 v0, p0

    iget v5, v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->mKBHeight:I

    if-ge v4, v5, :cond_17

    const/4 v3, 0x0

    :goto_7
    move-object/from16 v0, p0

    iget v5, v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->mKBWidth:I

    if-ge v3, v5, :cond_16

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->getKeyIndex(II)I

    move-result v5

    if-nez v5, :cond_12

    invoke-virtual/range {p1 .. p1}, Lcom/diotek/ime/framework/view/DefaultKeyboard;->isLandscape()Z

    move-result v5

    move/from16 v0, p8

    if-ne v5, v0, :cond_10

    invoke-virtual/range {p1 .. p1}, Lcom/diotek/ime/framework/view/DefaultKeyboard;->getMinWidth()I

    move-result v5

    move/from16 v0, p6

    if-ne v5, v0, :cond_10

    invoke-virtual/range {p1 .. p1}, Lcom/diotek/ime/framework/view/DefaultKeyboard;->getHeight()I

    move-result v5

    move/from16 v0, p7

    if-ne v5, v0, :cond_10

    invoke-virtual/range {p1 .. p1}, Lcom/diotek/ime/framework/view/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    move/from16 v0, p9

    if-ne v5, v0, :cond_10

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->initGridCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_11

    :cond_10
    const/4 v5, 0x0

    check-cast v5, [[I

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->grid:[[I

    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_11
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->IS_KORMODE:Z

    if-eqz v5, :cond_13

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->manager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v8

    move-object/from16 v5, p1

    move/from16 v6, p6

    invoke-static/range {v3 .. v8}, Lcom/diotek/ime/framework/util/Utils;->getTheNearestKeyIndexKor(IILcom/diotek/ime/framework/view/DefaultKeyboard;IZZ)I

    move-result v19

    :goto_8
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v3, v4, v1}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->setBaseIndex(III)V

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v3, v4, v1}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->setKeyIndex(III)V

    const/4 v5, -0x1

    move/from16 v0, v19

    if-ne v0, v5, :cond_14

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->setFixed(IIZ)V

    :cond_12
    :goto_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_13
    const/4 v5, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p6

    invoke-static {v3, v4, v0, v1, v5}, Lcom/diotek/ime/framework/util/Utils;->getTheNearestKeyIndex(IILcom/diotek/ime/framework/view/Keyboard;IZ)I

    move-result v19

    goto :goto_8

    :cond_14
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->keys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    aget-object v5, v5, v19

    iget v5, v5, Lcom/diotek/ime/framework/view/Keyboard$Key;->x:I

    add-int/lit8 v5, v5, 0x5

    if-le v3, v5, :cond_15

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->keys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    aget-object v5, v5, v19

    iget v5, v5, Lcom/diotek/ime/framework/view/Keyboard$Key;->x:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->keys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    aget-object v6, v6, v19

    iget v6, v6, Lcom/diotek/ime/framework/view/Keyboard$Key;->width:I

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x5

    if-ge v3, v5, :cond_15

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->keys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    aget-object v5, v5, v19

    iget v5, v5, Lcom/diotek/ime/framework/view/Keyboard$Key;->y:I

    add-int/lit8 v5, v5, 0x5

    if-le v4, v5, :cond_15

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->keys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    aget-object v5, v5, v19

    iget v5, v5, Lcom/diotek/ime/framework/view/Keyboard$Key;->y:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->keys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    aget-object v6, v6, v19

    iget v6, v6, Lcom/diotek/ime/framework/view/Keyboard$Key;->height:I

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x5

    if-ge v4, v5, :cond_15

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->setFixed(IIZ)V

    goto :goto_9

    :cond_15
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->setFixed(IIZ)V

    goto :goto_9

    :cond_16
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_6

    :cond_17
    const/4 v5, 0x1

    goto/16 :goto_0
.end method

.method public isFixed(II)Z
    .locals 2
    .param p1    # I
    .param p2    # I

    iget-object v0, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->grid:[[I

    aget-object v0, v0, p1

    aget v0, v0, p2

    const/high16 v1, 0xf000000

    and-int/2addr v0, v1

    const/high16 v1, 0x1000000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readGrid(IIIZIILcom/diotek/ime/framework/view/DefaultKeyboard;I)Z
    .locals 17
    .param p1    # I
    .param p2    # I
    .param p3    # I
    .param p4    # Z
    .param p5    # I
    .param p6    # I
    .param p7    # Lcom/diotek/ime/framework/view/DefaultKeyboard;
    .param p8    # I

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "grid_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p5

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p6

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p8

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p4

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ".db"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v6, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->manager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v14

    const-string v15, "grids"

    invoke-direct {v6, v14, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v6, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v10, 0x0

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_1

    const/4 v14, 0x0

    :cond_0
    :goto_0
    return v14

    :cond_1
    const/4 v4, 0x0

    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v11, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v13, 0x0

    mul-int v14, p5, p6

    mul-int/lit8 v14, v14, 0x8

    :try_start_1
    new-array v12, v14, [B

    :cond_2
    invoke-virtual {v5, v12}, Ljava/io/InputStream;->read([B)I

    move-result v11

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v11, :cond_5

    invoke-virtual/range {p7 .. p7}, Lcom/diotek/ime/framework/view/DefaultKeyboard;->isLandscape()Z

    move-result v14

    move/from16 v0, p4

    if-ne v14, v0, :cond_3

    invoke-virtual/range {p7 .. p7}, Lcom/diotek/ime/framework/view/DefaultKeyboard;->getMinWidth()I

    move-result v14

    move/from16 v0, p5

    if-ne v14, v0, :cond_3

    invoke-virtual/range {p7 .. p7}, Lcom/diotek/ime/framework/view/DefaultKeyboard;->getHeight()I

    move-result v14

    move/from16 v0, p6

    if-ne v14, v0, :cond_3

    invoke-virtual/range {p7 .. p7}, Lcom/diotek/ime/framework/view/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    move/from16 v0, p8

    if-ne v14, v0, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->initGridCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v14}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v14

    const/4 v15, 0x1

    if-le v14, v15, :cond_4

    :cond_3
    const/4 v14, 0x0

    check-cast v14, [[I

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->grid:[[I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v14, 0x0

    if-eqz v5, :cond_0

    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v15, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->TAG:Ljava/lang/String;

    const-string v16, "Error in closing the stream"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_4
    :try_start_3
    aget-byte v14, v12, v9

    const/16 v15, 0xa

    if-ne v14, v15, :cond_9

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->grid:[[I

    aget-object v14, v14, v7

    aput v13, v14, v8
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v13, 0x0

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v14, p5, -0x1

    if-ne v7, v14, :cond_8

    add-int/lit8 v8, v8, 0x1

    const/4 v7, 0x0

    :goto_2
    if-lt v9, v11, :cond_9

    :cond_5
    const/4 v14, -0x1

    if-ne v11, v14, :cond_2

    const/4 v10, 0x1

    if-eqz v5, :cond_6

    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    :cond_6
    :goto_3
    move-object v4, v5

    :cond_7
    :goto_4
    move v14, v10

    goto/16 :goto_0

    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_9
    mul-int/lit8 v14, v13, 0xa

    :try_start_5
    aget-byte v15, v12, v9
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_7
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    add-int/lit8 v15, v15, -0x30

    add-int v13, v14, v15

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :catch_1
    move-exception v2

    :goto_5
    :try_start_6
    sget-object v14, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->TAG:Ljava/lang/String;

    const-string v15, "Error in Function readGrid()"

    invoke-static {v14, v15, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const/4 v10, 0x0

    if-eqz v4, :cond_7

    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_4

    :catch_2
    move-exception v2

    sget-object v14, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->TAG:Ljava/lang/String;

    const-string v15, "Error in closing the stream"

    :goto_6
    invoke-static {v14, v15, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    :catch_3
    move-exception v2

    :goto_7
    :try_start_8
    sget-object v14, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->TAG:Ljava/lang/String;

    const-string v15, "!@ArrayIndexOutOfBoundsException: File corrupted, deleting now."

    invoke-static {v14, v15, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_a

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_a
    const/4 v10, 0x0

    if-eqz v4, :cond_7

    :try_start_9
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_4

    :catch_4
    move-exception v2

    sget-object v14, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->TAG:Ljava/lang/String;

    const-string v15, "Error in closing the stream"

    goto :goto_6

    :catchall_0
    move-exception v14

    :goto_8
    if-eqz v4, :cond_b

    :try_start_a
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    :cond_b
    :goto_9
    throw v14

    :catch_5
    move-exception v2

    sget-object v15, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->TAG:Ljava/lang/String;

    const-string v16, "Error in closing the stream"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    :catch_6
    move-exception v2

    sget-object v14, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->TAG:Ljava/lang/String;

    const-string v15, "Error in closing the stream"

    invoke-static {v14, v15, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :catchall_1
    move-exception v14

    move-object v4, v5

    goto :goto_8

    :catch_7
    move-exception v2

    move-object v4, v5

    goto :goto_7

    :catch_8
    move-exception v2

    move-object v4, v5

    goto :goto_5
.end method

.method public release(III)V
    .locals 6
    .param p1    # I
    .param p2    # I
    .param p3    # I

    invoke-virtual {p0, p1, p2}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->getKeyIndex(II)I

    move-result v2

    const/4 v5, -0x1

    if-ne v2, v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move v3, p1

    move v0, p1

    move v4, p2

    move v1, p2

    :cond_2
    invoke-virtual {p0, v3, v4}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->getKeyIndex(II)I

    move-result v5

    if-ne v5, v2, :cond_3

    invoke-virtual {p0, v3, v4}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->getBaseIndex(II)I

    move-result v5

    if-ne v5, p3, :cond_3

    invoke-virtual {p0, v3, v4}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->getBaseIndex(II)I

    move-result v5

    invoke-virtual {p0, v3, v4, v5}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->setKeyIndex(III)V

    :cond_3
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_4

    invoke-virtual {p0, v3, v4}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->isFixed(II)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_4
    move v3, v0

    :cond_5
    invoke-virtual {p0, v3, v4}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->getKeyIndex(II)I

    move-result v5

    if-ne v5, v2, :cond_6

    invoke-virtual {p0, v3, v4}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->getBaseIndex(II)I

    move-result v5

    if-ne v5, p3, :cond_6

    invoke-virtual {p0, v3, v4}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->getBaseIndex(II)I

    move-result v5

    invoke-virtual {p0, v3, v4, v5}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->setKeyIndex(III)V

    :cond_6
    add-int/lit8 v3, v3, 0x1

    iget v5, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->mKBWidth:I

    add-int/lit8 v5, v5, -0x1

    if-gt v3, v5, :cond_7

    invoke-virtual {p0, v3, v4}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->isFixed(II)Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_7
    add-int/lit8 v1, v1, -0x1

    move v3, v0

    move v4, v1

    if-ltz v4, :cond_8

    invoke-virtual {p0, v3, v4}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->isFixed(II)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_8
    move v3, p1

    move v0, p1

    add-int/lit8 v4, p2, 0x1

    move v1, v4

    :cond_9
    invoke-virtual {p0, v3, v4}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->getKeyIndex(II)I

    move-result v5

    if-ne v5, v2, :cond_a

    invoke-virtual {p0, v3, v4}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->getBaseIndex(II)I

    move-result v5

    if-ne v5, p3, :cond_a

    invoke-virtual {p0, v3, v4}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->getBaseIndex(II)I

    move-result v5

    invoke-virtual {p0, v3, v4, v5}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->setKeyIndex(III)V

    :cond_a
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_b

    invoke-virtual {p0, v3, v4}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->isFixed(II)Z

    move-result v5

    if-eqz v5, :cond_9

    :cond_b
    move v3, v0

    :cond_c
    invoke-virtual {p0, v3, v4}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->getKeyIndex(II)I

    move-result v5

    if-ne v5, v2, :cond_d

    invoke-virtual {p0, v3, v4}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->getBaseIndex(II)I

    move-result v5

    if-ne v5, p3, :cond_d

    invoke-virtual {p0, v3, v4}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->getBaseIndex(II)I

    move-result v5

    invoke-virtual {p0, v3, v4, v5}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->setKeyIndex(III)V

    :cond_d
    add-int/lit8 v3, v3, 0x1

    iget v5, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->mKBWidth:I

    add-int/lit8 v5, v5, -0x1

    if-gt v3, v5, :cond_e

    invoke-virtual {p0, v3, v4}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->isFixed(II)Z

    move-result v5

    if-eqz v5, :cond_c

    :cond_e
    add-int/lit8 v1, v1, 0x1

    move v3, v0

    move v4, v1

    iget v5, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->mKBHeight:I

    add-int/lit8 v5, v5, -0x1

    if-gt v4, v5, :cond_0

    invoke-virtual {p0, v3, v4}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->isFixed(II)Z

    move-result v5

    if-eqz v5, :cond_9

    goto/16 :goto_0
.end method

.method public removeAllDB()Z
    .locals 10

    const/4 v2, 0x1

    :try_start_0
    new-instance v5, Ljava/io/File;

    iget-object v8, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->manager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v8

    const-string v9, "grids"

    invoke-direct {v5, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    move-object v1, v0

    array-length v7, v1

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v7, :cond_0

    aget-object v3, v1, v6

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :catch_0
    move-exception v4

    const/4 v2, 0x0

    const-string v8, "SamsungIME"

    const-string v9, "removeAllDB is failed"

    invoke-static {v8, v9, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return v2
.end method

.method public restore(II)V
    .locals 7
    .param p1    # I
    .param p2    # I

    invoke-virtual {p0, p1, p2}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->getKeyIndex(II)I

    move-result v4

    const/4 v6, -0x1

    if-ne v4, v6, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->getBaseIndex(II)I

    move-result v5

    invoke-virtual {p0, p1, p2}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->isFixed(II)Z

    move-result v6

    if-nez v6, :cond_0

    if-eq v4, v5, :cond_2

    invoke-virtual {p0, p1, p2, v5}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->release(III)V

    :cond_2
    add-int/lit8 v2, p1, 0xa

    add-int/lit8 v3, p2, 0xa

    add-int/lit8 v1, p2, -0xa

    :goto_0
    if-gt v1, v3, :cond_0

    add-int/lit8 v0, p1, -0xa

    :goto_1
    if-gt v0, v2, :cond_4

    if-ltz v0, :cond_3

    if-ltz v1, :cond_3

    iget v6, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->mKBWidth:I

    add-int/lit8 v6, v6, -0x1

    if-gt v0, v6, :cond_3

    iget v6, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->mKBHeight:I

    add-int/lit8 v6, v6, -0x1

    if-gt v1, v6, :cond_3

    invoke-virtual {p0, v0, v1}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->getKeyIndex(II)I

    move-result v6

    if-ne v6, v4, :cond_3

    invoke-virtual {p0, v0, v1}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->getBaseIndex(II)I

    move-result v6

    if-eq v6, v4, :cond_3

    invoke-virtual {p0, v0, v1}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->getBaseIndex(II)I

    move-result v5

    invoke-virtual {p0, p1, p2, v5}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->release(III)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setBaseIndex(III)V
    .locals 3
    .param p1    # I
    .param p2    # I
    .param p3    # I

    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    iget-object v0, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->grid:[[I

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->grid:[[I

    aget-object v1, v1, p1

    aget v1, v1, p2

    and-int/lit8 v1, v1, 0x0

    const/high16 v2, -0x80000000

    or-int/2addr v1, v2

    aput v1, v0, p2

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->grid:[[I

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->grid:[[I

    aget-object v1, v1, p1

    aget v1, v1, p2

    const v2, -0xfff001

    and-int/2addr v1, v2

    aput v1, v0, p2

    iget-object v0, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->grid:[[I

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->grid:[[I

    aget-object v1, v1, p1

    aget v1, v1, p2

    shl-int/lit8 v2, p3, 0xc

    or-int/2addr v1, v2

    aput v1, v0, p2

    iget-object v0, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->grid:[[I

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->grid:[[I

    aget-object v1, v1, p1

    aget v1, v1, p2

    const v2, 0xfffffff

    and-int/2addr v1, v2

    aput v1, v0, p2

    goto :goto_0
.end method

.method public setFixed(IIZ)V
    .locals 3
    .param p1    # I
    .param p2    # I
    .param p3    # Z

    iget-object v0, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->grid:[[I

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->grid:[[I

    aget-object v1, v1, p1

    aget v1, v1, p2

    const v2, -0xf000001

    and-int/2addr v1, v2

    aput v1, v0, p2

    iget-object v0, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->grid:[[I

    aget-object v1, v0, p1

    iget-object v0, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->grid:[[I

    aget-object v0, v0, p1

    aget v2, v0, p2

    if-eqz p3, :cond_0

    const/high16 v0, 0x1000000

    :goto_0
    or-int/2addr v0, v2

    aput v0, v1, p2

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setKeyIndex(III)V
    .locals 3
    .param p1    # I
    .param p2    # I
    .param p3    # I

    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    iget-object v0, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->grid:[[I

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->grid:[[I

    aget-object v1, v1, p1

    aget v1, v1, p2

    and-int/lit8 v1, v1, 0x0

    const/high16 v2, -0x80000000

    or-int/2addr v1, v2

    aput v1, v0, p2

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->grid:[[I

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->grid:[[I

    aget-object v1, v1, p1

    aget v1, v1, p2

    and-int/lit16 v1, v1, -0x1000

    aput v1, v0, p2

    iget-object v0, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->grid:[[I

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->grid:[[I

    aget-object v1, v1, p1

    aget v1, v1, p2

    or-int/2addr v1, p3

    aput v1, v0, p2

    iget-object v0, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->grid:[[I

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->grid:[[I

    aget-object v1, v1, p1

    aget v1, v1, p2

    const v2, 0xfffffff

    and-int/2addr v1, v2

    aput v1, v0, p2

    goto :goto_0
.end method

.method public setParameter(ZZ)V
    .locals 0
    .param p1    # Z
    .param p2    # Z

    iput-boolean p1, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->IS_HD:Z

    iput-boolean p2, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->IS_KORMODE:Z

    return-void
.end method
