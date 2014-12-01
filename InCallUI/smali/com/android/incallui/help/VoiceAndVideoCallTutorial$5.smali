.class Lcom/android/incallui/help/VoiceAndVideoCallTutorial$5;
.super Ljava/lang/Object;
.source "VoiceAndVideoCallTutorial.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/help/VoiceAndVideoCallTutorial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/help/VoiceAndVideoCallTutorial;


# direct methods
.method constructor <init>(Lcom/android/incallui/help/VoiceAndVideoCallTutorial;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial$5;->this$0:Lcom/android/incallui/help/VoiceAndVideoCallTutorial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial$5;->this$0:Lcom/android/incallui/help/VoiceAndVideoCallTutorial;

    # getter for: Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->mHelpTabView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->access$100(Lcom/android/incallui/help/VoiceAndVideoCallTutorial;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial$5;->this$0:Lcom/android/incallui/help/VoiceAndVideoCallTutorial;

    # getter for: Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->mHelpTabView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->access$100(Lcom/android/incallui/help/VoiceAndVideoCallTutorial;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial$5;->this$0:Lcom/android/incallui/help/VoiceAndVideoCallTutorial;

    # getter for: Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->mHelpTabView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->access$100(Lcom/android/incallui/help/VoiceAndVideoCallTutorial;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial$5;->this$0:Lcom/android/incallui/help/VoiceAndVideoCallTutorial;

    # getter for: Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->mFlashingAnimation:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->access$1300(Lcom/android/incallui/help/VoiceAndVideoCallTutorial;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial$5;->this$0:Lcom/android/incallui/help/VoiceAndVideoCallTutorial;

    # operator++ for: Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->mBubbleCount:I
    invoke-static {v0}, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->access$1408(Lcom/android/incallui/help/VoiceAndVideoCallTutorial;)I

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
