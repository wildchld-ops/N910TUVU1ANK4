.class public Lcom/android/keyguard/sec/rich/SecAttributionInfoView;
.super Landroid/widget/LinearLayout;
.source "SecAttributionInfoView.java"


# instance fields
.field private mActivityLauncher:Lcom/android/keyguard/KeyguardActivityLauncher;

.field private mAttributionRootView:Landroid/view/View;

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private mKeyguardHostView:Lcom/android/keyguard/KeyguardHostView;

.field private mLiveviewAttributionView:Landroid/view/View;

.field private mLiveviewLocationView:Landroid/view/View;

.field private mLiveviewRootView:Landroid/view/View;

.field private mLogoChangeHandler:Landroid/os/Handler;

.field private mLogoFileObserverRegistered:Z

.field private mLogoView:Landroid/widget/ImageView;

.field private mPhotographer:Landroid/widget/TextView;

.field private mSlidingChallengeLayout:Lcom/android/keyguard/SlidingChallengeLayout;

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mLogoFileObserverRegistered:Z

    new-instance v0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/rich/SecAttributionInfoView$1;-><init>(Lcom/android/keyguard/sec/rich/SecAttributionInfoView;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mLogoChangeHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/rich/SecAttributionInfoView;)V
    .locals 0
    .param p0    # Lcom/android/keyguard/sec/rich/SecAttributionInfoView;

    invoke-direct {p0}, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->unregisterLogoImageFileObserver()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/rich/SecAttributionInfoView;Z)V
    .locals 0
    .param p0    # Lcom/android/keyguard/sec/rich/SecAttributionInfoView;
    .param p1    # Z

    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->updateLogoImage(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/keyguard/sec/rich/SecAttributionInfoView;Ljava/lang/String;)V
    .locals 0
    .param p0    # Lcom/android/keyguard/sec/rich/SecAttributionInfoView;
    .param p1    # Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->launchBrowser(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/keyguard/sec/rich/SecAttributionInfoView;)Landroid/os/Handler;
    .locals 1
    .param p0    # Lcom/android/keyguard/sec/rich/SecAttributionInfoView;

    iget-object v0, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mLogoChangeHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private launchBrowser(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mKeyguardHostView:Lcom/android/keyguard/KeyguardHostView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mSlidingChallengeLayout:Lcom/android/keyguard/SlidingChallengeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mActivityLauncher:Lcom/android/keyguard/KeyguardActivityLauncher;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mSlidingChallengeLayout:Lcom/android/keyguard/SlidingChallengeLayout;

    invoke-virtual {v0}, Lcom/android/keyguard/SlidingChallengeLayout;->isBouncing()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mKeyguardHostView:Lcom/android/keyguard/KeyguardHostView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardHostView;->showBouncer(Z)V

    iget-object v0, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mActivityLauncher:Lcom/android/keyguard/KeyguardActivityLauncher;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardActivityLauncher;->launchLandingPage(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mKeyguardHostView:Lcom/android/keyguard/KeyguardHostView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardHostView;->showBouncer(Z)V

    goto :goto_0
.end method

.method private registerLogoImageFileObserver()V
    .locals 5

    iget-object v0, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mLogoFileObserverRegistered:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->unregisterLogoImageFileObserver()V

    :cond_1
    new-instance v0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView$5;

    iget-object v1, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mLogoChangeHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/sec/rich/SecAttributionInfoView$5;-><init>(Lcom/android/keyguard/sec/rich/SecAttributionInfoView;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mContentObserver:Landroid/database/ContentObserver;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mLogoFileObserverRegistered:Z

    iget-object v0, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "keyguard_wu_wallpaper_info_logo_image_path"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mContentObserver:Landroid/database/ContentObserver;

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    goto :goto_0
.end method

.method private unregisterLogoImageFileObserver()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mLogoFileObserverRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mLogoFileObserverRegistered:Z

    goto :goto_0
.end method

.method private updateAttributionInfo()V
    .locals 1

    invoke-direct {p0}, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->unregisterLogoImageFileObserver()V

    invoke-direct {p0}, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->updateAttributionInfoView()V

    invoke-direct {p0}, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->updateTitle()V

    invoke-direct {p0}, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->updatePhotographer()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->updateLogoImage(Z)V

    return-void
.end method

.method private updateAttributionInfoView()V
    .locals 12

    const/4 v11, 0x0

    const/16 v10, 0x8

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mAttributionRootView:Landroid/view/View;

    if-nez v7, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->shoudNotDisplayView()Z

    move-result v7

    if-nez v7, :cond_4

    move v0, v5

    :goto_1
    if-eqz v0, :cond_2

    iget-object v7, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/KeyguardEffectViewMain;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->isJustLockLiveEnabled()Z

    move-result v7

    if-eqz v7, :cond_5

    const/4 v0, 0x0

    :cond_2
    :goto_2
    if-nez v0, :cond_6

    iget-object v6, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mAttributionRootView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mAttributionRootView:Landroid/view/View;

    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object v6, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mAttributionRootView:Landroid/view/View;

    invoke-virtual {v6, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_4
    move v0, v6

    goto :goto_1

    :cond_5
    iget-object v7, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/KeyguardEffectViewMain;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->isCategoriesWallpaper()Z

    move-result v0

    goto :goto_2

    :cond_6
    iget-object v7, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "keyguard_wu_wallpaper_info_title"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v7, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "keyguard_wu_wallpaper_info_logo_image_path"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v7, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "keyguard_wu_wallpaper_info_cp_name"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v7, "SecAttributionInfoView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "imageTitle = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", logoFilePath = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", imageCPName = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_a

    :cond_7
    if-eqz v4, :cond_8

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_a

    :cond_8
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_a

    :cond_9
    :goto_3
    if-eqz v5, :cond_b

    iget-object v6, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mAttributionRootView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mAttributionRootView:Landroid/view/View;

    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_a
    move v5, v6

    goto :goto_3

    :cond_b
    iget-object v7, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mAttributionRootView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_c

    iget-object v7, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mAttributionRootView:Landroid/view/View;

    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_c
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "keyguard_wu_wallpaper_info_landing_page_url"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "SecAttributionInfoView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "landingPageUrl = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_d

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_d

    iget-object v6, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mAttributionRootView:Landroid/view/View;

    new-instance v7, Lcom/android/keyguard/sec/rich/SecAttributionInfoView$4;

    invoke-direct {v7, p0}, Lcom/android/keyguard/sec/rich/SecAttributionInfoView$4;-><init>(Lcom/android/keyguard/sec/rich/SecAttributionInfoView;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    :cond_d
    iget-object v6, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mAttributionRootView:Landroid/view/View;

    invoke-virtual {v6, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0
.end method

.method private updateLiveviewViews()V
    .locals 5

    const/4 v2, 0x0

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mLiveviewRootView:Landroid/view/View;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->shoudNotDisplayView()Z

    move-result v3

    if-nez v3, :cond_5

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/KeyguardEffectViewMain;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->isJustLockLiveEnabled()Z

    move-result v0

    :cond_2
    if-nez v0, :cond_6

    iget-object v2, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mLiveviewRootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mLiveviewRootView:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object v2, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mLiveviewAttributionView:Landroid/view/View;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mLiveviewAttributionView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    iget-object v2, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mLiveviewLocationView:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mLiveviewLocationView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_1

    :cond_6
    iget-object v3, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mLiveviewRootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mLiveviewRootView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    iget-object v2, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mLiveviewLocationView:Landroid/view/View;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "just_lock_yahoo_livewallpaper_location_url"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mLiveviewLocationView:Landroid/view/View;

    new-instance v3, Lcom/android/keyguard/sec/rich/SecAttributionInfoView$2;

    invoke-direct {v3, p0, v1}, Lcom/android/keyguard/sec/rich/SecAttributionInfoView$2;-><init>(Lcom/android/keyguard/sec/rich/SecAttributionInfoView;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_8
    :goto_2
    iget-object v2, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mLiveviewAttributionView:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "just_lock_yahoo_livewallpaper_attribution_url"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mLiveviewAttributionView:Landroid/view/View;

    new-instance v3, Lcom/android/keyguard/sec/rich/SecAttributionInfoView$3;

    invoke-direct {v3, p0, v1}, Lcom/android/keyguard/sec/rich/SecAttributionInfoView$3;-><init>(Lcom/android/keyguard/sec/rich/SecAttributionInfoView;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    :cond_9
    iget-object v2, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mLiveviewLocationView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    :cond_a
    iget-object v2, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mLiveviewAttributionView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0
.end method

.method private updateLogoImage(Z)V
    .locals 4
    .param p1    # Z

    iget-object v2, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mLogoView:Landroid/widget/ImageView;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "keyguard_wu_wallpaper_info_logo_image_path"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mLogoView:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    iget-object v2, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-direct {p0}, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->updateAttributionInfoView()V

    goto :goto_0

    :cond_3
    if-nez p1, :cond_4

    invoke-direct {p0}, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->registerLogoImageFileObserver()V

    :cond_4
    iget-object v2, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mLogoView:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updatePhotographer()V
    .locals 3

    iget-object v1, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mPhotographer:Landroid/widget/TextView;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "keyguard_wu_wallpaper_info_cp_name"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mPhotographer:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mPhotographer:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mPhotographer:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mPhotographer:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateTitle()V
    .locals 3

    iget-object v1, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mTitleView:Landroid/widget/TextView;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "keyguard_wu_wallpaper_info_title"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mTitleView:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mTitleView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mTitleView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 5

    const-string v3, "SecAttributionInfoView"

    const-string v4, "onAttachedToWindow"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mContext:Landroid/content/Context;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f030044

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    const v3, 0x7f0b0121

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mAttributionRootView:Landroid/view/View;

    const v3, 0x7f0b0122

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mTitleView:Landroid/widget/TextView;

    const v3, 0x7f0b0123

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mPhotographer:Landroid/widget/TextView;

    const v3, 0x7f0b0124

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mLogoView:Landroid/widget/ImageView;

    const v3, 0x7f0b011e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mLiveviewRootView:Landroid/view/View;

    const v3, 0x7f0b011f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mLiveviewLocationView:Landroid/view/View;

    const v3, 0x7f0b0120

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mLiveviewAttributionView:Landroid/view/View;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->update()V

    iget-object v3, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/KeyguardEffectViewMain;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->setAttributionInfoView(Lcom/android/keyguard/sec/rich/SecAttributionInfoView;)V

    :cond_2
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    const-string v0, "SecAttributionInfoView"

    const-string v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/KeyguardEffectViewMain;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->setAttributionInfoView(Lcom/android/keyguard/sec/rich/SecAttributionInfoView;)V

    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->unregisterLogoImageFileObserver()V

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1    # Z

    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mLiveviewLocationView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mLiveviewLocationView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mLiveviewAttributionView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mLiveviewAttributionView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mAttributionRootView:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mAttributionRootView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_2
    return-void
.end method

.method public setKeyguardCallback(Lcom/android/keyguard/KeyguardHostView;Lcom/android/keyguard/SlidingChallengeLayout;Lcom/android/keyguard/KeyguardActivityLauncher;)V
    .locals 0
    .param p1    # Lcom/android/keyguard/KeyguardHostView;
    .param p2    # Lcom/android/keyguard/SlidingChallengeLayout;
    .param p3    # Lcom/android/keyguard/KeyguardActivityLauncher;

    iput-object p1, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mKeyguardHostView:Lcom/android/keyguard/KeyguardHostView;

    iput-object p2, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mSlidingChallengeLayout:Lcom/android/keyguard/SlidingChallengeLayout;

    iput-object p3, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mActivityLauncher:Lcom/android/keyguard/KeyguardActivityLauncher;

    return-void
.end method

.method public shoudNotDisplayView()Z
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/KeyguardEffectViewMain;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->isMusicBackground()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->isStrongPowerSavingMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public update()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->updateLiveviewViews()V

    invoke-direct {p0}, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->updateAttributionInfo()V

    iget-object v0, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mKeyguardHostView:Lcom/android/keyguard/KeyguardHostView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mKeyguardHostView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardHostView;->updateAttributionViewState()V

    goto :goto_0
.end method
