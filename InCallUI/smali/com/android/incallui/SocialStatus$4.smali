.class Lcom/android/incallui/SocialStatus$4;
.super Ljava/lang/Object;
.source "SocialStatus.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/SocialStatus;->closeSocialStatus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/SocialStatus;


# direct methods
.method constructor <init>(Lcom/android/incallui/SocialStatus;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/SocialStatus$4;->this$0:Lcom/android/incallui/SocialStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/SocialStatus$4;->this$0:Lcom/android/incallui/SocialStatus;

    # getter for: Lcom/android/incallui/SocialStatus;->mSnsCloseContainer:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/android/incallui/SocialStatus;->access$000(Lcom/android/incallui/SocialStatus;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/SocialStatus$4;->this$0:Lcom/android/incallui/SocialStatus;

    # getter for: Lcom/android/incallui/SocialStatus;->mSnsOpenContainer:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/incallui/SocialStatus;->access$300(Lcom/android/incallui/SocialStatus;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/SocialStatus$4;->this$0:Lcom/android/incallui/SocialStatus;

    # getter for: Lcom/android/incallui/SocialStatus;->mSnsOpenToggleBtn:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/incallui/SocialStatus;->access$200(Lcom/android/incallui/SocialStatus;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/SocialStatus$4;->this$0:Lcom/android/incallui/SocialStatus;

    # getter for: Lcom/android/incallui/SocialStatus;->rotate:Landroid/view/animation/RotateAnimation;
    invoke-static {v1}, Lcom/android/incallui/SocialStatus;->access$100(Lcom/android/incallui/SocialStatus;)Landroid/view/animation/RotateAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
