.class Lcom/android/phone/CallCommandService$TeleServiceUIHandler;
.super Landroid/os/Handler;
.source "CallCommandService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallCommandService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TeleServiceUIHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallCommandService;


# direct methods
.method constructor <init>(Lcom/android/phone/CallCommandService;)V
    .locals 3

    iput-object p1, p0, Lcom/android/phone/CallCommandService$TeleServiceUIHandler;->this$0:Lcom/android/phone/CallCommandService;

    # getter for: Lcom/android/phone/CallCommandService;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/phone/CallCommandService;->access$000(Lcom/android/phone/CallCommandService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method

.method private executeMessage(Landroid/os/Message;)V
    .locals 3
    .param p1    # Landroid/os/Message;

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Lcom/android/phone/PhoneGlobals;->registerRcsObserver(I)V

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Lcom/android/phone/PhoneGlobals;->unRegisterRcsObserver(I)V

    goto :goto_0

    :pswitch_2
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/android/phone/PhoneGlobals;->onNewIncomingRcsSession(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v0, v1, Lcom/android/phone/PhoneGlobals;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v0}, Lcom/android/phone/CallNotifier;->saveSwitchedLog()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0
    .param p1    # Landroid/os/Message;

    invoke-direct {p0, p1}, Lcom/android/phone/CallCommandService$TeleServiceUIHandler;->executeMessage(Landroid/os/Message;)V

    return-void
.end method
