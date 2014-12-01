.class Lcom/android/launcher2/SurfaceWidgetView$1;
.super Ljava/lang/Object;
.source "SurfaceWidgetView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/SurfaceWidgetView;->surfaceWidgetCrashed(Ljava/lang/Exception;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/SurfaceWidgetView;

.field final synthetic val$item:Lcom/android/launcher2/SurfaceWidgetItem;

.field final synthetic val$lp:Landroid/view/ViewGroup$LayoutParams;


# direct methods
.method constructor <init>(Lcom/android/launcher2/SurfaceWidgetView;Lcom/android/launcher2/SurfaceWidgetItem;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/SurfaceWidgetView$1;->this$0:Lcom/android/launcher2/SurfaceWidgetView;

    iput-object p2, p0, Lcom/android/launcher2/SurfaceWidgetView$1;->val$item:Lcom/android/launcher2/SurfaceWidgetItem;

    iput-object p3, p0, Lcom/android/launcher2/SurfaceWidgetView$1;->val$lp:Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/android/launcher2/SurfaceWidgetView$1;->val$item:Lcom/android/launcher2/SurfaceWidgetItem;

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/launcher2/SurfaceWidgetItem;->mRestartCount:I

    iget-object v0, p0, Lcom/android/launcher2/SurfaceWidgetView$1;->this$0:Lcom/android/launcher2/SurfaceWidgetView;

    iget-object v1, p0, Lcom/android/launcher2/SurfaceWidgetView$1;->val$item:Lcom/android/launcher2/SurfaceWidgetItem;

    iget-object v2, p0, Lcom/android/launcher2/SurfaceWidgetView$1;->val$lp:Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, 0x0

    # invokes: Lcom/android/launcher2/SurfaceWidgetView;->restartWidget(Lcom/android/launcher2/SurfaceWidgetItem;Landroid/view/ViewGroup$LayoutParams;Lcom/android/launcher2/SurfaceWidgetView;)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/launcher2/SurfaceWidgetView;->access$000(Lcom/android/launcher2/SurfaceWidgetView;Lcom/android/launcher2/SurfaceWidgetItem;Landroid/view/ViewGroup$LayoutParams;Lcom/android/launcher2/SurfaceWidgetView;)V

    return-void
.end method
