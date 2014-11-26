.class Lcom/android/settings/personalpage/PersonalPageTutorial$3;
.super Ljava/lang/Object;
.source "PersonalPageTutorial.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/personalpage/PersonalPageTutorial;->initViewsForStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/personalpage/PersonalPageTutorial;


# direct methods
.method constructor <init>(Lcom/android/settings/personalpage/PersonalPageTutorial;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/personalpage/PersonalPageTutorial$3;->this$0:Lcom/android/settings/personalpage/PersonalPageTutorial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1    # Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageTutorial$3;->this$0:Lcom/android/settings/personalpage/PersonalPageTutorial;

    # getter for: Lcom/android/settings/personalpage/PersonalPageTutorial;->mWelcomeMsgLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/settings/personalpage/PersonalPageTutorial;->access$200(Lcom/android/settings/personalpage/PersonalPageTutorial;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageTutorial$3;->this$0:Lcom/android/settings/personalpage/PersonalPageTutorial;

    # getter for: Lcom/android/settings/personalpage/PersonalPageTutorial;->mWelcomeMsgLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/settings/personalpage/PersonalPageTutorial;->access$200(Lcom/android/settings/personalpage/PersonalPageTutorial;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageTutorial$3;->this$0:Lcom/android/settings/personalpage/PersonalPageTutorial;

    # getter for: Lcom/android/settings/personalpage/PersonalPageTutorial;->mAnimationSlideUpWithFadeInMsg:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/android/settings/personalpage/PersonalPageTutorial;->access$300(Lcom/android/settings/personalpage/PersonalPageTutorial;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1    # Landroid/view/animation/Animation;

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1    # Landroid/view/animation/Animation;

    return-void
.end method
