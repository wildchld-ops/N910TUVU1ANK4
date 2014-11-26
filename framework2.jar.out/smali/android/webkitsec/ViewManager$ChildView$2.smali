.class Landroid/webkitsec/ViewManager$ChildView$2;
.super Ljava/lang/Object;
.source "ViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkitsec/ViewManager$ChildView;->removeView()V
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

    iput-object p1, p0, Landroid/webkitsec/ViewManager$ChildView$2;->this$1:Landroid/webkitsec/ViewManager$ChildView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/ViewManager$ChildView$2;->this$1:Landroid/webkitsec/ViewManager$ChildView;

    # invokes: Landroid/webkitsec/ViewManager$ChildView;->removeViewOnUIThread()V
    invoke-static {v0}, Landroid/webkitsec/ViewManager$ChildView;->access$500(Landroid/webkitsec/ViewManager$ChildView;)V

    return-void
.end method
