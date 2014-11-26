.class public Lcom/diotek/ime/framework/connect/MessagingConnectModule;
.super Lcom/diotek/ime/framework/connect/AbstractConnectModule;
.source "MessagingConnectModule.java"


# static fields
.field public static final MESSAGE_TYPE_CONVERSATIONS:Ljava/lang/String; = "3"

.field public static final MESSAGE_TYPE_INBOX:Ljava/lang/String; = "1"

.field public static final MESSAGE_TYPE_NEW:Ljava/lang/String; = "new"

.field public static final MESSAGE_TYPE_SENT:Ljava/lang/String; = "2"

.field public static final URI_PARSE:Ljava/lang/String; = "content://sms/"


# instance fields
.field private mCur:Landroid/database/Cursor;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/diotek/ime/framework/connect/AbstractConnectModule;-><init>()V

    invoke-virtual {p0}, Lcom/diotek/ime/framework/connect/MessagingConnectModule;->initialize()V

    return-void
.end method


# virtual methods
.method public closing()V
    .locals 1

    invoke-super {p0}, Lcom/diotek/ime/framework/connect/AbstractConnectModule;->closing()V

    iget-object v0, p0, Lcom/diotek/ime/framework/connect/MessagingConnectModule;->mCur:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-void
.end method

.method public getSMSInboxData()V
    .locals 10

    const/4 v9, 0x2

    const/4 v2, 0x0

    const-string v6, ""

    const-string v8, ""

    const-string v0, "content://sms/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Lcom/diotek/ime/framework/connect/AbstractConnectModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/connect/MessagingConnectModule;->mCur:Landroid/database/Cursor;

    iget-object v0, p0, Lcom/diotek/ime/framework/connect/MessagingConnectModule;->mCur:Landroid/database/Cursor;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v7, 0x0

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/diotek/ime/framework/connect/MessagingConnectModule;->mCur:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/connect/MessagingConnectModule;->mCur:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/diotek/ime/framework/connect/MessagingConnectModule;->mCur:Landroid/database/Cursor;

    const-string v3, "body"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/diotek/ime/framework/connect/MessagingConnectModule;->mCur:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/diotek/ime/framework/connect/MessagingConnectModule;->mCur:Landroid/database/Cursor;

    const-string v3, "type"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    if-eqz v6, :cond_3

    const-string v0, " "

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v7, Lcom/diotek/ime/framework/common/InputManagerImpl$Xt9LearningContents;

    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v0

    check-cast v0, Lcom/diotek/ime/framework/common/InputManagerImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x1

    invoke-direct {v7, v0, v6, v9, v2}, Lcom/diotek/ime/framework/common/InputManagerImpl$Xt9LearningContents;-><init>(Lcom/diotek/ime/framework/common/InputManagerImpl;Ljava/lang/String;IZ)V

    :goto_1
    const-string v0, "1"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz v7, :cond_2

    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v0

    check-cast v0, Lcom/diotek/ime/framework/common/InputManagerImpl;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getXt9LearningContentsHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v2, 0x65

    invoke-virtual {v0, v2, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_3
    new-instance v7, Lcom/diotek/ime/framework/common/InputManagerImpl$Xt9LearningContents;

    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v0

    check-cast v0, Lcom/diotek/ime/framework/common/InputManagerImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-direct {v7, v0, v6, v9, v2}, Lcom/diotek/ime/framework/common/InputManagerImpl$Xt9LearningContents;-><init>(Lcom/diotek/ime/framework/common/InputManagerImpl;Ljava/lang/String;IZ)V

    goto :goto_1
.end method

.method public getSMSLatestDate()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/diotek/ime/framework/connect/MessagingConnectModule;->mCur:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    iget-object v0, p0, Lcom/diotek/ime/framework/connect/MessagingConnectModule;->mCur:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/diotek/ime/framework/connect/MessagingConnectModule;->mCur:Landroid/database/Cursor;

    const-string v2, "date"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSMSSendData()V
    .locals 10

    const/4 v9, 0x2

    const/4 v2, 0x0

    const-string v6, ""

    const-string v8, ""

    const-string v0, "content://sms/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Lcom/diotek/ime/framework/connect/AbstractConnectModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/connect/MessagingConnectModule;->mCur:Landroid/database/Cursor;

    iget-object v0, p0, Lcom/diotek/ime/framework/connect/MessagingConnectModule;->mCur:Landroid/database/Cursor;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v7, 0x0

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/diotek/ime/framework/connect/MessagingConnectModule;->mCur:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/connect/MessagingConnectModule;->mCur:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/diotek/ime/framework/connect/MessagingConnectModule;->mCur:Landroid/database/Cursor;

    const-string v3, "body"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/diotek/ime/framework/connect/MessagingConnectModule;->mCur:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/diotek/ime/framework/connect/MessagingConnectModule;->mCur:Landroid/database/Cursor;

    const-string v3, "type"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    if-eqz v6, :cond_3

    const-string v0, " "

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v7, Lcom/diotek/ime/framework/common/InputManagerImpl$Xt9LearningContents;

    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v0

    check-cast v0, Lcom/diotek/ime/framework/common/InputManagerImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x1

    invoke-direct {v7, v0, v6, v9, v2}, Lcom/diotek/ime/framework/common/InputManagerImpl$Xt9LearningContents;-><init>(Lcom/diotek/ime/framework/common/InputManagerImpl;Ljava/lang/String;IZ)V

    :goto_1
    if-nez v8, :cond_2

    if-eqz v6, :cond_2

    if-eqz v7, :cond_2

    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v0

    check-cast v0, Lcom/diotek/ime/framework/common/InputManagerImpl;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getXt9LearningContentsHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v2, 0x65

    invoke-virtual {v0, v2, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_3
    new-instance v7, Lcom/diotek/ime/framework/common/InputManagerImpl$Xt9LearningContents;

    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v0

    check-cast v0, Lcom/diotek/ime/framework/common/InputManagerImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-direct {v7, v0, v6, v9, v2}, Lcom/diotek/ime/framework/common/InputManagerImpl$Xt9LearningContents;-><init>(Lcom/diotek/ime/framework/common/InputManagerImpl;Ljava/lang/String;IZ)V

    goto :goto_1
.end method

.method public getSMSSentData()V
    .locals 10

    const/4 v9, 0x2

    const/4 v2, 0x0

    const-string v6, ""

    const-string v8, ""

    const-string v0, "content://sms/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Lcom/diotek/ime/framework/connect/AbstractConnectModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/connect/MessagingConnectModule;->mCur:Landroid/database/Cursor;

    iget-object v0, p0, Lcom/diotek/ime/framework/connect/MessagingConnectModule;->mCur:Landroid/database/Cursor;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v7, 0x0

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/diotek/ime/framework/connect/MessagingConnectModule;->mCur:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/connect/MessagingConnectModule;->mCur:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/diotek/ime/framework/connect/MessagingConnectModule;->mCur:Landroid/database/Cursor;

    const-string v3, "body"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/diotek/ime/framework/connect/MessagingConnectModule;->mCur:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/diotek/ime/framework/connect/MessagingConnectModule;->mCur:Landroid/database/Cursor;

    const-string v3, "type"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    if-eqz v6, :cond_3

    const-string v0, " "

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v7, Lcom/diotek/ime/framework/common/InputManagerImpl$Xt9LearningContents;

    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v0

    check-cast v0, Lcom/diotek/ime/framework/common/InputManagerImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x1

    invoke-direct {v7, v0, v6, v9, v2}, Lcom/diotek/ime/framework/common/InputManagerImpl$Xt9LearningContents;-><init>(Lcom/diotek/ime/framework/common/InputManagerImpl;Ljava/lang/String;IZ)V

    :goto_1
    const-string v0, "2"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz v7, :cond_2

    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v0

    check-cast v0, Lcom/diotek/ime/framework/common/InputManagerImpl;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getXt9LearningContentsHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v2, 0x65

    invoke-virtual {v0, v2, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_3
    new-instance v7, Lcom/diotek/ime/framework/common/InputManagerImpl$Xt9LearningContents;

    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v0

    check-cast v0, Lcom/diotek/ime/framework/common/InputManagerImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-direct {v7, v0, v6, v9, v2}, Lcom/diotek/ime/framework/common/InputManagerImpl$Xt9LearningContents;-><init>(Lcom/diotek/ime/framework/common/InputManagerImpl;Ljava/lang/String;IZ)V

    goto :goto_1
.end method

.method public initialize()V
    .locals 0

    invoke-super {p0}, Lcom/diotek/ime/framework/connect/AbstractConnectModule;->initialize()V

    return-void
.end method

.method public update()V
    .locals 1

    new-instance v0, Lcom/diotek/ime/framework/connect/MessagingConnectModule$1;

    invoke-direct {v0, p0}, Lcom/diotek/ime/framework/connect/MessagingConnectModule$1;-><init>(Lcom/diotek/ime/framework/connect/MessagingConnectModule;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
