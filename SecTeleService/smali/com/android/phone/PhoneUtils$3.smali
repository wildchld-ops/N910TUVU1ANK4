.class final Lcom/android/phone/PhoneUtils$3;
.super Ljava/lang/Object;
.source "PhoneUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    # getter for: Lcom/android/phone/PhoneUtils;->dequeMmiDialog:Ljava/util/ArrayDeque;
    invoke-static {}, Lcom/android/phone/PhoneUtils;->access$1100()Ljava/util/ArrayDeque;

    move-result-object v0

    if-eqz v0, :cond_0

    # getter for: Lcom/android/phone/PhoneUtils;->dequeMmiDialog:Ljava/util/ArrayDeque;
    invoke-static {}, Lcom/android/phone/PhoneUtils;->access$1100()Ljava/util/ArrayDeque;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

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

    :cond_0
    const/4 v0, 0x0

    # setter for: Lcom/android/phone/PhoneUtils;->backKeyPressed:Z
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->access$1202(Z)Z

    const-string v0, "PhoneUtils"

    const-string v1, "Ok pressed on MMI complete dialog"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
