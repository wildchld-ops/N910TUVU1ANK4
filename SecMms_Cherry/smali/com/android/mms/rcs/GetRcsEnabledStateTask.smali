.class public Lcom/android/mms/rcs/GetRcsEnabledStateTask;
.super Landroid/os/AsyncTask;
.source "GetRcsEnabledStateTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/rcs/GetRcsEnabledStateTask$IGetRcsEnabledStateCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/GetRcsEnabledStateTask"


# instance fields
.field private mCallback:Lcom/android/mms/rcs/GetRcsEnabledStateTask$IGetRcsEnabledStateCallback;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/mms/rcs/GetRcsEnabledStateTask$IGetRcsEnabledStateCallback;)V
    .locals 0
    .param p1    # Landroid/content/Context;
    .param p2    # Lcom/android/mms/rcs/GetRcsEnabledStateTask$IGetRcsEnabledStateCallback;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/android/mms/rcs/GetRcsEnabledStateTask;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/mms/rcs/GetRcsEnabledStateTask;->mCallback:Lcom/android/mms/rcs/GetRcsEnabledStateTask$IGetRcsEnabledStateCallback;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 11
    .param p1    # [Ljava/lang/Void;

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iget-object v0, p0, Lcom/android/mms/rcs/GetRcsEnabledStateTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/mms/rcs/IntentExtras$RcsSettingConstants;->RCS_RCS_SWITCH_PREFERENCE_URI:Landroid/net/Uri;

    new-array v2, v9, [Ljava/lang/String;

    const-string v4, "rcs_enabled"

    aput-object v4, v2, v10

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-nez v6, :cond_0

    const-string v0, "Mms/GetRcsEnabledStateTask"

    const-string v1, "IsRcsEnabledTask: no records found"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v3

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_1

    const-string v0, "Mms/GetRcsEnabledStateTask"

    const-string v1, "IsRcsEnabledTask: empty record"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v0, "rcs_enabled"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const/4 v0, -0x1

    if-ne v7, v0, :cond_3

    move-object v8, v3

    :goto_1
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v3, v8

    goto :goto_0

    :cond_3
    if-ne v7, v9, :cond_4

    move v0, v9

    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    goto :goto_1

    :cond_4
    move v0, v10

    goto :goto_2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/mms/rcs/GetRcsEnabledStateTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 1
    .param p1    # Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/android/mms/rcs/GetRcsEnabledStateTask;->mCallback:Lcom/android/mms/rcs/GetRcsEnabledStateTask$IGetRcsEnabledStateCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/rcs/GetRcsEnabledStateTask;->mCallback:Lcom/android/mms/rcs/GetRcsEnabledStateTask$IGetRcsEnabledStateCallback;

    invoke-interface {v0, p1}, Lcom/android/mms/rcs/GetRcsEnabledStateTask$IGetRcsEnabledStateCallback;->onResult(Ljava/lang/Boolean;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/mms/rcs/GetRcsEnabledStateTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    return-void
.end method
