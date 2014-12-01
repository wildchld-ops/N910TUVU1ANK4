.class public Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;
.super Landroid/widget/ScrollView;
.source "TwHelpScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView$ScrollListener;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private bcheckIsFirstScroll:Z

.field final mAnimationCallback:Ljava/lang/Runnable;

.field private mChoreographer:Landroid/view/Choreographer;

.field private mInVSync:Z

.field private mScrollMode:I

.field private mScrollTryListener:Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView$ScrollListener;

.field private mSmartFaceListener:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;

.field private mSmartMotionListener:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "TwHelpScrollView"

    sput-object v0, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;->mScrollMode:I

    iput-object v1, p0, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;->mSmartMotionListener:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;

    iput-object v1, p0, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;->mSmartFaceListener:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;

    iput-object v1, p0, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;->mScrollTryListener:Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView$ScrollListener;

    iput-boolean v2, p0, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;->bcheckIsFirstScroll:Z

    iput-boolean v2, p0, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;->mInVSync:Z

    new-instance v0, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView$1;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView$1;-><init>(Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;->mAnimationCallback:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;->mScrollMode:I

    iput-object v1, p0, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;->mSmartMotionListener:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;

    iput-object v1, p0, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;->mSmartFaceListener:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;

    iput-object v1, p0, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;->mScrollTryListener:Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView$ScrollListener;

    iput-boolean v2, p0, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;->bcheckIsFirstScroll:Z

    iput-boolean v2, p0, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;->mInVSync:Z

    new-instance v0, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView$1;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView$1;-><init>(Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;->mAnimationCallback:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;)Landroid/view/Choreographer;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;->mChoreographer:Landroid/view/Choreographer;

    return-object v0
.end method

.method private initVSync()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;->mChoreographer:Landroid/view/Choreographer;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;->mChoreographer:Landroid/view/Choreographer;

    :cond_0
    return-void
.end method

.method private stopVSync()V
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;->mInVSync:Z

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;->mChoreographer:Landroid/view/Choreographer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;->mChoreographer:Landroid/view/Choreographer;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;->mAnimationCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/Choreographer;->removeCallbacks(ILjava/lang/Runnable;Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;->mChoreographer:Landroid/view/Choreographer;

    :cond_0
    return-void
.end method

.method private updateVSync()V
    .locals 4

    const/4 v3, 0x1

    iget-boolean v0, p0, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;->mInVSync:Z

    if-nez v0, :cond_0

    iput-boolean v3, p0, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;->mInVSync:Z

    invoke-direct {p0}, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;->initVSync()V

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;->mAnimationCallback:Ljava/lang/Runnable;

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v1, v2}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method doAnimation(J)V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;->mScrollTryListener:Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView$ScrollListener;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView$ScrollListener;->isSmartScrollEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;->setStartSmartScroll()V

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;->mChoreographer:Landroid/view/Choreographer;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;->mAnimationCallback:Ljava/lang/Runnable;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public getMaxScrollContentSize()I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;->mScrollTryListener:Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView$ScrollListener;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView$ScrollListener;->getMaxScrollSize()I

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return v2

    :pswitch_0
    sget-object v0, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;->TAG:Ljava/lang/String;

    const-string v1, "HelpScrollView - onTouchEvent() - ACTION_DOWN "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;->mSmartFaceListener:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;->mSmartFaceListener:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->pauseSmartScroll()V

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;->TAG:Ljava/lang/String;

    const-string v1, "HelpScrollView - onTouchEvent() - ACTION_UP "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;->mSmartMotionListener:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;->mSmartMotionListener:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;

    invoke-virtual {v0, v2}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->setSmartMotionScrollAngle(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;->mSmartFaceListener:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;->mSmartFaceListener:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->delayResumeSmartScroll()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public scrollBy(II)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/view/View;->scrollBy(II)V

    const/high16 v0, 0x40800000

    invoke-virtual {p0, p2, v0}, Landroid/widget/ScrollView;->showEdgeEffectIfNecessary(IF)V

    return-void
.end method

.method public setEnableVSync(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;->updateVSync()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;->stopVSync()V

    goto :goto_0
.end method

.method public setInitVSync()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;->mInVSync:Z

    invoke-direct {p0}, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;->initVSync()V

    return-void
.end method

.method public setScrollLintener(Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView$ScrollListener;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;->mScrollTryListener:Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView$ScrollListener;

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;->mScrollTryListener:Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView$ScrollListener;

    goto :goto_0
.end method

.method public setSmartScroll(I)V
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x0

    iput p1, p0, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;->mScrollMode:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;->mSmartMotionListener:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;->mSmartMotionListener:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->stopSmartMotionScroll()V

    iput-object v1, p0, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;->mSmartMotionListener:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;->mSmartFaceListener:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, v2}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;-><init>(Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;->mSmartFaceListener:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;->mSmartFaceListener:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->startSmartScroll()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;->mSmartFaceListener:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;->mSmartFaceListener:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->stopSmartScroll()V

    iput-object v1, p0, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;->mSmartFaceListener:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;

    :cond_3
    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;->mSmartMotionListener:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, v2}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;-><init>(Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;->mSmartMotionListener:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;->mSmartMotionListener:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->startSmartMotionScroll()V

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSmartScroll() - Scroll Mode is invalid -- type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setStartSmartScroll()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;->mSmartMotionListener:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;->mSmartMotionListener:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->setStartSmartScroll()V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;->mSmartFaceListener:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;->mSmartFaceListener:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->setStartSmartScroll()V

    :cond_1
    return-void
.end method

.method public smartScrollBy(I)V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1}, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;->scrollBy(II)V

    iget-boolean v0, p0, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;->bcheckIsFirstScroll:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;->mScrollTryListener:Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView$ScrollListener;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView$ScrollListener;->showScrollGuide()V

    iput-boolean v1, p0, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;->bcheckIsFirstScroll:Z

    :cond_0
    return-void
.end method

.method public smartScrollReady()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;->mScrollTryListener:Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView$ScrollListener;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView$ScrollListener;->showScrollReadyGuide()V

    return-void
.end method

.method public stopSmartScroll()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;->mSmartFaceListener:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;->mSmartFaceListener:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->stopSmartScroll()V

    iput-object v1, p0, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;->mSmartFaceListener:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;->mSmartMotionListener:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;->mSmartMotionListener:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->stopSmartMotionScroll()V

    iput-object v1, p0, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;->mSmartMotionListener:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;

    :cond_1
    return-void
.end method
