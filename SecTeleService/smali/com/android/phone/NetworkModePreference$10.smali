.class Lcom/android/phone/NetworkModePreference$10;
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

    iput-object p1, p0, Lcom/android/phone/NetworkModePreference$10;->this$0:Lcom/android/phone/NetworkModePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/android/phone/NetworkModePreference$10;->this$0:Lcom/android/phone/NetworkModePreference;

    iget-object v2, p0, Lcom/android/phone/NetworkModePreference$10;->this$0:Lcom/android/phone/NetworkModePreference;

    # getter for: Lcom/android/phone/NetworkModePreference;->mNetworkType:I
    invoke-static {v2}, Lcom/android/phone/NetworkModePreference;->access$1300(Lcom/android/phone/NetworkModePreference;)I

    move-result v2

    # setter for: Lcom/android/phone/NetworkModePreference;->mOldNetworkType:I
    invoke-static {v1, v2}, Lcom/android/phone/NetworkModePreference;->access$1202(Lcom/android/phone/NetworkModePreference;I)I

    iget-object v1, p0, Lcom/android/phone/NetworkModePreference$10;->this$0:Lcom/android/phone/NetworkModePreference;

    # getter for: Lcom/android/phone/NetworkModePreference;->mPhoneV2:[Lcom/android/internal/telephony/Phone;
    invoke-static {v1}, Lcom/android/phone/NetworkModePreference;->access$900(Lcom/android/phone/NetworkModePreference;)[Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/NetworkModePreference$10;->this$0:Lcom/android/phone/NetworkModePreference;

    # getter for: Lcom/android/phone/NetworkModePreference;->mActivePhone:I
    invoke-static {v2}, Lcom/android/phone/NetworkModePreference;->access$1000(Lcom/android/phone/NetworkModePreference;)I

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/android/phone/NetworkModePreference$10;->this$0:Lcom/android/phone/NetworkModePreference;

    # getter for: Lcom/android/phone/NetworkModePreference;->mHandler:Lcom/android/phone/NetworkModePreference$MyHandler;
    invoke-static {v2}, Lcom/android/phone/NetworkModePreference;->access$100(Lcom/android/phone/NetworkModePreference;)Lcom/android/phone/NetworkModePreference$MyHandler;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v4, v2}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    # setter for: Lcom/android/phone/NetworkModePreference;->sChangeNetworkType_Step2:I
    invoke-static {v4}, Lcom/android/phone/NetworkModePreference;->access$1402(I)I

    iget-object v1, p0, Lcom/android/phone/NetworkModePreference$10;->this$0:Lcom/android/phone/NetworkModePreference;

    iget-object v2, p0, Lcom/android/phone/NetworkModePreference$10;->this$0:Lcom/android/phone/NetworkModePreference;

    # getter for: Lcom/android/phone/NetworkModePreference;->mNetworkType:I
    invoke-static {v2}, Lcom/android/phone/NetworkModePreference;->access$1300(Lcom/android/phone/NetworkModePreference;)I

    move-result v2

    # setter for: Lcom/android/phone/NetworkModePreference;->mNetworkTypeForStep2:I
    invoke-static {v1, v2}, Lcom/android/phone/NetworkModePreference;->access$1502(Lcom/android/phone/NetworkModePreference;I)I

    iget-object v1, p0, Lcom/android/phone/NetworkModePreference$10;->this$0:Lcom/android/phone/NetworkModePreference;

    # getter for: Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/phone/NetworkModePreference;->access$400(Lcom/android/phone/NetworkModePreference;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.sk.action.dataButtonEnable"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/android/phone/NetworkModePreference$10;->this$0:Lcom/android/phone/NetworkModePreference;

    # getter for: Lcom/android/phone/NetworkModePreference;->mActivePhone:I
    invoke-static {v1}, Lcom/android/phone/NetworkModePreference;->access$1000(Lcom/android/phone/NetworkModePreference;)I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/NetworkModePreference$10;->this$0:Lcom/android/phone/NetworkModePreference;

    # getter for: Lcom/android/phone/NetworkModePreference;->mNetworkType:I
    invoke-static {v1}, Lcom/android/phone/NetworkModePreference;->access$1300(Lcom/android/phone/NetworkModePreference;)I

    move-result v1

    # setter for: Lcom/android/phone/NetworkModePreference;->sNetworkTypeSim0:I
    invoke-static {v1}, Lcom/android/phone/NetworkModePreference;->access$1602(I)I

    # setter for: Lcom/android/phone/NetworkModePreference;->sNetworkTypeSim1:I
    invoke-static {v4}, Lcom/android/phone/NetworkModePreference;->access$1702(I)I

    iget-object v1, p0, Lcom/android/phone/NetworkModePreference$10;->this$0:Lcom/android/phone/NetworkModePreference;

    iget-object v2, p0, Lcom/android/phone/NetworkModePreference$10;->this$0:Lcom/android/phone/NetworkModePreference;

    # getter for: Lcom/android/phone/NetworkModePreference;->summaryString:[Ljava/lang/String;
    invoke-static {v2}, Lcom/android/phone/NetworkModePreference;->access$1800(Lcom/android/phone/NetworkModePreference;)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/NetworkModePreference$10;->this$0:Lcom/android/phone/NetworkModePreference;

    # getter for: Lcom/android/phone/NetworkModePreference;->sNetworkTypeSim0:I
    invoke-static {}, Lcom/android/phone/NetworkModePreference;->access$1600()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v1, p0, Lcom/android/phone/NetworkModePreference$10;->this$0:Lcom/android/phone/NetworkModePreference;

    # getter for: Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/phone/NetworkModePreference;->access$400(Lcom/android/phone/NetworkModePreference;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "action.ButtonEnable"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    # setter for: Lcom/android/phone/NetworkModePreference;->sSetEnabledFlag:Z
    invoke-static {v5}, Lcom/android/phone/NetworkModePreference;->access$1902(Z)Z

    const-string v1, "persist.sys.dataprefer.simid"

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/android/phone/NetworkModePreference$10;->this$0:Lcom/android/phone/NetworkModePreference;

    # getter for: Lcom/android/phone/NetworkModePreference;->mActivePhone:I
    invoke-static {v2}, Lcom/android/phone/NetworkModePreference;->access$1000(Lcom/android/phone/NetworkModePreference;)I

    move-result v2

    if-ne v1, v2, :cond_1

    const-string v1, "NetworkModePreference"

    const-string v2, "Don\'t need change data service network, already activePhone is dataPrefered SIM."

    invoke-static {v1, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :cond_0
    # setter for: Lcom/android/phone/NetworkModePreference;->sNetworkTypeSim0:I
    invoke-static {v4}, Lcom/android/phone/NetworkModePreference;->access$1602(I)I

    iget-object v1, p0, Lcom/android/phone/NetworkModePreference$10;->this$0:Lcom/android/phone/NetworkModePreference;

    # getter for: Lcom/android/phone/NetworkModePreference;->mNetworkType:I
    invoke-static {v1}, Lcom/android/phone/NetworkModePreference;->access$1300(Lcom/android/phone/NetworkModePreference;)I

    move-result v1

    # setter for: Lcom/android/phone/NetworkModePreference;->sNetworkTypeSim1:I
    invoke-static {v1}, Lcom/android/phone/NetworkModePreference;->access$1702(I)I

    iget-object v1, p0, Lcom/android/phone/NetworkModePreference$10;->this$0:Lcom/android/phone/NetworkModePreference;

    iget-object v2, p0, Lcom/android/phone/NetworkModePreference$10;->this$0:Lcom/android/phone/NetworkModePreference;

    # getter for: Lcom/android/phone/NetworkModePreference;->summaryString:[Ljava/lang/String;
    invoke-static {v2}, Lcom/android/phone/NetworkModePreference;->access$1800(Lcom/android/phone/NetworkModePreference;)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/NetworkModePreference$10;->this$0:Lcom/android/phone/NetworkModePreference;

    # getter for: Lcom/android/phone/NetworkModePreference;->sNetworkTypeSim1:I
    invoke-static {}, Lcom/android/phone/NetworkModePreference;->access$1700()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/phone/NetworkModePreference$10;->this$0:Lcom/android/phone/NetworkModePreference;

    # getter for: Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/phone/NetworkModePreference;->access$400(Lcom/android/phone/NetworkModePreference;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/phone/NetworkModePreference$10;->this$0:Lcom/android/phone/NetworkModePreference;

    # getter for: Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/phone/NetworkModePreference;->access$400(Lcom/android/phone/NetworkModePreference;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0909ec

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0909ed

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040013

    new-instance v3, Lcom/android/phone/NetworkModePreference$10$2;

    invoke-direct {v3, p0}, Lcom/android/phone/NetworkModePreference$10$2;-><init>(Lcom/android/phone/NetworkModePreference$10;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040009

    new-instance v3, Lcom/android/phone/NetworkModePreference$10$1;

    invoke-direct {v3, p0}, Lcom/android/phone/NetworkModePreference$10$1;-><init>(Lcom/android/phone/NetworkModePreference$10;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_1
.end method
