.class final Lcom/visionobjects/textwidget/d/b$a;
.super Landroid/os/AsyncTask;
.source "RecognizerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visionobjects/textwidget/d/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/visionobjects/stylus/core/InputMethodConfig;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/visionobjects/textwidget/d/b;

.field private b:Z


# direct methods
.method private constructor <init>(Lcom/visionobjects/textwidget/d/b;)V
    .locals 0

    iput-object p1, p0, Lcom/visionobjects/textwidget/d/b$a;->a:Lcom/visionobjects/textwidget/d/b;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/visionobjects/textwidget/d/b;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/visionobjects/textwidget/d/b$a;-><init>(Lcom/visionobjects/textwidget/d/b;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/visionobjects/textwidget/d/b$a;->b:Z

    invoke-virtual {p0}, Landroid/os/AsyncTask;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcom/visionobjects/textwidget/d/b$a;->a:Lcom/visionobjects/textwidget/d/b;

    invoke-static {v1, v0}, Lcom/visionobjects/textwidget/d/b;->a(Lcom/visionobjects/textwidget/d/b;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    check-cast p1, [Lcom/visionobjects/stylus/core/InputMethodConfig;

    iget-object v1, p0, Lcom/visionobjects/textwidget/d/b$a;->a:Lcom/visionobjects/textwidget/d/b;

    invoke-static {v1}, Lcom/visionobjects/textwidget/d/b;->b(Lcom/visionobjects/textwidget/d/b;)Lcom/visionobjects/stylus/core/InputMethod;

    move-result-object v1

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Lcom/visionobjects/stylus/core/InputMethod;->setConfig(Lcom/visionobjects/stylus/core/InputMethodConfig;)V

    iget-object v1, p0, Lcom/visionobjects/textwidget/d/b$a;->a:Lcom/visionobjects/textwidget/d/b;

    invoke-static {v1}, Lcom/visionobjects/textwidget/d/b;->b(Lcom/visionobjects/textwidget/d/b;)Lcom/visionobjects/stylus/core/InputMethod;

    move-result-object v1

    invoke-virtual {v1}, Lcom/visionobjects/stylus/core/InputMethod;->failed()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Ljava/lang/Boolean;

    iget-boolean v0, p0, Lcom/visionobjects/textwidget/d/b$a;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/visionobjects/textwidget/d/b$a;->a:Lcom/visionobjects/textwidget/d/b;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/visionobjects/textwidget/d/b;->a(Lcom/visionobjects/textwidget/d/b;Z)V

    :cond_0
    return-void
.end method

.method protected final onPreExecute()V
    .locals 1

    iget-object v0, p0, Lcom/visionobjects/textwidget/d/b$a;->a:Lcom/visionobjects/textwidget/d/b;

    invoke-static {v0}, Lcom/visionobjects/textwidget/d/b;->a(Lcom/visionobjects/textwidget/d/b;)V

    return-void
.end method
