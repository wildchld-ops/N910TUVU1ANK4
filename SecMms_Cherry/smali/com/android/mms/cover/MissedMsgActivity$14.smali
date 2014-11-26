.class Lcom/android/mms/cover/MissedMsgActivity$14;
.super Ljava/lang/Object;
.source "MissedMsgActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/cover/MissedMsgActivity;->markAsRead(Ljava/lang/Runnable;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/cover/MissedMsgActivity;

.field final synthetic val$callback:Ljava/lang/Runnable;

.field final synthetic val$index:I

.field final synthetic val$msgId:J

.field final synthetic val$values:Landroid/content/ContentValues;


# direct methods
.method constructor <init>(Lcom/android/mms/cover/MissedMsgActivity;Landroid/content/ContentValues;IJLjava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/cover/MissedMsgActivity$14;->this$0:Lcom/android/mms/cover/MissedMsgActivity;

    iput-object p2, p0, Lcom/android/mms/cover/MissedMsgActivity$14;->val$values:Landroid/content/ContentValues;

    iput p3, p0, Lcom/android/mms/cover/MissedMsgActivity$14;->val$index:I

    iput-wide p4, p0, Lcom/android/mms/cover/MissedMsgActivity$14;->val$msgId:J

    iput-object p6, p0, Lcom/android/mms/cover/MissedMsgActivity$14;->val$callback:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity$14;->this$0:Lcom/android/mms/cover/MissedMsgActivity;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/cover/MissedMsgActivity$14;->this$0:Lcom/android/mms/cover/MissedMsgActivity;

    # getter for: Lcom/android/mms/cover/MissedMsgActivity;->msgUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/android/mms/cover/MissedMsgActivity;->access$1400(Lcom/android/mms/cover/MissedMsgActivity;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/cover/MissedMsgActivity$14;->val$values:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity$14;->this$0:Lcom/android/mms/cover/MissedMsgActivity;

    # getter for: Lcom/android/mms/cover/MissedMsgActivity;->update_read:Z
    invoke-static {v0}, Lcom/android/mms/cover/MissedMsgActivity;->access$1600(Lcom/android/mms/cover/MissedMsgActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity$14;->this$0:Lcom/android/mms/cover/MissedMsgActivity;

    # getter for: Lcom/android/mms/cover/MissedMsgActivity;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/mms/cover/MissedMsgActivity;->access$600(Lcom/android/mms/cover/MissedMsgActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/transaction/MessagingNotification;->nonBlockingUpdateNotificationAsRead(Landroid/content/Context;)V

    const-string v1, "cmas"

    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity$14;->this$0:Lcom/android/mms/cover/MissedMsgActivity;

    # getter for: Lcom/android/mms/cover/MissedMsgActivity;->mMsgTypes:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/mms/cover/MissedMsgActivity;->access$1700(Lcom/android/mms/cover/MissedMsgActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget v2, p0, Lcom/android/mms/cover/MissedMsgActivity$14;->val$index:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity$14;->this$0:Lcom/android/mms/cover/MissedMsgActivity;

    # getter for: Lcom/android/mms/cover/MissedMsgActivity;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/mms/cover/MissedMsgActivity;->access$600(Lcom/android/mms/cover/MissedMsgActivity;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/android/mms/cover/MissedMsgActivity$14;->val$msgId:J

    long-to-int v2, v2

    invoke-static {v0, v1, v2}, Lcom/android/mms/accessory/WatchRelay;->sendReadMsgIntent(Landroid/content/Context;II)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity$14;->this$0:Lcom/android/mms/cover/MissedMsgActivity;

    const/4 v1, 0x0

    # setter for: Lcom/android/mms/cover/MissedMsgActivity;->update_read:Z
    invoke-static {v0, v1}, Lcom/android/mms/cover/MissedMsgActivity;->access$1602(Lcom/android/mms/cover/MissedMsgActivity;Z)Z

    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity$14;->val$callback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_1
    const-string v1, "wpm"

    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity$14;->this$0:Lcom/android/mms/cover/MissedMsgActivity;

    # getter for: Lcom/android/mms/cover/MissedMsgActivity;->mMsgTypes:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/mms/cover/MissedMsgActivity;->access$1700(Lcom/android/mms/cover/MissedMsgActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget v2, p0, Lcom/android/mms/cover/MissedMsgActivity$14;->val$index:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity$14;->this$0:Lcom/android/mms/cover/MissedMsgActivity;

    # getter for: Lcom/android/mms/cover/MissedMsgActivity;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/mms/cover/MissedMsgActivity;->access$600(Lcom/android/mms/cover/MissedMsgActivity;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/android/mms/cover/MissedMsgActivity$14;->val$msgId:J

    long-to-int v2, v2

    invoke-static {v0, v1, v2}, Lcom/android/mms/accessory/WatchRelay;->sendReadMsgIntent(Landroid/content/Context;II)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity$14;->this$0:Lcom/android/mms/cover/MissedMsgActivity;

    # getter for: Lcom/android/mms/cover/MissedMsgActivity;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/mms/cover/MissedMsgActivity;->access$600(Lcom/android/mms/cover/MissedMsgActivity;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/android/mms/cover/MissedMsgActivity$14;->val$msgId:J

    long-to-int v2, v2

    invoke-static {v0, v1, v2}, Lcom/android/mms/accessory/WatchRelay;->sendReadMsgIntent(Landroid/content/Context;II)V

    goto :goto_0
.end method
