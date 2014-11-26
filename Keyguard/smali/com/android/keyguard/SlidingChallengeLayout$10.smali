.class Lcom/android/keyguard/SlidingChallengeLayout$10;
.super Ljava/lang/Object;
.source "SlidingChallengeLayout.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/SlidingChallengeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/SlidingChallengeLayout;


# direct methods
.method constructor <init>(Lcom/android/keyguard/SlidingChallengeLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/keyguard/SlidingChallengeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/view/MotionEvent;

    const/4 v0, 0x0

    iget-object v6, p0, Lcom/android/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/keyguard/SlidingChallengeLayout;

    # getter for: Lcom/android/keyguard/SlidingChallengeLayout;->mIsFirst:Z
    invoke-static {v6}, Lcom/android/keyguard/SlidingChallengeLayout;->access$400(Lcom/android/keyguard/SlidingChallengeLayout;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    :goto_0
    :pswitch_0
    const/4 v6, 0x1

    :goto_1
    return v6

    :pswitch_1
    iget-object v6, p0, Lcom/android/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/keyguard/SlidingChallengeLayout;

    const/4 v7, 0x1

    # setter for: Lcom/android/keyguard/SlidingChallengeLayout;->mIsFirst:Z
    invoke-static {v6, v7}, Lcom/android/keyguard/SlidingChallengeLayout;->access$402(Lcom/android/keyguard/SlidingChallengeLayout;Z)Z

    goto :goto_0

    :cond_0
    iget-object v6, p0, Lcom/android/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/keyguard/SlidingChallengeLayout;

    # getter for: Lcom/android/keyguard/SlidingChallengeLayout;->isIgnoreTouch:Z
    invoke-static {v6}, Lcom/android/keyguard/SlidingChallengeLayout;->access$500(Lcom/android/keyguard/SlidingChallengeLayout;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    iget-object v6, p0, Lcom/android/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/keyguard/SlidingChallengeLayout;

    const/4 v7, 0x0

    # setter for: Lcom/android/keyguard/SlidingChallengeLayout;->isIgnoreTouch:Z
    invoke-static {v6, v7}, Lcom/android/keyguard/SlidingChallengeLayout;->access$502(Lcom/android/keyguard/SlidingChallengeLayout;Z)Z

    :cond_1
    const/4 v6, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    packed-switch v6, :pswitch_data_1

    :cond_3
    :goto_2
    :pswitch_2
    iget-object v6, p0, Lcom/android/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/keyguard/SlidingChallengeLayout;

    # getter for: Lcom/android/keyguard/SlidingChallengeLayout;->mUnlockEffect:I
    invoke-static {v6}, Lcom/android/keyguard/SlidingChallengeLayout;->access$1400(Lcom/android/keyguard/SlidingChallengeLayout;)I

    move-result v6

    packed-switch v6, :pswitch_data_2

    :goto_3
    const/4 v6, 0x1

    goto :goto_1

    :pswitch_3
    iget-object v6, p0, Lcom/android/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/keyguard/SlidingChallengeLayout;

    # getter for: Lcom/android/keyguard/SlidingChallengeLayout;->mExpandChallengeView:Landroid/view/View;
    invoke-static {v6}, Lcom/android/keyguard/SlidingChallengeLayout;->access$600(Lcom/android/keyguard/SlidingChallengeLayout;)Landroid/view/View;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setAlpha(F)V

    iget-object v6, p0, Lcom/android/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/keyguard/SlidingChallengeLayout;

    # setter for: Lcom/android/keyguard/SlidingChallengeLayout;->mStartX:F
    invoke-static {v6, v4}, Lcom/android/keyguard/SlidingChallengeLayout;->access$702(Lcom/android/keyguard/SlidingChallengeLayout;F)F

    iget-object v6, p0, Lcom/android/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/keyguard/SlidingChallengeLayout;

    # setter for: Lcom/android/keyguard/SlidingChallengeLayout;->mStartY:F
    invoke-static {v6, v5}, Lcom/android/keyguard/SlidingChallengeLayout;->access$802(Lcom/android/keyguard/SlidingChallengeLayout;F)F

    iget-object v6, p0, Lcom/android/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/keyguard/SlidingChallengeLayout;

    const-wide/16 v7, 0x0

    # setter for: Lcom/android/keyguard/SlidingChallengeLayout;->mDistance:D
    invoke-static {v6, v7, v8}, Lcom/android/keyguard/SlidingChallengeLayout;->access$902(Lcom/android/keyguard/SlidingChallengeLayout;D)D

    goto :goto_2

    :pswitch_4
    iget-object v6, p0, Lcom/android/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/keyguard/SlidingChallengeLayout;

    # getter for: Lcom/android/keyguard/SlidingChallengeLayout;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;
    invoke-static {v6}, Lcom/android/keyguard/SlidingChallengeLayout;->access$1000(Lcom/android/keyguard/SlidingChallengeLayout;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/keyguard/SlidingChallengeLayout;

    # getter for: Lcom/android/keyguard/SlidingChallengeLayout;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;
    invoke-static {v6}, Lcom/android/keyguard/SlidingChallengeLayout;->access$1000(Lcom/android/keyguard/SlidingChallengeLayout;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v6

    const-wide/16 v7, 0x1388

    invoke-interface {v6, v7, v8}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    :cond_4
    iget-object v6, p0, Lcom/android/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/keyguard/SlidingChallengeLayout;

    # getter for: Lcom/android/keyguard/SlidingChallengeLayout;->mStartX:F
    invoke-static {v6}, Lcom/android/keyguard/SlidingChallengeLayout;->access$700(Lcom/android/keyguard/SlidingChallengeLayout;)F

    move-result v6

    sub-float v6, v4, v6

    float-to-int v1, v6

    iget-object v6, p0, Lcom/android/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/keyguard/SlidingChallengeLayout;

    # getter for: Lcom/android/keyguard/SlidingChallengeLayout;->mStartY:F
    invoke-static {v6}, Lcom/android/keyguard/SlidingChallengeLayout;->access$800(Lcom/android/keyguard/SlidingChallengeLayout;)F

    move-result v6

    sub-float v6, v5, v6

    float-to-int v2, v6

    iget-object v6, p0, Lcom/android/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/keyguard/SlidingChallengeLayout;

    int-to-double v7, v1

    const-wide/high16 v9, 0x4000000000000000L

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    int-to-double v9, v2

    const-wide/high16 v11, 0x4000000000000000L

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    add-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    # setter for: Lcom/android/keyguard/SlidingChallengeLayout;->mDistance:D
    invoke-static {v6, v7, v8}, Lcom/android/keyguard/SlidingChallengeLayout;->access$902(Lcom/android/keyguard/SlidingChallengeLayout;D)D

    if-eqz v0, :cond_5

    const-string v6, "SlidingChallengeLayout"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ACTION_MOVE mDistance: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/keyguard/SlidingChallengeLayout;

    # getter for: Lcom/android/keyguard/SlidingChallengeLayout;->mDistance:D
    invoke-static {v8}, Lcom/android/keyguard/SlidingChallengeLayout;->access$900(Lcom/android/keyguard/SlidingChallengeLayout;)D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v6, p0, Lcom/android/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/keyguard/SlidingChallengeLayout;

    # getter for: Lcom/android/keyguard/SlidingChallengeLayout;->mDistance:D
    invoke-static {v6}, Lcom/android/keyguard/SlidingChallengeLayout;->access$900(Lcom/android/keyguard/SlidingChallengeLayout;)D

    move-result-wide v6

    iget-object v8, p0, Lcom/android/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/keyguard/SlidingChallengeLayout;

    # getter for: Lcom/android/keyguard/SlidingChallengeLayout;->mSecondBorder:I
    invoke-static {v8}, Lcom/android/keyguard/SlidingChallengeLayout;->access$1100(Lcom/android/keyguard/SlidingChallengeLayout;)I

    move-result v8

    int-to-double v8, v8

    cmpl-double v6, v6, v8

    if-ltz v6, :cond_3

    iget-object v6, p0, Lcom/android/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/keyguard/SlidingChallengeLayout;

    const/4 v7, 0x0

    # setter for: Lcom/android/keyguard/SlidingChallengeLayout;->mIsFirst:Z
    invoke-static {v6, v7}, Lcom/android/keyguard/SlidingChallengeLayout;->access$402(Lcom/android/keyguard/SlidingChallengeLayout;Z)Z

    iget-object v6, p0, Lcom/android/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/keyguard/SlidingChallengeLayout;

    # getter for: Lcom/android/keyguard/SlidingChallengeLayout;->mUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;
    invoke-static {v6}, Lcom/android/keyguard/SlidingChallengeLayout;->access$1200(Lcom/android/keyguard/SlidingChallengeLayout;)Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->playLockSound()V

    iget-object v6, p0, Lcom/android/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/keyguard/SlidingChallengeLayout;

    # getter for: Lcom/android/keyguard/SlidingChallengeLayout;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;
    invoke-static {v6}, Lcom/android/keyguard/SlidingChallengeLayout;->access$1000(Lcom/android/keyguard/SlidingChallengeLayout;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/keyguard/SlidingChallengeLayout;

    # getter for: Lcom/android/keyguard/SlidingChallengeLayout;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;
    invoke-static {v6}, Lcom/android/keyguard/SlidingChallengeLayout;->access$1000(Lcom/android/keyguard/SlidingChallengeLayout;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    :cond_6
    iget-object v6, p0, Lcom/android/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/keyguard/SlidingChallengeLayout;

    invoke-virtual {v6}, Lcom/android/keyguard/SlidingChallengeLayout;->isChallengeShowing()Z

    move-result v6

    if-nez v6, :cond_7

    iget-object v6, p0, Lcom/android/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/keyguard/SlidingChallengeLayout;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/keyguard/SlidingChallengeLayout;->showChallenge(Z)V

    :cond_7
    iget-object v6, p0, Lcom/android/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/keyguard/SlidingChallengeLayout;

    # getter for: Lcom/android/keyguard/SlidingChallengeLayout;->mExpandChallengeView:Landroid/view/View;
    invoke-static {v6}, Lcom/android/keyguard/SlidingChallengeLayout;->access$600(Lcom/android/keyguard/SlidingChallengeLayout;)Landroid/view/View;

    move-result-object v6

    const/high16 v7, 0x3f800000

    invoke-virtual {v6, v7}, Landroid/view/View;->setAlpha(F)V

    const/4 v6, 0x1

    invoke-virtual {p2, v6}, Landroid/view/MotionEvent;->setAction(I)V

    goto/16 :goto_2

    :pswitch_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    const v7, 0xff00

    and-int/2addr v6, v7

    shr-int/lit8 v3, v6, 0x8

    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    if-nez v6, :cond_8

    iget-object v6, p0, Lcom/android/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/keyguard/SlidingChallengeLayout;

    const/4 v7, 0x1

    # setter for: Lcom/android/keyguard/SlidingChallengeLayout;->isIgnoreTouch:Z
    invoke-static {v6, v7}, Lcom/android/keyguard/SlidingChallengeLayout;->access$502(Lcom/android/keyguard/SlidingChallengeLayout;Z)Z

    :cond_8
    :pswitch_6
    iget-object v6, p0, Lcom/android/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/keyguard/SlidingChallengeLayout;

    const-wide/16 v7, 0x0

    # setter for: Lcom/android/keyguard/SlidingChallengeLayout;->mDistance:D
    invoke-static {v6, v7, v8}, Lcom/android/keyguard/SlidingChallengeLayout;->access$902(Lcom/android/keyguard/SlidingChallengeLayout;D)D

    iget-object v6, p0, Lcom/android/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/keyguard/SlidingChallengeLayout;

    # getter for: Lcom/android/keyguard/SlidingChallengeLayout;->mExpandChallengeView:Landroid/view/View;
    invoke-static {v6}, Lcom/android/keyguard/SlidingChallengeLayout;->access$600(Lcom/android/keyguard/SlidingChallengeLayout;)Landroid/view/View;

    move-result-object v6

    const/high16 v7, 0x3f800000

    invoke-virtual {v6, v7}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_2

    :pswitch_7
    if-eqz v0, :cond_9

    const-string v6, "SlidingChallengeLayout"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ACTION_UP mDistance: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/keyguard/SlidingChallengeLayout;

    # getter for: Lcom/android/keyguard/SlidingChallengeLayout;->mDistance:D
    invoke-static {v8}, Lcom/android/keyguard/SlidingChallengeLayout;->access$900(Lcom/android/keyguard/SlidingChallengeLayout;)D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iget-object v6, p0, Lcom/android/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/keyguard/SlidingChallengeLayout;

    # getter for: Lcom/android/keyguard/SlidingChallengeLayout;->mFirstBorder:I
    invoke-static {v6}, Lcom/android/keyguard/SlidingChallengeLayout;->access$1300(Lcom/android/keyguard/SlidingChallengeLayout;)I

    move-result v6

    int-to-double v6, v6

    iget-object v8, p0, Lcom/android/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/keyguard/SlidingChallengeLayout;

    # getter for: Lcom/android/keyguard/SlidingChallengeLayout;->mDistance:D
    invoke-static {v8}, Lcom/android/keyguard/SlidingChallengeLayout;->access$900(Lcom/android/keyguard/SlidingChallengeLayout;)D

    move-result-wide v8

    cmpg-double v6, v6, v8

    if-gez v6, :cond_a

    iget-object v6, p0, Lcom/android/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/keyguard/SlidingChallengeLayout;

    # getter for: Lcom/android/keyguard/SlidingChallengeLayout;->mDistance:D
    invoke-static {v6}, Lcom/android/keyguard/SlidingChallengeLayout;->access$900(Lcom/android/keyguard/SlidingChallengeLayout;)D

    move-result-wide v6

    iget-object v8, p0, Lcom/android/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/keyguard/SlidingChallengeLayout;

    # getter for: Lcom/android/keyguard/SlidingChallengeLayout;->mSecondBorder:I
    invoke-static {v8}, Lcom/android/keyguard/SlidingChallengeLayout;->access$1100(Lcom/android/keyguard/SlidingChallengeLayout;)I

    move-result v8

    int-to-double v8, v8

    cmpg-double v6, v6, v8

    if-gez v6, :cond_a

    iget-object v6, p0, Lcom/android/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/keyguard/SlidingChallengeLayout;

    const/4 v7, 0x0

    # setter for: Lcom/android/keyguard/SlidingChallengeLayout;->mIsFirst:Z
    invoke-static {v6, v7}, Lcom/android/keyguard/SlidingChallengeLayout;->access$402(Lcom/android/keyguard/SlidingChallengeLayout;Z)Z

    iget-object v6, p0, Lcom/android/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/keyguard/SlidingChallengeLayout;

    # getter for: Lcom/android/keyguard/SlidingChallengeLayout;->mUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;
    invoke-static {v6}, Lcom/android/keyguard/SlidingChallengeLayout;->access$1200(Lcom/android/keyguard/SlidingChallengeLayout;)Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->playLockSound()V

    iget-object v6, p0, Lcom/android/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/keyguard/SlidingChallengeLayout;

    # getter for: Lcom/android/keyguard/SlidingChallengeLayout;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;
    invoke-static {v6}, Lcom/android/keyguard/SlidingChallengeLayout;->access$1000(Lcom/android/keyguard/SlidingChallengeLayout;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v6

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/android/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/keyguard/SlidingChallengeLayout;

    # getter for: Lcom/android/keyguard/SlidingChallengeLayout;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;
    invoke-static {v6}, Lcom/android/keyguard/SlidingChallengeLayout;->access$1000(Lcom/android/keyguard/SlidingChallengeLayout;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    :cond_a
    iget-object v6, p0, Lcom/android/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/keyguard/SlidingChallengeLayout;

    invoke-virtual {v6}, Lcom/android/keyguard/SlidingChallengeLayout;->isChallengeShowing()Z

    move-result v6

    if-nez v6, :cond_b

    iget-object v6, p0, Lcom/android/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/keyguard/SlidingChallengeLayout;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/keyguard/SlidingChallengeLayout;->showChallenge(Z)V

    :cond_b
    iget-object v6, p0, Lcom/android/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/keyguard/SlidingChallengeLayout;

    # getter for: Lcom/android/keyguard/SlidingChallengeLayout;->mExpandChallengeView:Landroid/view/View;
    invoke-static {v6}, Lcom/android/keyguard/SlidingChallengeLayout;->access$600(Lcom/android/keyguard/SlidingChallengeLayout;)Landroid/view/View;

    move-result-object v6

    const/high16 v7, 0x3f800000

    invoke-virtual {v6, v7}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_2

    :pswitch_8
    iget-object v6, p0, Lcom/android/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/keyguard/SlidingChallengeLayout;

    # getter for: Lcom/android/keyguard/SlidingChallengeLayout;->mUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;
    invoke-static {v6}, Lcom/android/keyguard/SlidingChallengeLayout;->access$1200(Lcom/android/keyguard/SlidingChallengeLayout;)Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    move-result-object v6

    invoke-interface {v6, p1, p2}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    goto/16 :goto_3

    :pswitch_9
    iget-object v6, p0, Lcom/android/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/keyguard/SlidingChallengeLayout;

    # getter for: Lcom/android/keyguard/SlidingChallengeLayout;->mUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;
    invoke-static {v6}, Lcom/android/keyguard/SlidingChallengeLayout;->access$1200(Lcom/android/keyguard/SlidingChallengeLayout;)Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v7, p2}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    goto/16 :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_7
        :pswitch_4
        :pswitch_6
        :pswitch_2
        :pswitch_2
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_8
        :pswitch_9
        :pswitch_9
    .end packed-switch
.end method
