.class Landroid/webkitsec/WebViewClassic$7$1;
.super Ljava/lang/Object;
.source "WebViewClassic.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkitsec/WebViewClassic$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/webkitsec/WebViewClassic$7;

.field final synthetic val$p:Landroid/graphics/Picture;


# direct methods
.method constructor <init>(Landroid/webkitsec/WebViewClassic$7;Landroid/graphics/Picture;)V
    .locals 0

    iput-object p1, p0, Landroid/webkitsec/WebViewClassic$7$1;->this$1:Landroid/webkitsec/WebViewClassic$7;

    iput-object p2, p0, Landroid/webkitsec/WebViewClassic$7$1;->val$p:Landroid/graphics/Picture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic$7$1;->this$1:Landroid/webkitsec/WebViewClassic$7;

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$7;->this$0:Landroid/webkitsec/WebViewClassic;

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic$7$1;->val$p:Landroid/graphics/Picture;

    iget-object v2, p0, Landroid/webkitsec/WebViewClassic$7$1;->this$1:Landroid/webkitsec/WebViewClassic$7;

    iget-object v2, v2, Landroid/webkitsec/WebViewClassic$7;->val$copy:Landroid/os/Bundle;

    # invokes: Landroid/webkitsec/WebViewClassic;->restoreHistoryPictureFields(Landroid/graphics/Picture;Landroid/os/Bundle;)V
    invoke-static {v0, v1, v2}, Landroid/webkitsec/WebViewClassic;->access$3500(Landroid/webkitsec/WebViewClassic;Landroid/graphics/Picture;Landroid/os/Bundle;)V

    return-void
.end method
