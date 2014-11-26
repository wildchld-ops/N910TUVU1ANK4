.class final Lcom/android/phone/PhoneUtils$4;
.super Ljava/lang/Object;
.source "PhoneUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/PhoneUtils;->displayMMIComplete(Lcom/android/internal/telephony/Phone;Landroid/content/Context;Lcom/android/internal/telephony/MmiCode;Landroid/os/Message;Landroid/app/AlertDialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1    # Landroid/content/DialogInterface;

    const-string v0, "PhoneUtils"

    const-string v1, "onDismiss called on MMI complete dialog"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    # getter for: Lcom/android/phone/PhoneUtils;->backKeyPressed:Z
    invoke-static {}, Lcom/android/phone/PhoneUtils;->access$1200()Z

    move-result v0

    if-eqz v0, :cond_0

    # getter for: Lcom/android/phone/PhoneUtils;->dequeMmiDialog:Ljava/util/ArrayDeque;
    invoke-static {}, Lcom/android/phone/PhoneUtils;->access$1100()Ljava/util/ArrayDeque;

    move-result-object v0

    if-eqz v0, :cond_0

    # getter for: Lcom/android/phone/PhoneUtils;->dequeMmiDialog:Ljava/util/ArrayDeque;
    invoke-static {}, Lcom/android/phone/PhoneUtils;->access$1100()Ljava/util/ArrayDeque;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    # getter for: Lcom/android/phone/PhoneUtils;->dequeMmiDialog:Ljava/util/ArrayDeque;
    invoke-static {}, Lcom/android/phone/PhoneUtils;->access$1100()Ljava/util/ArrayDeque;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    const-string v0, "PhoneUtils"

    const-string v1, "Back key pressed on MMI complete dialog"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    # setter for: Lcom/android/phone/PhoneUtils;->backKeyPressed:Z
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->access$1202(Z)Z

    return-void
.end method
