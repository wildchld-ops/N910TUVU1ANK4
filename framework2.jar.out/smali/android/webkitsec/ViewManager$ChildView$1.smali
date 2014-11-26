.class Landroid/webkitsec/ViewManager$ChildView$1;
.super Ljava/lang/Object;
.source "ViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkitsec/ViewManager$ChildView;->attachView(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/webkitsec/ViewManager$ChildView;


# direct methods
.method constructor <init>(Landroid/webkitsec/ViewManager$ChildView;)V
    .locals 0

    iput-object p1, p0, Landroid/webkitsec/ViewManager$ChildView$1;->this$1:Landroid/webkitsec/ViewManager$ChildView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Landroid/webkitsec/ViewManager$ChildView$1;->this$1:Landroid/webkitsec/ViewManager$ChildView;

    iget-object v0, v0, Landroid/webkitsec/ViewManager$ChildView;->this$0:Landroid/webkitsec/ViewManager;

    iget-object v1, p0, Landroid/webkitsec/ViewManager$ChildView$1;->this$1:Landroid/webkitsec/ViewManager$ChildView;

    # invokes: Landroid/webkitsec/ViewManager;->requestLayout(Landroid/webkitsec/ViewManager$ChildView;)V
    invoke-static {v0, v1}, Landroid/webkitsec/ViewManager;->access$000(Landroid/webkitsec/ViewManager;Landroid/webkitsec/ViewManager$ChildView;)V

    iget-object v0, p0, Landroid/webkitsec/ViewManager$ChildView$1;->this$1:Landroid/webkitsec/ViewManager$ChildView;

    iget-object v0, v0, Landroid/webkitsec/ViewManager$ChildView;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/ViewManager$ChildView$1;->this$1:Landroid/webkitsec/ViewManager$ChildView;

    # invokes: Landroid/webkitsec/ViewManager$ChildView;->attachViewOnUIThread()V
    invoke-static {v0}, Landroid/webkitsec/ViewManager$ChildView;->access$100(Landroid/webkitsec/ViewManager$ChildView;)V

    :cond_0
    return-void
.end method
