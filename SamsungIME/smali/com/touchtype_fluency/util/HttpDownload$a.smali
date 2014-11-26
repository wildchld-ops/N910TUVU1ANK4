.class Lcom/touchtype_fluency/util/HttpDownload$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/touchtype_fluency/util/HttpDownload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/touchtype_fluency/util/ProgressListener;

.field private b:I

.field private c:J

.field private d:Lorg/apache/commons/io/input/CountingInputStream;


# direct methods
.method constructor <init>(Lcom/touchtype_fluency/util/HttpDownload;Lcom/touchtype_fluency/util/ProgressListener;ILorg/apache/commons/io/input/CountingInputStream;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/touchtype_fluency/util/HttpDownload$a;->a:Lcom/touchtype_fluency/util/ProgressListener;

    iput p3, p0, Lcom/touchtype_fluency/util/HttpDownload$a;->b:I

    iput-object p4, p0, Lcom/touchtype_fluency/util/HttpDownload$a;->d:Lorg/apache/commons/io/input/CountingInputStream;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/touchtype_fluency/util/HttpDownload$a;->c:J

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    sget-object v0, Lcom/touchtype_fluency/util/c;->a:Lcom/touchtype_fluency/LoggingListener;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/touchtype_fluency/LoggingListener$Level;->DEBUG:Lcom/touchtype_fluency/LoggingListener$Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/touchtype_fluency/LoggingListener;->log(Lcom/touchtype_fluency/LoggingListener$Level;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    sget-object v0, Lcom/touchtype_fluency/util/c;->a:Lcom/touchtype_fluency/LoggingListener;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/touchtype_fluency/LoggingListener$Level;->INFO:Lcom/touchtype_fluency/LoggingListener$Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/touchtype_fluency/LoggingListener;->log(Lcom/touchtype_fluency/LoggingListener$Level;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    sget-object v0, Lcom/touchtype_fluency/util/c;->a:Lcom/touchtype_fluency/LoggingListener;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/touchtype_fluency/LoggingListener$Level;->SEVERE:Lcom/touchtype_fluency/LoggingListener$Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/touchtype_fluency/LoggingListener;->log(Lcom/touchtype_fluency/LoggingListener$Level;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method final a()V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/touchtype_fluency/util/HttpDownload$a;->c:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x32

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/touchtype_fluency/util/HttpDownload$a;->a:Lcom/touchtype_fluency/util/ProgressListener;

    iget-object v1, p0, Lcom/touchtype_fluency/util/HttpDownload$a;->d:Lorg/apache/commons/io/input/CountingInputStream;

    invoke-virtual {v1}, Lorg/apache/commons/io/input/CountingInputStream;->getCount()I

    move-result v1

    iget v2, p0, Lcom/touchtype_fluency/util/HttpDownload$a;->b:I

    invoke-virtual {v0, v1, v2}, Lcom/touchtype_fluency/util/ProgressListener;->onProgress(II)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/touchtype_fluency/util/HttpDownload$a;->c:J

    :cond_0
    return-void
.end method
