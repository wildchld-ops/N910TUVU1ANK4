.class Lcom/android/mms/data/WorkingMessage$10;
.super Ljava/lang/Object;
.source "WorkingMessage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/data/WorkingMessage;->asyncUpdateDraftFreeChatMessage(Lcom/android/mms/data/Conversation;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/data/WorkingMessage;

.field final synthetic val$contents:Ljava/lang/String;

.field final synthetic val$conv:Lcom/android/mms/data/Conversation;

.field final synthetic val$isInsert:Z

.field final synthetic val$priority:I


# direct methods
.method constructor <init>(Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/data/Conversation;ZLjava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/data/WorkingMessage$10;->this$0:Lcom/android/mms/data/WorkingMessage;

    iput-object p2, p0, Lcom/android/mms/data/WorkingMessage$10;->val$conv:Lcom/android/mms/data/Conversation;

    iput-boolean p3, p0, Lcom/android/mms/data/WorkingMessage$10;->val$isInsert:Z

    iput-object p4, p0, Lcom/android/mms/data/WorkingMessage$10;->val$contents:Ljava/lang/String;

    iput p5, p0, Lcom/android/mms/data/WorkingMessage$10;->val$priority:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage$10;->val$conv:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0, v3}, Lcom/android/mms/data/Conversation;->ensureThreadId(I)J

    move-result-wide v1

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage$10;->val$conv:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0, v3}, Lcom/android/mms/data/Conversation;->setDraftState(Z)V

    iget-boolean v0, p0, Lcom/android/mms/data/WorkingMessage$10;->val$isInsert:Z

    if-eqz v0, :cond_1

    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage$10;->this$0:Lcom/android/mms/data/WorkingMessage;

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage$10;->this$0:Lcom/android/mms/data/WorkingMessage;

    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage$10;->val$contents:Ljava/lang/String;

    iget v4, p0, Lcom/android/mms/data/WorkingMessage$10;->val$priority:I

    iget-boolean v5, p0, Lcom/android/mms/data/WorkingMessage$10;->val$isInsert:Z

    # invokes: Lcom/android/mms/data/WorkingMessage;->updateDraftFreeChatMessage(JLjava/lang/String;IZ)Landroid/net/Uri;
    invoke-static/range {v0 .. v5}, Lcom/android/mms/data/WorkingMessage;->access$1200(Lcom/android/mms/data/WorkingMessage;JLjava/lang/String;IZ)Landroid/net/Uri;

    move-result-object v0

    # setter for: Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;
    invoke-static {v6, v0}, Lcom/android/mms/data/WorkingMessage;->access$502(Lcom/android/mms/data/WorkingMessage;Landroid/net/Uri;)Landroid/net/Uri;

    :goto_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMGroupMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage$10;->this$0:Lcom/android/mms/data/WorkingMessage;

    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage$10;->val$conv:Lcom/android/mms/data/Conversation;

    # invokes: Lcom/android/mms/data/WorkingMessage;->updateReplyAllStatus(Lcom/android/mms/data/Conversation;)V
    invoke-static {v0, v3}, Lcom/android/mms/data/WorkingMessage;->access$1000(Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/data/Conversation;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage$10;->this$0:Lcom/android/mms/data/WorkingMessage;

    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage$10;->val$contents:Ljava/lang/String;

    iget v4, p0, Lcom/android/mms/data/WorkingMessage$10;->val$priority:I

    iget-boolean v5, p0, Lcom/android/mms/data/WorkingMessage$10;->val$isInsert:Z

    # invokes: Lcom/android/mms/data/WorkingMessage;->updateDraftFreeChatMessage(JLjava/lang/String;IZ)Landroid/net/Uri;
    invoke-static/range {v0 .. v5}, Lcom/android/mms/data/WorkingMessage;->access$1200(Lcom/android/mms/data/WorkingMessage;JLjava/lang/String;IZ)Landroid/net/Uri;

    goto :goto_0
.end method
