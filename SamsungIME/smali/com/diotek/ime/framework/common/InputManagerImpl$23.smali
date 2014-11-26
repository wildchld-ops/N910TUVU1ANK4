.class Lcom/diotek/ime/framework/common/InputManagerImpl$23;
.super Landroid/content/BroadcastReceiver;
.source "InputManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/diotek/ime/framework/common/InputManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;


# direct methods
.method constructor <init>(Lcom/diotek/ime/framework/common/InputManagerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$23;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    sget-boolean v3, Lcom/diotek/ime/framework/util/Debug;->INFO:Z

    if-eqz v3, :cond_0

    const-string v3, "SamsungIME"

    const-string v4, "mIncomingCallReceiver"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->sContext:Landroid/content/Context;
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$1900()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "popup_incoming_call"

    const/4 v5, 0x2

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->sContext:Landroid/content/Context;
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$1900()Landroid/content/Context;

    move-result-object v3

    const-string v4, "keyguard"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    const-string v3, "state"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->sService:Lcom/diotek/ime/framework/common/AbstractInputMethod;
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$4400()Lcom/diotek/ime/framework/common/AbstractInputMethod;

    move-result-object v3

    if-eqz v3, :cond_2

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->sService:Lcom/diotek/ime/framework/common/AbstractInputMethod;
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$4400()Lcom/diotek/ime/framework/common/AbstractInputMethod;

    move-result-object v3

    invoke-virtual {v3}, Landroid/inputmethodservice/InputMethodService;->isInputViewShown()Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v0, :cond_1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->sService:Lcom/diotek/ime/framework/common/AbstractInputMethod;
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$4400()Lcom/diotek/ime/framework/common/AbstractInputMethod;

    move-result-object v3

    invoke-virtual {v3}, Landroid/inputmethodservice/InputMethodService;->hideWindow()V

    :cond_2
    const-string v3, "OFFHOOK"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$23;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    const/4 v4, 0x1

    # setter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mIsCalling:Z
    invoke-static {v3, v4}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$5902(Lcom/diotek/ime/framework/common/InputManagerImpl;Z)Z

    :goto_0
    return-void

    :cond_3
    iget-object v3, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$23;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    const/4 v4, 0x0

    # setter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mIsCalling:Z
    invoke-static {v3, v4}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$5902(Lcom/diotek/ime/framework/common/InputManagerImpl;Z)Z

    goto :goto_0
.end method
