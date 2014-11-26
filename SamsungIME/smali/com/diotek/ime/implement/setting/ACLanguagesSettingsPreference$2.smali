.class Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference$2;
.super Ljava/lang/Object;
.source "ACLanguagesSettingsPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;


# direct methods
.method constructor <init>(Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference$2;->this$0:Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1    # Landroid/view/View;

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference$2;->this$0:Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;

    invoke-virtual {v0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/touchtype_fluency/service/util/NetworkUtil;->isWIFIorETHERNETConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "fr"

    iget-object v1, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference$2;->this$0:Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;

    # getter for: Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mLanguage:Lcom/diotek/ime/framework/common/Language;
    invoke-static {v1}, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->access$000(Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;)Lcom/diotek/ime/framework/common/Language;

    move-result-object v1

    invoke-virtual {v1}, Lcom/diotek/ime/framework/common/Language;->getLanguageCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference$2;->this$0:Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;

    # getter for: Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->parent:Lcom/diotek/ime/implement/setting/ACLanguagesSettings;
    invoke-static {v0}, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->access$100(Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;)Lcom/diotek/ime/implement/setting/ACLanguagesSettings;

    move-result-object v0

    iget-object v1, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference$2;->this$0:Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;

    iget v1, v1, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mXt9LanguageCode:I

    iget-object v2, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference$2;->this$0:Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;

    # getter for: Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->key:Ljava/lang/String;
    invoke-static {v2}, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->access$300(Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->downloadFrenchLanguage(ILjava/lang/String;Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference$2;->this$0:Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;

    invoke-virtual {v0}, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->updateDownloadState()V

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference$2;->this$0:Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;

    # invokes: Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->startDownload()V
    invoke-static {v0}, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->access$400(Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference$2;->this$0:Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;

    invoke-virtual {v0}, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->showDownloadGuideDialog()V

    goto :goto_0
.end method
