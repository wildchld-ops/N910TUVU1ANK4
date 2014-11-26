.class Lcom/android/keyguard/KeyguardMultiUserAvatar$3;
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

.field final synthetic val$finalTextAlpha:I

.field final synthetic val$initAlpha:F

.field final synthetic val$initScale:F

.field final synthetic val$initTextAlpha:I


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardMultiUserAvatar;FFFFIIZ)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar$3;->this$0:Lcom/android/keyguard/KeyguardMultiUserAvatar;

    iput p2, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar$3;->val$initScale:F

    iput p3, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar$3;->val$finalScale:F

    iput p4, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar$3;->val$initAlpha:F

    iput p5, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar$3;->val$finalAlpha:F

    iput p6, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar$3;->val$initTextAlpha:I

    iput p7, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar$3;->val$finalTextAlpha:I

    iput-boolean p8, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar$3;->val$active:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 7
    .param p1    # Landroid/animation/ValueAnimator;

    const/high16 v6, 0x3f800000

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v1

    sub-float v4, v6, v1

    iget v5, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar$3;->val$initScale:F

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar$3;->val$finalScale:F

    mul-float/2addr v5, v1

    add-float v2, v4, v5

    sub-float v4, v6, v1

    iget v5, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar$3;->val$initAlpha:F

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar$3;->val$finalAlpha:F

    mul-float/2addr v5, v1

    add-float v0, v4, v5

    sub-float v4, v6, v1

    iget v5, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar$3;->val$initTextAlpha:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar$3;->val$finalTextAlpha:I

    int-to-float v5, v5

    mul-float/2addr v5, v1

    add-float/2addr v4, v5

    float-to-int v3, v4

    iget-object v4, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar$3;->this$0:Lcom/android/keyguard/KeyguardMultiUserAvatar;

    # getter for: Lcom/android/keyguard/KeyguardMultiUserAvatar;->mFramed:Lcom/android/keyguard/KeyguardCircleFramedDrawable;
    invoke-static {v4}, Lcom/android/keyguard/KeyguardMultiUserAvatar;->access$200(Lcom/android/keyguard/KeyguardMultiUserAvatar;)Lcom/android/keyguard/KeyguardCircleFramedDrawable;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->setScale(F)V

    iget-object v4, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar$3;->this$0:Lcom/android/keyguard/KeyguardMultiUserAvatar;

    # getter for: Lcom/android/keyguard/KeyguardMultiUserAvatar;->mFramed:Lcom/android/keyguard/KeyguardCircleFramedDrawable;
    invoke-static {v4}, Lcom/android/keyguard/KeyguardMultiUserAvatar;->access$200(Lcom/android/keyguard/KeyguardMultiUserAvatar;)Lcom/android/keyguard/KeyguardCircleFramedDrawable;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar$3;->val$active:Z

    invoke-virtual {v4, v5}, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->setActive(Z)V

    iget-object v4, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar$3;->this$0:Lcom/android/keyguard/KeyguardMultiUserAvatar;

    # getter for: Lcom/android/keyguard/KeyguardMultiUserAvatar;->mUserImage:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/android/keyguard/KeyguardMultiUserAvatar;->access$100(Lcom/android/keyguard/KeyguardMultiUserAvatar;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object v4, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar$3;->this$0:Lcom/android/keyguard/KeyguardMultiUserAvatar;

    # getter for: Lcom/android/keyguard/KeyguardMultiUserAvatar;->mUserName:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/keyguard/KeyguardMultiUserAvatar;->access$300(Lcom/android/keyguard/KeyguardMultiUserAvatar;)Landroid/widget/TextView;

    move-result-object v4

    int-to-float v5, v3

    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    iget-object v4, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar$3;->this$0:Lcom/android/keyguard/KeyguardMultiUserAvatar;

    # getter for: Lcom/android/keyguard/KeyguardMultiUserAvatar;->mUserImage:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/android/keyguard/KeyguardMultiUserAvatar;->access$100(Lcom/android/keyguard/KeyguardMultiUserAvatar;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    return-void
.end method
