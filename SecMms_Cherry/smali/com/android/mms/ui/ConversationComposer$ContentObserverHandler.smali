.class Lcom/android/mms/ui/ConversationComposer$ContentObserverHandler;
.super Landroid/database/ContentObserver;
.source "ConversationComposer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ConversationComposer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContentObserverHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/ConversationComposer$ContentObserverHandler$MyHandler;
    }
.end annotation


# instance fields
.field private mHandler:Lcom/android/mms/ui/ConversationComposer$ContentObserverHandler$MyHandler;

.field final synthetic this$0:Lcom/android/mms/ui/ConversationComposer;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/ConversationComposer;Landroid/os/Handler;)V
    .locals 2

    iput-object p1, p0, Lcom/android/mms/ui/ConversationComposer$ContentObserverHandler;->this$0:Lcom/android/mms/ui/ConversationComposer;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    new-instance v0, Lcom/android/mms/ui/ConversationComposer$ContentObserverHandler$MyHandler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1, p0}, Lcom/android/mms/ui/ConversationComposer$ContentObserverHandler$MyHandler;-><init>(Lcom/android/mms/ui/ConversationComposer$ContentObserverHandler;Landroid/os/Looper;Lcom/android/mms/ui/ConversationComposer$ContentObserverHandler;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationComposer$ContentObserverHandler;->mHandler:Lcom/android/mms/ui/ConversationComposer$ContentObserverHandler$MyHandler;

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    const-string v0, "Mms/ConversationComposer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ContentObserverHandler.onChange(),selfChange="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer$ContentObserverHandler;->mHandler:Lcom/android/mms/ui/ConversationComposer$ContentObserverHandler$MyHandler;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationComposer$ContentObserverHandler$MyHandler;->onEvent()V

    return-void
.end method

.method public performOnChanged()V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer$ContentObserverHandler;->this$0:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/android/mms/data/Contact;->getDefaultContactImage()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/data/Contact;->getAvataMe(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer$ContentObserverHandler;->this$0:Lcom/android/mms/ui/ConversationComposer;

    # getter for: Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationComposer;->access$000(Lcom/android/mms/ui/ConversationComposer;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer$ContentObserverHandler;->this$0:Lcom/android/mms/ui/ConversationComposer;

    # getter for: Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationComposer;->access$000(Lcom/android/mms/ui/ConversationComposer;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer$ContentObserverHandler;->this$0:Lcom/android/mms/ui/ConversationComposer;

    # getter for: Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationComposer;->access$000(Lcom/android/mms/ui/ConversationComposer;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
