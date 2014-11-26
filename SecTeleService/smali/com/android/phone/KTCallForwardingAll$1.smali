.class Lcom/android/phone/KTCallForwardingAll$1;
.super Ljava/lang/Object;
.source "KTCallForwardingAll.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/KTCallForwardingAll;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/KTCallForwardingAll;


# direct methods
.method constructor <init>(Lcom/android/phone/KTCallForwardingAll;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/KTCallForwardingAll$1;->this$0:Lcom/android/phone/KTCallForwardingAll;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 10
    .param p1    # Landroid/preference/Preference;
    .param p2    # Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v9, 0x1

    iget-object v0, p0, Lcom/android/phone/KTCallForwardingAll$1;->this$0:Lcom/android/phone/KTCallForwardingAll;

    iput v4, v0, Lcom/android/phone/KTCallForwardingAll;->reason:I

    iget-object v0, p0, Lcom/android/phone/KTCallForwardingAll$1;->this$0:Lcom/android/phone/KTCallForwardingAll;

    # setter for: Lcom/android/phone/KTCallForwardingAll;->mServiceClass:I
    invoke-static {v0, v9}, Lcom/android/phone/KTCallForwardingAll;->access$102(Lcom/android/phone/KTCallForwardingAll;I)I

    iget-object v0, p0, Lcom/android/phone/KTCallForwardingAll$1;->this$0:Lcom/android/phone/KTCallForwardingAll;

    # getter for: Lcom/android/phone/KTCallForwardingAll;->mCheckedProgressDialog:Z
    invoke-static {v0}, Lcom/android/phone/KTCallForwardingAll;->access$200(Lcom/android/phone/KTCallForwardingAll;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/android/phone/KTCallForwardingAll$1;->this$0:Lcom/android/phone/KTCallForwardingAll;

    iget v0, v0, Lcom/android/phone/KTCallForwardingAll;->reason:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    :goto_0
    iget-object v0, p0, Lcom/android/phone/KTCallForwardingAll$1;->this$0:Lcom/android/phone/KTCallForwardingAll;

    # setter for: Lcom/android/phone/KTCallForwardingAll;->mChecked:Z
    invoke-static {v0, v9}, Lcom/android/phone/KTCallForwardingAll;->access$302(Lcom/android/phone/KTCallForwardingAll;Z)Z

    iget-object v0, p0, Lcom/android/phone/KTCallForwardingAll$1;->this$0:Lcom/android/phone/KTCallForwardingAll;

    # getter for: Lcom/android/phone/KTCallForwardingAll;->phone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/android/phone/KTCallForwardingAll;->access$500(Lcom/android/phone/KTCallForwardingAll;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v2, p0, Lcom/android/phone/KTCallForwardingAll$1;->this$0:Lcom/android/phone/KTCallForwardingAll;

    iget v2, v2, Lcom/android/phone/KTCallForwardingAll;->reason:I

    iget-object v5, p0, Lcom/android/phone/KTCallForwardingAll$1;->this$0:Lcom/android/phone/KTCallForwardingAll;

    # getter for: Lcom/android/phone/KTCallForwardingAll;->mHandler:Lcom/android/phone/KTCallForwardingAll$MyHandler;
    invoke-static {v5}, Lcom/android/phone/KTCallForwardingAll;->access$400(Lcom/android/phone/KTCallForwardingAll;)Lcom/android/phone/KTCallForwardingAll$MyHandler;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    iget-object v0, p0, Lcom/android/phone/KTCallForwardingAll$1;->this$0:Lcom/android/phone/KTCallForwardingAll;

    new-instance v2, Ljava/lang/ref/WeakReference;

    iget-object v5, p0, Lcom/android/phone/KTCallForwardingAll$1;->this$0:Lcom/android/phone/KTCallForwardingAll;

    invoke-virtual {v5}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/phone/KTCallForwardingAll$1;->this$0:Lcom/android/phone/KTCallForwardingAll;

    const v8, 0x7f090640

    invoke-virtual {v7, v8}, Landroid/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-static {v5, v6, v7}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    # setter for: Lcom/android/phone/KTCallForwardingAll;->mProgress:Ljava/lang/ref/WeakReference;
    invoke-static {v0, v2}, Lcom/android/phone/KTCallForwardingAll;->access$602(Lcom/android/phone/KTCallForwardingAll;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    iget-object v0, p0, Lcom/android/phone/KTCallForwardingAll$1;->this$0:Lcom/android/phone/KTCallForwardingAll;

    # invokes: Lcom/android/phone/KTCallForwardingAll;->destoryProgressDialogFromNoResponse()V
    invoke-static {v0}, Lcom/android/phone/KTCallForwardingAll;->access$700(Lcom/android/phone/KTCallForwardingAll;)V

    iget-object v0, p0, Lcom/android/phone/KTCallForwardingAll$1;->this$0:Lcom/android/phone/KTCallForwardingAll;

    # setter for: Lcom/android/phone/KTCallForwardingAll;->mCheckedProgressDialog:Z
    invoke-static {v0, v9}, Lcom/android/phone/KTCallForwardingAll;->access$202(Lcom/android/phone/KTCallForwardingAll;Z)Z

    :cond_0
    return v9

    :cond_1
    const/16 v4, 0x14

    goto :goto_0
.end method
