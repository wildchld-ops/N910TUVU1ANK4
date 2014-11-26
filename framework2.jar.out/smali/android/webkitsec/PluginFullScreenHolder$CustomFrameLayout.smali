.class Landroid/webkitsec/PluginFullScreenHolder$CustomFrameLayout;
.super Landroid/widget/FrameLayout;
.source "PluginFullScreenHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkitsec/PluginFullScreenHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomFrameLayout"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkitsec/PluginFullScreenHolder;


# direct methods
.method constructor <init>(Landroid/webkitsec/PluginFullScreenHolder;Landroid/content/Context;)V
    .locals 0
    .param p2    # Landroid/content/Context;

    iput-object p1, p0, Landroid/webkitsec/PluginFullScreenHolder$CustomFrameLayout;->this$0:Landroid/webkitsec/PluginFullScreenHolder;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1    # I
    .param p2    # Landroid/view/KeyEvent;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/webkitsec/PluginFullScreenHolder$CustomFrameLayout;->this$0:Landroid/webkitsec/PluginFullScreenHolder;

    # getter for: Landroid/webkitsec/PluginFullScreenHolder;->mWebView:Landroid/webkitsec/WebViewClassic;
    invoke-static {v0}, Landroid/webkitsec/PluginFullScreenHolder;->access$000(Landroid/webkitsec/PluginFullScreenHolder;)Landroid/webkitsec/WebViewClassic;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/webkitsec/WebViewClassic;->onKeyDown(ILandroid/view/KeyEvent;)Z

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1    # I
    .param p2    # Landroid/view/KeyEvent;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/webkitsec/PluginFullScreenHolder$CustomFrameLayout;->this$0:Landroid/webkitsec/PluginFullScreenHolder;

    # getter for: Landroid/webkitsec/PluginFullScreenHolder;->mWebView:Landroid/webkitsec/WebViewClassic;
    invoke-static {v0}, Landroid/webkitsec/PluginFullScreenHolder;->access$000(Landroid/webkitsec/PluginFullScreenHolder;)Landroid/webkitsec/WebViewClassic;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/webkitsec/WebViewClassic;->onKeyUp(ILandroid/view/KeyEvent;)Z

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1    # Landroid/view/MotionEvent;

    const/4 v0, 0x1

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1    # Landroid/view/MotionEvent;

    iget-object v0, p0, Landroid/webkitsec/PluginFullScreenHolder$CustomFrameLayout;->this$0:Landroid/webkitsec/PluginFullScreenHolder;

    # getter for: Landroid/webkitsec/PluginFullScreenHolder;->mWebView:Landroid/webkitsec/WebViewClassic;
    invoke-static {v0}, Landroid/webkitsec/PluginFullScreenHolder;->access$000(Landroid/webkitsec/PluginFullScreenHolder;)Landroid/webkitsec/WebViewClassic;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkitsec/WebViewClassic;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    const/4 v0, 0x1

    return v0
.end method
