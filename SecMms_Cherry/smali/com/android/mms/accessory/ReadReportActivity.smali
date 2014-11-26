.class public Lcom/android/mms/accessory/ReadReportActivity;
.super Landroid/app/Activity;
.source "ReadReportActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/accessory/ReadReportActivity$MmsData;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/ReadReportActivity"

.field private static sInstance:Lcom/android/mms/accessory/ReadReportActivity;


# instance fields
.field mCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field private mDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/accessory/ReadReportActivity$MmsData;",
            ">;"
        }
    .end annotation
.end field

.field private mDialog:Landroid/app/AlertDialog;

.field mNegativeListener:Landroid/content/DialogInterface$OnClickListener;

.field mPositiveListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/accessory/ReadReportActivity;->sInstance:Lcom/android/mms/accessory/ReadReportActivity;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v0, p0, Lcom/android/mms/accessory/ReadReportActivity;->mDialog:Landroid/app/AlertDialog;

    iput-object v0, p0, Lcom/android/mms/accessory/ReadReportActivity;->mDataList:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/mms/accessory/ReadReportActivity$1;

    invoke-direct {v0, p0}, Lcom/android/mms/accessory/ReadReportActivity$1;-><init>(Lcom/android/mms/accessory/ReadReportActivity;)V

    iput-object v0, p0, Lcom/android/mms/accessory/ReadReportActivity;->mPositiveListener:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/android/mms/accessory/ReadReportActivity$2;

    invoke-direct {v0, p0}, Lcom/android/mms/accessory/ReadReportActivity$2;-><init>(Lcom/android/mms/accessory/ReadReportActivity;)V

    iput-object v0, p0, Lcom/android/mms/accessory/ReadReportActivity;->mNegativeListener:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/android/mms/accessory/ReadReportActivity$3;

    invoke-direct {v0, p0}, Lcom/android/mms/accessory/ReadReportActivity$3;-><init>(Lcom/android/mms/accessory/ReadReportActivity;)V

    iput-object v0, p0, Lcom/android/mms/accessory/ReadReportActivity;->mCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    return-void
.end method

.method static synthetic access$300(Lcom/android/mms/accessory/ReadReportActivity;Z)V
    .locals 0
    .param p0    # Lcom/android/mms/accessory/ReadReportActivity;
    .param p1    # Z

    invoke-direct {p0, p1}, Lcom/android/mms/accessory/ReadReportActivity;->updateReadReport(Z)V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/mms/accessory/ReadReportActivity;
    .locals 2

    const-class v0, Lcom/android/mms/accessory/ReadReportActivity;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/mms/accessory/ReadReportActivity;->sInstance:Lcom/android/mms/accessory/ReadReportActivity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private queueFromIntent(Landroid/content/Intent;)Z
    .locals 8
    .param p1    # Landroid/content/Intent;

    const-wide/16 v6, 0x0

    const-string v4, "Mms/ReadReportActivity"

    const-string v5, "queueFromIntent()"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "_id"

    invoke-virtual {p1, v4, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    const-string v4, "m_id"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "address"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    cmp-long v4, v1, v6

    if-lez v4, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const/4 v4, 0x0

    :goto_0
    return v4

    :cond_1
    iget-object v4, p0, Lcom/android/mms/accessory/ReadReportActivity;->mDataList:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/mms/accessory/ReadReportActivity$MmsData;

    invoke-direct {v5, v1, v2, v0, v3}, Lcom/android/mms/accessory/ReadReportActivity$MmsData;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "Mms/ReadReportActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "queueFromIntent id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " size="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/accessory/ReadReportActivity;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    goto :goto_0
.end method

.method private updateReadReport(Z)V
    .locals 12
    .param p1    # Z

    const/16 v11, 0x80

    const/4 v6, 0x1

    const/4 v10, 0x0

    sput-object v10, Lcom/android/mms/accessory/ReadReportActivity;->sInstance:Lcom/android/mms/accessory/ReadReportActivity;

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4, v6}, Landroid/content/ContentValues;-><init>(I)V

    const-string v5, "seen"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "Mms/ReadReportActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateReadReport() mDataList.size()="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/accessory/ReadReportActivity;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    const-string v5, "Mms/ReadReportActivity"

    const-string v6, "updateReadReport() sendReadReport"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsReadReportPdu()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/mms/accessory/ReadReportActivity;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/accessory/ReadReportActivity$MmsData;

    # getter for: Lcom/android/mms/accessory/ReadReportActivity$MmsData;->mAddress:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/accessory/ReadReportActivity$MmsData;->access$000(Lcom/android/mms/accessory/ReadReportActivity$MmsData;)Ljava/lang/String;

    move-result-object v5

    # getter for: Lcom/android/mms/accessory/ReadReportActivity$MmsData;->mMessageId:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/accessory/ReadReportActivity$MmsData;->access$100(Lcom/android/mms/accessory/ReadReportActivity$MmsData;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v5, v6, v11}, Lcom/android/mms/transaction/MmsMessageSender;->sendReadRec(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget-object v5, p0, Lcom/android/mms/accessory/ReadReportActivity;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/accessory/ReadReportActivity$MmsData;

    # getter for: Lcom/android/mms/accessory/ReadReportActivity$MmsData;->mMessageId:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/accessory/ReadReportActivity$MmsData;->access$100(Lcom/android/mms/accessory/ReadReportActivity$MmsData;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/android/mms/data/ReadReportData;

    sget-object v7, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    # getter for: Lcom/android/mms/accessory/ReadReportActivity$MmsData;->mId:J
    invoke-static {v0}, Lcom/android/mms/accessory/ReadReportActivity$MmsData;->access$200(Lcom/android/mms/accessory/ReadReportActivity$MmsData;)J

    move-result-wide v8

    invoke-static {v7, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v6, p0, v7}, Lcom/android/mms/data/ReadReportData;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    invoke-static {p0, v2, v11}, Lcom/android/mms/transaction/MmsMessageSender;->sendReadRec(Landroid/content/Context;Ljava/util/Map;I)V

    :cond_2
    iget-object v5, p0, Lcom/android/mms/accessory/ReadReportActivity;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/accessory/ReadReportActivity$MmsData;

    const-string v5, "Mms/ReadReportActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateReadReport id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    # getter for: Lcom/android/mms/accessory/ReadReportActivity$MmsData;->mId:J
    invoke-static {v0}, Lcom/android/mms/accessory/ReadReportActivity$MmsData;->access$200(Lcom/android/mms/accessory/ReadReportActivity$MmsData;)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    # getter for: Lcom/android/mms/accessory/ReadReportActivity$MmsData;->mId:J
    invoke-static {v0}, Lcom/android/mms/accessory/ReadReportActivity$MmsData;->access$200(Lcom/android/mms/accessory/ReadReportActivity$MmsData;)J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v3, v4, v10, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;

    const/4 v3, 0x1

    const-string v1, "Mms/ReadReportActivity"

    const-string v2, "onCreate()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    sput-object p0, Lcom/android/mms/accessory/ReadReportActivity;->sInstance:Lcom/android/mms/accessory/ReadReportActivity;

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v3}, Landroid/app/Activity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x7f0203a5

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    iget-object v1, p0, Lcom/android/mms/accessory/ReadReportActivity;->mDataList:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/mms/accessory/ReadReportActivity;->mDataList:Ljava/util/ArrayList;

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/mms/accessory/ReadReportActivity;->queueFromIntent(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "Mms/ReadReportActivity"

    const-string v2, "onCreate : (!queueFromIntent(getIntent()))(false)"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/mms/accessory/ReadReportActivity;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v3, :cond_1

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0c00c5

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0c00c6

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0c004d

    iget-object v2, p0, Lcom/android/mms/accessory/ReadReportActivity;->mPositiveListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0c004e

    iget-object v2, p0, Lcom/android/mms/accessory/ReadReportActivity;->mNegativeListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/mms/accessory/ReadReportActivity;->mCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/accessory/ReadReportActivity;->mDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/android/mms/accessory/ReadReportActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    const-string v0, "Mms/ReadReportActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/accessory/ReadReportActivity;->sInstance:Lcom/android/mms/accessory/ReadReportActivity;

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1    # Landroid/content/Intent;

    const-string v0, "Mms/ReadReportActivity"

    const-string v1, "onNewIntent()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/accessory/ReadReportActivity;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0, p1}, Lcom/android/mms/accessory/ReadReportActivity;->queueFromIntent(Landroid/content/Intent;)Z

    return-void
.end method

.method protected onPause()V
    .locals 2

    const-string v0, "Mms/ReadReportActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public requestToDismissDialog()V
    .locals 2

    const-string v0, "Mms/ReadReportActivity"

    const-string v1, "requestToDismissDialog"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/mms/accessory/ReadReportActivity;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/accessory/ReadReportActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/accessory/ReadReportActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method
