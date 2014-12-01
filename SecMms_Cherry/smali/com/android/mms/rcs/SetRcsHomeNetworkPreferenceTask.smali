.class public Lcom/android/mms/rcs/SetRcsHomeNetworkPreferenceTask;
.super Landroid/os/AsyncTask;
.source "SetRcsHomeNetworkPreferenceTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/rcs/SetRcsHomeNetworkPreferenceTask$ISetRcsNetworkPreferenceCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/SetRcsEnabledStateTask"


# instance fields
.field private mCallback:Lcom/android/mms/rcs/SetRcsHomeNetworkPreferenceTask$ISetRcsNetworkPreferenceCallback;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/mms/rcs/SetRcsHomeNetworkPreferenceTask$ISetRcsNetworkPreferenceCallback;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/android/mms/rcs/SetRcsHomeNetworkPreferenceTask;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/mms/rcs/SetRcsHomeNetworkPreferenceTask;->mCallback:Lcom/android/mms/rcs/SetRcsHomeNetworkPreferenceTask$ISetRcsNetworkPreferenceCallback;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Boolean;
    .locals 7

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    const-string v4, "rcs_connection_preference"

    aget-object v5, p1, v3

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v4, p0, Lcom/android/mms/rcs/SetRcsHomeNetworkPreferenceTask;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/mms/rcs/IntentExtras$RcsSettingConstants;->RCS_HOME_NETWORK_PREFERENCE_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v1, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_0

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/mms/rcs/SetRcsHomeNetworkPreferenceTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/rcs/SetRcsHomeNetworkPreferenceTask;->mCallback:Lcom/android/mms/rcs/SetRcsHomeNetworkPreferenceTask$ISetRcsNetworkPreferenceCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/rcs/SetRcsHomeNetworkPreferenceTask;->mCallback:Lcom/android/mms/rcs/SetRcsHomeNetworkPreferenceTask$ISetRcsNetworkPreferenceCallback;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/mms/rcs/SetRcsHomeNetworkPreferenceTask$ISetRcsNetworkPreferenceCallback;->onResult(Z)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/mms/rcs/SetRcsHomeNetworkPreferenceTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
