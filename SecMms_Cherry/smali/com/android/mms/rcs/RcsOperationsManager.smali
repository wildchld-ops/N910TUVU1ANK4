.class public Lcom/android/mms/rcs/RcsOperationsManager;
.super Ljava/lang/Object;
.source "RcsOperationsManager.java"


# static fields
.field private static final TABLE_RCSMSGS:Ljava/lang/String; = "rcs_msgs"

.field private static final TAG:Ljava/lang/String; = "mms/RcsOperationsManager"


# instance fields
.field private mContext:Landroid/content/Context;

.field protected mRcsOperationsProvider:Lcom/android/mms/rcs/RcsOperationsProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/mms/rcs/RcsOperationsManager;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/mms/rcs/RcsOperationsProvider;

    invoke-direct {v0, p1}, Lcom/android/mms/rcs/RcsOperationsProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mms/rcs/RcsOperationsManager;->mRcsOperationsProvider:Lcom/android/mms/rcs/RcsOperationsProvider;

    iget-object v0, p0, Lcom/android/mms/rcs/RcsOperationsManager;->mRcsOperationsProvider:Lcom/android/mms/rcs/RcsOperationsProvider;

    invoke-virtual {v0}, Lcom/android/mms/rcs/RcsOperationsProvider;->open()Lcom/android/mms/rcs/RcsOperationsProvider;

    return-void
.end method


# virtual methods
.method public closeProvider()V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/rcs/RcsOperationsManager;->mRcsOperationsProvider:Lcom/android/mms/rcs/RcsOperationsProvider;

    invoke-virtual {v0}, Lcom/android/mms/rcs/RcsOperationsProvider;->close()V

    return-void
.end method

.method public deleteSentMessage(J)V
    .locals 6

    invoke-static {}, Lcom/android/mms/rcs/Configuration$Im;->isRcsServiceEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableIPME()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/rcs/RcsOperationsManager;->mRcsOperationsProvider:Lcom/android/mms/rcs/RcsOperationsProvider;

    const-string v2, "rcs_msgs"

    const-string v3, "date = ? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/mms/rcs/RcsOperationsProvider;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected finalize()V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/rcs/RcsOperationsManager;->mRcsOperationsProvider:Lcom/android/mms/rcs/RcsOperationsProvider;

    invoke-virtual {v0}, Lcom/android/mms/rcs/RcsOperationsProvider;->close()V

    return-void
.end method

.method public insertSentMessage(JLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 3

    invoke-static {}, Lcom/android/mms/rcs/Configuration$Im;->isRcsServiceEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableIPME()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "date"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "body"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "session_id"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "thread_id"

    invoke-virtual {v0, v1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v1, p0, Lcom/android/mms/rcs/RcsOperationsManager;->mRcsOperationsProvider:Lcom/android/mms/rcs/RcsOperationsProvider;

    const-string v2, "rcs_msgs"

    invoke-virtual {v1, v2, v0}, Lcom/android/mms/rcs/RcsOperationsProvider;->insert(Ljava/lang/String;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_0
.end method

.method public querySentMessage(J)Landroid/database/Cursor;
    .locals 7

    const/4 v4, 0x0

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "date"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "body"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "thread_id"

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/android/mms/rcs/RcsOperationsManager;->mRcsOperationsProvider:Lcom/android/mms/rcs/RcsOperationsProvider;

    const-string v1, "rcs_msgs"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "date = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/rcs/RcsOperationsProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    return-object v6
.end method
