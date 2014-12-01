.class Lcom/android/settings/settingssearch/SettingsSearchActivity$3;
.super Landroid/content/BroadcastReceiver;
.source "SettingsSearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/settingssearch/SettingsSearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/settingssearch/SettingsSearchActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/settingssearch/SettingsSearchActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity$3;->this$0:Lcom/android/settings/settingssearch/SettingsSearchActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v7, "android.settings.SETTING_SEARCH_DB_UPDATE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "SettingSearch/SettingsSearchActivity"

    const-string v8, "android.settings.SETTING_SEARCH_DB_UPDATE is received"

    invoke-static {v7, v8}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v7, "lock"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    # setter for: Lcom/android/settings/settingssearch/SettingsSearchActivity;->RESTORE_DB:Z
    invoke-static {v7}, Lcom/android/settings/settingssearch/SettingsSearchActivity;->access$602(Z)Z

    iget-object v7, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity$3;->this$0:Lcom/android/settings/settingssearch/SettingsSearchActivity;

    # invokes: Lcom/android/settings/settingssearch/SettingsSearchActivity;->displayProgressDialog()V
    invoke-static {v7}, Lcom/android/settings/settingssearch/SettingsSearchActivity;->access$900(Lcom/android/settings/settingssearch/SettingsSearchActivity;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v7, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v7, "battery_charging_state"

    const/4 v8, 0x0

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-static {p2}, Lcom/android/settings/Utils;->isCharger(Landroid/content/Intent;)Z

    move-result v6

    if-eq v4, v6, :cond_0

    const-string v7, "battery_charging_state"

    invoke-interface {v1, v7, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    # getter for: Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSearchManger:Lcom/android/settings/settingssearch/SettingsSearchManager;
    invoke-static {}, Lcom/android/settings/settingssearch/SettingsSearchActivity;->access$200()Lcom/android/settings/settingssearch/SettingsSearchManager;

    move-result-object v7

    if-eqz v7, :cond_0

    # getter for: Lcom/android/settings/settingssearch/SettingsSearchActivity;->mKeyWord:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/settingssearch/SettingsSearchActivity;->access$100()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    # getter for: Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSearchManger:Lcom/android/settings/settingssearch/SettingsSearchManager;
    invoke-static {}, Lcom/android/settings/settingssearch/SettingsSearchActivity;->access$200()Lcom/android/settings/settingssearch/SettingsSearchManager;

    move-result-object v7

    # getter for: Lcom/android/settings/settingssearch/SettingsSearchActivity;->mKeyWord:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/settingssearch/SettingsSearchActivity;->access$100()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/settings/settingssearch/SettingsSearchManager;->getTitleInfoDB(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    # setter for: Lcom/android/settings/settingssearch/SettingsSearchActivity;->mArrayResultList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/android/settings/settingssearch/SettingsSearchActivity;->access$002(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity$3;->this$0:Lcom/android/settings/settingssearch/SettingsSearchActivity;

    # getter for: Lcom/android/settings/settingssearch/SettingsSearchActivity;->mArrayResultList:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/settings/settingssearch/SettingsSearchActivity;->access$000()Ljava/util/ArrayList;

    move-result-object v8

    # getter for: Lcom/android/settings/settingssearch/SettingsSearchActivity;->mKeyWord:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/settingssearch/SettingsSearchActivity;->access$100()Ljava/lang/String;

    move-result-object v9

    # invokes: Lcom/android/settings/settingssearch/SettingsSearchActivity;->updateList(Ljava/util/ArrayList;Ljava/lang/String;)V
    invoke-static {v7, v8, v9}, Lcom/android/settings/settingssearch/SettingsSearchActivity;->access$300(Lcom/android/settings/settingssearch/SettingsSearchActivity;Ljava/util/ArrayList;Ljava/lang/String;)V

    goto :goto_0
.end method
