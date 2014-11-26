.class Lcom/android/keyguard/KeyguardMultiUserAvatar$1;
.super Ljava/lang/Object;
.source "KeyguardMultiUserAvatar.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardMultiUserAvatar;->updateVisualsForActive(ZZILjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardMultiUserAvatar;

.field final synthetic val$active:Z

.field final synthetic val$finalAlpha:F

.field final synthetic val$finalScale:F

.field final synthetic val$initAlpha:F

.field final synthetic val$initScale:F


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardMultiUserAvatar;FFFFZ)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar$1;->this$0:Lcom/android/keyguard/KeyguardMultiUserAvatar;

    iput p2, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar$1;->val$initScale:F

    iput p3, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar$1;->val$finalScale:F

    iput p4, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar$1;->val$initAlpha:F

    iput p5, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar$1;->val$finalAlpha:F

    iput-boolean p6, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar$1;->val$active:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6
    .param p1    # Landroid/animation/ValueAnimator;

    const/high16 v5, 0x3f800000

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v1

    sub-float v3, v5, v1

    iget v4, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar$1;->val$initScale:F

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar$1;->val$finalScale:F

    mul-float/2addr v4, v1

    add-float v2, v3, v4

    sub-float v3, v5, v1

    iget v4, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar$1;->val$initAlpha:F

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar$1;->val$finalAlpha:F

    mul-float/2addr v4, v1

    add-float v0, v3, v4

    iget-object v3, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar$1;->this$0:Lcom/android/keyguard/KeyguardMultiUserAvatar;

    # getter for: Lcom/android/keyguard/KeyguardMultiUserAvatar;->mFramedRec:Lcom/android/keyguard/KeyguardRectangleFramedDrawable;
    invoke-static {v3}, Lcom/android/keyguard/KeyguardMultiUserAvatar;->access$000(Lcom/android/keyguard/KeyguardMultiUserAvatar;)Lcom/android/keyguard/KeyguardRectangleFramedDrawable;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/keyguard/KeyguardRectangleFramedDrawable;->setScale(F)V

    iget-object v3, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar$1;->this$0:Lcom/android/keyguard/KeyguardMultiUserAvatar;

    # getter for: Lcom/android/keyguard/KeyguardMultiUserAvatar;->mFramedRec:Lcom/android/keyguard/KeyguardRectangleFramedDrawable;
    invoke-static {v3}, Lcom/android/keyguard/KeyguardMultiUserAvatar;->access$000(Lcom/android/keyguard/KeyguardMultiUserAvatar;)Lcom/android/keyguard/KeyguardRectangleFramedDrawable;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar$1;->val$active:Z

    invoke-virtual {v3, v4}, Lcom/android/keyguard/KeyguardRectangleFramedDrawable;->setActive(Z)V

    iget-object v3, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar$1;->this$0:Lcom/android/keyguard/KeyguardMultiUserAvatar;

    # getter for: Lcom/android/keyguard/KeyguardMultiUserAvatar;->mUserImage:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/keyguard/KeyguardMultiUserAvatar;->access$100(Lcom/android/keyguard/KeyguardMultiUserAvatar;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object v3, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar$1;->this$0:Lcom/android/keyguard/KeyguardMultiUserAvatar;

    # getter for: Lcom/android/keyguard/KeyguardMultiUserAvatar;->mUserImage:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/keyguard/KeyguardMultiUserAvatar;->access$100(Lcom/android/keyguard/KeyguardMultiUserAvatar;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    return-void
.end method
