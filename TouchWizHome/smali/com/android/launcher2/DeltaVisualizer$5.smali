.class Lcom/android/launcher2/DeltaVisualizer$5;
.super Ljava/lang/Object;
.source "DeltaVisualizer.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/DeltaVisualizer;->bounceListner(Lcom/android/launcher2/AnimationLayer$Anim;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/DeltaVisualizer;

.field final synthetic val$a:Lcom/android/launcher2/AnimationLayer$Anim;

.field final synthetic val$al:Lcom/android/launcher2/AnimationLayer;

.field final synthetic val$animIcon:Landroid/widget/ImageView;

.field final synthetic val$from:[I

.field final synthetic val$viewParent:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/launcher2/DeltaVisualizer;Lcom/android/launcher2/AnimationLayer$Anim;[ILandroid/view/View;Landroid/widget/ImageView;Lcom/android/launcher2/AnimationLayer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/DeltaVisualizer$5;->this$0:Lcom/android/launcher2/DeltaVisualizer;

    iput-object p2, p0, Lcom/android/launcher2/DeltaVisualizer$5;->val$a:Lcom/android/launcher2/AnimationLayer$Anim;

    iput-object p3, p0, Lcom/android/launcher2/DeltaVisualizer$5;->val$from:[I

    iput-object p4, p0, Lcom/android/launcher2/DeltaVisualizer$5;->val$viewParent:Landroid/view/View;

    iput-object p5, p0, Lcom/android/launcher2/DeltaVisualizer$5;->val$animIcon:Landroid/widget/ImageView;

    iput-object p6, p0, Lcom/android/launcher2/DeltaVisualizer$5;->val$al:Lcom/android/launcher2/AnimationLayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 14

    const/high16 v13, 0x3f000000

    const v12, 0x3cf5c28f

    const/4 v9, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    iget-object v7, p0, Lcom/android/launcher2/DeltaVisualizer$5;->this$0:Lcom/android/launcher2/DeltaVisualizer;

    # getter for: Lcom/android/launcher2/DeltaVisualizer;->mBlockTransform:Z
    invoke-static {v7}, Lcom/android/launcher2/DeltaVisualizer;->access$400(Lcom/android/launcher2/DeltaVisualizer;)Z

    move-result v7

    if-eqz v7, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v7, p0, Lcom/android/launcher2/DeltaVisualizer$5;->val$a:Lcom/android/launcher2/AnimationLayer$Anim;

    invoke-virtual {v7}, Lcom/android/launcher2/AnimationLayer$Anim;->getTo()[I

    move-result-object v6

    aget v7, v6, v10

    iget-object v8, p0, Lcom/android/launcher2/DeltaVisualizer$5;->val$from:[I

    aget v8, v8, v10

    sub-int/2addr v7, v8

    int-to-float v0, v7

    aget v7, v6, v11

    iget-object v8, p0, Lcom/android/launcher2/DeltaVisualizer$5;->val$from:[I

    aget v8, v8, v11

    sub-int/2addr v7, v8

    int-to-float v1, v7

    mul-float v7, v0, v0

    mul-float v8, v1, v1

    add-float/2addr v7, v8

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    double-to-float v2, v7

    cmpl-float v7, v0, v9

    if-eqz v7, :cond_1

    div-float/2addr v0, v2

    :cond_1
    cmpl-float v7, v1, v9

    if-eqz v7, :cond_2

    div-float/2addr v1, v2

    :cond_2
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v3

    sub-float v7, v3, v13

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    sub-float v7, v13, v7

    const/high16 v8, 0x40000000

    mul-float v3, v7, v8

    iget-object v7, p0, Lcom/android/launcher2/DeltaVisualizer$5;->val$viewParent:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getScaleX()F

    move-result v7

    mul-float v8, v3, v12

    add-float v4, v7, v8

    iget-object v7, p0, Lcom/android/launcher2/DeltaVisualizer$5;->val$viewParent:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getScaleY()F

    move-result v7

    mul-float v8, v3, v12

    add-float v5, v7, v8

    iget-object v7, p0, Lcom/android/launcher2/DeltaVisualizer$5;->val$animIcon:Landroid/widget/ImageView;

    invoke-virtual {v7, v4}, Landroid/view/View;->setScaleX(F)V

    iget-object v7, p0, Lcom/android/launcher2/DeltaVisualizer$5;->val$animIcon:Landroid/widget/ImageView;

    invoke-virtual {v7, v5}, Landroid/view/View;->setScaleY(F)V

    iget-object v7, p0, Lcom/android/launcher2/DeltaVisualizer$5;->val$al:Lcom/android/launcher2/AnimationLayer;

    iget-object v8, p0, Lcom/android/launcher2/DeltaVisualizer$5;->val$from:[I

    aget v8, v8, v10

    iget-object v9, p0, Lcom/android/launcher2/DeltaVisualizer$5;->val$from:[I

    aget v9, v9, v11

    aget v10, v6, v10

    aget v11, v6, v11

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/view/View;->invalidate(IIII)V

    goto :goto_0
.end method
