.class public Lcom/android/mms/rcs/GetRcsRoamingNetworkPreferenceTask;
.super Landroid/os/AsyncTask;
.source "GetRcsRoamingNetworkPreferenceTask.java"


# annotations
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
.field private static final TAG:Ljava/lang/String; = "Mms/GetRcsRoamingNetworkPreferenceTask"


# instance fields
.field private mCallback:Lcom/android/mms/rcs/GetRcsHomeNetworkPreferenceTask$IGetRcsNetworkPreferenceCallback;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/mms/rcs/GetRcsHomeNetworkPreferenceTask$IGetRcsNetworkPreferenceCallback;)V
    .locals 0
    .param p1    # Landroid/content/Context;
    .param p2    # Lcom/android/mms/rcs/GetRcsHomeNetworkPreferenceTask$IGetRcsNetworkPreferenceCallback;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/android/mms/rcs/GetRcsRoamingNetworkPreferenceTask;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/mms/rcs/GetRcsRoamingNetworkPreferenceTask;->mCallback:Lcom/android/mms/rcs/GetRcsHomeNetworkPreferenceTask$IGetRcsNetworkPreferenceCallback;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 7
    .param p1    # [Ljava/lang/Void;

    const/4 v6, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/rcs/GetRcsRoamingNetworkPreferenceTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/mms/rcs/IntentExtras$RcsSettingConstants;->RCS_ROAMING_PREFERENCE_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "rcs_connection_preference"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-nez v6, :cond_1

    const-string v0, "Mms/GetRcsRoamingNetworkPreferenceTask"

    const-string v1, "no records found"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/mms/rcs/GetRcsRoamingNetworkPreferenceTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 2
    .param p1    # Ljava/lang/Integer;

    iget-object v0, p0, Lcom/android/mms/rcs/GetRcsRoamingNetworkPreferenceTask;->mCallback:Lcom/android/mms/rcs/GetRcsHomeNetworkPreferenceTask$IGetRcsNetworkPreferenceCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/rcs/GetRcsRoamingNetworkPreferenceTask;->mCallback:Lcom/android/mms/rcs/GetRcsHomeNetworkPreferenceTask$IGetRcsNetworkPreferenceCallback;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/mms/rcs/GetRcsHomeNetworkPreferenceTask$IGetRcsNetworkPreferenceCallback;->onResult(I)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/mms/rcs/GetRcsRoamingNetworkPreferenceTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
