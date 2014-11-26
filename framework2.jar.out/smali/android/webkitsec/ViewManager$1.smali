.class Landroid/webkitsec/ViewManager$1;
.super Ljava/lang/Object;
.source "ViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkitsec/ViewManager;->requestLayout(Landroid/webkitsec/ViewManager$ChildView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkitsec/ViewManager;

.field final synthetic val$sView:Landroid/view/SurfaceView;


# direct methods
.method constructor <init>(Landroid/webkitsec/ViewManager;Landroid/view/SurfaceView;)V
    .locals 0

    iput-object p1, p0, Landroid/webkitsec/ViewManager$1;->this$0:Landroid/webkitsec/ViewManager;

    iput-object p2, p0, Landroid/webkitsec/ViewManager$1;->val$sView:Landroid/view/SurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Landroid/webkitsec/ViewManager$1;->val$sView:Landroid/view/SurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    return-void
.end method
