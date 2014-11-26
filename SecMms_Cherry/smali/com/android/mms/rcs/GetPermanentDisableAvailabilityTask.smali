.class public Lcom/android/mms/rcs/GetPermanentDisableAvailabilityTask;
.super Landroid/os/AsyncTask;
.source "GetPermanentDisableAvailabilityTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/rcs/GetPermanentDisableAvailabilityTask$IGetPermanentDisableAvailabilityCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/GetPermanentDisableAvailabilityTask"


# instance fields
.field mCallback:Lcom/android/mms/rcs/GetPermanentDisableAvailabilityTask$IGetPermanentDisableAvailabilityCallback;

.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/mms/rcs/GetPermanentDisableAvailabilityTask$IGetPermanentDisableAvailabilityCallback;)V
    .locals 0
    .param p1    # Landroid/content/Context;
    .param p2    # Lcom/android/mms/rcs/GetPermanentDisableAvailabilityTask$IGetPermanentDisableAvailabilityCallback;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/android/mms/rcs/GetPermanentDisableAvailabilityTask;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/mms/rcs/GetPermanentDisableAvailabilityTask;->mCallback:Lcom/android/mms/rcs/GetPermanentDisableAvailabilityTask$IGetPermanentDisableAvailabilityCallback;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 8
    .param p1    # [Ljava/lang/Void;

    const/4 v3, 0x0

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/android/mms/rcs/GetPermanentDisableAvailabilityTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/mms/rcs/IntentExtras$RcsSettingConstants;->RCS_PERMANENT_DISABLE_AVAILABILITY_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "permanent_disable_availibility"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-nez v6, :cond_0

    const-string v0, "Mms/GetPermanentDisableAvailabilityTask"

    const-string v1, "GetPermanentDisableAvailabilityTask: no records found"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v3

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_1

    const-string v0, "Mms/GetPermanentDisableAvailabilityTask"

    const-string v1, "GetPermanentDisableAvailabilityTask: empty record"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v0, "permanent_disable_availibility"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const-string v0, "Mms/GetPermanentDisableAvailabilityTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GetPermanentDisableAvailabilityTask: data "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/mms/rcs/GetPermanentDisableAvailabilityTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 1
    .param p1    # Ljava/lang/Integer;

    iget-object v0, p0, Lcom/android/mms/rcs/GetPermanentDisableAvailabilityTask;->mCallback:Lcom/android/mms/rcs/GetPermanentDisableAvailabilityTask$IGetPermanentDisableAvailabilityCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/rcs/GetPermanentDisableAvailabilityTask;->mCallback:Lcom/android/mms/rcs/GetPermanentDisableAvailabilityTask$IGetPermanentDisableAvailabilityCallback;

    invoke-interface {v0, p1}, Lcom/android/mms/rcs/GetPermanentDisableAvailabilityTask$IGetPermanentDisableAvailabilityCallback;->onResult(Ljava/lang/Integer;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/mms/rcs/GetPermanentDisableAvailabilityTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    return-void
.end method
