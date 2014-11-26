.class public Lcom/android/mms/ui/ConversationComposer$ContentObserverHandler$MyHandler;
.super Landroid/os/Handler;
.source "ConversationComposer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ConversationComposer$ContentObserverHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyHandler"
.end annotation


# instance fields
.field private final PENDING_TIMEOUT:I

.field private mHasEvent:Z

.field private mIsPending:Z

.field private mObserver:Lcom/android/mms/ui/ConversationComposer$ContentObserverHandler;

.field final synthetic this$1:Lcom/android/mms/ui/ConversationComposer$ContentObserverHandler;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/ConversationComposer$ContentObserverHandler;Landroid/os/Looper;Lcom/android/mms/ui/ConversationComposer$ContentObserverHandler;)V
    .locals 1
    .param p2    # Landroid/os/Looper;
    .param p3    # Lcom/android/mms/ui/ConversationComposer$ContentObserverHandler;

    iput-object p1, p0, Lcom/android/mms/ui/ConversationComposer$ContentObserverHandler$MyHandler;->this$1:Lcom/android/mms/ui/ConversationComposer$ContentObserverHandler;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/16 v0, 0x7d0

    iput v0, p0, Lcom/android/mms/ui/ConversationComposer$ContentObserverHandler$MyHandler;->PENDING_TIMEOUT:I

    iput-object p3, p0, Lcom/android/mms/ui/ConversationComposer$ContentObserverHandler$MyHandler;->mObserver:Lcom/android/mms/ui/ConversationComposer$ContentObserverHandler;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1    # Landroid/os/Message;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationComposer$ContentObserverHandler$MyHandler;->mIsPending:Z

    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationComposer$ContentObserverHandler$MyHandler;->mHasEvent:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer$ContentObserverHandler$MyHandler;->onEvent()V

    :cond_0
    return-void
.end method

.method public onEvent()V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationComposer$ContentObserverHandler$MyHandler;->mIsPending:Z

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/android/mms/ui/ConversationComposer$ContentObserverHandler$MyHandler;->mHasEvent:Z

    :goto_0
    return-void

    :cond_0
    iput-boolean v1, p0, Lcom/android/mms/ui/ConversationComposer$ContentObserverHandler$MyHandler;->mIsPending:Z

    iput-boolean v2, p0, Lcom/android/mms/ui/ConversationComposer$ContentObserverHandler$MyHandler;->mHasEvent:Z

    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer$ContentObserverHandler$MyHandler;->mObserver:Lcom/android/mms/ui/ConversationComposer$ContentObserverHandler;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationComposer$ContentObserverHandler;->performOnChanged()V

    const-wide/16 v0, 0x7d0

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
