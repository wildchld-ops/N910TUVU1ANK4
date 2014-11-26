.class public Lcom/android/settings/personalpage/PersonalPageTutorial;
.super Landroid/app/Activity;
.source "PersonalPageTutorial.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# instance fields
.field private isPaused:Ljava/lang/Boolean;

.field private mAnimationFadeInTitle:Landroid/view/animation/Animation;

.field private mAnimationHideWaiting:Landroid/view/animation/Animation;

.field private mAnimationSlideUpWithFadeInMsg:Landroid/view/animation/Animation;

.field private mVideoIntro:Landroid/widget/VideoView;

.field private mWelcomeMsgLayout:Landroid/widget/LinearLayout;

.field private mWelcomeTitleLayout:Landroid/widget/LinearLayout;

.field private nextBtnArea:Landroid/widget/RelativeLayout;

.field private video:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v0, p0, Lcom/android/settings/personalpage/PersonalPageTutorial;->nextBtnArea:Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/settings/personalpage/PersonalPageTutorial;->mVideoIntro:Landroid/widget/VideoView;

    iput-object v0, p0, Lcom/android/settings/personalpage/PersonalPageTutorial;->mWelcomeTitleLayout:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings/personalpage/PersonalPageTutorial;->mWelcomeMsgLayout:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings/personalpage/PersonalPageTutorial;->video:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/settings/personalpage/PersonalPageTutorial;->mAnimationFadeInTitle:Landroid/view/animation/Animation;

    iput-object v0, p0, Lcom/android/settings/personalpage/PersonalPageTutorial;->mAnimationSlideUpWithFadeInMsg:Landroid/view/animation/Animation;

    iput-object v0, p0, Lcom/android/settings/personalpage/PersonalPageTutorial;->mAnimationHideWaiting:Landroid/view/animation/Animation;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/personalpage/PersonalPageTutorial;->isPaused:Ljava/lang/Boolean;

    return-void
.end method

.method private UpdateTutorialPage()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "next_is_disclimer"

    iget-object v2, p0, Lcom/android/settings/personalpage/PersonalPageTutorial;->nextBtnArea:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "PersonalPageTutorial"

    const-string v2, "UpdateTutorialPage: Welcome -> Disclaimer "

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-class v1, Lcom/android/settings/personalpage/PersonalPageTutorialDisclaimerActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    :goto_0
    const/high16 v1, 0x2000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    const-string v1, "PersonalPageTutorial"

    const-string v2, "UpdateTutorialPage: Welcome -> App "

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-class v1, Lcom/android/settings/personalpage/PersonalPageTutorialAppActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/settings/personalpage/PersonalPageTutorial;)V
    .locals 0
    .param p0    # Lcom/android/settings/personalpage/PersonalPageTutorial;

    invoke-direct {p0}, Lcom/android/settings/personalpage/PersonalPageTutorial;->UpdateTutorialPage()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/personalpage/PersonalPageTutorial;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0    # Lcom/android/settings/personalpage/PersonalPageTutorial;

    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageTutorial;->mWelcomeTitleLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/personalpage/PersonalPageTutorial;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0    # Lcom/android/settings/personalpage/PersonalPageTutorial;

    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageTutorial;->mWelcomeMsgLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/personalpage/PersonalPageTutorial;)Landroid/view/animation/Animation;
    .locals 1
    .param p0    # Lcom/android/settings/personalpage/PersonalPageTutorial;

    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageTutorial;->mAnimationSlideUpWithFadeInMsg:Landroid/view/animation/Animation;

    return-object v0
.end method

.method private initViewsForStart()V
    .locals 4

    const/16 v1, 0x400

    const/16 v3, 0x8

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    const v0, 0x7f040191

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    const v0, 0x7f0b03e5

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/VideoView;

    iput-object v0, p0, Lcom/android/settings/personalpage/PersonalPageTutorial;->mVideoIntro:Landroid/widget/VideoView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.resource://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/raw/privatemode_intro"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/personalpage/PersonalPageTutorial;->video:Landroid/net/Uri;

    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageTutorial;->mVideoIntro:Landroid/widget/VideoView;

    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageTutorial;->video:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageTutorial;->mVideoIntro:Landroid/widget/VideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageTutorial;->mVideoIntro:Landroid/widget/VideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageTutorial;->mVideoIntro:Landroid/widget/VideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageTutorial;->mVideoIntro:Landroid/widget/VideoView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageTutorial;->mVideoIntro:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageTutorial;->mVideoIntro:Landroid/widget/VideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setStopMusic(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const v0, 0x7f0b03e6

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings/personalpage/PersonalPageTutorial;->mWelcomeTitleLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageTutorial;->mWelcomeTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0b03e7

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings/personalpage/PersonalPageTutorial;->mWelcomeMsgLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageTutorial;->mWelcomeMsgLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0b03db

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/settings/personalpage/PersonalPageTutorial;->nextBtnArea:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageTutorial;->nextBtnArea:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageTutorial;->nextBtnArea:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/android/settings/personalpage/PersonalPageTutorial$1;

    invoke-direct {v1, p0}, Lcom/android/settings/personalpage/PersonalPageTutorial$1;-><init>(Lcom/android/settings/personalpage/PersonalPageTutorial;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f05000d

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/personalpage/PersonalPageTutorial;->mAnimationFadeInTitle:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageTutorial;->mAnimationFadeInTitle:Landroid/view/animation/Animation;

    new-instance v1, Lcom/android/settings/personalpage/PersonalPageTutorial$2;

    invoke-direct {v1, p0}, Lcom/android/settings/personalpage/PersonalPageTutorial$2;-><init>(Lcom/android/settings/personalpage/PersonalPageTutorial;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const v0, 0x7f05000f

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/personalpage/PersonalPageTutorial;->mAnimationHideWaiting:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageTutorial;->mAnimationHideWaiting:Landroid/view/animation/Animation;

    new-instance v1, Lcom/android/settings/personalpage/PersonalPageTutorial$3;

    invoke-direct {v1, p0}, Lcom/android/settings/personalpage/PersonalPageTutorial$3;-><init>(Lcom/android/settings/personalpage/PersonalPageTutorial;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const v0, 0x7f05000e

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/personalpage/PersonalPageTutorial;->mAnimationSlideUpWithFadeInMsg:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageTutorial;->mAnimationSlideUpWithFadeInMsg:Landroid/view/animation/Animation;

    new-instance v1, Lcom/android/settings/personalpage/PersonalPageTutorial$4;

    invoke-direct {v1, p0}, Lcom/android/settings/personalpage/PersonalPageTutorial$4;-><init>(Lcom/android/settings/personalpage/PersonalPageTutorial;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageTutorial;->mVideoIntro:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0
    .param p1    # Landroid/media/MediaPlayer;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->requestWindowFeature(I)Z

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "klimt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_0
    const-string v0, "PersonalPageTutorial"

    const-string v1, "PersonalPage Tutorial create"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/personalpage/PersonalPageTutorial;->initViewsForStart()V

    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 3
    .param p1    # Landroid/media/MediaPlayer;
    .param p2    # I
    .param p3    # I

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageTutorial;->mVideoIntro:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageTutorial;->mVideoIntro:Landroid/widget/VideoView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageTutorial;->mWelcomeTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageTutorial;->mWelcomeMsgLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return v2
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1    # I
    .param p2    # Landroid/view/KeyEvent;

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "PersonalPageTutorial"

    const-string v1, "onKeyUp Back"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/personalpage/PersonalPageTutorial;->isPaused:Ljava/lang/Boolean;

    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 3
    .param p1    # Landroid/media/MediaPlayer;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageTutorial;->mWelcomeTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageTutorial;->mWelcomeTitleLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageTutorial;->mAnimationFadeInTitle:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageTutorial;->mWelcomeMsgLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageTutorial;->mWelcomeMsgLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageTutorial;->mAnimationHideWaiting:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method protected onResume()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageTutorial;->isPaused:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageTutorial;->mVideoIntro:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageTutorial;->mVideoIntro:Landroid/widget/VideoView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageTutorial;->mWelcomeTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageTutorial;->mWelcomeMsgLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/personalpage/PersonalPageTutorial;->isPaused:Ljava/lang/Boolean;

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method
