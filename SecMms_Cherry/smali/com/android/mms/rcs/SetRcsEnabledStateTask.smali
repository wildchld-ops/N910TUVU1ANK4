.class public Lcom/android/mms/rcs/SetRcsEnabledStateTask;
.super Landroid/os/AsyncTask;
.source "SetRcsEnabledStateTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/rcs/SetRcsEnabledStateTask$ISetRcsEnabledStateCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/SetRcsEnabledStateTask"

.field public static mProgressDialog:Landroid/app/ProgressDialog;


# instance fields
.field private mCallback:Lcom/android/mms/rcs/SetRcsEnabledStateTask$ISetRcsEnabledStateCallback;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/rcs/SetRcsEnabledStateTask;->mProgressDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/mms/rcs/SetRcsEnabledStateTask$ISetRcsEnabledStateCallback;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/android/mms/rcs/SetRcsEnabledStateTask;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/mms/rcs/SetRcsEnabledStateTask;->mCallback:Lcom/android/mms/rcs/SetRcsEnabledStateTask$ISetRcsEnabledStateCallback;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 7

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    const-string v4, "rcs_enabled"

    aget-object v5, p1, v3

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-object v4, p0, Lcom/android/mms/rcs/SetRcsEnabledStateTask;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/mms/rcs/IntentExtras$RcsSettingConstants;->RCS_RCS_SWITCH_PREFERENCE_URI:Landroid/net/Uri;

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

    check-cast p1, [Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/mms/rcs/SetRcsEnabledStateTask;->doInBackground([Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 4

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/mms/rcs/SetRcsEnabledStateTask$1;

    invoke-direct {v1, p0}, Lcom/android/mms/rcs/SetRcsEnabledStateTask$1;-><init>(Lcom/android/mms/rcs/SetRcsEnabledStateTask;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/android/mms/rcs/SetRcsEnabledStateTask;->mCallback:Lcom/android/mms/rcs/SetRcsEnabledStateTask$ISetRcsEnabledStateCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/rcs/SetRcsEnabledStateTask;->mCallback:Lcom/android/mms/rcs/SetRcsEnabledStateTask$ISetRcsEnabledStateCallback;

    invoke-interface {v0, p1}, Lcom/android/mms/rcs/SetRcsEnabledStateTask$ISetRcsEnabledStateCallback;->onResult(Ljava/lang/Boolean;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/mms/rcs/SetRcsEnabledStateTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/mms/rcs/SetRcsEnabledStateTask;->showProgressDialog()V

    return-void
.end method

.method public showProgressDialog()V
    .locals 3

    sget-object v1, Lcom/android/mms/rcs/SetRcsEnabledStateTask;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/mms/rcs/SetRcsEnabledStateTask;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c051f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/android/mms/rcs/SetRcsEnabledStateTask;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/mms/rcs/SetRcsEnabledStateTask;->mProgressDialog:Landroid/app/ProgressDialog;

    sget-object v1, Lcom/android/mms/rcs/SetRcsEnabledStateTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    sget-object v1, Lcom/android/mms/rcs/SetRcsEnabledStateTask;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    sget-object v1, Lcom/android/mms/rcs/SetRcsEnabledStateTask;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    sget-object v1, Lcom/android/mms/rcs/SetRcsEnabledStateTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method
