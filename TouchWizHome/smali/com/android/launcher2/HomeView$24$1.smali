.class Lcom/android/launcher2/HomeView$24$1;
.super Ljava/lang/Object;
.source "HomeView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/HomeView$24;->onLayoutChange(Landroid/view/View;IIIIIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/HomeView$24;


# direct methods
.method constructor <init>(Lcom/android/launcher2/HomeView$24;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/HomeView$24$1;->this$1:Lcom/android/launcher2/HomeView$24;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher2/HomeView$24$1;->this$1:Lcom/android/launcher2/HomeView$24;

    iget-object v0, v0, Lcom/android/launcher2/HomeView$24;->this$0:Lcom/android/launcher2/HomeView;

    # getter for: Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;
    invoke-static {v0}, Lcom/android/launcher2/HomeView;->access$000(Lcom/android/launcher2/HomeView;)Lcom/android/launcher2/Workspace;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/HomeView$24$1;->this$1:Lcom/android/launcher2/HomeView$24;

    iget-object v0, v0, Lcom/android/launcher2/HomeView$24;->this$0:Lcom/android/launcher2/HomeView;

    # getter for: Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;
    invoke-static {v0}, Lcom/android/launcher2/HomeView;->access$000(Lcom/android/launcher2/HomeView;)Lcom/android/launcher2/Workspace;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/HomeView$24$1;->this$1:Lcom/android/launcher2/HomeView$24;

    iget-object v1, v1, Lcom/android/launcher2/HomeView$24;->val$homeItem:Lcom/android/launcher2/SurfaceWidgetItem;

    iget-object v1, v1, Lcom/android/launcher2/SurfaceWidgetItem;->mWidgetView:Lcom/android/launcher2/SurfaceWidgetView;

    iget-object v2, p0, Lcom/android/launcher2/HomeView$24$1;->this$1:Lcom/android/launcher2/HomeView$24;

    iget-object v2, v2, Lcom/android/launcher2/HomeView$24;->val$layout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/Workspace;->enterSurfaceWidgetResizeMode(Lcom/android/launcher2/SurfaceWidgetView;Lcom/android/launcher2/CellLayout;)V

    :cond_0
    return-void
.end method
