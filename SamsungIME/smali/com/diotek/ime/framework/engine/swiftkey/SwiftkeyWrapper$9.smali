.class Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$9;
.super Ljava/lang/Object;
.source "SwiftkeyWrapper.java"

# interfaces
.implements Lcom/touchtype_fluency/util/CompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->installPreloadLanguagePack()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;


# direct methods
.method constructor <init>(Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$9;->this$0:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Z)V
    .locals 5
    .param p1    # Z

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$9;->this$0:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;

    const/4 v3, 0x0

    # setter for: Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->downloadingLPCount:I
    invoke-static {v2, v3}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->access$702(Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;I)I

    # getter for: Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;
    invoke-static {}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->access$800()Lcom/touchtype_fluency/util/LanguagePackManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/touchtype_fluency/util/LanguagePackManager;->getAllLanguages()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {v1}, Lcom/touchtype_fluency/util/LanguagePack;->isBroken()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Lcom/touchtype_fluency/util/LanguagePack;->isPreinstalled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$9;->this$0:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;

    # invokes: Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->countDownloadingLanguagePack(Z)V
    invoke-static {v2, v4}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->access$900(Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;Z)V

    # getter for: Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;
    invoke-static {}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->access$800()Lcom/touchtype_fluency/util/LanguagePackManager;

    move-result-object v2

    new-instance v3, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$9$1;

    invoke-direct {v3, p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$9$1;-><init>(Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$9;)V

    invoke-virtual {v2, v1, v3}, Lcom/touchtype_fluency/util/LanguagePackManager;->downloadLanguage(Lcom/touchtype_fluency/util/LanguagePack;Lcom/touchtype_fluency/util/ProgressListener;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Lcom/touchtype_fluency/util/LanguagePack;->isPreinstalled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Lcom/touchtype_fluency/util/LanguagePack;->isDownloaded()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Lcom/touchtype_fluency/util/LanguagePack;->isUpdateAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$9;->this$0:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;

    # invokes: Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->countDownloadingLanguagePack(Z)V
    invoke-static {v2, v4}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->access$900(Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;Z)V

    # getter for: Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;
    invoke-static {}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->access$800()Lcom/touchtype_fluency/util/LanguagePackManager;

    move-result-object v2

    new-instance v3, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$9$2;

    invoke-direct {v3, p0, v1}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$9$2;-><init>(Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$9;Lcom/touchtype_fluency/util/LanguagePack;)V

    invoke-virtual {v2, v1, v3}, Lcom/touchtype_fluency/util/LanguagePackManager;->downloadLanguage(Lcom/touchtype_fluency/util/LanguagePack;Lcom/touchtype_fluency/util/ProgressListener;)Z

    goto :goto_0

    :cond_3
    return-void
.end method
