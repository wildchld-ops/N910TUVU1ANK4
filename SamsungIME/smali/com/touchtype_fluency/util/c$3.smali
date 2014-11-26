.class final Lcom/touchtype_fluency/util/c$3;
.super Lcom/touchtype_fluency/util/ProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/touchtype_fluency/util/c;->enableDefaultLanguage(Lcom/touchtype_fluency/util/ProgressListener;)Lcom/touchtype_fluency/util/LanguagePack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/touchtype_fluency/util/ProgressListener;

.field private synthetic b:Lcom/touchtype_fluency/util/LanguagePack;

.field private synthetic c:Lcom/touchtype_fluency/util/c;


# direct methods
.method constructor <init>(Lcom/touchtype_fluency/util/c;Lcom/touchtype_fluency/util/ProgressListener;Lcom/touchtype_fluency/util/LanguagePack;)V
    .locals 0

    iput-object p1, p0, Lcom/touchtype_fluency/util/c$3;->c:Lcom/touchtype_fluency/util/c;

    iput-object p2, p0, Lcom/touchtype_fluency/util/c$3;->a:Lcom/touchtype_fluency/util/ProgressListener;

    iput-object p3, p0, Lcom/touchtype_fluency/util/c$3;->b:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-direct {p0}, Lcom/touchtype_fluency/util/ProgressListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(ZZZ)V
    .locals 3

    iget-object v0, p0, Lcom/touchtype_fluency/util/c$3;->c:Lcom/touchtype_fluency/util/c;

    iget-object v1, p0, Lcom/touchtype_fluency/util/c$3;->b:Lcom/touchtype_fluency/util/LanguagePack;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/touchtype_fluency/util/c;->enableLanguage(Lcom/touchtype_fluency/util/LanguagePack;Z)Z

    move-result v0

    and-int/2addr v0, p1

    iget-object v1, p0, Lcom/touchtype_fluency/util/c$3;->a:Lcom/touchtype_fluency/util/ProgressListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/touchtype_fluency/util/c$3;->a:Lcom/touchtype_fluency/util/ProgressListener;

    invoke-virtual {v1, v0, p2, p3}, Lcom/touchtype_fluency/util/ProgressListener;->onComplete(ZZZ)V

    :cond_0
    return-void
.end method

.method public final onProgress(II)V
    .locals 1

    iget-object v0, p0, Lcom/touchtype_fluency/util/c$3;->a:Lcom/touchtype_fluency/util/ProgressListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/touchtype_fluency/util/c$3;->a:Lcom/touchtype_fluency/util/ProgressListener;

    invoke-virtual {v0, p1, p2}, Lcom/touchtype_fluency/util/ProgressListener;->onProgress(II)V

    :cond_0
    return-void
.end method
