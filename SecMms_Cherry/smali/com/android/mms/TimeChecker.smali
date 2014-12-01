.class public Lcom/android/mms/TimeChecker;
.super Ljava/lang/Object;
.source "TimeChecker.java"


# static fields
.field private static sBuilder:Ljava/lang/StringBuilder;

.field private static sStartT:J

.field private static sStrElapsed:Ljava/lang/String;


# instance fields
.field private mBuilder:Ljava/lang/StringBuilder;

.field private mStartT:J

.field private mStrElapsed:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    sput-object v0, Lcom/android/mms/TimeChecker;->sBuilder:Ljava/lang/StringBuilder;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/android/mms/TimeChecker;->mBuilder:Ljava/lang/StringBuilder;

    return-void
.end method

.method public static sEnd()Ljava/lang/String;
    .locals 7

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sget-wide v4, Lcom/android/mms/TimeChecker;->sStartT:J

    sub-long v0, v2, v4

    sget-object v2, Lcom/android/mms/TimeChecker;->sBuilder:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    sget-object v2, Lcom/android/mms/TimeChecker;->sBuilder:Ljava/lang/StringBuilder;

    const-string v3, "Elapsed time : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    long-to-double v3, v0

    const-wide v5, 0x412e848000000000L

    div-double/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/mms/TimeChecker;->sBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/mms/TimeChecker;->sStrElapsed:Ljava/lang/String;

    sget-object v2, Lcom/android/mms/TimeChecker;->sStrElapsed:Ljava/lang/String;

    return-object v2
.end method

.method public static sEnd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/android/mms/TimeChecker;->sEnd()Ljava/lang/String;

    sget-object v0, Lcom/android/mms/TimeChecker;->sBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    sget-object v0, Lcom/android/mms/TimeChecker;->sBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/mms/TimeChecker;->sStrElapsed:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/android/mms/TimeChecker;->sBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/TimeChecker;->sStrElapsed:Ljava/lang/String;

    return-object v0
.end method

.method public static sGetElapsed()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/mms/TimeChecker;->sStrElapsed:Ljava/lang/String;

    return-object v0
.end method

.method public static sStart()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sput-wide v0, Lcom/android/mms/TimeChecker;->sStartT:J

    return-void
.end method


# virtual methods
.method public end()Ljava/lang/String;
    .locals 7

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/mms/TimeChecker;->mStartT:J

    sub-long v0, v2, v4

    iget-object v2, p0, Lcom/android/mms/TimeChecker;->mBuilder:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v2, p0, Lcom/android/mms/TimeChecker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v3, "Elapsed time : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    long-to-double v3, v0

    const-wide v5, 0x412e848000000000L

    div-double/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/mms/TimeChecker;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/TimeChecker;->mStrElapsed:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/mms/TimeChecker;->mStrElapsed:Ljava/lang/String;

    return-object v2
.end method

.method public end(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/android/mms/TimeChecker;->end()Ljava/lang/String;

    iget-object v0, p0, Lcom/android/mms/TimeChecker;->mBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v0, p0, Lcom/android/mms/TimeChecker;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/TimeChecker;->mStrElapsed:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/mms/TimeChecker;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/TimeChecker;->mStrElapsed:Ljava/lang/String;

    return-object v0
.end method

.method public getElapsed()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/TimeChecker;->mStrElapsed:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/TimeChecker;->mStrElapsed:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/android/mms/TimeChecker;->mStrElapsed:Ljava/lang/String;

    return-object v0
.end method

.method public start()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/mms/TimeChecker;->mStartT:J

    return-void
.end method
