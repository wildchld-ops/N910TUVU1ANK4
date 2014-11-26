.class public Lcom/android/keyguard/sec/SecKeyguardCustomClock;
.super Lcom/android/keyguard/sec/SecKeyguardClock;
.source "SecKeyguardCustomClock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/sec/SecKeyguardCustomClock$StatusLayoutUpdateCallback;
    }
.end annotation


# instance fields
.field protected TAG:Ljava/lang/String;

.field private mAdaptiveEventContainer:Lcom/android/keyguard/sec/AdaptiveEventContainerCustom;

.field private mCallback:Lcom/android/keyguard/sec/SecKeyguardCustomClock$StatusLayoutUpdateCallback;

.field private mClockLayout:Landroid/widget/RelativeLayout;

.field private mClockLocation:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/SecKeyguardClock;-><init>(Landroid/content/Context;)V

    const-string v0, "SecKeyguardCustomClock"

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCustomClock;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/sec/SecKeyguardCustomClock;->mClockLocation:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/sec/SecKeyguardClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, "SecKeyguardCustomClock"

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCustomClock;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/sec/SecKeyguardCustomClock;->mClockLocation:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;
    .param p3    # I

    invoke-direct {p0, p1, p2, p3}, Lcom/android/keyguard/sec/SecKeyguardClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string v0, "SecKeyguardCustomClock"

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCustomClock;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/sec/SecKeyguardCustomClock;->mClockLocation:I

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Lcom/android/keyguard/sec/SecKeyguardClock;->onFinishInflate()V

    const v0, 0x7f0b00c1

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCustomClock;->mClockLayout:Landroid/widget/RelativeLayout;

    const v0, 0x7f0b0109

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/sec/AdaptiveEventContainerCustom;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCustomClock;->mAdaptiveEventContainer:Lcom/android/keyguard/sec/AdaptiveEventContainerCustom;

    sget v0, Lcom/android/keyguard/sec/SecKeyguardCustomStatusView;->mClockLocation:I

    iput v0, p0, Lcom/android/keyguard/sec/SecKeyguardCustomClock;->mClockLocation:I

    iget v0, p0, Lcom/android/keyguard/sec/SecKeyguardCustomClock;->mClockLocation:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SecKeyguardCustomClock;->updateClockAndWidgetLocation(I)V

    return-void
.end method

.method protected setSingleClockStyle(I)V
    .locals 4
    .param p1    # I

    iget v1, p0, Lcom/android/keyguard/sec/SecKeyguardCustomClock;->mClockLocation:I

    if-nez v1, :cond_0

    invoke-super {p0, p1}, Lcom/android/keyguard/sec/SecKeyguardClock;->setSingleClockStyle(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0067

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mSingleTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    const/4 v2, 0x0

    int-to-float v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0
.end method

.method protected updateClock()V
    .locals 1

    invoke-super {p0}, Lcom/android/keyguard/sec/SecKeyguardClock;->updateClock()V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCustomClock;->mCallback:Lcom/android/keyguard/sec/SecKeyguardCustomClock$StatusLayoutUpdateCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCustomClock;->mCallback:Lcom/android/keyguard/sec/SecKeyguardCustomClock$StatusLayoutUpdateCallback;

    invoke-interface {v0}, Lcom/android/keyguard/sec/SecKeyguardCustomClock$StatusLayoutUpdateCallback;->updateLayout()V

    :cond_0
    return-void
.end method

.method public updateClockAndWidgetLocation(I)V
    .locals 7
    .param p1    # I

    const/4 v6, 0x3

    const/4 v5, 0x5

    const/4 v4, -0x1

    const/4 v3, -0x2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCustomClock;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateLayout, location : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ge p1, v5, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCustomClock;->mClockLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0, v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCustomClock;->mAdaptiveEventContainer:Lcom/android/keyguard/sec/AdaptiveEventContainerCustom;

    invoke-virtual {p0, v0, v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    :goto_0
    if-lez p1, :cond_1

    rem-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCustomClock;->mClockLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setGravity(I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCustomClock;->mAdaptiveEventContainer:Lcom/android/keyguard/sec/AdaptiveEventContainerCustom;

    invoke-virtual {v0, v5}, Lcom/android/keyguard/sec/AdaptiveEventContainerCustom;->setGravity(I)V

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCustomClock;->mAdaptiveEventContainer:Lcom/android/keyguard/sec/AdaptiveEventContainerCustom;

    invoke-virtual {p0, v0, v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCustomClock;->mClockLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0, v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCustomClock;->mClockLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setGravity(I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCustomClock;->mAdaptiveEventContainer:Lcom/android/keyguard/sec/AdaptiveEventContainerCustom;

    invoke-virtual {v0, v6}, Lcom/android/keyguard/sec/AdaptiveEventContainerCustom;->setGravity(I)V

    goto :goto_1
.end method
