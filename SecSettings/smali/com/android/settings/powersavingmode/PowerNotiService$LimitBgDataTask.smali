.class Lcom/android/settings/powersavingmode/PowerNotiService$LimitBgDataTask;
.super Landroid/os/AsyncTask;
.source "PowerNotiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/powersavingmode/PowerNotiService;
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
.field final synthetic this$0:Lcom/android/settings/powersavingmode/PowerNotiService;


# direct methods
.method private constructor <init>(Lcom/android/settings/powersavingmode/PowerNotiService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/powersavingmode/PowerNotiService$LimitBgDataTask;->this$0:Lcom/android/settings/powersavingmode/PowerNotiService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/powersavingmode/PowerNotiService;Lcom/android/settings/powersavingmode/PowerNotiService$1;)V
    .locals 0
    .param p1    # Lcom/android/settings/powersavingmode/PowerNotiService;
    .param p2    # Lcom/android/settings/powersavingmode/PowerNotiService$1;

    invoke-direct {p0, p1}, Lcom/android/settings/powersavingmode/PowerNotiService$LimitBgDataTask;-><init>(Lcom/android/settings/powersavingmode/PowerNotiService;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/settings/powersavingmode/PowerNotiService$LimitBgDataTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Void;
    .locals 8
    .param p1    # [Ljava/lang/Integer;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-string v4, "Powersaving/PowerNotiService"

    const-string v5, "doInBackground"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    aget-object v1, p1, v7

    iget-object v4, p0, Lcom/android/settings/powersavingmode/PowerNotiService$LimitBgDataTask;->this$0:Lcom/android/settings/powersavingmode/PowerNotiService;

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/powersavingmode/PowerNotiService$LimitBgDataTask;->this$0:Lcom/android/settings/powersavingmode/PowerNotiService;

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "power_saving_data_allowed_apps"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v6, :cond_1

    const-string v4, "Powersaving/PowerNotiService"

    const-string v5, "before setLimitBackground"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3, v6}, Landroid/net/NetworkPolicyManager;->setRestrictBackground(Z)V

    const-string v4, "Powersaving/PowerNotiService"

    const-string v5, "after setLimitBackground"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, ";"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/android/settings/powersavingmode/PowerNotiService$LimitBgDataTask;->this$0:Lcom/android/settings/powersavingmode/PowerNotiService;

    # invokes: Lcom/android/settings/powersavingmode/PowerNotiService;->setUidAllowedForData([Ljava/lang/String;Z)V
    invoke-static {v4, v2, v6}, Lcom/android/settings/powersavingmode/PowerNotiService;->access$100(Lcom/android/settings/powersavingmode/PowerNotiService;[Ljava/lang/String;Z)V

    const-string v4, "Powersaving/PowerNotiService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateDataServiceChanged mAllowedApplist :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    const/4 v4, 0x0

    return-object v4

    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, ";"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/android/settings/powersavingmode/PowerNotiService$LimitBgDataTask;->this$0:Lcom/android/settings/powersavingmode/PowerNotiService;

    # invokes: Lcom/android/settings/powersavingmode/PowerNotiService;->setUidAllowedForData([Ljava/lang/String;Z)V
    invoke-static {v4, v2, v7}, Lcom/android/settings/powersavingmode/PowerNotiService;->access$100(Lcom/android/settings/powersavingmode/PowerNotiService;[Ljava/lang/String;Z)V

    const-string v4, "Powersaving/PowerNotiService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateDataServiceChanged mAllowedApplist :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string v4, "Powersaving/PowerNotiService"

    const-string v5, "before setLimitBackground"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3, v7}, Landroid/net/NetworkPolicyManager;->setRestrictBackground(Z)V

    const-string v4, "Powersaving/PowerNotiService"

    const-string v5, "after setLimitBackground"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/powersavingmode/PowerNotiService$LimitBgDataTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 4
    .param p1    # Ljava/lang/Void;

    const-string v2, "Powersaving/PowerNotiService"

    const-string v3, "onPostExecute"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.POWERSAVING_DATA_SERVICE_DONE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerNotiService$LimitBgDataTask;->this$0:Lcom/android/settings/powersavingmode/PowerNotiService;

    invoke-virtual {v2, v1}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    const-string v0, "Powersaving/PowerNotiService"

    const-string v1, "onPreExecute"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
