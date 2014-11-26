.class public Lcom/android/phone/RemoveAutoRejectItemDialog;
.super Landroid/app/Activity;
.source "RemoveAutoRejectItemDialog.java"


# static fields
.field private static FROM:[Ljava/lang/String;


# instance fields
.field private auto_reject_number_id:J

.field createDialog:Landroid/app/AlertDialog;

.field private mContentURI:Landroid/net/Uri;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "reject_number"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/RemoveAutoRejectItemDialog;->FROM:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/phone/RemoveAutoRejectItemDialog;->auto_reject_number_id:J

    sget-object v0, Lcom/android/phone/callsettings/ProviderConstants;->AUTOREJECT_CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/phone/RemoveAutoRejectItemDialog;->mContentURI:Landroid/net/Uri;

    new-instance v0, Lcom/android/phone/RemoveAutoRejectItemDialog$1;

    invoke-direct {v0, p0}, Lcom/android/phone/RemoveAutoRejectItemDialog$1;-><init>(Lcom/android/phone/RemoveAutoRejectItemDialog;)V

    iput-object v0, p0, Lcom/android/phone/RemoveAutoRejectItemDialog;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/RemoveAutoRejectItemDialog;)J
    .locals 2
    .param p0    # Lcom/android/phone/RemoveAutoRejectItemDialog;

    iget-wide v0, p0, Lcom/android/phone/RemoveAutoRejectItemDialog;->auto_reject_number_id:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/android/phone/RemoveAutoRejectItemDialog;J)V
    .locals 0
    .param p0    # Lcom/android/phone/RemoveAutoRejectItemDialog;
    .param p1    # J

    invoke-direct {p0, p1, p2}, Lcom/android/phone/RemoveAutoRejectItemDialog;->deleteAutoRejectNumber(J)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/RemoveAutoRejectItemDialog;)Landroid/os/Handler;
    .locals 1
    .param p0    # Lcom/android/phone/RemoveAutoRejectItemDialog;

    iget-object v0, p0, Lcom/android/phone/RemoveAutoRejectItemDialog;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private deleteAutoRejectNumber(J)V
    .locals 5
    .param p1    # J

    const/4 v4, 0x0

    const-string v1, "RemoveAutoRejectItemDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rowId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v1, -0x1

    cmp-long v1, p1, v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "unknown_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/phone/RemoveAutoRejectItemDialog;->mContentURI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1    # Landroid/os/Bundle;

    const/4 v13, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "RemoveAutoRejectItemDialog"

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string v0, "REMOVE_AUTO_REJECT_ITEM_NUMBER"

    invoke-virtual {v9, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/RemoveAutoRejectItemDialog;->mContentURI:Landroid/net/Uri;

    sget-object v2, Lcom/android/phone/RemoveAutoRejectItemDialog;->FROM:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-interface {v6, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_5

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v10, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_2
    iput-wide v7, p0, Lcom/android/phone/RemoveAutoRejectItemDialog;->auto_reject_number_id:J

    :cond_3
    :goto_1
    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    new-instance v12, Landroid/app/AlertDialog$Builder;

    invoke-direct {v12, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0906e0

    invoke-virtual {v12, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v13}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0906e1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090025

    new-instance v2, Lcom/android/phone/RemoveAutoRejectItemDialog$4;

    invoke-direct {v2, p0}, Lcom/android/phone/RemoveAutoRejectItemDialog$4;-><init>(Lcom/android/phone/RemoveAutoRejectItemDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090028

    new-instance v2, Lcom/android/phone/RemoveAutoRejectItemDialog$3;

    invoke-direct {v2, p0}, Lcom/android/phone/RemoveAutoRejectItemDialog$3;-><init>(Lcom/android/phone/RemoveAutoRejectItemDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/phone/RemoveAutoRejectItemDialog$2;

    invoke-direct {v1, p0}, Lcom/android/phone/RemoveAutoRejectItemDialog$2;-><init>(Lcom/android/phone/RemoveAutoRejectItemDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v12}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/RemoveAutoRejectItemDialog;->createDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/phone/RemoveAutoRejectItemDialog;->createDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/phone/RemoveAutoRejectItemDialog$5;

    invoke-direct {v1, p0}, Lcom/android/phone/RemoveAutoRejectItemDialog$5;-><init>(Lcom/android/phone/RemoveAutoRejectItemDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/android/phone/RemoveAutoRejectItemDialog;->createDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    :cond_5
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const-string v0, "RemoveAutoRejectItemDialog"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/RemoveAutoRejectItemDialog;->createDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/RemoveAutoRejectItemDialog;->createDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method
