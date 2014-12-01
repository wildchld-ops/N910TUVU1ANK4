.class Lcom/android/phone/NetworkModePreference$12;
.super Ljava/lang/Object;
.source "NetworkModePreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/NetworkModePreference;->changeNetworkType()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NetworkModePreference;


# direct methods
.method constructor <init>(Lcom/android/phone/NetworkModePreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/NetworkModePreference$12;->this$0:Lcom/android/phone/NetworkModePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/phone/NetworkModePreference$12;->this$0:Lcom/android/phone/NetworkModePreference;

    iget-object v1, p0, Lcom/android/phone/NetworkModePreference$12;->this$0:Lcom/android/phone/NetworkModePreference;

    # getter for: Lcom/android/phone/NetworkModePreference;->mNetworkType:I
    invoke-static {v1}, Lcom/android/phone/NetworkModePreference;->access$1300(Lcom/android/phone/NetworkModePreference;)I

    move-result v1

    # setter for: Lcom/android/phone/NetworkModePreference;->mOldNetworkType:I
    invoke-static {v0, v1}, Lcom/android/phone/NetworkModePreference;->access$1202(Lcom/android/phone/NetworkModePreference;I)I

    iget-object v0, p0, Lcom/android/phone/NetworkModePreference$12;->this$0:Lcom/android/phone/NetworkModePreference;

    # getter for: Lcom/android/phone/NetworkModePreference;->mPhoneV2:[Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/android/phone/NetworkModePreference;->access$900(Lcom/android/phone/NetworkModePreference;)[Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/NetworkModePreference$12;->this$0:Lcom/android/phone/NetworkModePreference;

    # getter for: Lcom/android/phone/NetworkModePreference;->mActivePhone:I
    invoke-static {v1}, Lcom/android/phone/NetworkModePreference;->access$1000(Lcom/android/phone/NetworkModePreference;)I

    move-result v1

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/phone/NetworkModePreference$12;->this$0:Lcom/android/phone/NetworkModePreference;

    # getter for: Lcom/android/phone/NetworkModePreference;->mNetworkType:I
    invoke-static {v1}, Lcom/android/phone/NetworkModePreference;->access$1300(Lcom/android/phone/NetworkModePreference;)I

    move-result v1

    iget-object v2, p0, Lcom/android/phone/NetworkModePreference$12;->this$0:Lcom/android/phone/NetworkModePreference;

    # getter for: Lcom/android/phone/NetworkModePreference;->mHandler:Lcom/android/phone/NetworkModePreference$MyHandler;
    invoke-static {v2}, Lcom/android/phone/NetworkModePreference;->access$100(Lcom/android/phone/NetworkModePreference;)Lcom/android/phone/NetworkModePreference$MyHandler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/phone/NetworkModePreference$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    const/4 v0, 0x2

    # setter for: Lcom/android/phone/NetworkModePreference;->sChangeNetworkType_Step2:I
    invoke-static {v0}, Lcom/android/phone/NetworkModePreference;->access$1402(I)I

    iget-object v0, p0, Lcom/android/phone/NetworkModePreference$12;->this$0:Lcom/android/phone/NetworkModePreference;

    # getter for: Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/phone/NetworkModePreference;->access$400(Lcom/android/phone/NetworkModePreference;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sk.action.dataButtonEnable"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/android/phone/NetworkModePreference$12;->this$0:Lcom/android/phone/NetworkModePreference;

    # getter for: Lcom/android/phone/NetworkModePreference;->mActivePhone:I
    invoke-static {v0}, Lcom/android/phone/NetworkModePreference;->access$1000(Lcom/android/phone/NetworkModePreference;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/NetworkModePreference$12;->this$0:Lcom/android/phone/NetworkModePreference;

    # getter for: Lcom/android/phone/NetworkModePreference;->mNetworkType:I
    invoke-static {v0}, Lcom/android/phone/NetworkModePreference;->access$1300(Lcom/android/phone/NetworkModePreference;)I

    move-result v0

    # setter for: Lcom/android/phone/NetworkModePreference;->sNetworkTypeSim0:I
    invoke-static {v0}, Lcom/android/phone/NetworkModePreference;->access$1602(I)I

    # setter for: Lcom/android/phone/NetworkModePreference;->sNetworkTypeSim1:I
    invoke-static {v4}, Lcom/android/phone/NetworkModePreference;->access$1702(I)I

    iget-object v0, p0, Lcom/android/phone/NetworkModePreference$12;->this$0:Lcom/android/phone/NetworkModePreference;

    iget-object v1, p0, Lcom/android/phone/NetworkModePreference$12;->this$0:Lcom/android/phone/NetworkModePreference;

    # getter for: Lcom/android/phone/NetworkModePreference;->summaryString:[Ljava/lang/String;
    invoke-static {v1}, Lcom/android/phone/NetworkModePreference;->access$1800(Lcom/android/phone/NetworkModePreference;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/NetworkModePreference$12;->this$0:Lcom/android/phone/NetworkModePreference;

    # getter for: Lcom/android/phone/NetworkModePreference;->sNetworkTypeSim0:I
    invoke-static {}, Lcom/android/phone/NetworkModePreference;->access$1600()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/phone/NetworkModePreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/phone/NetworkModePreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lcom/android/phone/NetworkModePreference$12;->this$0:Lcom/android/phone/NetworkModePreference;

    # getter for: Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/phone/NetworkModePreference;->access$400(Lcom/android/phone/NetworkModePreference;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "action.ButtonEnable"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    # setter for: Lcom/android/phone/NetworkModePreference;->sSetEnabledFlag:Z
    invoke-static {v4}, Lcom/android/phone/NetworkModePreference;->access$1902(Z)Z

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/phone/NetworkModePreference$12;->this$0:Lcom/android/phone/NetworkModePreference;

    # getter for: Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/phone/NetworkModePreference;->access$400(Lcom/android/phone/NetworkModePreference;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/phone/NetworkModePreference$12;->this$0:Lcom/android/phone/NetworkModePreference;

    # getter for: Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/phone/NetworkModePreference;->access$400(Lcom/android/phone/NetworkModePreference;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0909ec

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0909ed

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090455

    new-instance v2, Lcom/android/phone/NetworkModePreference$12$2;

    invoke-direct {v2, p0}, Lcom/android/phone/NetworkModePreference$12$2;-><init>(Lcom/android/phone/NetworkModePreference$12;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090456

    new-instance v2, Lcom/android/phone/NetworkModePreference$12$1;

    invoke-direct {v2, p0}, Lcom/android/phone/NetworkModePreference$12$1;-><init>(Lcom/android/phone/NetworkModePreference$12;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :cond_0
    # setter for: Lcom/android/phone/NetworkModePreference;->sNetworkTypeSim0:I
    invoke-static {v4}, Lcom/android/phone/NetworkModePreference;->access$1602(I)I

    iget-object v0, p0, Lcom/android/phone/NetworkModePreference$12;->this$0:Lcom/android/phone/NetworkModePreference;

    # getter for: Lcom/android/phone/NetworkModePreference;->mNetworkType:I
    invoke-static {v0}, Lcom/android/phone/NetworkModePreference;->access$1300(Lcom/android/phone/NetworkModePreference;)I

    move-result v0

    # setter for: Lcom/android/phone/NetworkModePreference;->sNetworkTypeSim1:I
    invoke-static {v0}, Lcom/android/phone/NetworkModePreference;->access$1702(I)I

    iget-object v0, p0, Lcom/android/phone/NetworkModePreference$12;->this$0:Lcom/android/phone/NetworkModePreference;

    iget-object v1, p0, Lcom/android/phone/NetworkModePreference$12;->this$0:Lcom/android/phone/NetworkModePreference;

    # getter for: Lcom/android/phone/NetworkModePreference;->summaryString:[Ljava/lang/String;
    invoke-static {v1}, Lcom/android/phone/NetworkModePreference;->access$1800(Lcom/android/phone/NetworkModePreference;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/NetworkModePreference$12;->this$0:Lcom/android/phone/NetworkModePreference;

    # getter for: Lcom/android/phone/NetworkModePreference;->sNetworkTypeSim1:I
    invoke-static {}, Lcom/android/phone/NetworkModePreference;->access$1700()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/phone/NetworkModePreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/phone/NetworkModePreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
