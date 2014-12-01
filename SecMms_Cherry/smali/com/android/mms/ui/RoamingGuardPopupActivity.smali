.class public Lcom/android/mms/ui/RoamingGuardPopupActivity;
.super Landroid/app/Activity;
.source "RoamingGuardPopupActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/RoamingGuardPopupActivity$RoamingPopupDismissListener;,
        Lcom/android/mms/ui/RoamingGuardPopupActivity$CancelSendingListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/RoamingGuardPopupActivity"


# instance fields
.field private mDialog:Landroid/app/AlertDialog;

.field private mMessage:Ljava/lang/String;

.field private mRecipients:[Ljava/lang/String;

.field private mThreadId:J


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/RoamingGuardPopupActivity;->mDialog:Landroid/app/AlertDialog;

    iput-object v0, p0, Lcom/android/mms/ui/RoamingGuardPopupActivity;->mRecipients:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/mms/ui/RoamingGuardPopupActivity;->mMessage:Ljava/lang/String;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/mms/ui/RoamingGuardPopupActivity;->mThreadId:J

    return-void
.end method

.method private sendMessage(Z)V
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    new-instance v0, Lcom/android/mms/transaction/SmsMessageSender;

    iget-object v2, p0, Lcom/android/mms/ui/RoamingGuardPopupActivity;->mRecipients:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/mms/ui/RoamingGuardPopupActivity;->mMessage:Ljava/lang/String;

    iget-wide v4, p0, Lcom/android/mms/ui/RoamingGuardPopupActivity;->mThreadId:J

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/transaction/SmsMessageSender;-><init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;J)V

    :goto_0
    :try_start_0
    iget-wide v1, p0, Lcom/android/mms/ui/RoamingGuardPopupActivity;->mThreadId:J

    invoke-interface {v0, v1, v2}, Lcom/android/mms/transaction/MessageSender;->sendMessage(J)Z

    invoke-static {}, Lcom/android/mms/util/Recycler;->getSmsRecycler()Lcom/android/mms/util/Recycler$SmsRecycler;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/mms/ui/RoamingGuardPopupActivity;->mThreadId:J

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/mms/util/Recycler;->deleteOldMessagesByThreadId(Landroid/content/Context;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_0
    new-instance v0, Lcom/android/mms/transaction/SmsMessageSender;

    iget-object v2, p0, Lcom/android/mms/ui/RoamingGuardPopupActivity;->mRecipients:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/mms/ui/RoamingGuardPopupActivity;->mMessage:Ljava/lang/String;

    iget-wide v4, p0, Lcom/android/mms/ui/RoamingGuardPopupActivity;->mThreadId:J

    const/4 v6, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/transaction/SmsMessageSender;-><init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;JZ)V

    goto :goto_0

    :catch_0
    move-exception v7

    const-string v1, "Mms/RoamingGuardPopupActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to send SMS message, threadId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/mms/ui/RoamingGuardPopupActivity;->mThreadId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v7}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    const/4 v7, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Landroid/app/Activity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const v4, 0x7f0203a5

    invoke-virtual {v3, v4}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "recipient"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "body"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/RoamingGuardPopupActivity;->mMessage:Ljava/lang/String;

    const-string v3, ";"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/RoamingGuardPopupActivity;->mRecipients:[Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "threadid"

    const-wide/16 v5, -0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/mms/ui/RoamingGuardPopupActivity;->mThreadId:J

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0400a9

    invoke-virtual {v3, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v3, 0x7f080012

    new-instance v4, Lcom/android/mms/ui/RoamingGuardPopupActivity$1;

    invoke-direct {v4, p0}, Lcom/android/mms/ui/RoamingGuardPopupActivity$1;-><init>(Lcom/android/mms/ui/RoamingGuardPopupActivity;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v3, 0x7f0c004e

    new-instance v4, Lcom/android/mms/ui/RoamingGuardPopupActivity$CancelSendingListener;

    invoke-direct {v4, p0, v7}, Lcom/android/mms/ui/RoamingGuardPopupActivity$CancelSendingListener;-><init>(Lcom/android/mms/ui/RoamingGuardPopupActivity;Lcom/android/mms/ui/RoamingGuardPopupActivity$1;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/RoamingGuardPopupActivity;->mDialog:Landroid/app/AlertDialog;

    iget-object v3, p0, Lcom/android/mms/ui/RoamingGuardPopupActivity;->mDialog:Landroid/app/AlertDialog;

    new-instance v4, Lcom/android/mms/ui/RoamingGuardPopupActivity$RoamingPopupDismissListener;

    invoke-direct {v4, p0, v7}, Lcom/android/mms/ui/RoamingGuardPopupActivity$RoamingPopupDismissListener;-><init>(Lcom/android/mms/ui/RoamingGuardPopupActivity;Lcom/android/mms/ui/RoamingGuardPopupActivity$1;)V

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v3, p0, Lcom/android/mms/ui/RoamingGuardPopupActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/android/mms/ui/RoamingGuardPopupActivity;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/RoamingGuardPopupActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onStart()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    iget-object v0, p0, Lcom/android/mms/ui/RoamingGuardPopupActivity;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/RoamingGuardPopupActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected sendSmsInInternationalRoaming(I)V
    .locals 3

    const-string v0, "Mms/RoamingGuardPopupActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendSmsInInternationalRoaming : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-string v0, "Mms/RoamingGuardPopupActivity"

    const-string v1, "saveSmsToPending: call WorkingMessage.saveSmsToPending"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/RoamingGuardPopupActivity;->sendMessage(Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/mms/ui/RoamingGuardPopupActivity;->sendMessage(Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
