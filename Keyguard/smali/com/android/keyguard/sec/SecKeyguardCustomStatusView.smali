.class public Lcom/android/keyguard/sec/SecKeyguardCustomStatusView;
.super Landroid/widget/RelativeLayout;
.source "SecKeyguardCustomStatusView.java"

# interfaces
.implements Lcom/android/keyguard/sec/SecKeyguardCustomClock$StatusLayoutUpdateCallback;


# static fields
.field public static mClockLocation:I


# instance fields
.field private final CONTAINER_SIZE:I

.field private mClock:Lcom/android/keyguard/sec/SecKeyguardCustomClock;

.field private mCustomContainer:Landroid/widget/LinearLayout;

.field private mCustomLinear:[Landroid/widget/LinearLayout;

.field private mIsSingleClock:Z

.field private mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

.field private mProfile:Landroid/view/View;

.field private mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

.field private mSingleClock:Lcom/android/keyguard/sec/SecKeyguardTextClock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/android/keyguard/sec/SecKeyguardCustomStatusView;->mClockLocation:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/keyguard/sec/SecKeyguardCustomStatusView;->CONTAINER_SIZE:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/SecKeyguardCustomStatusView;->mIsSingleClock:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/keyguard/sec/SecKeyguardCustomStatusView;->CONTAINER_SIZE:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/SecKeyguardCustomStatusView;->mIsSingleClock:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;
    .param p3    # I

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/keyguard/sec/SecKeyguardCustomStatusView;->CONTAINER_SIZE:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/SecKeyguardCustomStatusView;->mIsSingleClock:Z

    return-void
.end method

.method private removeAllContainer()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCustomStatusView;->mCustomLinear:[Landroid/widget/LinearLayout;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCustomStatusView;->mCustomLinear:[Landroid/widget/LinearLayout;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateStatusType()V
    .locals 11

    const/4 v10, 0x2

    const/4 v8, -0x2

    const/16 v9, 0x8

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v6, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "my_profile_enabled"

    invoke-static {v6, v7, v4, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-ne v6, v4, :cond_1

    move v1, v4

    :goto_0
    iget-object v6, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "easy_mode_switch"

    invoke-static {v6, v7, v4, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-ne v6, v4, :cond_2

    move v0, v5

    :goto_1
    const-string v6, "SecKeyguardStatusView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateStatusType(): isProfileOn="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " isEasyUxOn="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_3

    if-nez v0, :cond_3

    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardCustomStatusView;->mCustomContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardCustomStatusView;->mProfile:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_2
    return-void

    :cond_1
    move v1, v5

    goto :goto_0

    :cond_2
    move v0, v4

    goto :goto_1

    :cond_3
    iget-object v6, p0, Lcom/android/keyguard/sec/SecKeyguardCustomStatusView;->mCustomContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/keyguard/sec/SecKeyguardCustomStatusView;->mProfile:Landroid/view/View;

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/keyguard/sec/SecKeyguardCustomStatusView;->mClock:Lcom/android/keyguard/sec/SecKeyguardCustomClock;

    invoke-virtual {v6}, Lcom/android/keyguard/sec/SecKeyguardClock;->isSingleClock()Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/keyguard/sec/SecKeyguardCustomStatusView;->mIsSingleClock:Z

    iget-object v6, p0, Lcom/android/keyguard/sec/SecKeyguardCustomStatusView;->mClock:Lcom/android/keyguard/sec/SecKeyguardCustomClock;

    sget v7, Lcom/android/keyguard/sec/SecKeyguardCustomStatusView;->mClockLocation:I

    invoke-virtual {v6, v7}, Lcom/android/keyguard/sec/SecKeyguardCustomClock;->updateClockAndWidgetLocation(I)V

    iget-object v6, p0, Lcom/android/keyguard/sec/SecKeyguardCustomStatusView;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v3

    const-string v6, "SecKeyguardStatusView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "securityModel.getSecurityMode() : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v6, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v3, v6, :cond_5

    sput v5, Lcom/android/keyguard/sec/SecKeyguardCustomStatusView;->mClockLocation:I

    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardCustomStatusView;->mCustomLinear:[Landroid/widget/LinearLayout;

    aget-object v5, v5, v4

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardCustomStatusView;->mCustomLinear:[Landroid/widget/LinearLayout;

    aget-object v5, v5, v10

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardCustomStatusView;->removeAllContainer()V

    sget v5, Lcom/android/keyguard/sec/SecKeyguardCustomStatusView;->mClockLocation:I

    add-int/lit8 v5, v5, -0x1

    div-int/lit8 v2, v5, 0x2

    iget-boolean v5, p0, Lcom/android/keyguard/sec/SecKeyguardCustomStatusView;->mIsSingleClock:Z

    if-eqz v5, :cond_4

    sget v5, Lcom/android/keyguard/sec/SecKeyguardCustomStatusView;->mClockLocation:I

    if-nez v5, :cond_6

    :cond_4
    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardCustomStatusView;->mCustomLinear:[Landroid/widget/LinearLayout;

    aget-object v4, v4, v2

    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardCustomStatusView;->mClock:Lcom/android/keyguard/sec/SecKeyguardCustomClock;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_2

    :cond_5
    iget-object v6, p0, Lcom/android/keyguard/sec/SecKeyguardCustomStatusView;->mCustomLinear:[Landroid/widget/LinearLayout;

    aget-object v6, v6, v4

    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/keyguard/sec/SecKeyguardCustomStatusView;->mCustomLinear:[Landroid/widget/LinearLayout;

    aget-object v6, v6, v10

    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_6
    sget v5, Lcom/android/keyguard/sec/SecKeyguardCustomStatusView;->mClockLocation:I

    rem-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_7

    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardCustomStatusView;->mCustomLinear:[Landroid/widget/LinearLayout;

    aget-object v5, v5, v2

    new-instance v6, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardCustomStatusView;->mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v5, v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_7
    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardCustomStatusView;->mCustomLinear:[Landroid/widget/LinearLayout;

    aget-object v5, v5, v2

    iget-object v6, p0, Lcom/android/keyguard/sec/SecKeyguardCustomStatusView;->mClock:Lcom/android/keyguard/sec/SecKeyguardCustomClock;

    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardCustomStatusView;->mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v5, v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget v5, Lcom/android/keyguard/sec/SecKeyguardCustomStatusView;->mClockLocation:I

    rem-int/lit8 v5, v5, 0x2

    if-ne v5, v4, :cond_0

    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardCustomStatusView;->mCustomLinear:[Landroid/widget/LinearLayout;

    aget-object v4, v4, v2

    new-instance v5, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iget-object v6, p0, Lcom/android/keyguard/sec/SecKeyguardCustomStatusView;->mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v4, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_2
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardCustomStatusView;->updateStatusType()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 5

    const/4 v4, -0x1

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    const-string v1, "SecKeyguardStatusView"

    const-string v2, "onFinishInflate()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/keyguard/KeyguardSecurityModel;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCustomStatusView;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    const v1, 0x7f0b00c3

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCustomStatusView;->mCustomContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCustomStatusView;->mCustomLinear:[Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardCustomStatusView;->mCustomLinear:[Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    const v1, 0x7f0b00c4

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    aput-object v1, v2, v3

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardCustomStatusView;->mCustomLinear:[Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    const v1, 0x7f0b00c5

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    aput-object v1, v2, v3

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardCustomStatusView;->mCustomLinear:[Landroid/widget/LinearLayout;

    const/4 v3, 0x2

    const v1, 0x7f0b00c6

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    aput-object v1, v2, v3

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCustomStatusView;->mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCustomStatusView;->mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x3f800000

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f030027

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/sec/SecKeyguardCustomClock;

    iput-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCustomStatusView;->mClock:Lcom/android/keyguard/sec/SecKeyguardCustomClock;

    const v1, 0x7f0b0156

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCustomStatusView;->mProfile:Landroid/view/View;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCustomStatusView;->mClock:Lcom/android/keyguard/sec/SecKeyguardCustomClock;

    const v2, 0x7f0b0142

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iput-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCustomStatusView;->mSingleClock:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardCustomStatusView;->updateStatusType()V

    return-void
.end method

.method public updateClock()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCustomStatusView;->mSingleClock:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->updateClock()V

    return-void
.end method

.method public updateLayout()V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardCustomStatusView;->updateStatusType()V

    return-void
.end method
