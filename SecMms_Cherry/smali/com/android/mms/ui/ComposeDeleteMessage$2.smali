.class Lcom/android/mms/ui/ComposeDeleteMessage$2;
.super Ljava/lang/Object;
.source "ComposeDeleteMessage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeDeleteMessage;->deleteMessage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeDeleteMessage;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeDeleteMessage;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ComposeDeleteMessage$2;->this$0:Lcom/android/mms/ui/ComposeDeleteMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/android/mms/ui/ComposeDeleteMessage$2;->this$0:Lcom/android/mms/ui/ComposeDeleteMessage;

    # getter for: Lcom/android/mms/ui/ComposeDeleteMessage;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeDeleteMessage;->access$400(Lcom/android/mms/ui/ComposeDeleteMessage;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeDeleteMessage$2;->this$0:Lcom/android/mms/ui/ComposeDeleteMessage;

    # getter for: Lcom/android/mms/ui/ComposeDeleteMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeDeleteMessage;->access$300(Lcom/android/mms/ui/ComposeDeleteMessage;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    return-void
.end method
