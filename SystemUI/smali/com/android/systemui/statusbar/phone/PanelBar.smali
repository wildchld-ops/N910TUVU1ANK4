.class public Lcom/android/systemui/statusbar/phone/PanelBar;
.super Landroid/widget/FrameLayout;
.source "PanelBar.java"


# static fields
.field public static final ANIMATING_ACTION:Ljava/lang/String; = "com.android.systemui.statusbar.ANIMATING"

.field public static final COLLAPSE_ACTION:Ljava/lang/String; = "com.android.systemui.statusbar.COLLAPSED"

.field public static final COLLAPSE_ACTION_PERMISSION:Ljava/lang/String; = "android.permission.EXPAND_STATUS_BAR"

.field public static final DEBUG:Z = false

.field public static final EXPAND_ACTION:Ljava/lang/String; = "com.android.systemui.statusbar.EXPANDED"

.field public static final STATE_CLOSED:I = 0x0

.field public static final STATE_OPEN:I = 0x2

.field public static final STATE_OPENING:I = 0x1

.field public static final TAG:Ljava/lang/String;


# instance fields
.field mPanelExpandedFractionSum:F

.field mPanelHolder:Lcom/android/systemui/statusbar/phone/PanelHolder;

.field mPanels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/phone/PanelView;",
            ">;"
        }
    .end annotation
.end field

.field private mState:I

.field mTouchingPanel:Lcom/android/systemui/statusbar/phone/PanelView;

.field private mTracking:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/systemui/statusbar/phone/PanelBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/PanelBar;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanels:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mState:I

    return-void
.end method

.method public static final varargs LOG(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public addPanel(Lcom/android/systemui/statusbar/phone/PanelView;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanels:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/phone/PanelView;->setBar(Lcom/android/systemui/statusbar/phone/PanelBar;)V

    return-void
.end method

.method public collapseAllPanels(Z)V
    .locals 4

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanels:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/PanelView;

    if-eqz p1, :cond_0

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PanelView;->isFullyCollapsed()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PanelView;->collapse()V

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/phone/PanelView;->setExpandedFraction(F)V

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PanelView;->cancelPeek()V

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mState:I

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/PanelBar;->go(I)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onAllPanelsCollapsed()V

    :cond_2
    return-void
.end method

.method public getBarHeight()F
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public go(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mState:I

    return-void
.end method

.method public onAllPanelsCollapsed()V
    .locals 6

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.systemui.statusbar.COLLAPSED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v5, "android.permission.EXPAND_STATUS_BAR"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/view/View;->setFocusable(Z)V

    :try_start_0
    const-string v2, "statusbar"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/internal/statusbar/IStatusBarService;->setPanelExpandState(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    return-void
.end method

.method public onPanelFullyOpened(Lcom/android/systemui/statusbar/phone/PanelView;)V
    .locals 5

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.systemui.statusbar.EXPANDED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/view/View;->setFocusable(Z)V

    :try_start_0
    const-string v2, "statusbar"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/android/internal/statusbar/IStatusBarService;->setPanelExpandState(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public onPanelPeeked()V
    .locals 3

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.systemui.statusbar.ANIMATING"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v4, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->panelsEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelBar;->selectPanelForTouch(Landroid/view/MotionEvent;)Lcom/android/systemui/statusbar/phone/PanelView;

    move-result-object v1

    if-nez v1, :cond_1

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mTouchingPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mTouchingPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/PanelBar;->startOpeningPanel(Lcom/android/systemui/statusbar/phone/PanelView;)V

    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mTouchingPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mTouchingPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-virtual {v3, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    :cond_4
    goto :goto_0
.end method

.method public onTrackingStarted(Lcom/android/systemui/statusbar/phone/PanelView;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mTracking:Z

    return-void
.end method

.method public onTrackingStopped(Lcom/android/systemui/statusbar/phone/PanelView;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mTracking:Z

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/PanelView;->getExpandedFraction()F

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/PanelBar;->panelExpansionChanged(Lcom/android/systemui/statusbar/phone/PanelView;F)V

    return-void
.end method

.method public panelExpansionChanged(Lcom/android/systemui/statusbar/phone/PanelView;F)V
    .locals 11

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    iput v9, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanelExpandedFractionSum:F

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanels:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_3

    move v5, v6

    :goto_1
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/PanelView;->getExpandedHeight()F

    move-result v8

    cmpl-float v8, v8, v9

    if-lez v8, :cond_2

    iget v8, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mState:I

    if-nez v8, :cond_1

    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/phone/PanelBar;->go(I)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onPanelPeeked()V

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/PanelView;->getExpandedFraction()F

    move-result v4

    iget v10, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanelExpandedFractionSum:F

    if-eqz v5, :cond_4

    move v8, v4

    :goto_2
    add-float/2addr v8, v10

    iput v8, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanelExpandedFractionSum:F

    if-ne p1, v3, :cond_2

    const/high16 v8, 0x3f800000

    cmpl-float v8, v4, v8

    if-nez v8, :cond_2

    move-object v1, p1

    :cond_2
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/PanelView;->getExpandedHeight()F

    move-result v8

    cmpl-float v8, v8, v9

    if-lez v8, :cond_5

    if-nez v5, :cond_0

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_3
    move v5, v7

    goto :goto_1

    :cond_4
    move v8, v9

    goto :goto_2

    :cond_5
    if-eqz v5, :cond_0

    const/16 v8, 0x8

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_6
    iget v6, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanelExpandedFractionSum:F

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanels:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v6, v8

    iput v6, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanelExpandedFractionSum:F

    if-eqz v1, :cond_8

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mTracking:Z

    if-nez v6, :cond_8

    const/4 v6, 0x2

    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/phone/PanelBar;->go(I)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/PanelBar;->onPanelFullyOpened(Lcom/android/systemui/statusbar/phone/PanelView;)V

    :cond_7
    :goto_3
    return-void

    :cond_8
    if-eqz v0, :cond_7

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mTracking:Z

    if-nez v6, :cond_7

    iget v6, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mState:I

    if-eqz v6, :cond_7

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/phone/PanelBar;->go(I)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onAllPanelsCollapsed()V

    goto :goto_3
.end method

.method public panelsEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public selectPanelForTouch(Landroid/view/MotionEvent;)Lcom/android/systemui/statusbar/phone/PanelView;
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanels:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanels:Ljava/util/ArrayList;

    int-to-float v2, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/PanelView;

    return-object v1
.end method

.method public setPanelHolder(Lcom/android/systemui/statusbar/phone/PanelHolder;)V
    .locals 6

    if-nez p1, :cond_1

    sget-object v3, Lcom/android/systemui/statusbar/phone/PanelBar;->TAG:Ljava/lang/String;

    const-string v4, "setPanelHolder: null PanelHolder"

    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3, v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/phone/PanelHolder;->setBar(Lcom/android/systemui/statusbar/phone/PanelBar;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanelHolder:Lcom/android/systemui/statusbar/phone/PanelHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    instance-of v3, v2, Lcom/android/systemui/statusbar/phone/PanelView;

    if-eqz v3, :cond_2

    check-cast v2, Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/PanelBar;->addPanel(Lcom/android/systemui/statusbar/phone/PanelView;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public startOpeningPanel(Lcom/android/systemui/statusbar/phone/PanelView;)V
    .locals 4

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mTouchingPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanelHolder:Lcom/android/systemui/statusbar/phone/PanelHolder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mTouchingPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/PanelHolder;->setSelectedPanel(Lcom/android/systemui/statusbar/phone/PanelView;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanels:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/PanelView;

    if-eq v1, p1, :cond_0

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PanelView;->collapse()V

    goto :goto_0

    :cond_1
    return-void
.end method
