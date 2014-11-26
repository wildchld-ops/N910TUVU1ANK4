.class Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;
.super Ljava/lang/Object;
.source "MultiSocketInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/http/impl/client/MultiSocketInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BlockManager"
.end annotation


# static fields
.field public static final BLOCKINFOSIZE:I = 0x4


# instance fields
.field protected headerTime:[J

.field private httpRequestID:[I

.field private minNotReadBlockID:I

.field protected reconnTime:[J

.field private socketSpeed:[J

.field final synthetic this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

.field protected toBeReadLen:[J


# direct methods
.method public constructor <init>(Lorg/apache/http/impl/client/MultiSocketInputStream;)V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v3, 0x2

    iput-object p1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v1, v3, [I

    iput-object v1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->httpRequestID:[I

    new-array v1, v3, [J

    iput-object v1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->socketSpeed:[J

    new-array v1, v3, [J

    iput-object v1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->reconnTime:[J

    new-array v1, v3, [J

    iput-object v1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->headerTime:[J

    new-array v1, v3, [J

    iput-object v1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->toBeReadLen:[J

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    iget-object v1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->httpRequestID:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    iget-object v1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->socketSpeed:[J

    aput-wide v4, v1, v0

    iget-object v1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->reconnTime:[J

    aput-wide v4, v1, v0

    iget-object v1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->headerTime:[J

    aput-wide v4, v1, v0

    iget-object v1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->toBeReadLen:[J

    aput-wide v4, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->minNotReadBlockID:I

    return-void
.end method

.method static synthetic access$5700(Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;)[J
    .locals 1
    .param p0    # Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;

    iget-object v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->socketSpeed:[J

    return-object v0
.end method

.method private getBlockForWithID(II)[J
    .locals 4
    .param p1    # I
    .param p2    # I

    const/4 v3, 0x0

    iget-object v1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static {v1}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1600(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static {v1}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1600(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static {v1}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1600(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v1

    aget-byte v1, v1, v0

    if-lez v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static {v1}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1600(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v1

    array-length v1, v1

    if-ne v0, v1, :cond_0

    sget-boolean v1, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "id reach the maximum "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1600(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static {v1}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1600(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v1

    array-length v1, v1

    if-ne v0, v1, :cond_4

    iget-object v1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static {v1}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1600(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_2
    if-ltz v0, :cond_4

    iget-object v1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static {v1}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1600(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static {v1}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1600(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v1

    aget-byte v1, v1, v0

    if-lez v1, :cond_4

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->minNotReadBlockID:I

    if-ne v0, v1, :cond_2

    sget-boolean v1, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "id reach the minimum "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->minNotReadBlockID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_3
    new-array v1, v3, [J

    :goto_0
    return-object v1

    :cond_4
    if-ltz v0, :cond_5

    iget-object v1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static {v1}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1600(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v1

    array-length v1, v1

    if-lt v0, v1, :cond_7

    :cond_5
    sget-boolean v1, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get an illegal tmpID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_6
    new-array v1, v3, [J

    goto :goto_0

    :cond_7
    iget-object v1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->httpRequestID:[I

    aput v0, v1, p1

    invoke-direct {p0, v0, p1}, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->getNewBuf(II)[J

    move-result-object v1

    goto :goto_0
.end method

.method private getContinuousChunk(I)[J
    .locals 17
    .param p1    # I

    const/4 v9, 0x0

    const-wide/16 v3, -0x1

    const-wide/16 v11, -0x1

    const/4 v5, 0x0

    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Inside getContinuousChunk(), mReadBlockNumber="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mReadBlockNumber:Ljava/lang/Integer;
    invoke-static {v7}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$5500(Lorg/apache/http/impl/client/MultiSocketInputStream;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_0
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mReadBlockNumber:Ljava/lang/Integer;
    invoke-static {v7}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$5500(Lorg/apache/http/impl/client/MultiSocketInputStream;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v13

    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1600(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v2

    array-length v2, v2

    if-ge v13, v2, :cond_d

    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mBlockStatus["

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "] = "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static {v7}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1600(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v7

    aget-byte v7, v7, v13

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->statusToStr(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1600(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v2

    aget-byte v2, v2, v13

    packed-switch v2, :pswitch_data_0

    :cond_2
    :goto_1
    :pswitch_0
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :pswitch_1
    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_3

    const-string v2, "Inside NOT_READ BLOCK"

    invoke-static {v2}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_3
    add-int/lit8 v9, v9, 0x1

    const-wide/16 v7, -0x1

    cmp-long v2, v3, v7

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockSize:I
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$900(Lorg/apache/http/impl/client/MultiSocketInputStream;)I

    move-result v2

    mul-int/2addr v2, v13

    int-to-long v7, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mOffset:J
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1200(Lorg/apache/http/impl/client/MultiSocketInputStream;)J

    move-result-wide v15

    add-long v3, v7, v15

    move v5, v13

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1600(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v2

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ne v13, v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mContentLength:J
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$400(Lorg/apache/http/impl/client/MultiSocketInputStream;)J

    move-result-wide v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-wide v15, v2, Lorg/apache/http/impl/client/MultiSocketInputStream;->mOriOffset:J

    add-long/2addr v7, v15

    const-wide/16 v15, 0x1

    sub-long v11, v7, v15

    goto :goto_1

    :cond_5
    add-int v2, v5, v9

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockSize:I
    invoke-static {v7}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$900(Lorg/apache/http/impl/client/MultiSocketInputStream;)I

    move-result v7

    mul-int/2addr v2, v7

    int-to-long v7, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mOffset:J
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1200(Lorg/apache/http/impl/client/MultiSocketInputStream;)J

    move-result-wide v15

    add-long/2addr v7, v15

    const-wide/16 v15, 0x1

    sub-long v11, v7, v15

    goto :goto_1

    :pswitch_2
    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_6

    const-string v2, "Inside BLOCKED BLOCK"

    invoke-static {v2}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_6
    const/4 v2, 0x1

    if-lt v9, v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1600(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v2

    array-length v13, v2

    goto :goto_1

    :cond_7
    if-nez v9, :cond_2

    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_8

    const-string v2, "Inside BLOCKED BLOCK: Getting the start index."

    invoke-static {v2}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mInBuffer:Ljava/util/HashMap;
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1500(Lorg/apache/http/impl/client/MultiSocketInputStream;)Ljava/util/HashMap;

    move-result-object v2

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v13}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->getOffset()J

    move-result-wide v3

    move v5, v13

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1600(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v2

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ne v13, v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mContentLength:J
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$400(Lorg/apache/http/impl/client/MultiSocketInputStream;)J

    move-result-wide v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-wide v15, v2, Lorg/apache/http/impl/client/MultiSocketInputStream;->mOriOffset:J

    add-long/2addr v7, v15

    const-wide/16 v15, 0x1

    sub-long v11, v7, v15

    goto/16 :goto_1

    :cond_9
    add-int v2, v5, v9

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockSize:I
    invoke-static {v7}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$900(Lorg/apache/http/impl/client/MultiSocketInputStream;)I

    move-result v7

    mul-int/2addr v2, v7

    int-to-long v7, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mOffset:J
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1200(Lorg/apache/http/impl/client/MultiSocketInputStream;)J

    move-result-wide v15

    add-long/2addr v7, v15

    const-wide/16 v15, 0x1

    sub-long v11, v7, v15

    goto/16 :goto_1

    :pswitch_3
    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_a

    const-string v2, "Inside FULLREAD BLOCK"

    invoke-static {v2}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_a
    const/4 v2, 0x1

    if-lt v9, v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1600(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v2

    array-length v13, v2

    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_b

    const-string v2, "Inside FULLREAD BLOCK: exiting this loop as notReadContinuousBlock >= 1"

    invoke-static {v2}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_b
    add-int v2, v5, v9

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockSize:I
    invoke-static {v7}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$900(Lorg/apache/http/impl/client/MultiSocketInputStream;)I

    move-result v7

    mul-int/2addr v2, v7

    int-to-long v7, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mOffset:J
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1200(Lorg/apache/http/impl/client/MultiSocketInputStream;)J

    move-result-wide v15

    add-long/2addr v7, v15

    const-wide/16 v15, 0x1

    sub-long v11, v7, v15

    goto/16 :goto_1

    :pswitch_4
    const/4 v2, 0x1

    if-lt v9, v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1600(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v2

    array-length v13, v2

    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_c

    const-string v2, "Inside READING Block: exiting this loop as notReadContinuousBlock >= 1"

    invoke-static {v2}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_c
    add-int v2, v5, v9

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockSize:I
    invoke-static {v7}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$900(Lorg/apache/http/impl/client/MultiSocketInputStream;)I

    move-result v7

    mul-int/2addr v2, v7

    int-to-long v7, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mOffset:J
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1200(Lorg/apache/http/impl/client/MultiSocketInputStream;)J

    move-result-wide v15

    add-long/2addr v7, v15

    const-wide/16 v15, 0x1

    sub-long v11, v7, v15

    goto/16 :goto_1

    :cond_d
    const/4 v2, 0x1

    if-lt v9, v2, :cond_14

    const/4 v2, 0x4

    new-array v10, v2, [J

    const/4 v2, 0x0

    aput-wide v3, v10, v2

    const/4 v2, 0x1

    aput-wide v11, v10, v2

    const/4 v2, 0x2

    sub-long v7, v11, v3

    const-wide/16 v15, 0x1

    add-long/2addr v7, v15

    aput-wide v7, v10, v2

    const/4 v2, 0x3

    int-to-long v7, v5

    aput-wide v7, v10, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1600(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v2

    aget-byte v2, v2, v5

    const/4 v7, -0x1

    if-eq v2, v7, :cond_13

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1600(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v2

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ne v5, v2, :cond_e

    const/4 v2, 0x2

    aget-wide v7, v10, v2

    long-to-int v6, v7

    :goto_2
    new-instance v1, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    move/from16 v8, p1

    invoke-direct/range {v1 .. v9}, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;-><init>(Lorg/apache/http/impl/client/MultiSocketInputStream;JIILjava/util/LinkedList;II)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mInBuffer:Ljava/util/HashMap;
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1500(Lorg/apache/http/impl/client/MultiSocketInputStream;)Ljava/util/HashMap;

    move-result-object v2

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-enter v1

    const/4 v14, 0x1

    :goto_3
    if-ge v14, v9, :cond_10

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1600(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v2

    add-int v7, v5, v14

    const/4 v8, 0x1

    aput-byte v8, v2, v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    :cond_e
    const/4 v2, 0x2

    aget-wide v7, v10, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockSize:I
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$900(Lorg/apache/http/impl/client/MultiSocketInputStream;)I

    move-result v2

    int-to-long v15, v2

    cmp-long v2, v7, v15

    if-lez v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockSize:I
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$900(Lorg/apache/http/impl/client/MultiSocketInputStream;)I

    move-result v2

    int-to-long v7, v2

    :goto_4
    long-to-int v6, v7

    goto :goto_2

    :cond_f
    const/4 v2, 0x2

    aget-wide v7, v10, v2

    goto :goto_4

    :cond_10
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_11
    :goto_5
    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_12

    const-string v2, ""

    invoke-static {v2}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_12
    :goto_6
    return-object v10

    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1600(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v2

    aget-byte v2, v2, v5

    const/4 v7, -0x1

    if-ne v2, v7, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mInBuffer:Ljava/util/HashMap;
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1500(Lorg/apache/http/impl/client/MultiSocketInputStream;)Ljava/util/HashMap;

    move-result-object v2

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;

    monitor-enter v1

    :try_start_3
    invoke-virtual {v1, v9}, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->setTotalChunks(I)V

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->changeSockID(I)V

    monitor-exit v1

    goto :goto_5

    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    :cond_14
    const/4 v2, 0x0

    new-array v10, v2, [J

    goto :goto_6

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private getMinNotReadBlock(I)[J
    .locals 4
    .param p1    # I

    const/4 v3, 0x0

    iget v1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->minNotReadBlockID:I

    iget-object v2, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1600(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v2

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_0
    if-ltz v0, :cond_2

    iget-object v1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static {v1}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1600(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static {v1}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1600(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v1

    aget-byte v1, v1, v0

    if-lez v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static {v1}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1600(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v1

    array-length v1, v1

    if-ne v0, v1, :cond_0

    sget-boolean v1, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "id reach the maximum "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1600(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_1
    new-array v1, v3, [J

    :goto_0
    return-object v1

    :cond_2
    if-ltz v0, :cond_3

    iget-object v1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static {v1}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1600(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v1

    array-length v1, v1

    if-lt v0, v1, :cond_5

    :cond_3
    sget-boolean v1, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get an illegal tmpID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_4
    new-array v1, v3, [J

    goto :goto_0

    :cond_5
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->minNotReadBlockID:I

    iget-object v1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->httpRequestID:[I

    aput v0, v1, p1

    invoke-direct {p0, v0, p1}, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->getNewBuf(II)[J

    move-result-object v1

    goto :goto_0
.end method

.method private getMinNotReadBlockID()I
    .locals 3

    iget v1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->minNotReadBlockID:I

    iget-object v2, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1600(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v2

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_0
    iget-object v1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static {v1}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1600(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v1

    aget-byte v1, v1, v0

    if-lez v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static {v1}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1600(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v1

    array-length v1, v1

    if-ne v0, v1, :cond_0

    sget-boolean v1, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "in getMinNotReadBlockID, id reach the maximum "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1600(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_1
    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_2
    move v1, v0

    goto :goto_0
.end method

.method private getNewBuf(II)[J
    .locals 13
    .param p1    # I
    .param p2    # I

    const/4 v1, 0x4

    new-array v10, v1, [J

    iget-object v1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mInBuffer:Ljava/util/HashMap;
    invoke-static {v1}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1500(Lorg/apache/http/impl/client/MultiSocketInputStream;)Ljava/util/HashMap;

    move-result-object v12

    monitor-enter v12

    :try_start_0
    iget-object v1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static {v1}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1600(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v1

    aget-byte v1, v1, p1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mInBuffer:Ljava/util/HashMap;
    invoke-static {v1}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1500(Lorg/apache/http/impl/client/MultiSocketInputStream;)Ljava/util/HashMap;

    move-result-object v1

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-boolean v1, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "block "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "is blocked and now it is occupied again"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mInBuffer:Ljava/util/HashMap;
    invoke-static {v1}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1500(Lorg/apache/http/impl/client/MultiSocketInputStream;)Ljava/util/HashMap;

    move-result-object v1

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;

    const/4 v1, 0x0

    invoke-virtual {v9}, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->getOffset()J

    move-result-wide v2

    aput-wide v2, v10, v1

    const/4 v1, 0x1

    invoke-virtual {v9}, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->getOffset()J

    move-result-wide v2

    invoke-virtual {v9}, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->getToBeReadLength()J

    move-result-wide v4

    add-long/2addr v2, v4

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    aput-wide v2, v10, v1

    const/4 v1, 0x2

    invoke-virtual {v9}, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->getToBeReadLength()J

    move-result-wide v2

    aput-wide v2, v10, v1

    const/4 v1, 0x3

    int-to-long v2, p1

    aput-wide v2, v10, v1

    invoke-virtual {v9, p2}, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->changeSockID(I)V

    :goto_0
    iget-object v1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static {v1}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1600(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v1

    const/4 v2, 0x1

    aput-byte v2, v1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mInBuffer:Ljava/util/HashMap;
    invoke-static {v1}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1500(Lorg/apache/http/impl/client/MultiSocketInputStream;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    monitor-exit v12

    :goto_2
    return-object v10

    :cond_1
    iget-object v1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockSize:I
    invoke-static {v1}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$900(Lorg/apache/http/impl/client/MultiSocketInputStream;)I

    move-result v1

    mul-int/2addr v1, p1

    int-to-long v1, v1

    iget-object v3, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mOffset:J
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1200(Lorg/apache/http/impl/client/MultiSocketInputStream;)J

    move-result-wide v3

    add-long/2addr v1, v3

    long-to-int v11, v1

    const/4 v1, 0x0

    int-to-long v2, v11

    aput-wide v2, v10, v1

    const/4 v1, 0x0

    aget-wide v1, v10, v1

    iget-object v3, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-wide v3, v3, Lorg/apache/http/impl/client/MultiSocketInputStream;->mOriOffset:J

    iget-object v5, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mContentLength:J
    invoke-static {v5}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$400(Lorg/apache/http/impl/client/MultiSocketInputStream;)J

    move-result-wide v5

    add-long/2addr v3, v5

    cmp-long v1, v1, v3

    if-ltz v1, :cond_3

    sget-boolean v1, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    aget-wide v2, v10, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") >= totalLength("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-wide v2, v2, Lorg/apache/http/impl/client/MultiSocketInputStream;->mOriOffset:J

    iget-object v4, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mContentLength:J
    invoke-static {v4}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$400(Lorg/apache/http/impl/client/MultiSocketInputStream;)J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), break"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_2
    const/4 v1, 0x0

    new-array v10, v1, [J

    monitor-exit v12

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_3
    :try_start_3
    iget-object v1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static {v1}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1600(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_5

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-wide v2, v2, Lorg/apache/http/impl/client/MultiSocketInputStream;->mOriOffset:J

    iget-object v4, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mContentLength:J
    invoke-static {v4}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$400(Lorg/apache/http/impl/client/MultiSocketInputStream;)J

    move-result-wide v4

    add-long/2addr v2, v4

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    long-to-int v2, v2

    int-to-long v2, v2

    aput-wide v2, v10, v1

    sget-boolean v1, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tail chunk byte range "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    aget-wide v2, v10, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    aget-wide v2, v10, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_4
    :goto_3
    const/4 v1, 0x2

    const/4 v2, 0x1

    aget-wide v2, v10, v2

    const/4 v4, 0x0

    aget-wide v4, v10, v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    aput-wide v2, v10, v1

    const/4 v1, 0x3

    int-to-long v2, p1

    aput-wide v2, v10, v1

    new-instance v0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;

    iget-object v1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    const/4 v2, 0x0

    aget-wide v2, v10, v2

    const/4 v4, 0x2

    aget-wide v4, v10, v4

    long-to-int v5, v4

    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    const/4 v8, 0x1

    move v4, p1

    move v7, p2

    invoke-direct/range {v0 .. v8}, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;-><init>(Lorg/apache/http/impl/client/MultiSocketInputStream;JIILjava/util/LinkedList;II)V

    iget-object v1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mInBuffer:Ljava/util/HashMap;
    invoke-static {v1}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1500(Lorg/apache/http/impl/client/MultiSocketInputStream;)Ljava/util/HashMap;

    move-result-object v1

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_5
    const/4 v1, 0x1

    iget-object v2, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockSize:I
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$900(Lorg/apache/http/impl/client/MultiSocketInputStream;)I

    move-result v2

    add-int/2addr v2, v11

    add-int/lit8 v2, v2, -0x1

    int-to-long v2, v2

    iget-object v4, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-wide v4, v4, Lorg/apache/http/impl/client/MultiSocketInputStream;->mOriOffset:J

    iget-object v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mContentLength:J
    invoke-static {v6}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$400(Lorg/apache/http/impl/client/MultiSocketInputStream;)J

    move-result-wide v6

    add-long/2addr v4, v6

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    int-to-long v2, v2

    aput-wide v2, v10, v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :catch_0
    move-exception v1

    goto/16 :goto_1
.end method

.method private statusToStr(I)Ljava/lang/String;
    .locals 1
    .param p1    # I

    packed-switch p1, :pswitch_data_0

    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "BLOCKED"

    goto :goto_0

    :pswitch_1
    const-string v0, "NOT_READ"

    goto :goto_0

    :pswitch_2
    const-string v0, "OCCUPIED"

    goto :goto_0

    :pswitch_3
    const-string v0, "READING"

    goto :goto_0

    :pswitch_4
    const-string v0, "FULLREAD"

    goto :goto_0

    :pswitch_5
    const-string v0, "CLEARED"

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public block(II)V
    .locals 2
    .param p1    # I
    .param p2    # I

    const/4 v1, -0x1

    iget-object v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static {v0}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1600(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v0

    aput-byte v1, v0, p1

    iget v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->minNotReadBlockID:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->minNotReadBlockID:I

    iget-object v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->httpRequestID:[I

    aput v1, v0, p2

    return-void
.end method

.method public blockStatusToStr()Ljava/lang/String;
    .locals 6

    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "BlockStatus: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static {v4}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1600(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v4

    array-length v4, v4

    add-int/lit8 v2, v4, -0x1

    const/4 v0, 0x0

    :goto_0
    iget-object v4, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static {v4}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1600(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v4

    array-length v4, v4

    if-ge v0, v4, :cond_0

    iget-object v4, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static {v4}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1600(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v4

    aget-byte v4, v4, v0

    const/4 v5, 0x4

    if-ge v4, v5, :cond_2

    add-int/lit8 v4, v0, -0x2

    const/4 v5, 0x0

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    :cond_0
    add-int/lit8 v4, v2, 0x2

    iget-object v5, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static {v5}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1600(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v5

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v4, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static {v4}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1600(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v4

    array-length v4, v4

    add-int/lit8 v0, v4, -0x1

    :goto_1
    if-le v0, v2, :cond_1

    iget-object v4, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static {v4}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1600(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v4

    aget-byte v4, v4, v0

    if-eqz v4, :cond_3

    add-int/lit8 v4, v0, 0x1

    iget-object v5, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static {v5}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1600(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v5

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_1
    move v0, v2

    :goto_2
    if-gt v0, v1, :cond_4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static {v5}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1600(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v5

    aget-byte v5, v5, v0

    invoke-direct {p0, v5}, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->statusToStr(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public getMaxFetchingBlock()I
    .locals 3

    iget-object v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->httpRequestID:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->httpRequestID:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public getNextHTTPBlock(ILorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;)[J
    .locals 30
    .param p1    # I
    .param p2    # Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, p1

    # invokes: Lorg/apache/http/impl/client/MultiSocketInputStream;->getOtherSocketID(I)I
    invoke-static {v0, v1}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$5600(Lorg/apache/http/impl/client/MultiSocketInputStream;I)I

    move-result v16

    sget-boolean v26, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v26, :cond_0

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "getNextHTTPBlock("

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ","

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {p0 .. p0}, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Current Socket status:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    move-object/from16 v27, v0

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mRequestHandlers:[Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;
    invoke-static/range {v27 .. v27}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$4000(Lorg/apache/http/impl/client/MultiSocketInputStream;)[Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;

    move-result-object v27

    aget-object v27, v27, p1

    move-object/from16 v0, v27

    iget v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->rrStatus:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", Other Socket status:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    move-object/from16 v27, v0

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mRequestHandlers:[Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;
    invoke-static/range {v27 .. v27}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$4000(Lorg/apache/http/impl/client/MultiSocketInputStream;)[Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;

    move-result-object v27

    aget-object v27, v27, v16

    move-object/from16 v0, v27

    iget v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->rrStatus:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    move-object/from16 v26, v0

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mRequestHandlers:[Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;
    invoke-static/range {v26 .. v26}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$4000(Lorg/apache/http/impl/client/MultiSocketInputStream;)[Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;

    move-result-object v26

    aget-object v26, v26, p1

    move-object/from16 v0, v26

    iget v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->rrStatus:I

    move/from16 v26, v0

    const/16 v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_1

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [J

    move-object/from16 v21, v0

    const/16 v26, 0x0

    const-wide/16 v27, -0x1

    aput-wide v27, v21, v26

    :goto_0
    return-object v21

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    move-object/from16 v26, v0

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mRequestHandlers:[Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;
    invoke-static/range {v26 .. v26}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$4000(Lorg/apache/http/impl/client/MultiSocketInputStream;)[Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;

    move-result-object v26

    aget-object v26, v26, v16

    move-object/from16 v0, v26

    iget v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->rrStatus:I

    move/from16 v26, v0

    const/16 v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_2

    invoke-direct/range {p0 .. p1}, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->getContinuousChunk(I)[J

    move-result-object v21

    goto :goto_0

    :cond_2
    if-nez p2, :cond_4

    sget v26, Lorg/apache/http/impl/client/MultiSocketInputStream;->DEFAULT_INTERFACE_FOR_INITIAL_CHUNK:I

    move/from16 v0, p1

    move/from16 v1, v26

    if-ne v0, v1, :cond_3

    const/16 v22, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    move-object/from16 v26, v0

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static/range {v26 .. v26}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1600(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v26

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v26, v0

    move/from16 v0, v22

    move/from16 v1, v26

    if-ge v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    move-object/from16 v26, v0

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static/range {v26 .. v26}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1600(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v26

    aget-byte v26, v26, v22

    if-nez v26, :cond_4

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->getBlockForWithID(II)[J

    move-result-object v21

    goto :goto_0

    :cond_3
    const/16 v22, 0x1

    goto :goto_1

    :cond_4
    const-wide/16 v5, 0x0

    const/16 v19, 0x1

    if-eqz p2, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->httpRequestID:[I

    move-object/from16 v26, v0

    aget v26, v26, v16

    if-gez v26, :cond_7

    :cond_5
    sget-boolean v26, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v26, :cond_6

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "first time getNextHTTPBlock for socket "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " or the other socket is not active"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_6
    invoke-direct/range {p0 .. p1}, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->getMinNotReadBlock(I)[J

    move-result-object v21

    goto/16 :goto_0

    :cond_7
    const-wide/16 v23, 0x0

    const-wide/16 v17, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v8, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->socketSpeed:[J

    move-object/from16 v26, v0

    aget-wide v10, v26, p1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->socketSpeed:[J

    move-object/from16 v26, v0

    aget-wide v8, v26, v16

    const-wide/16 v26, 0x0

    cmp-long v26, v10, v26

    if-nez v26, :cond_8

    invoke-direct/range {p0 .. p1}, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->getMinNotReadBlock(I)[J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v21

    goto/16 :goto_0

    :cond_8
    long-to-double v0, v10

    move-wide/from16 v23, v0

    long-to-double v0, v8

    move-wide/from16 v17, v0

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->MIN_RATIO_FOR_ONLY_ONE_INF_0V1:I
    invoke-static {}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$5100()I

    move-result v26

    if-ltz v26, :cond_c

    sget v26, Lorg/apache/http/impl/client/MultiSocketInputStream;->SPEED_RATIO_MAKE_STOPPED:I

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v26, v0

    mul-double v26, v26, v17

    cmpl-double v26, v23, v26

    if-gtz v26, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    move-object/from16 v26, v0

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mRequestHandlers:[Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;
    invoke-static/range {v26 .. v26}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$4000(Lorg/apache/http/impl/client/MultiSocketInputStream;)[Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;

    move-result-object v26

    aget-object v26, v26, v16

    move-object/from16 v0, v26

    iget v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->rrExceptionCount:I

    move/from16 v26, v0

    sget v27, Lorg/apache/http/impl/client/MultiSocketInputStream;->MAX_EXCEPTION_COUNT:I

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_c

    :cond_9
    sget-boolean v26, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v26, :cond_a

    const-string v26, "The speed of other socket is slow so closing and setting the thread status as RR_STOPPED"

    invoke-static/range {v26 .. v26}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    move-object/from16 v26, v0

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mRequestHandlers:[Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;
    invoke-static/range {v26 .. v26}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$4000(Lorg/apache/http/impl/client/MultiSocketInputStream;)[Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;

    move-result-object v26

    aget-object v26, v26, v16

    invoke-virtual/range {v26 .. v26}, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->closeHTTP()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    move-object/from16 v26, v0

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mRequestHandlers:[Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;
    invoke-static/range {v26 .. v26}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$4000(Lorg/apache/http/impl/client/MultiSocketInputStream;)[Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;

    move-result-object v26

    aget-object v26, v26, v16

    const/16 v27, -0x1

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput v0, v1, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->rrStatus:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    move-object/from16 v26, v0

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockManager:Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;
    invoke-static/range {v26 .. v26}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$800(Lorg/apache/http/impl/client/MultiSocketInputStream;)Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;

    move-result-object v27

    monitor-enter v27

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    move-object/from16 v26, v0

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockManager:Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;
    invoke-static/range {v26 .. v26}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$800(Lorg/apache/http/impl/client/MultiSocketInputStream;)Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;

    move-result-object v26

    const-wide/16 v28, 0x3e8

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    :try_start_2
    monitor-exit v27
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-direct/range {p0 .. p1}, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->getContinuousChunk(I)[J

    move-result-object v21

    goto/16 :goto_0

    :catch_0
    move-exception v4

    sget-boolean v26, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v26, :cond_b

    invoke-static {v4}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/Throwable;)V

    :cond_b
    invoke-direct/range {p0 .. p1}, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->getMinNotReadBlock(I)[J

    move-result-object v21

    goto/16 :goto_0

    :catchall_0
    move-exception v26

    :try_start_3
    monitor-exit v27
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v26

    :cond_c
    invoke-direct/range {p0 .. p0}, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->getMinNotReadBlockID()I

    move-result v25

    if-gez v25, :cond_e

    sget-boolean v26, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v26, :cond_d

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "all block has been read or is reading "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->httpRequestID:[I

    move-object/from16 v26, v0

    aget v26, v26, v16

    if-ltz v26, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->httpRequestID:[I

    move-object/from16 v26, v0

    aget v26, v26, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    move-object/from16 v27, v0

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static/range {v27 .. v27}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1600(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v27

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    move-object/from16 v26, v0

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static/range {v26 .. v26}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1600(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->httpRequestID:[I

    move-object/from16 v27, v0

    aget v27, v27, v16

    aget-byte v26, v26, v27

    const/16 v27, 0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-gt v0, v1, :cond_11

    cmpl-double v26, v23, v17

    if-lez v26, :cond_11

    invoke-virtual/range {p2 .. p2}, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->getSockID()I

    move-result v26

    move/from16 v0, v26

    move/from16 v1, p1

    if-ne v0, v1, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    move-object/from16 v26, v0

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static/range {v26 .. v26}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1600(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v26

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v26, v0

    add-int/lit8 v25, v26, -0x1

    :cond_e
    sget-boolean v26, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v26, :cond_f

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "thisSpeed="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-wide/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", otherSpeed="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", toBeDoID="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", httpRequestID[otherSockID]="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->httpRequestID:[I

    move-object/from16 v27, v0

    aget v27, v27, v16

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_f
    cmpl-double v26, v23, v17

    if-ltz v26, :cond_1f

    invoke-virtual/range {p2 .. p2}, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->getSockID()I

    move-result v26

    move/from16 v0, v26

    move/from16 v1, p1

    if-ne v0, v1, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->httpRequestID:[I

    move-object/from16 v26, v0

    aget v26, v26, v16

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_12

    sget-boolean v26, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v26, :cond_10

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "get a smaller block in getNextHTTPBlock for socket "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", toBeDoID="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", httpRequestID[otherSockID]="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->httpRequestID:[I

    move-object/from16 v27, v0

    aget v27, v27, v16

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_10
    invoke-direct/range {p0 .. p1}, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->getMinNotReadBlock(I)[J

    move-result-object v21

    goto/16 :goto_0

    :cond_11
    const/16 v26, 0x0

    move/from16 v0, v26

    new-array v0, v0, [J

    move-object/from16 v21, v0

    goto/16 :goto_0

    :cond_12
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    move-object/from16 v26, v0

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mInBuffer:Ljava/util/HashMap;
    invoke-static/range {v26 .. v26}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1500(Lorg/apache/http/impl/client/MultiSocketInputStream;)Ljava/util/HashMap;

    move-result-object v27

    monitor-enter v27

    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    move-object/from16 v26, v0

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mInBuffer:Ljava/util/HashMap;
    invoke-static/range {v26 .. v26}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1500(Lorg/apache/http/impl/client/MultiSocketInputStream;)Ljava/util/HashMap;

    move-result-object v26

    new-instance v28, Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->httpRequestID:[I

    move-object/from16 v29, v0

    aget v29, v29, v16

    invoke-direct/range {v28 .. v29}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    move-object/from16 v0, v26

    check-cast v0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;

    move-object v13, v0

    monitor-exit v27
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-nez v13, :cond_14

    sget-boolean v26, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v26, :cond_13

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "otherBuf is null in getNextHTTPBlock for socket "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_13
    invoke-direct/range {p0 .. p1}, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->getMinNotReadBlock(I)[J

    move-result-object v21

    goto/16 :goto_0

    :catchall_1
    move-exception v26

    :try_start_5
    monitor-exit v27
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v26

    :cond_14
    const-wide v26, 0x3f50624dd2f1a9fcL

    cmpg-double v26, v17, v26

    if-gez v26, :cond_18

    const-wide v5, 0x408f400000000000L

    :goto_3
    const-wide/16 v14, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->toBeReadLen:[J

    move-object/from16 v26, v0

    aget-wide v14, v26, v16

    const-wide/16 v26, 0x0

    cmp-long v26, v8, v26

    if-nez v26, :cond_1a

    const-wide/16 v26, 0x0

    cmp-long v26, v14, v26

    if-lez v26, :cond_19

    const/4 v3, 0x1

    :goto_4
    sget-boolean v26, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v26, :cond_15

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "prepare for switch socket "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->headerTime:[J

    move-object/from16 v27, v0

    aget-wide v27, v27, p1

    invoke-virtual/range {v26 .. v28}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_15
    if-eqz v3, :cond_1d

    sget-boolean v26, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v26, :cond_16

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "ratio or rest len is big, switch socket "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " , "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_16
    const/16 v26, 0x0

    move/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v13, v0, v1}, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->switchSocket(IZ)[J

    move-result-object v20

    if-eqz v20, :cond_17

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v26, v0

    if-nez v26, :cond_1c

    :cond_17
    invoke-direct/range {p0 .. p1}, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->getMinNotReadBlock(I)[J

    move-result-object v21

    goto/16 :goto_0

    :cond_18
    div-double v5, v23, v17

    goto/16 :goto_3

    :cond_19
    const/4 v3, 0x0

    goto/16 :goto_4

    :cond_1a
    const-wide/high16 v26, 0x4000000000000000L

    cmpl-double v26, v5, v26

    if-lez v26, :cond_1b

    const-wide/16 v26, 0x8

    mul-long v26, v26, v14

    div-long v26, v26, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->headerTime:[J

    move-object/from16 v28, v0

    aget-wide v28, v28, p1

    add-long v26, v26, v28

    const-wide/16 v28, 0x8

    mul-long v28, v28, v14

    div-long v28, v28, v8

    cmp-long v26, v26, v28

    if-gez v26, :cond_1b

    const/4 v3, 0x1

    :goto_5
    goto/16 :goto_4

    :cond_1b
    const/4 v3, 0x0

    goto :goto_5

    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->httpRequestID:[I

    move-object/from16 v26, v0

    const/16 v27, 0x3

    aget-wide v27, v20, v27

    move-wide/from16 v0, v27

    long-to-int v0, v0

    move/from16 v27, v0

    aput v27, v26, p1

    move-object/from16 v21, v20

    goto/16 :goto_0

    :cond_1d
    sget-boolean v26, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v26, :cond_1e

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "ratio or rest len is not too big, get next block "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " , "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_1e
    invoke-direct/range {p0 .. p1}, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->getMinNotReadBlock(I)[J

    move-result-object v21

    goto/16 :goto_0

    :cond_1f
    div-double v5, v17, v23

    sget-boolean v26, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v26, :cond_20

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "this socket slower than other speed, fRatio="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", other socket is downloading "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->httpRequestID:[I

    move-object/from16 v27, v0

    aget v27, v27, v16

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", toBeDoID is "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_20
    const-wide/high16 v26, 0x3ff8000000000000L

    cmpg-double v26, v5, v26

    if-gez v26, :cond_22

    sget-boolean v26, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v26, :cond_21

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "this socket is not too slow, download toBeDoID, ratio="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_21
    invoke-direct/range {p0 .. p1}, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->getMinNotReadBlock(I)[J

    move-result-object v21

    goto/16 :goto_0

    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->httpRequestID:[I

    move-object/from16 v26, v0

    aget v26, v26, v16

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_24

    sget-boolean v26, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v26, :cond_23

    const-string v26, "this socket is slow, but there is blank portion, still download smallest portion"

    invoke-static/range {v26 .. v26}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_23
    invoke-direct/range {p0 .. p1}, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->getMinNotReadBlock(I)[J

    move-result-object v21

    goto/16 :goto_0

    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    move-object/from16 v26, v0

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mInBuffer:Ljava/util/HashMap;
    invoke-static/range {v26 .. v26}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1500(Lorg/apache/http/impl/client/MultiSocketInputStream;)Ljava/util/HashMap;

    move-result-object v27

    monitor-enter v27

    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    move-object/from16 v26, v0

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mInBuffer:Ljava/util/HashMap;
    invoke-static/range {v26 .. v26}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1500(Lorg/apache/http/impl/client/MultiSocketInputStream;)Ljava/util/HashMap;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/util/HashMap;->size()I

    move-result v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    move-object/from16 v28, v0

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mMaxBlockNumber:I
    invoke-static/range {v28 .. v28}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$3700(Lorg/apache/http/impl/client/MultiSocketInputStream;)I

    move-result v28

    move/from16 v0, v26

    move/from16 v1, v28

    if-lt v0, v1, :cond_25

    invoke-direct/range {p0 .. p1}, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->getMinNotReadBlock(I)[J

    move-result-object v21

    monitor-exit v27

    goto/16 :goto_0

    :catchall_2
    move-exception v26

    monitor-exit v27
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v26

    :cond_25
    :try_start_7
    monitor-exit v27
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v26

    move-wide/from16 v0, v26

    double-to-int v0, v0

    move/from16 v26, v0

    sget v27, Lorg/apache/http/impl/client/MultiSocketInputStream;->MAX_JUMP_STEP:I

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->min(II)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->httpRequestID:[I

    move-object/from16 v26, v0

    aget v26, v26, v16

    add-int v12, v7, v26

    sget-boolean v26, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v26, :cond_26

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "this socket is slow, download with step, ratio="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", otherRequestID="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->httpRequestID:[I

    move-object/from16 v27, v0

    aget v27, v27, v16

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", nextid="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_26
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v12}, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->getBlockForWithID(II)[J

    move-result-object v21

    goto/16 :goto_0

    :catch_1
    move-exception v26

    goto/16 :goto_2
.end method

.method public setSpeed(IJ)V
    .locals 1
    .param p1    # I
    .param p2    # J

    iget-object v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->socketSpeed:[J

    aput-wide p2, v0, p1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "BlockManager:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v2, "httpRequestID{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->httpRequestID:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string v2, "}; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "minNotReadBlockID{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->minNotReadBlockID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
