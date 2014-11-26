.class public Lcom/android/keyguard/KeyguardGuestSelectorView;
.super Landroid/widget/FrameLayout;
.source "KeyguardGuestSelectorView.java"


# instance fields
.field private mCallback:Lcom/android/keyguard/KeyguardViewBase$UserSwitcherCallback;

.field mOrderAddedComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mUsersGrid:Lcom/android/keyguard/KeyguardCircleLinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/keyguard/KeyguardGuestSelectorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/KeyguardGuestSelectorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;
    .param p3    # I

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/android/keyguard/KeyguardGuestSelectorView$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardGuestSelectorView$3;-><init>(Lcom/android/keyguard/KeyguardGuestSelectorView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardGuestSelectorView;->mOrderAddedComparator:Ljava/util/Comparator;

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardGuestSelectorView;)V
    .locals 0
    .param p0    # Lcom/android/keyguard/KeyguardGuestSelectorView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardGuestSelectorView;->setMobileDataMultiUser()V

    return-void
.end method

.method private setMobileDataMultiUser()V
    .locals 8

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v5, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v6, "connectivity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    iget-object v5, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "mobile_data_configure"

    invoke-static {v5, v6, v3, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-ne v5, v3, :cond_0

    move v2, v3

    :goto_0
    const-string v5, "KeyguardGuestSelectorView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setMobileDataMultiUser userId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " state = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    iget-object v5, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "mobile_data"

    if-eqz v2, :cond_3

    :goto_1
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    move v2, v4

    goto :goto_0

    :cond_1
    iget-object v5, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "user_dependent_mobile_settings"

    invoke-static {v5, v6, v4, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-nez v5, :cond_2

    move v2, v4

    :goto_2
    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_2

    :cond_3
    move v3, v4

    goto :goto_1
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    const-string v0, "KeyguardGuestSelectorView"

    const-string v1, "onDetachedFromWindow()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardGuestSelectorView;->mCallback:Lcom/android/keyguard/KeyguardViewBase$UserSwitcherCallback;

    return-void
.end method

.method protected onFinishInflate()V
    .locals 5

    const/4 v4, 0x0

    const v2, 0x7f0b007a

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/KeyguardCircleLinearLayout;

    iput-object v2, p0, Lcom/android/keyguard/KeyguardGuestSelectorView;->mUsersGrid:Lcom/android/keyguard/KeyguardCircleLinearLayout;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardGuestSelectorView;->mUsersGrid:Lcom/android/keyguard/KeyguardCircleLinearLayout;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0043

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0044

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    iget-object v2, p0, Lcom/android/keyguard/KeyguardGuestSelectorView;->mUsersGrid:Lcom/android/keyguard/KeyguardCircleLinearLayout;

    invoke-virtual {v2, v4, v1, v0}, Lcom/android/keyguard/KeyguardCircleLinearLayout;->setButtonPosition(III)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0045

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0046

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    iget-object v2, p0, Lcom/android/keyguard/KeyguardGuestSelectorView;->mUsersGrid:Lcom/android/keyguard/KeyguardCircleLinearLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v1, v0}, Lcom/android/keyguard/KeyguardCircleLinearLayout;->setButtonPosition(III)V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardGuestSelectorView;->mUsersGrid:Lcom/android/keyguard/KeyguardCircleLinearLayout;

    new-instance v3, Lcom/android/keyguard/KeyguardGuestSelectorView$1;

    invoke-direct {v3, p0}, Lcom/android/keyguard/KeyguardGuestSelectorView$1;-><init>(Lcom/android/keyguard/KeyguardGuestSelectorView;)V

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardCircleLinearLayout;->setCallback(Lcom/android/keyguard/KeyguardCircleLinearLayout$CircleLinearLayoutCallback;)V

    :cond_0
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    return-void
.end method
