.class Lcom/android/keyguard/KeyguardHostView$26;
.super Ljava/lang/Object;
.source "KeyguardHostView.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardHostView$HealthViewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardHostView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardHostView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardHostView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardHostView$26;->this$0:Lcom/android/keyguard/KeyguardHostView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHealthContentsRemoved()V
    .locals 2

    const-string v0, "KeyguardHostView"

    const-string v1, "onHealthContentsRemoved()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$26;->this$0:Lcom/android/keyguard/KeyguardHostView;

    # getter for: Lcom/android/keyguard/KeyguardHostView;->mSlidingChallengeLayout:Lcom/android/keyguard/SlidingChallengeLayout;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardHostView;->access$1300(Lcom/android/keyguard/KeyguardHostView;)Lcom/android/keyguard/SlidingChallengeLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$26;->this$0:Lcom/android/keyguard/KeyguardHostView;

    # getter for: Lcom/android/keyguard/KeyguardHostView;->mSlidingChallengeLayout:Lcom/android/keyguard/SlidingChallengeLayout;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardHostView;->access$1300(Lcom/android/keyguard/KeyguardHostView;)Lcom/android/keyguard/SlidingChallengeLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/SlidingChallengeLayout;->onHealthContentsRemoved()V

    :cond_0
    return-void
.end method

.method public onHealthContentsUpdated()V
    .locals 7

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v2, "KeyguardHostView"

    const-string v5, "onHealthContentsUpdated()"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView$26;->this$0:Lcom/android/keyguard/KeyguardHostView;

    # getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/keyguard/KeyguardHostView;->access$4700(Lcom/android/keyguard/KeyguardHostView;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/keyguard/sec/ContextualEventManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/ContextualEventManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/sec/ContextualEventManager;->getHealthView()Landroid/widget/RemoteViews;

    move-result-object v0

    const-string v5, "KeyguardHostView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "contents = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v0, :cond_3

    move v2, v3

    :goto_0
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ",  mHealthViewContents = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v6, p0, Lcom/android/keyguard/KeyguardHostView$26;->this$0:Lcom/android/keyguard/KeyguardHostView;

    # getter for: Lcom/android/keyguard/KeyguardHostView;->mHealthViewContents:Landroid/widget/FrameLayout;
    invoke-static {v6}, Lcom/android/keyguard/KeyguardHostView;->access$4800(Lcom/android/keyguard/KeyguardHostView;)Landroid/widget/FrameLayout;

    move-result-object v6

    if-eqz v6, :cond_0

    move v4, v3

    :cond_0
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView$26;->this$0:Lcom/android/keyguard/KeyguardHostView;

    # getter for: Lcom/android/keyguard/KeyguardHostView;->mHealthViewContents:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lcom/android/keyguard/KeyguardHostView;->access$4800(Lcom/android/keyguard/KeyguardHostView;)Landroid/widget/FrameLayout;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView$26;->this$0:Lcom/android/keyguard/KeyguardHostView;

    # getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/keyguard/KeyguardHostView;->access$4900(Lcom/android/keyguard/KeyguardHostView;)Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Lcom/android/keyguard/KeyguardHostView$26;->this$0:Lcom/android/keyguard/KeyguardHostView;

    # getter for: Lcom/android/keyguard/KeyguardHostView;->mHealthViewContents:Landroid/widget/FrameLayout;
    invoke-static {v4}, Lcom/android/keyguard/KeyguardHostView;->access$4800(Lcom/android/keyguard/KeyguardHostView;)Landroid/widget/FrameLayout;

    move-result-object v4

    iget-object v5, p0, Lcom/android/keyguard/KeyguardHostView$26;->this$0:Lcom/android/keyguard/KeyguardHostView;

    # getter for: Lcom/android/keyguard/KeyguardHostView;->mHestiaOnClickHandler:Lcom/android/keyguard/KeyguardHostView$HestiaOnClickHandler;
    invoke-static {v5}, Lcom/android/keyguard/KeyguardHostView;->access$5000(Lcom/android/keyguard/KeyguardHostView;)Lcom/android/keyguard/KeyguardHostView$HestiaOnClickHandler;

    move-result-object v5

    invoke-virtual {v0, v2, v4, v5}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView$26;->this$0:Lcom/android/keyguard/KeyguardHostView;

    # getter for: Lcom/android/keyguard/KeyguardHostView;->mHealthViewContents:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lcom/android/keyguard/KeyguardHostView;->access$4800(Lcom/android/keyguard/KeyguardHostView;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView$26;->this$0:Lcom/android/keyguard/KeyguardHostView;

    # getter for: Lcom/android/keyguard/KeyguardHostView;->mSlidingChallengeLayout:Lcom/android/keyguard/SlidingChallengeLayout;
    invoke-static {v2}, Lcom/android/keyguard/KeyguardHostView;->access$1300(Lcom/android/keyguard/KeyguardHostView;)Lcom/android/keyguard/SlidingChallengeLayout;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView$26;->this$0:Lcom/android/keyguard/KeyguardHostView;

    # getter for: Lcom/android/keyguard/KeyguardHostView;->mSlidingChallengeLayout:Lcom/android/keyguard/SlidingChallengeLayout;
    invoke-static {v2}, Lcom/android/keyguard/KeyguardHostView;->access$1300(Lcom/android/keyguard/KeyguardHostView;)Lcom/android/keyguard/SlidingChallengeLayout;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/keyguard/SlidingChallengeLayout;->onHealthContentsUpdated(Z)V

    :cond_2
    return-void

    :cond_3
    move v2, v4

    goto :goto_0
.end method

.method public onStatusViewGone()V
    .locals 2

    const-string v0, "KeyguardHostView"

    const-string v1, "onStatusViewGone()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$26;->this$0:Lcom/android/keyguard/KeyguardHostView;

    # getter for: Lcom/android/keyguard/KeyguardHostView;->mSlidingChallengeLayout:Lcom/android/keyguard/SlidingChallengeLayout;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardHostView;->access$1300(Lcom/android/keyguard/KeyguardHostView;)Lcom/android/keyguard/SlidingChallengeLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$26;->this$0:Lcom/android/keyguard/KeyguardHostView;

    # getter for: Lcom/android/keyguard/KeyguardHostView;->mSlidingChallengeLayout:Lcom/android/keyguard/SlidingChallengeLayout;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardHostView;->access$1300(Lcom/android/keyguard/KeyguardHostView;)Lcom/android/keyguard/SlidingChallengeLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/SlidingChallengeLayout;->onStatusViewGone()V

    :cond_0
    return-void
.end method

.method public onStatusViewShowed()V
    .locals 2

    const-string v0, "KeyguardHostView"

    const-string v1, "onStatusViewShowed()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$26;->this$0:Lcom/android/keyguard/KeyguardHostView;

    # getter for: Lcom/android/keyguard/KeyguardHostView;->mSlidingChallengeLayout:Lcom/android/keyguard/SlidingChallengeLayout;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardHostView;->access$1300(Lcom/android/keyguard/KeyguardHostView;)Lcom/android/keyguard/SlidingChallengeLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$26;->this$0:Lcom/android/keyguard/KeyguardHostView;

    # getter for: Lcom/android/keyguard/KeyguardHostView;->mSlidingChallengeLayout:Lcom/android/keyguard/SlidingChallengeLayout;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardHostView;->access$1300(Lcom/android/keyguard/KeyguardHostView;)Lcom/android/keyguard/SlidingChallengeLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/SlidingChallengeLayout;->onStatusViewShowed()V

    :cond_0
    return-void
.end method
