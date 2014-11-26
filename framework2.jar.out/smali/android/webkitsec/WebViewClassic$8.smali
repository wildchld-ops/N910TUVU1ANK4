.class Landroid/webkitsec/WebViewClassic$8;
.super Landroid/os/AsyncTask;
.source "WebViewClassic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkitsec/WebViewClassic;->loadViewState(Ljava/io/InputStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/io/InputStream;",
        "Ljava/lang/Void;",
        "Landroid/webkitsec/WebViewCore$DrawData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkitsec/WebViewClassic;


# direct methods
.method constructor <init>(Landroid/webkitsec/WebViewClassic;)V
    .locals 0

    iput-object p1, p0, Landroid/webkitsec/WebViewClassic$8;->this$0:Landroid/webkitsec/WebViewClassic;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/io/InputStream;)Landroid/webkitsec/WebViewCore$DrawData;
    .locals 2
    .param p1    # [Ljava/io/InputStream;

    const/4 v1, 0x0

    :try_start_0
    aget-object v1, p1, v1

    invoke-static {v1}, Landroid/webkitsec/ViewStateSerializer;->deserializeViewState(Ljava/io/InputStream;)Landroid/webkitsec/WebViewCore$DrawData;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # [Ljava/lang/Object;

    check-cast p1, [Ljava/io/InputStream;

    invoke-virtual {p0, p1}, Landroid/webkitsec/WebViewClassic$8;->doInBackground([Ljava/io/InputStream;)Landroid/webkitsec/WebViewCore$DrawData;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/webkitsec/WebViewCore$DrawData;)V
    .locals 6
    .param p1    # Landroid/webkitsec/WebViewCore$DrawData;

    if-nez p1, :cond_0

    const-string/jumbo v3, "webview"

    const-string v4, "Failed to load view state!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Landroid/webkitsec/WebViewClassic$8;->this$0:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getViewWidth()I

    move-result v2

    iget-object v3, p0, Landroid/webkitsec/WebViewClassic$8;->this$0:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getViewHeightWithTitle()I

    move-result v3

    iget-object v4, p0, Landroid/webkitsec/WebViewClassic$8;->this$0:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkitsec/WebViewClassic;->getTitleHeight()I

    move-result v4

    sub-int v1, v3, v4

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3, v2, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v3, p1, Landroid/webkitsec/WebViewCore$DrawData;->mViewSize:Landroid/graphics/Point;

    iget-object v3, p1, Landroid/webkitsec/WebViewCore$DrawData;->mViewState:Landroid/webkitsec/WebViewCore$ViewState;

    iget-object v4, p0, Landroid/webkitsec/WebViewClassic$8;->this$0:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkitsec/WebViewClassic;->getDefaultZoomScale()F

    move-result v4

    iput v4, v3, Landroid/webkitsec/WebViewCore$ViewState;->mDefaultScale:F

    iget-object v3, p0, Landroid/webkitsec/WebViewClassic$8;->this$0:Landroid/webkitsec/WebViewClassic;

    # setter for: Landroid/webkitsec/WebViewClassic;->mLoadedPicture:Landroid/webkitsec/WebViewCore$DrawData;
    invoke-static {v3, p1}, Landroid/webkitsec/WebViewClassic;->access$3602(Landroid/webkitsec/WebViewClassic;Landroid/webkitsec/WebViewCore$DrawData;)Landroid/webkitsec/WebViewCore$DrawData;

    :try_start_0
    iget-object v3, p0, Landroid/webkitsec/WebViewClassic$8;->this$0:Landroid/webkitsec/WebViewClassic;

    iget-object v4, p0, Landroid/webkitsec/WebViewClassic$8;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mLoadedPicture:Landroid/webkitsec/WebViewCore$DrawData;
    invoke-static {v4}, Landroid/webkitsec/WebViewClassic;->access$3600(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebViewCore$DrawData;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/webkitsec/WebViewClassic;->setNewPicture(Landroid/webkitsec/WebViewCore$DrawData;Z)V

    iget-object v3, p0, Landroid/webkitsec/WebViewClassic$8;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mLoadedPicture:Landroid/webkitsec/WebViewCore$DrawData;
    invoke-static {v3}, Landroid/webkitsec/WebViewClassic;->access$3600(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebViewCore$DrawData;

    move-result-object v3

    const/4 v4, 0x0

    iput-object v4, v3, Landroid/webkitsec/WebViewCore$DrawData;->mViewState:Landroid/webkitsec/WebViewCore$ViewState;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;

    check-cast p1, Landroid/webkitsec/WebViewCore$DrawData;

    invoke-virtual {p0, p1}, Landroid/webkitsec/WebViewClassic$8;->onPostExecute(Landroid/webkitsec/WebViewCore$DrawData;)V

    return-void
.end method
