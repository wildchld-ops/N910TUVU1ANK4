.class Lcom/android/mms/data/WorkingMessage$5;
.super Ljava/lang/Object;
.source "WorkingMessage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/data/WorkingMessage;->asyncSendFT(Lcom/android/mms/data/Conversation;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/data/WorkingMessage;

.field final synthetic val$conv:Lcom/android/mms/data/Conversation;

.field final synthetic val$filepath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/mms/data/WorkingMessage;Ljava/lang/String;Lcom/android/mms/data/Conversation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/data/WorkingMessage$5;->this$0:Lcom/android/mms/data/WorkingMessage;

    iput-object p2, p0, Lcom/android/mms/data/WorkingMessage$5;->val$filepath:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/mms/data/WorkingMessage$5;->val$conv:Lcom/android/mms/data/Conversation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage$5;->val$filepath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage$5;->this$0:Lcom/android/mms/data/WorkingMessage;

    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage$5;->this$0:Lcom/android/mms/data/WorkingMessage;

    # getter for: Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/mms/data/WorkingMessage;->access$300(Lcom/android/mms/data/WorkingMessage;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage$5;->val$conv:Lcom/android/mms/data/Conversation;

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage$5;->val$conv:Lcom/android/mms/data/Conversation;

    invoke-virtual {v4}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/android/mms/data/WorkingMessage;->SendFreeFileTransferWorker(Landroid/content/Context;Lcom/android/mms/data/Conversation;Lcom/android/mms/data/ContactList;Ljava/util/ArrayList;)V

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage$5;->this$0:Lcom/android/mms/data/WorkingMessage;

    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage$5;->val$conv:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1, v2}, Lcom/android/mms/data/WorkingMessage;->updateSendStats(Lcom/android/mms/data/Conversation;)V

    return-void
.end method
