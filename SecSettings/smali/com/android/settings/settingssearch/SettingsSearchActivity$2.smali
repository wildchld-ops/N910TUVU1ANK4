.class Lcom/android/settings/settingssearch/SettingsSearchActivity$2;
.super Landroid/database/ContentObserver;
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
.method constructor <init>(Lcom/android/settings/settingssearch/SettingsSearchActivity;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity$2;->this$0:Lcom/android/settings/settingssearch/SettingsSearchActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    # getter for: Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSearchManger:Lcom/android/settings/settingssearch/SettingsSearchManager;
    invoke-static {}, Lcom/android/settings/settingssearch/SettingsSearchActivity;->access$200()Lcom/android/settings/settingssearch/SettingsSearchManager;

    move-result-object v0

    # getter for: Lcom/android/settings/settingssearch/SettingsSearchActivity;->mKeyWord:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/settingssearch/SettingsSearchActivity;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/settingssearch/SettingsSearchManager;->getTitleInfoDB(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    # setter for: Lcom/android/settings/settingssearch/SettingsSearchActivity;->mArrayResultList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/settings/settingssearch/SettingsSearchActivity;->access$002(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity$2;->this$0:Lcom/android/settings/settingssearch/SettingsSearchActivity;

    # getter for: Lcom/android/settings/settingssearch/SettingsSearchActivity;->mArrayResultList:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/settings/settingssearch/SettingsSearchActivity;->access$000()Ljava/util/ArrayList;

    move-result-object v1

    # getter for: Lcom/android/settings/settingssearch/SettingsSearchActivity;->mKeyWord:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/settingssearch/SettingsSearchActivity;->access$100()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/settings/settingssearch/SettingsSearchActivity;->updateList(Ljava/util/ArrayList;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/settings/settingssearch/SettingsSearchActivity;->access$300(Lcom/android/settings/settingssearch/SettingsSearchActivity;Ljava/util/ArrayList;Ljava/lang/String;)V

    return-void
.end method
