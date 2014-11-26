.class Lcom/android/mms/data/WorkingMessage$14;
.super Ljava/lang/Object;
.source "WorkingMessage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/data/WorkingMessage;->saveSmsToPending(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/data/WorkingMessage;

.field final synthetic val$conv:Lcom/android/mms/data/Conversation;

.field final synthetic val$msgText:Ljava/lang/String;

.field final synthetic val$sendSimSlot:I


# direct methods
.method constructor <init>(Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/data/Conversation;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/data/WorkingMessage$14;->this$0:Lcom/android/mms/data/WorkingMessage;

    iput-object p2, p0, Lcom/android/mms/data/WorkingMessage$14;->val$conv:Lcom/android/mms/data/Conversation;

    iput-object p3, p0, Lcom/android/mms/data/WorkingMessage$14;->val$msgText:Ljava/lang/String;

    iput p4, p0, Lcom/android/mms/data/WorkingMessage$14;->val$sendSimSlot:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage$14;->this$0:Lcom/android/mms/data/WorkingMessage;

    # getter for: Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;
    invoke-static {v0}, Lcom/android/mms/data/WorkingMessage;->access$1400(Lcom/android/mms/data/WorkingMessage;)Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/mms/data/WorkingMessage$MessageStatusListener;->onPreMessageSent()V

    invoke-static {}, Lcom/android/mms/MmsConfig;->isFreeMessageEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage$14;->val$conv:Lcom/android/mms/data/Conversation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/data/Conversation;->ensureThreadId(I)J

    move-result-wide v3

    :goto_0
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage$14;->val$conv:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->serialize()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage$14;->this$0:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage$14;->val$msgText:Ljava/lang/String;

    iget v5, p0, Lcom/android/mms/data/WorkingMessage$14;->val$sendSimSlot:I

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/data/WorkingMessage;->createPendingSmsMessage(Ljava/lang/String;Ljava/lang/String;JI)V

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage$14;->this$0:Lcom/android/mms/data/WorkingMessage;

    # invokes: Lcom/android/mms/data/WorkingMessage;->deleteDraftSmsMessage(J)V
    invoke-static {v0, v3, v4}, Lcom/android/mms/data/WorkingMessage;->access$1500(Lcom/android/mms/data/WorkingMessage;J)V

    return-void

    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->isBlackBirdFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage$14;->val$conv:Lcom/android/mms/data/Conversation;

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage$14;->this$0:Lcom/android/mms/data/WorkingMessage;

    # getter for: Lcom/android/mms/data/WorkingMessage;->mRcsChatManager:Lcom/android/mms/rcs/RcsChatManager;
    invoke-static {v1}, Lcom/android/mms/data/WorkingMessage;->access$400(Lcom/android/mms/data/WorkingMessage;)Lcom/android/mms/rcs/RcsChatManager;

    move-result-object v1

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage$14;->this$0:Lcom/android/mms/data/WorkingMessage;

    # getter for: Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;
    invoke-static {v5}, Lcom/android/mms/data/WorkingMessage;->access$200(Lcom/android/mms/data/WorkingMessage;)Lcom/android/mms/data/Conversation;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/data/Conversation;->isGroupChat()Z

    move-result v5

    invoke-virtual {v1, v5}, Lcom/android/mms/rcs/RcsChatManager;->getChatType(Z)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/mms/data/Conversation;->ensureThreadId(I)J

    move-result-wide v3

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage$14;->val$conv:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->ensureThreadId()J

    move-result-wide v3

    goto :goto_0
.end method
