.class final Lcom/android/phone/PhoneUtils$6;
.super Ljava/lang/Object;
.source "PhoneUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


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
.method public run()V
    .locals 2

    # getter for: Lcom/android/phone/PhoneUtils;->mMmiDialog:Landroid/app/AlertDialog;
    invoke-static {}, Lcom/android/phone/PhoneUtils;->access$1500()Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "PhoneUtils"

    const-string v1, "removed the mmi failed dialog after 5 sec..."

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    # getter for: Lcom/android/phone/PhoneUtils;->mMmiDialog:Landroid/app/AlertDialog;
    invoke-static {}, Lcom/android/phone/PhoneUtils;->access$1500()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method
