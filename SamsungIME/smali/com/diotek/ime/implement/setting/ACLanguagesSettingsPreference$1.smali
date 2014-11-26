.class Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference$1;
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

    iput-object p1, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference$1;->this$0:Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;

    const-string v0, "KLDownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelButton : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference$1;->this$0:Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;

    iget-object v2, v2, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mLanguageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "fr"

    iget-object v1, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference$1;->this$0:Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;

    # getter for: Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mLanguage:Lcom/diotek/ime/framework/common/Language;
    invoke-static {v1}, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->access$000(Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;)Lcom/diotek/ime/framework/common/Language;

    move-result-object v1

    invoke-virtual {v1}, Lcom/diotek/ime/framework/common/Language;->getLanguageCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference$1;->this$0:Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;

    # getter for: Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->parent:Lcom/diotek/ime/implement/setting/ACLanguagesSettings;
    invoke-static {v0}, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->access$100(Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;)Lcom/diotek/ime/implement/setting/ACLanguagesSettings;

    move-result-object v0

    iget-object v1, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference$1;->this$0:Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;

    iget v1, v1, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mXt9LanguageCode:I

    invoke-virtual {v0, v1}, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->cancelDownloadForFrench(I)V

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference$1;->this$0:Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;

    # invokes: Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->cancelDownload()V
    invoke-static {v0}, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->access$200(Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference$1;->this$0:Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;

    invoke-virtual {v0}, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->updateCancelState()V

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference$1;->this$0:Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;

    # invokes: Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->cancelDownload()V
    invoke-static {v0}, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->access$200(Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;)V

    goto :goto_0
.end method
