.class Lcom/android/launcher2/HotseatSwapAnimator$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "HotseatSwapAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/HotseatSwapAnimator;->hideHotseatSwapIcon(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/HotseatSwapAnimator;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/launcher2/HotseatSwapAnimator;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/HotseatSwapAnimator$6;->this$0:Lcom/android/launcher2/HotseatSwapAnimator;

    iput-object p2, p0, Lcom/android/launcher2/HotseatSwapAnimator$6;->val$v:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/HotseatSwapAnimator$6;->this$0:Lcom/android/launcher2/HotseatSwapAnimator;

    # getter for: Lcom/android/launcher2/HotseatSwapAnimator;->mChildren:Lcom/android/launcher2/CellLayoutChildren;
    invoke-static {v0}, Lcom/android/launcher2/HotseatSwapAnimator;->access$200(Lcom/android/launcher2/HotseatSwapAnimator;)Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/HotseatSwapAnimator$6;->val$v:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method
