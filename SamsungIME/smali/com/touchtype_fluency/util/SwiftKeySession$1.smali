.class final Lcom/touchtype_fluency/util/SwiftKeySession$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/touchtype_fluency/util/SwiftKeySession;->loadLanguages(Ljava/util/List;Lcom/touchtype_fluency/util/LanguagePackManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/touchtype_fluency/util/LanguagePackManager;

.field private synthetic b:Ljava/util/List;

.field private synthetic c:Lcom/touchtype_fluency/util/SwiftKeySession;


# direct methods
.method constructor <init>(Lcom/touchtype_fluency/util/SwiftKeySession;Lcom/touchtype_fluency/util/LanguagePackManager;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/touchtype_fluency/util/SwiftKeySession$1;->c:Lcom/touchtype_fluency/util/SwiftKeySession;

    iput-object p2, p0, Lcom/touchtype_fluency/util/SwiftKeySession$1;->a:Lcom/touchtype_fluency/util/LanguagePackManager;

    iput-object p3, p0, Lcom/touchtype_fluency/util/SwiftKeySession$1;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession$1;->c:Lcom/touchtype_fluency/util/SwiftKeySession;

    invoke-static {v0, p0}, Lcom/touchtype_fluency/util/SwiftKeySession;->a(Lcom/touchtype_fluency/util/SwiftKeySession;Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession$1;->c:Lcom/touchtype_fluency/util/SwiftKeySession;

    invoke-static {v0}, Lcom/touchtype_fluency/util/SwiftKeySession;->a(Lcom/touchtype_fluency/util/SwiftKeySession;)V

    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession$1;->c:Lcom/touchtype_fluency/util/SwiftKeySession;

    invoke-static {v0}, Lcom/touchtype_fluency/util/SwiftKeySession;->b(Lcom/touchtype_fluency/util/SwiftKeySession;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession$1;->c:Lcom/touchtype_fluency/util/SwiftKeySession;

    iget-object v1, p0, Lcom/touchtype_fluency/util/SwiftKeySession$1;->a:Lcom/touchtype_fluency/util/LanguagePackManager;

    invoke-virtual {v1}, Lcom/touchtype_fluency/util/LanguagePackManager;->getDynamicModel()Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/touchtype_fluency/util/SwiftKeySession;->a(Lcom/touchtype_fluency/util/SwiftKeySession;Ljava/io/File;)Z

    :cond_0
    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession$1;->b:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession$1;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/touchtype_fluency/util/LanguagePack;

    iget-object v2, p0, Lcom/touchtype_fluency/util/SwiftKeySession$1;->c:Lcom/touchtype_fluency/util/SwiftKeySession;

    invoke-static {v2, p0}, Lcom/touchtype_fluency/util/SwiftKeySession;->a(Lcom/touchtype_fluency/util/SwiftKeySession;Ljava/lang/Runnable;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/touchtype_fluency/util/SwiftKeySession;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "preempted before loading "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/touchtype_fluency/util/LanguagePack;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/touchtype_fluency/util/HttpDownload$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession$1;->c:Lcom/touchtype_fluency/util/SwiftKeySession;

    invoke-static {v0}, Lcom/touchtype_fluency/util/SwiftKeySession;->d(Lcom/touchtype_fluency/util/SwiftKeySession;)V

    return-void

    :cond_3
    iget-object v2, p0, Lcom/touchtype_fluency/util/SwiftKeySession$1;->c:Lcom/touchtype_fluency/util/SwiftKeySession;

    invoke-virtual {v2, v0, p0}, Lcom/touchtype_fluency/util/SwiftKeySession;->a(Lcom/touchtype_fluency/util/LanguagePack;Ljava/lang/Runnable;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/touchtype_fluency/util/SwiftKeySession$1;->a:Lcom/touchtype_fluency/util/LanguagePackManager;

    invoke-virtual {v2, v0}, Lcom/touchtype_fluency/util/LanguagePackManager;->setLanguageBroken(Lcom/touchtype_fluency/util/LanguagePack;)V

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/touchtype_fluency/util/SwiftKeySession$1;->c:Lcom/touchtype_fluency/util/SwiftKeySession;

    invoke-static {v2}, Lcom/touchtype_fluency/util/SwiftKeySession;->c(Lcom/touchtype_fluency/util/SwiftKeySession;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Lcom/touchtype_fluency/util/LanguagePack;->getLiveLanguagePack()Lcom/touchtype_fluency/util/LiveLanguagePack;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/touchtype_fluency/util/LiveLanguagePack;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/touchtype_fluency/util/SwiftKeySession$1;->c:Lcom/touchtype_fluency/util/SwiftKeySession;

    invoke-virtual {v2, v0, p0}, Lcom/touchtype_fluency/util/SwiftKeySession;->a(Lcom/touchtype_fluency/util/LiveLanguagePack;Ljava/lang/Runnable;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/touchtype_fluency/util/SwiftKeySession$1;->a:Lcom/touchtype_fluency/util/LanguagePackManager;

    invoke-virtual {v2, v0}, Lcom/touchtype_fluency/util/LanguagePackManager;->setLiveLanguageBroken(Lcom/touchtype_fluency/util/LiveLanguagePack;)V

    goto :goto_0
.end method
