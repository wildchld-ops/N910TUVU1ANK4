.class Lcom/android/mms/data/WorkingMessage$4;
.super Ljava/lang/Object;
.source "WorkingMessage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/data/WorkingMessage;->asyncSendChat(Lcom/android/mms/data/Conversation;Ljava/lang/String;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/data/WorkingMessage;

.field final synthetic val$conv:Lcom/android/mms/data/Conversation;

.field final synthetic val$freeMsgMessageType:I

.field final synthetic val$locked:Z

.field final synthetic val$str:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/mms/data/WorkingMessage;ILjava/lang/String;ZLcom/android/mms/data/Conversation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/data/WorkingMessage$4;->this$0:Lcom/android/mms/data/WorkingMessage;

    iput p2, p0, Lcom/android/mms/data/WorkingMessage$4;->val$freeMsgMessageType:I

    iput-object p3, p0, Lcom/android/mms/data/WorkingMessage$4;->val$str:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/android/mms/data/WorkingMessage$4;->val$locked:Z

    iput-object p5, p0, Lcom/android/mms/data/WorkingMessage$4;->val$conv:Lcom/android/mms/data/Conversation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    iget v0, p0, Lcom/android/mms/data/WorkingMessage$4;->val$freeMsgMessageType:I

    const/16 v1, 0x69

    if-lt v0, v1, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage$4;->val$str:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage$4;->this$0:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage$4;->this$0:Lcom/android/mms/data/WorkingMessage;

    # getter for: Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;
    invoke-static {v1}, Lcom/android/mms/data/WorkingMessage;->access$200(Lcom/android/mms/data/WorkingMessage;)Lcom/android/mms/data/Conversation;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage$4;->val$str:Ljava/lang/String;

    const/4 v3, 0x1

    iget-boolean v5, p0, Lcom/android/mms/data/WorkingMessage$4;->val$locked:Z

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/data/WorkingMessage;->SendFreeMessageWorker(Lcom/android/mms/data/Conversation;Ljava/lang/String;ILjava/util/ArrayList;Z)V

    :goto_0
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage$4;->this$0:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage$4;->val$conv:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->updateSendStats(Lcom/android/mms/data/Conversation;)V

    return-void

    :cond_0
    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage$4;->this$0:Lcom/android/mms/data/WorkingMessage;

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage$4;->this$0:Lcom/android/mms/data/WorkingMessage;

    # getter for: Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;
    invoke-static {v0}, Lcom/android/mms/data/WorkingMessage;->access$200(Lcom/android/mms/data/WorkingMessage;)Lcom/android/mms/data/Conversation;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/data/WorkingMessage$4;->val$str:Ljava/lang/String;

    const/4 v8, -0x1

    const/4 v9, 0x0

    iget-boolean v10, p0, Lcom/android/mms/data/WorkingMessage$4;->val$locked:Z

    invoke-virtual/range {v5 .. v10}, Lcom/android/mms/data/WorkingMessage;->SendFreeMessageWorker(Lcom/android/mms/data/Conversation;Ljava/lang/String;ILjava/util/ArrayList;Z)V

    goto :goto_0
.end method
