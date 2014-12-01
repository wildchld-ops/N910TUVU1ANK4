.class public Lcom/android/mms/transaction/ProgressCallbackEntity;
.super Lorg/apache/http/entity/ByteArrayEntity;
.source "ProgressCallbackEntity.java"


# static fields
.field private static final DEFAULT_PIECE_SIZE:I = 0x1000

.field public static final PROGRESS_ABORT:I = -0x2

.field public static final PROGRESS_COMPLETE:I = 0x64

.field public static final PROGRESS_START:I = -0x1

.field public static final PROGRESS_STATUS_ACTION:Ljava/lang/String; = "com.android.mms.PROGRESS_STATUS"


# instance fields
.field private final mContent:[B

.field private final mContext:Landroid/content/Context;

.field private final mToken:J


# direct methods
.method public constructor <init>(Landroid/content/Context;J[B)V
    .locals 1

    invoke-direct {p0, p4}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    iput-object p1, p0, Lcom/android/mms/transaction/ProgressCallbackEntity;->mContext:Landroid/content/Context;

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    :goto_0
    iput-object v0, p0, Lcom/android/mms/transaction/ProgressCallbackEntity;->mContent:[B

    iput-wide p2, p0, Lcom/android/mms/transaction/ProgressCallbackEntity;->mToken:J

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private broadcastProgressIfNeeded(I)V
    .locals 5

    iget-wide v1, p0, Lcom/android/mms/transaction/ProgressCallbackEntity;->mToken:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.mms.PROGRESS_STATUS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "progress"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "token"

    iget-wide v2, p0, Lcom/android/mms/transaction/ProgressCallbackEntity;->mToken:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mms/transaction/ProgressCallbackEntity;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public writeTo(Ljava/io/OutputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, -0x2

    if-nez p1, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Output stream may not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    const/4 v0, 0x0

    const/4 v4, -0x1

    :try_start_0
    invoke-direct {p0, v4}, Lcom/android/mms/transaction/ProgressCallbackEntity;->broadcastProgressIfNeeded(I)V

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/mms/transaction/ProgressCallbackEntity;->mContent:[B

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/mms/transaction/ProgressCallbackEntity;->mContent:[B

    array-length v3, v4

    :goto_0
    if-ge v2, v3, :cond_4

    sub-int v1, v3, v2

    const/16 v4, 0x1000

    if-le v1, v4, :cond_1

    const/16 v1, 0x1000

    :cond_1
    iget-object v4, p0, Lcom/android/mms/transaction/ProgressCallbackEntity;->mContent:[B

    invoke-virtual {p1, v4, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    add-int/2addr v2, v1

    mul-int/lit8 v4, v2, 0x64

    div-int/2addr v4, v3

    invoke-direct {p0, v4}, Lcom/android/mms/transaction/ProgressCallbackEntity;->broadcastProgressIfNeeded(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    if-nez v0, :cond_2

    invoke-direct {p0, v5}, Lcom/android/mms/transaction/ProgressCallbackEntity;->broadcastProgressIfNeeded(I)V

    :cond_2
    throw v4

    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    :cond_4
    const/16 v4, 0x64

    :try_start_1
    invoke-direct {p0, v4}, Lcom/android/mms/transaction/ProgressCallbackEntity;->broadcastProgressIfNeeded(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    if-nez v0, :cond_5

    invoke-direct {p0, v5}, Lcom/android/mms/transaction/ProgressCallbackEntity;->broadcastProgressIfNeeded(I)V

    :cond_5
    return-void
.end method
