.class Lcom/android/settings/settingssearch/SettingsSearchActivity$5;
.super Ljava/lang/Object;
.source "SettingsSearchActivity.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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

    iput-object p1, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity$5;->this$0:Lcom/android/settings/settingssearch/SettingsSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 6

    const/4 v5, 0x0

    const/16 v3, 0x42

    if-eq p2, v3, :cond_0

    const/16 v3, 0x17

    if-ne p2, v3, :cond_2

    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity$5;->this$0:Lcom/android/settings/settingssearch/SettingsSearchActivity;

    # getter for: Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSearchListView:Landroid/widget/ListView;
    invoke-static {v3}, Lcom/android/settings/settingssearch/SettingsSearchActivity;->access$1100(Lcom/android/settings/settingssearch/SettingsSearchActivity;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v1

    const/4 v2, 0x0

    # getter for: Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSupportPath:Z
    invoke-static {}, Lcom/android/settings/settingssearch/SettingsSearchActivity;->access$1200()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity$5;->this$0:Lcom/android/settings/settingssearch/SettingsSearchActivity;

    # getter for: Lcom/android/settings/settingssearch/SettingsSearchActivity;->isHistoryViewState:Z
    invoke-static {v3}, Lcom/android/settings/settingssearch/SettingsSearchActivity;->access$700(Lcom/android/settings/settingssearch/SettingsSearchActivity;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_1
    # getter for: Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSearchListPathAdapter:Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter;
    invoke-static {}, Lcom/android/settings/settingssearch/SettingsSearchActivity;->access$1300()Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter;

    move-result-object v3

    if-eqz v3, :cond_2

    # getter for: Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSearchListPathAdapter:Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter;
    invoke-static {}, Lcom/android/settings/settingssearch/SettingsSearchActivity;->access$1300()Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter;->getCount()I

    move-result v3

    if-eqz v3, :cond_2

    if-gez v1, :cond_3

    :cond_2
    :goto_0
    return v5

    :cond_3
    # getter for: Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSearchListPathAdapter:Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter;
    invoke-static {}, Lcom/android/settings/settingssearch/SettingsSearchActivity;->access$1300()Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter;

    move-result-object v3

    if-eqz v3, :cond_4

    const-string v3, ""

    # getter for: Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSearchListPathAdapter:Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter;
    invoke-static {}, Lcom/android/settings/settingssearch/SettingsSearchActivity;->access$1300()Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter;->getItem(I)Lcom/android/settings/settingssearch/SettingsSearchItem;

    move-result-object v4

    iget-object v4, v4, Lcom/android/settings/settingssearch/SettingsSearchItem;->menuPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "end_of_same_path_menu"

    # getter for: Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSearchListPathAdapter:Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter;
    invoke-static {}, Lcom/android/settings/settingssearch/SettingsSearchActivity;->access$1300()Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter;->getItem(I)Lcom/android/settings/settingssearch/SettingsSearchItem;

    move-result-object v4

    iget-object v4, v4, Lcom/android/settings/settingssearch/SettingsSearchItem;->menuPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_4
    # getter for: Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSearchListPathAdapter:Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter;
    invoke-static {}, Lcom/android/settings/settingssearch/SettingsSearchActivity;->access$1300()Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter;->getItem(I)Lcom/android/settings/settingssearch/SettingsSearchItem;

    move-result-object v3

    iget v2, v3, Lcom/android/settings/settingssearch/SettingsSearchItem;->rowId:I

    :goto_1
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.settings.REQUEST_FINDO_SEARCH_CALL_SETTING_MENU"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "rowId"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    # getter for: Lcom/android/settings/settingssearch/SettingsSearchActivity;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/settings/settingssearch/SettingsSearchActivity;->access$400()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_5
    # getter for: Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSearchListAdapter:Lcom/android/settings/settingssearch/SettingsSearchListAdapter;
    invoke-static {}, Lcom/android/settings/settingssearch/SettingsSearchActivity;->access$1400()Lcom/android/settings/settingssearch/SettingsSearchListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->getCount()I

    move-result v3

    if-nez v3, :cond_6

    if-lez v1, :cond_2

    :cond_6
    # getter for: Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSearchListAdapter:Lcom/android/settings/settingssearch/SettingsSearchListAdapter;
    invoke-static {}, Lcom/android/settings/settingssearch/SettingsSearchActivity;->access$1400()Lcom/android/settings/settingssearch/SettingsSearchListAdapter;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->getItem(I)Lcom/android/settings/settingssearch/SettingsSearchItem;

    move-result-object v3

    iget v2, v3, Lcom/android/settings/settingssearch/SettingsSearchItem;->rowId:I

    goto :goto_1
.end method
