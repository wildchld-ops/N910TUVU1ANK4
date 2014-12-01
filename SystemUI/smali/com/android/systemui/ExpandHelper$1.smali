.class Lcom/android/systemui/ExpandHelper$1;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "ExpandHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/ExpandHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/ExpandHelper;


# direct methods
.method constructor <init>(Lcom/android/systemui/ExpandHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/ExpandHelper$1;->this$0:Lcom/android/systemui/ExpandHelper;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v1

    iget-object v3, p0, Lcom/android/systemui/ExpandHelper$1;->this$0:Lcom/android/systemui/ExpandHelper;

    # invokes: Lcom/android/systemui/ExpandHelper;->findView(FF)Landroid/view/View;
    invoke-static {v3, v0, v1}, Lcom/android/systemui/ExpandHelper;->access$000(Lcom/android/systemui/ExpandHelper;FF)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/android/systemui/ExpandHelper$1;->this$0:Lcom/android/systemui/ExpandHelper;

    const/4 v4, 0x4

    # invokes: Lcom/android/systemui/ExpandHelper;->startExpanding(Landroid/view/View;I)V
    invoke-static {v3, v2, v4}, Lcom/android/systemui/ExpandHelper;->access$100(Lcom/android/systemui/ExpandHelper;Landroid/view/View;I)V

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/ExpandHelper$1;->this$0:Lcom/android/systemui/ExpandHelper;

    # getter for: Lcom/android/systemui/ExpandHelper;->mExpanding:Z
    invoke-static {v3}, Lcom/android/systemui/ExpandHelper;->access$200(Lcom/android/systemui/ExpandHelper;)Z

    move-result v3

    return v3
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 0

    return-void
.end method
