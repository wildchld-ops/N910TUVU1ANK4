.class Lcom/android/mms/data/WorkingMessage$13;
.super Ljava/lang/Object;
.source "WorkingMessage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/data/WorkingMessage;->deleteMmsMessage(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Lcom/android/mms/data/Conversation;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/data/WorkingMessage;

.field final synthetic val$conv:Lcom/android/mms/data/Conversation;

.field final synthetic val$selection:Ljava/lang/String;

.field final synthetic val$selectionArgs:[Ljava/lang/String;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/mms/data/WorkingMessage;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Lcom/android/mms/data/Conversation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/data/WorkingMessage$13;->this$0:Lcom/android/mms/data/WorkingMessage;

    iput-object p2, p0, Lcom/android/mms/data/WorkingMessage$13;->val$uri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/android/mms/data/WorkingMessage$13;->val$selection:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/mms/data/WorkingMessage$13;->val$selectionArgs:[Ljava/lang/String;

    iput-object p5, p0, Lcom/android/mms/data/WorkingMessage$13;->val$conv:Lcom/android/mms/data/Conversation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    const/4 v12, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage$13;->this$0:Lcom/android/mms/data/WorkingMessage;

    # getter for: Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/mms/data/WorkingMessage;->access$300(Lcom/android/mms/data/WorkingMessage;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage$13;->this$0:Lcom/android/mms/data/WorkingMessage;

    # getter for: Lcom/android/mms/data/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/mms/data/WorkingMessage;->access$1100(Lcom/android/mms/data/WorkingMessage;)Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage$13;->val$uri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage$13;->val$selection:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage$13;->val$selectionArgs:[Ljava/lang/String;

    invoke-static {v0, v1, v3, v4, v5}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage$13;->val$conv:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v10

    const-wide/16 v0, 0x0

    cmp-long v0, v10, v0

    if-lez v0, :cond_2

    invoke-static {}, Lcom/android/mms/data/Conversation;->getTempThreadId()J

    move-result-wide v0

    cmp-long v0, v10, v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiDraftMsgBox()Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_0
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage$13;->this$0:Lcom/android/mms/data/WorkingMessage;

    # getter for: Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/mms/data/WorkingMessage;->access$300(Lcom/android/mms/data/WorkingMessage;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v10, v11, v12}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/mms/data/Conversation;->getMessageCount()I

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiDraftMsgBox()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v7, 0x0

    :try_start_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->isFreeMessageEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->isBlackBirdFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    sget-object v0, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "integrated-complete-conversations-including-drafts"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    :goto_1
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage$13;->this$0:Lcom/android/mms/data/WorkingMessage;

    # getter for: Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/mms/data/WorkingMessage;->access$300(Lcom/android/mms/data/WorkingMessage;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage$13;->this$0:Lcom/android/mms/data/WorkingMessage;

    # getter for: Lcom/android/mms/data/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/mms/data/WorkingMessage;->access$1100(Lcom/android/mms/data/WorkingMessage;)Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "thread_id"

    aput-object v5, v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "thread_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage$13;->val$conv:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->clearThreadId()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    const/4 v7, 0x0

    :cond_2
    :goto_2
    return-void

    :cond_3
    const-string v0, "Mms/WorkingMessage"

    const-string v1, "delete sms from asyncDeleteMmsMessage()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage$13;->this$0:Lcom/android/mms/data/WorkingMessage;

    # getter for: Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/mms/data/WorkingMessage;->access$300(Lcom/android/mms/data/WorkingMessage;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage$13;->this$0:Lcom/android/mms/data/WorkingMessage;

    # getter for: Lcom/android/mms/data/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/mms/data/WorkingMessage;->access$1100(Lcom/android/mms/data/WorkingMessage;)Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Landroid/provider/Telephony$Sms$Conversations;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "type=3"

    invoke-static {v0, v1, v3, v4, v6}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    :try_start_1
    sget-object v0, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "complete-conversations-including-drafts"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    goto :goto_1

    :catch_0
    move-exception v8

    :try_start_2
    const-string v0, "Mms/WorkingMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MessageConversation count query exception in multi-draft"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    const/4 v7, 0x0

    goto :goto_2

    :catchall_0
    move-exception v0

    if-eqz v7, :cond_5

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    const/4 v7, 0x0

    :cond_5
    throw v0

    :cond_6
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage$13;->val$conv:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->clearThreadId()V

    goto :goto_2
.end method
