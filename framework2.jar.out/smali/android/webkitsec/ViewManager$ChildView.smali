.class Landroid/webkitsec/ViewManager$ChildView;
.super Ljava/lang/Object;
.source "ViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkitsec/ViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ChildView"
.end annotation


# instance fields
.field height:I

.field mView:Landroid/view/View;

.field final synthetic this$0:Landroid/webkitsec/ViewManager;

.field width:I

.field x:I

.field y:I


# direct methods
.method constructor <init>(Landroid/webkitsec/ViewManager;)V
    .locals 0

    iput-object p1, p0, Landroid/webkitsec/ViewManager$ChildView;->this$0:Landroid/webkitsec/ViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Landroid/webkitsec/ViewManager$ChildView;)V
    .locals 0

    invoke-direct {p0}, Landroid/webkitsec/ViewManager$ChildView;->attachViewOnUIThread()V

    return-void
.end method

.method static synthetic access$500(Landroid/webkitsec/ViewManager$ChildView;)V
    .locals 0

    invoke-direct {p0}, Landroid/webkitsec/ViewManager$ChildView;->removeViewOnUIThread()V

    return-void
.end method

.method private attachViewOnUIThread()V
    .locals 2

    iget-object v0, p0, Landroid/webkitsec/ViewManager$ChildView;->this$0:Landroid/webkitsec/ViewManager;

    # getter for: Landroid/webkitsec/ViewManager;->mWebView:Landroid/webkitsec/WebViewClassic;
    invoke-static {v0}, Landroid/webkitsec/ViewManager;->access$200(Landroid/webkitsec/ViewManager;)Landroid/webkitsec/WebViewClassic;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v0

    iget-object v1, p0, Landroid/webkitsec/ViewManager$ChildView;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Landroid/webkitsec/ViewManager$ChildView;->this$0:Landroid/webkitsec/ViewManager;

    # getter for: Landroid/webkitsec/ViewManager;->mChildren:Ljava/util/ArrayList;
    invoke-static {v0}, Landroid/webkitsec/ViewManager;->access$300(Landroid/webkitsec/ViewManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/webkitsec/ViewManager$ChildView;->this$0:Landroid/webkitsec/ViewManager;

    # getter for: Landroid/webkitsec/ViewManager;->mReadyToDraw:Z
    invoke-static {v0}, Landroid/webkitsec/ViewManager;->access$400(Landroid/webkitsec/ViewManager;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/ViewManager$ChildView;->mView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private removeViewOnUIThread()V
    .locals 2

    iget-object v0, p0, Landroid/webkitsec/ViewManager$ChildView;->this$0:Landroid/webkitsec/ViewManager;

    # getter for: Landroid/webkitsec/ViewManager;->mWebView:Landroid/webkitsec/WebViewClassic;
    invoke-static {v0}, Landroid/webkitsec/ViewManager;->access$200(Landroid/webkitsec/ViewManager;)Landroid/webkitsec/WebViewClassic;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v0

    iget-object v1, p0, Landroid/webkitsec/ViewManager$ChildView;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Landroid/webkitsec/ViewManager$ChildView;->this$0:Landroid/webkitsec/ViewManager;

    # getter for: Landroid/webkitsec/ViewManager;->mChildren:Ljava/util/ArrayList;
    invoke-static {v0}, Landroid/webkitsec/ViewManager;->access$300(Landroid/webkitsec/ViewManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method attachView(IIII)V
    .locals 2

    iget-object v0, p0, Landroid/webkitsec/ViewManager$ChildView;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/webkitsec/ViewManager$ChildView;->setBounds(IIII)V

    iget-object v0, p0, Landroid/webkitsec/ViewManager$ChildView;->this$0:Landroid/webkitsec/ViewManager;

    # getter for: Landroid/webkitsec/ViewManager;->mWebView:Landroid/webkitsec/WebViewClassic;
    invoke-static {v0}, Landroid/webkitsec/ViewManager;->access$200(Landroid/webkitsec/ViewManager;)Landroid/webkitsec/WebViewClassic;

    move-result-object v0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    new-instance v1, Landroid/webkitsec/ViewManager$ChildView$1;

    invoke-direct {v1, p0}, Landroid/webkitsec/ViewManager$ChildView$1;-><init>(Landroid/webkitsec/ViewManager$ChildView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method removeView()V
    .locals 2

    iget-object v0, p0, Landroid/webkitsec/ViewManager$ChildView;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/webkitsec/ViewManager$ChildView;->this$0:Landroid/webkitsec/ViewManager;

    # getter for: Landroid/webkitsec/ViewManager;->mWebView:Landroid/webkitsec/WebViewClassic;
    invoke-static {v0}, Landroid/webkitsec/ViewManager;->access$200(Landroid/webkitsec/ViewManager;)Landroid/webkitsec/WebViewClassic;

    move-result-object v0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    new-instance v1, Landroid/webkitsec/ViewManager$ChildView$2;

    invoke-direct {v1, p0}, Landroid/webkitsec/ViewManager$ChildView$2;-><init>(Landroid/webkitsec/ViewManager$ChildView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method setBounds(IIII)V
    .locals 0

    iput p1, p0, Landroid/webkitsec/ViewManager$ChildView;->x:I

    iput p2, p0, Landroid/webkitsec/ViewManager$ChildView;->y:I

    iput p3, p0, Landroid/webkitsec/ViewManager$ChildView;->width:I

    iput p4, p0, Landroid/webkitsec/ViewManager$ChildView;->height:I

    return-void
.end method
