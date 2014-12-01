.class Lcom/android/launcher2/HotseatSwapAnimator$OverlayFadeAdapter;
.super Landroid/animation/AnimatorListenerAdapter;
.source "HotseatSwapAnimator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/HotseatSwapAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OverlayFadeAdapter"
.end annotation


# instance fields
.field private final mAnim:Lcom/android/launcher2/AnimationLayer$Anim;

.field private mDx:F

.field private mDy:F

.field private mFrom:[I

.field private mView:Landroid/view/View;

.field final synthetic this$0:Lcom/android/launcher2/HotseatSwapAnimator;


# direct methods
.method constructor <init>(Lcom/android/launcher2/HotseatSwapAnimator;Lcom/android/launcher2/AnimationLayer$Anim;Landroid/view/View;[I[I)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/android/launcher2/HotseatSwapAnimator$OverlayFadeAdapter;->this$0:Lcom/android/launcher2/HotseatSwapAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    iput-object p2, p0, Lcom/android/launcher2/HotseatSwapAnimator$OverlayFadeAdapter;->mAnim:Lcom/android/launcher2/AnimationLayer$Anim;

    iput-object p3, p0, Lcom/android/launcher2/HotseatSwapAnimator$OverlayFadeAdapter;->mView:Landroid/view/View;

    iput-object p4, p0, Lcom/android/launcher2/HotseatSwapAnimator$OverlayFadeAdapter;->mFrom:[I

    aget v0, p5, v1

    aget v1, p4, v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/android/launcher2/HotseatSwapAnimator$OverlayFadeAdapter;->mDx:F

    aget v0, p5, v2

    aget v1, p4, v2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/android/launcher2/HotseatSwapAnimator$OverlayFadeAdapter;->mDy:F

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v1, p0, Lcom/android/launcher2/HotseatSwapAnimator$OverlayFadeAdapter;->this$0:Lcom/android/launcher2/HotseatSwapAnimator;

    # getter for: Lcom/android/launcher2/HotseatSwapAnimator;->mLauncher:Lcom/android/launcher2/Launcher;
    invoke-static {v1}, Lcom/android/launcher2/HotseatSwapAnimator;->access$100(Lcom/android/launcher2/HotseatSwapAnimator;)Lcom/android/launcher2/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/HotseatSwapAnimator$OverlayFadeAdapter;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/launcher2/HotseatSwapAnimator$OverlayFadeAdapter;->mAnim:Lcom/android/launcher2/AnimationLayer$Anim;

    invoke-virtual {v1}, Lcom/android/launcher2/AnimationLayer$Anim;->markCompleted()V

    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, p0, Lcom/android/launcher2/HotseatSwapAnimator$OverlayFadeAdapter;->mView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/launcher2/HotseatSwapAnimator$OverlayFadeAdapter;->mFrom:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/android/launcher2/HotseatSwapAnimator$OverlayFadeAdapter;->mDx:F

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationX(F)V

    iget-object v2, p0, Lcom/android/launcher2/HotseatSwapAnimator$OverlayFadeAdapter;->mView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/launcher2/HotseatSwapAnimator$OverlayFadeAdapter;->mFrom:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/android/launcher2/HotseatSwapAnimator$OverlayFadeAdapter;->mDy:F

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    iget-object v2, p0, Lcom/android/launcher2/HotseatSwapAnimator$OverlayFadeAdapter;->this$0:Lcom/android/launcher2/HotseatSwapAnimator;

    # getter for: Lcom/android/launcher2/HotseatSwapAnimator;->mLauncher:Lcom/android/launcher2/Launcher;
    invoke-static {v2}, Lcom/android/launcher2/HotseatSwapAnimator;->access$100(Lcom/android/launcher2/HotseatSwapAnimator;)Lcom/android/launcher2/Launcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v0

    iget-object v2, p0, Lcom/android/launcher2/HotseatSwapAnimator$OverlayFadeAdapter;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method
