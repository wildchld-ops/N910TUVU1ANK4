.class Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings$7;
.super Ljava/lang/Object;
.source "SwiftkeyLanguagesSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;->showListUpdateGuideDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;


# direct methods
.method constructor <init>(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings$7;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings$7;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v2, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings$7;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    const-string v3, "swiftkey_download_list_checkbox"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    # setter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;->mIsCheckboxDontShowDownloadList:Z
    invoke-static {v2, v3}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;->access$402(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;Z)Z

    iget-object v2, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings$7;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;->mIsCheckboxDontShowDownloadList:Z
    invoke-static {v2}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;->access$400(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "first_swiftkey_download_list_execution"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :goto_0
    const-string v2, "swiftkey_download_list_execution"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v2, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings$7;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    invoke-virtual {v2}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;->updateLPlist()V

    # setter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;->isDialogShownState:Z
    invoke-static {v4}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;->access$502(Z)Z

    return-void

    :cond_0
    const-string v2, "first_swiftkey_download_list_execution"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method
