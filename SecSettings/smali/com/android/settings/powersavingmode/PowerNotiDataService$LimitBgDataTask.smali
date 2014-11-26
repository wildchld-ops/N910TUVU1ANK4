.class Lcom/android/settings/powersavingmode/PowerNotiDataService$LimitBgDataTask;
.super Landroid/os/AsyncTask;
.source "PowerNotiDataService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/powersavingmode/PowerNotiDataService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LimitBgDataTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field data_powersaving:I

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field final synthetic this$0:Lcom/android/settings/powersavingmode/PowerNotiDataService;


# direct methods
.method private constructor <init>(Lcom/android/settings/powersavingmode/PowerNotiDataService;)V
    .locals 1

    iput-object p1, p0, Lcom/android/settings/powersavingmode/PowerNotiDataService$LimitBgDataTask;->this$0:Lcom/android/settings/powersavingmode/PowerNotiDataService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerNotiDataService$LimitBgDataTask;->this$0:Lcom/android/settings/powersavingmode/PowerNotiDataService;

    invoke-virtual {v0}, Lcom/android/settings/powersavingmode/PowerNotiDataService;->getLimitBackgoundData()I

    move-result v0

    iput v0, p0, Lcom/android/settings/powersavingmode/PowerNotiDataService$LimitBgDataTask;->data_powersaving:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/powersavingmode/PowerNotiDataService$LimitBgDataTask;->mProgressDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/powersavingmode/PowerNotiDataService;Lcom/android/settings/powersavingmode/PowerNotiDataService$1;)V
    .locals 0
    .param p1    # Lcom/android/settings/powersavingmode/PowerNotiDataService;
    .param p2    # Lcom/android/settings/powersavingmode/PowerNotiDataService$1;

    invoke-direct {p0, p1}, Lcom/android/settings/powersavingmode/PowerNotiDataService$LimitBgDataTask;-><init>(Lcom/android/settings/powersavingmode/PowerNotiDataService;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/settings/powersavingmode/PowerNotiDataService$LimitBgDataTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Void;
    .locals 12
    .param p1    # [Ljava/lang/Integer;

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-string v8, "PowerNotiDataService.java"

    const-string v9, "doInBackground"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    aget-object v1, p1, v11

    # getter for: Lcom/android/settings/powersavingmode/PowerNotiDataService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/settings/powersavingmode/PowerNotiDataService;->access$100()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v3

    iget-object v8, p0, Lcom/android/settings/powersavingmode/PowerNotiDataService$LimitBgDataTask;->this$0:Lcom/android/settings/powersavingmode/PowerNotiDataService;

    # getter for: Lcom/android/settings/powersavingmode/PowerNotiDataService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v8}, Lcom/android/settings/powersavingmode/PowerNotiDataService;->access$200(Lcom/android/settings/powersavingmode/PowerNotiDataService;)Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "power_saving_data_allowed_apps"

    invoke-static {v8, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v8, p0, Lcom/android/settings/powersavingmode/PowerNotiDataService$LimitBgDataTask;->this$0:Lcom/android/settings/powersavingmode/PowerNotiDataService;

    # getter for: Lcom/android/settings/powersavingmode/PowerNotiDataService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v8}, Lcom/android/settings/powersavingmode/PowerNotiDataService;->access$200(Lcom/android/settings/powersavingmode/PowerNotiDataService;)Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "power_saving_data_service_apps"

    invoke-static {v8, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/powersavingmode/PowerNotiDataService$LimitBgDataTask;->this$0:Lcom/android/settings/powersavingmode/PowerNotiDataService;

    # getter for: Lcom/android/settings/powersavingmode/PowerNotiDataService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v8}, Lcom/android/settings/powersavingmode/PowerNotiDataService;->access$200(Lcom/android/settings/powersavingmode/PowerNotiDataService;)Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "power_saving_data_ristricted_apps"

    invoke-static {v8, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v2, 0x0

    const/4 v4, 0x0

    const-string v5, ""

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v8, v10, :cond_2

    const-string v8, "PowerNotiDataService.java"

    const-string v9, "before setLimitBackground"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3, v10}, Landroid/net/NetworkPolicyManager;->setRestrictBackground(Z)V

    const-string v8, "PowerNotiDataService.java"

    const-string v9, "after setLimitBackground"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "setLimitBackground(true)"

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, ";"

    invoke-virtual {v0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    :cond_0
    iget-object v8, p0, Lcom/android/settings/powersavingmode/PowerNotiDataService$LimitBgDataTask;->this$0:Lcom/android/settings/powersavingmode/PowerNotiDataService;

    # invokes: Lcom/android/settings/powersavingmode/PowerNotiDataService;->setUidAllowedForData([Ljava/lang/String;Z)V
    invoke-static {v8, v2, v10}, Lcom/android/settings/powersavingmode/PowerNotiDataService;->access$300(Lcom/android/settings/powersavingmode/PowerNotiDataService;[Ljava/lang/String;Z)V

    const-string v8, "PowerNotiDataService.java"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateDataServiceChanged mAllowedApplist :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "PowerNotiDataService.java"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateDataServiceChanged mServiceApplist :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    const/4 v8, 0x0

    return-object v8

    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    const-string v8, ";"

    invoke-virtual {v0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    :cond_3
    iget-object v8, p0, Lcom/android/settings/powersavingmode/PowerNotiDataService$LimitBgDataTask;->this$0:Lcom/android/settings/powersavingmode/PowerNotiDataService;

    # invokes: Lcom/android/settings/powersavingmode/PowerNotiDataService;->setUidAllowedForData([Ljava/lang/String;Z)V
    invoke-static {v8, v2, v11}, Lcom/android/settings/powersavingmode/PowerNotiDataService;->access$300(Lcom/android/settings/powersavingmode/PowerNotiDataService;[Ljava/lang/String;Z)V

    const-string v8, "PowerNotiDataService.java"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateDataServiceChanged mAllowedApplist :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "PowerNotiDataService.java"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateDataServiceChanged mServiceApplist :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const-string v8, "PowerNotiDataService.java"

    const-string v9, "before setLimitBackground"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3, v11}, Landroid/net/NetworkPolicyManager;->setRestrictBackground(Z)V

    const-string v8, "PowerNotiDataService.java"

    const-string v9, "after setLimitBackground"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/powersavingmode/PowerNotiDataService$LimitBgDataTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .param p1    # Ljava/lang/Void;

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerNotiDataService$LimitBgDataTask;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerNotiDataService$LimitBgDataTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerNotiDataService$LimitBgDataTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/powersavingmode/PowerNotiDataService$LimitBgDataTask;->mProgressDialog:Landroid/app/ProgressDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerNotiDataService$LimitBgDataTask;->this$0:Lcom/android/settings/powersavingmode/PowerNotiDataService;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    iget v0, p0, Lcom/android/settings/powersavingmode/PowerNotiDataService$LimitBgDataTask;->data_powersaving:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    :cond_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 4

    const/4 v3, 0x1

    const-string v0, "PowerNotiDataService.java"

    const-string v1, "onPreExecut"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerNotiDataService$LimitBgDataTask;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerNotiDataService$LimitBgDataTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerNotiDataService$LimitBgDataTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/powersavingmode/PowerNotiDataService$LimitBgDataTask;->mProgressDialog:Landroid/app/ProgressDialog;

    :cond_0
    new-instance v0, Landroid/app/ProgressDialog;

    # getter for: Lcom/android/settings/powersavingmode/PowerNotiDataService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/settings/powersavingmode/PowerNotiDataService;->access$100()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/powersavingmode/PowerNotiDataService$LimitBgDataTask;->mProgressDialog:Landroid/app/ProgressDialog;

    iget v0, p0, Lcom/android/settings/powersavingmode/PowerNotiDataService$LimitBgDataTask;->data_powersaving:I

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerNotiDataService$LimitBgDataTask;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerNotiDataService$LimitBgDataTask;->this$0:Lcom/android/settings/powersavingmode/PowerNotiDataService;

    const v2, 0x7f091b44

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerNotiDataService$LimitBgDataTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerNotiDataService$LimitBgDataTask;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerNotiDataService$LimitBgDataTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerNotiDataService$LimitBgDataTask;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerNotiDataService$LimitBgDataTask;->this$0:Lcom/android/settings/powersavingmode/PowerNotiDataService;

    const v2, 0x7f091b45

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
