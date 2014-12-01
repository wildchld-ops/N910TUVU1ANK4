.class Lcom/android/mms/transaction/MessageBackgroundSenderService$2;
.super Lcom/android/mms/transaction/ISnsRemoteService$Stub;
.source "MessageBackgroundSenderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/MessageBackgroundSenderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/transaction/MessageBackgroundSenderService;


# direct methods
.method constructor <init>(Lcom/android/mms/transaction/MessageBackgroundSenderService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$2;->this$0:Lcom/android/mms/transaction/MessageBackgroundSenderService;

    invoke-direct {p0}, Lcom/android/mms/transaction/ISnsRemoteService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public registerCallback(Lcom/android/mms/transaction/ISnsRemoteServiceCallback;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$2;->this$0:Lcom/android/mms/transaction/MessageBackgroundSenderService;

    iget-object v0, v0, Lcom/android/mms/transaction/MessageBackgroundSenderService;->mSnsCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    :cond_0
    return-void
.end method

.method public unregisterCallback(Lcom/android/mms/transaction/ISnsRemoteServiceCallback;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$2;->this$0:Lcom/android/mms/transaction/MessageBackgroundSenderService;

    iget-object v0, v0, Lcom/android/mms/transaction/MessageBackgroundSenderService;->mSnsCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    :cond_0
    return-void
.end method
