.class public Lcom/android/incallui/CallCardQvgaVideoFragment;
.super Lcom/android/incallui/CallCardVideoFragment;
.source "CallCardQvgaVideoFragment.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private isShowingPreparingAnimation:Z

.field private mBigTouchArea:Landroid/view/View;

.field private mCallerInfoPhoto:Landroid/widget/ImageView;

.field private mElapsedTime:Landroid/widget/TextView;

.field private mFarEndCaptureAnimatinoView:Landroid/view/View;

.field private mFarEndContainter:Landroid/view/ViewGroup;

.field private mFarEndContainterResizeTemplate:Landroid/view/ViewGroup;

.field private mFarEndContainterTemplate:Landroid/view/ViewGroup;

.field private mFarEndDocomoImage:Landroid/widget/ImageView;

.field private mFarEndPhoto:Landroid/widget/ImageView;

.field private mFarEndSurface:Landroid/graphics/SurfaceTexture;

.field private mFarEndView:Landroid/view/TextureView;

.field private mHighQualitySoundText:Landroid/widget/TextView;

.field private mIncomingContainterTemplate:Landroid/view/ViewGroup;

.field private mIncomingHideButton:Landroid/widget/ToggleButton;

.field private mIndicatorArea:Landroid/view/ViewGroup;

.field private mNearEndCaptureAnimatinoView:Landroid/view/View;

.field private mNearEndContainter:Landroid/view/ViewGroup;

.field private mNearEndContainterTemplate:Landroid/view/ViewGroup;

.field private mNearEndDocomoImage:Landroid/widget/ImageView;

.field private mNearEndSurface:Landroid/graphics/SurfaceTexture;

.field private mNearEndSwitchAnimationView:Landroid/widget/ImageView;

.field private mNearEndView:Landroid/view/TextureView;

.field private mOrientation:I

.field private mOutgoingContainterTemplate:Landroid/view/ViewGroup;

.field private mPreparingAnimation:Landroid/widget/RelativeLayout;

.field private mPreparingAnimationImage:Landroid/widget/ProgressBar;

.field private mPreparingAnimationText:Landroid/widget/TextView;

.field private mPrimaryCallBanner:Landroid/view/ViewGroup;

.field private mPrimaryCallStateContainer:Landroid/view/ViewGroup;

.field private mPrimaryCdnipNumber:Landroid/widget/TextView;

.field private mPrimaryCnapName:Landroid/widget/TextView;

.field private mPrimaryCnapNameContainer:Landroid/view/View;

.field private mPrimaryName:Landroid/widget/TextView;

.field private mResizedTouchArea:Landroid/view/View;

.field private mSmallTouchArea:Landroid/view/View;

.field private mTouchBackground:Landroid/view/View;

.field mVideoCallManager:Lcom/android/incallui/vt/VideoCallManager;

.field private mVideoCallStateLabel:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/incallui/CallCardVideoFragment;-><init>()V

    iput-object v1, p0, Lcom/android/incallui/CallCardQvgaVideoFragment;->mFarEndCaptureAnimatinoView:Landroid/view/View;

    iput-object v1, p0, Lcom/android/incallui/CallCardQvgaVideoFragment;->mNearEndCaptureAnimatinoView:Landroid/view/View;

    iput-object v1, p0, Lcom/android/incallui/CallCardQvgaVideoFragment;->mFarEndView:Landroid/view/TextureView;

    iput-object v1, p0, Lcom/android/incallui/CallCardQvgaVideoFragment;->mFarEndSurface:Landroid/graphics/SurfaceTexture;

    iput-object v1, p0, Lcom/android/incallui/CallCardQvgaVideoFragment;->mNearEndView:Landroid/view/TextureView;

    iput-object v1, p0, Lcom/android/incallui/CallCardQvgaVideoFragment;->mNearEndSurface:Landroid/graphics/SurfaceTexture;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/CallCardQvgaVideoFragment;->isShowingPreparingAnimation:Z

    iput-object v1, p0, Lcom/android/incallui/CallCardQvgaVideoFragment;->mVideoCallManager:Lcom/android/incallui/vt/VideoCallManager;

    iput-object v1, p0, Lcom/android/incallui/CallCardQvgaVideoFragment;->mHighQualitySoundText:Landroid/widget/TextView;

    return-void
.end method

.method private copyParams(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V
    .locals 1

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/CallCardQvgaVideoFragment;->mVideoCallManager:Lcom/android/incallui/vt/VideoCallManager;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/vt/VideoCallManager;->getInstance()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/CallCardQvgaVideoFragment;->mVideoCallManager:Lcom/android/incallui/vt/VideoCallManager;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/CallCardQvgaVideoFragment;->mVideoCallManager:Lcom/android/incallui/vt/VideoCallManager;

    return-object v0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const-string v1, "onCreateView..."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Lcom/android/incallui/CallCardVideoFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    const v1, 0x7f040014

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/android/incallui/CallCardQvgaVideoFragment;->mOrientation:I

    return-object v0
.end method

.method public onDestroyView()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/android/incallui/CallCardVideoFragment;->onDestroyView()V

    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mPhoto:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/CallCardQvgaVideoFragment;->mFarEndPhoto:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/CallCardQvgaVideoFragment;->mFarEndPhoto:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/android/incallui/CallCardQvgaVideoFragment;->mFarEndPhoto:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/CallCardQvgaVideoFragment;->mCallerInfoPhoto:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/CallCardQvgaVideoFragment;->mCallerInfoPhoto:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/android/incallui/CallCardQvgaVideoFragment;->mCallerInfoPhoto:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/CallCardQvgaVideoFragment;->mPreparingAnimationImage:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_3

    :cond_3
    iget-object v1, p0, Lcom/android/incallui/CallCardQvgaVideoFragment;->mNearEndSwitchAnimationView:Landroid/widget/ImageView;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/incallui/CallCardQvgaVideoFragment;->mNearEndSwitchAnimationView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    iget-object v1, p0, Lcom/android/incallui/CallCardQvgaVideoFragment;->mIncomingHideButton:Landroid/widget/ToggleButton;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/incallui/CallCardQvgaVideoFragment;->mIncomingHideButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/incallui/CallCardQvgaVideoFragment;->mIncomingHideButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_5
    iget-object v1, p0, Lcom/android/incallui/CallCardQvgaVideoFragment;->mFarEndView:Landroid/view/TextureView;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/incallui/CallCardQvgaVideoFragment;->mFarEndView:Landroid/view/TextureView;

    invoke-virtual {v1, v2}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    :cond_6
    iget-object v1, p0, Lcom/android/incallui/CallCardQvgaVideoFragment;->mNearEndView:Landroid/view/TextureView;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/incallui/CallCardQvgaVideoFragment;->mNearEndView:Landroid/view/TextureView;

    invoke-virtual {v1, v2}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    :cond_7
    invoke-virtual {p0}, Lcom/android/incallui/CallCardVideoFragment;->getInCallMenu()Lcom/android/incallui/InCallMenu;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/vt/InVTCallMenu;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/android/incallui/vt/InVTCallMenu;->dismissDialogs()V

    :cond_8
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    const/16 v3, 0x8

    const v2, 0x3f800054

    invoke-super {p0, p1, p2}, Lcom/android/incallui/CallCardVideoFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const-string v0, "onViewCreated..."

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/BaseFragment;->log(Ljava/lang/String;Z)V

    const v0, 0x7f0e01e2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/CallCardQvgaVideoFragment;->mIndicatorArea:Landroid/view/ViewGroup;

    const v0, 0x7f0e01ee

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/CallCardQvgaVideoFragment;->mPrimaryCallStateContainer:Landroid/view/ViewGroup;

    const v0, 0x7f0e01e4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/CallCardQvgaVideoFragment;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    const v0, 0x7f0e0042

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/CallCardQvgaVideoFragment;->mPrimaryName:Landroid/widget/TextView;

    const v0, 0x7f0e022c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/CallCardQvgaVideoFragment;->mFarEndContainterTemplate:Landroid/view/ViewGroup;

    const v0, 0x7f0e022e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/CallCardQvgaVideoFragment;->mFarEndContainter:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/incallui/CallCardQvgaVideoFragment;->mFarEndContainterTemplate:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/incallui/CallCardQvgaVideoFragment;->mFarEndContainter:Landroid/view/ViewGroup;

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/CallCardQvgaVideoFragment;->copyParams(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    const v0, 0x7f0e023a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/CallCardQvgaVideoFragment;->mNearEndContainterTemplate:Landroid/view/ViewGroup;

    const v0, 0x7f0e023b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/CallCardQvgaVideoFragment;->mNearEndContainter:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/incallui/CallCardQvgaVideoFragment;->mNearEndContainterTemplate:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/incallui/CallCardQvgaVideoFragment;->mNearEndContainter:Landroid/view/ViewGroup;

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/CallCardQvgaVideoFragment;->copyParams(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    const v0, 0x7f0e0239

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/CallCardQvgaVideoFragment;->mIncomingContainterTemplate:Landroid/view/ViewGroup;

    const v0, 0x7f0e024e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/CallCardQvgaVideoFragment;->mOutgoingContainterTemplate:Landroid/view/ViewGroup;

    const v0, 0x7f0e022f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/TextureView;

    iput-object v0, p0, Lcom/android/incallui/CallCardQvgaVideoFragment;->mFarEndView:Landroid/view/TextureView;

    const v0, 0x7f0e022d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/CallCardQvgaVideoFragment;->mFarEndContainterResizeTemplate:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/incallui/CallCardQvgaVideoFragment;->mFarEndView:Landroid/view/TextureView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallCardQvgaVideoFragment;->mFarEndView:Landroid/view/TextureView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, p0, Lcom/android/incallui/CallCardQvgaVideoFragment;->mFarEndView:Landroid/view/TextureView;

    invoke-virtual {v0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    :cond_0
    const v0, 0x7f0e023c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/TextureView;

    iput-object v0, p0, Lcom/android/incallui/CallCardQvgaVideoFragment;->mNearEndView:Landroid/view/TextureView;

    iget-object v0, p0, Lcom/android/incallui/CallCardQvgaVideoFragment;->mNearEndView:Landroid/view/TextureView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/CallCardQvgaVideoFragment;->mNearEndView:Landroid/view/TextureView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, p0, Lcom/android/incallui/CallCardQvgaVideoFragment;->mNearEndView:Landroid/view/TextureView;

    invoke-virtual {v0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    :cond_1
    const v0, 0x7f0e0246

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/incallui/CallCardQvgaVideoFragment;->mIncomingHideButton:Landroid/widget/ToggleButton;

    iget-object v0, p0, Lcom/android/incallui/CallCardQvgaVideoFragment;->mIncomingHideButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/CallCardQvgaVideoFragment;->mIncomingHideButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/CallCardQvgaVideoFragment;->mIncomingHideButton:Landroid/widget/ToggleButton;

    new-instance v1, Lcom/android/incallui/SmallerHitTargetTouchListener;

    invoke-direct {v1}, Lcom/android/incallui/SmallerHitTargetTouchListener;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_2
    const v0, 0x7f0e024a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/CallCardQvgaVideoFragment;->mTouchBackground:Landroid/view/View;

    const v0, 0x7f0e024b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/CallCardQvgaVideoFragment;->mBigTouchArea:Landroid/view/View;

    const v0, 0x7f0e024d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/CallCardQvgaVideoFragment;->mSmallTouchArea:Landroid/view/View;

    const v0, 0x7f0e024c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/CallCardQvgaVideoFragment;->mResizedTouchArea:Landroid/view/View;

    const v0, 0x7f0e0230

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/incallui/CallCardQvgaVideoFragment;->mPreparingAnimation:Landroid/widget/RelativeLayout;

    const v0, 0x7f0e0231

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/incallui/CallCardQvgaVideoFragment;->mPreparingAnimationImage:Landroid/widget/ProgressBar;

    const v0, 0x7f0e0232

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/CallCardQvgaVideoFragment;->mPreparingAnimationText:Landroid/widget/TextView;

    const v0, 0x7f0e0234

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/CallCardQvgaVideoFragment;->mFarEndPhoto:Landroid/widget/ImageView;

    const v0, 0x7f0e004b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/CallCardQvgaVideoFragment;->mCallerInfoPhoto:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/incallui/CallCardQvgaVideoFragment;->mCallerInfoPhoto:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->mPhoto:Landroid/widget/ImageView;

    const-string v0, "cnap_supplementary_service"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f0e020a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/CallCardQvgaVideoFragment;->mPrimaryCnapNameContainer:Landroid/view/View;

    const v0, 0x7f0e020b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/CallCardQvgaVideoFragment;->mPrimaryCnapName:Landroid/widget/TextView;

    :cond_3
    const-string v0, "cdnip_supplementary_service"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x7f0e020c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/CallCardQvgaVideoFragment;->mPrimaryCdnipNumber:Landroid/widget/TextView;

    :cond_4
    const v0, 0x7f0e01fc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/CallCardQvgaVideoFragment;->mElapsedTime:Landroid/widget/TextView;

    const v0, 0x7f0e0043

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/CallCardQvgaVideoFragment;->mVideoCallStateLabel:Landroid/widget/TextView;

    const v0, 0x7f0e0240

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/CallCardQvgaVideoFragment;->mNearEndSwitchAnimationView:Landroid/widget/ImageView;

    const v0, 0x7f0e0236

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/CallCardQvgaVideoFragment;->mFarEndCaptureAnimatinoView:Landroid/view/View;

    const v0, 0x7f0e0241

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/CallCardQvgaVideoFragment;->mNearEndCaptureAnimatinoView:Landroid/view/View;

    const-string v0, "prohibit_chattering"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const v0, 0x7f0e0233

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/CallCardQvgaVideoFragment;->mFarEndDocomoImage:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/incallui/CallCardQvgaVideoFragment;->mFarEndDocomoImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/CallCardQvgaVideoFragment;->mFarEndDocomoImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_5
    const-string v0, "camera_fail_image"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const v0, 0x7f0e023f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/CallCardQvgaVideoFragment;->mNearEndDocomoImage:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/incallui/CallCardQvgaVideoFragment;->mNearEndDocomoImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/android/incallui/CallCardQvgaVideoFragment;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/vt/VideoCallManager;->getAllowCamera()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/incallui/CallCardQvgaVideoFragment;->mNearEndDocomoImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_6
    :goto_0
    const-string v0, "show_audio_codec_amr_wb"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const v0, 0x7f0e01f9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/CallCardQvgaVideoFragment;->mHighQualitySoundText:Landroid/widget/TextView;

    :cond_7
    invoke-direct {p0}, Lcom/android/incallui/CallCardQvgaVideoFragment;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/vt/VideoCallManager;->isShowMe()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-direct {p0}, Lcom/android/incallui/CallCardQvgaVideoFragment;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/vt/VideoCallManager;->sendStillImage()V

    :cond_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/android/incallui/CallCardQvgaVideoFragment;->mNearEndDocomoImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setCallState(ILcom/android/services/telephony/common/Call$DisconnectCause;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 5

    const/4 v2, 0x0

    invoke-super/range {p0 .. p5}, Lcom/android/incallui/CallCardVideoFragment;->setCallState(ILcom/android/services/telephony/common/Call$DisconnectCause;ZLjava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCallState...state ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    invoke-direct {p0}, Lcom/android/incallui/CallCardQvgaVideoFragment;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/CallCardQvgaVideoFragment;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/vt/VideoCallManager;->isFarFrameReady()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/CallCardVideoFragment;->updateFarEndPreparingAnimationImage(Z)V

    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isHDVideoQvgaLandCall()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_1
    const-string v0, "feature_ktt"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallCommandClient;->isDisplayBitrate()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v3, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    const-class v4, Lcom/android/incallui/service/DisplayBitratePopupService;

    invoke-direct {v3, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v3}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/CallCardQvgaVideoFragment;->mNearEndContainter:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0d00a5

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0d00a6

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/android/incallui/CallCardQvgaVideoFragment;->mNearEndContainter:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/incallui/CallCardVideoFragment;->updateBgColorForCallState(I)V

    invoke-virtual {p0, p1}, Lcom/android/incallui/CallCardQvgaVideoFragment;->updatePrimaryCallBanner(I)V

    invoke-virtual {p0, p1}, Lcom/android/incallui/CallCardVideoFragment;->updatePrimaryName(I)V

    invoke-virtual {p0, p1}, Lcom/android/incallui/CallCardVideoFragment;->updatePrimaryCallStateContainer(I)V

    invoke-virtual {p0, p1}, Lcom/android/incallui/CallCardVideoFragment;->updateVideoCallStateLabel(I)V

    invoke-virtual {p0}, Lcom/android/incallui/CallCardQvgaVideoFragment;->updatePhotoHandle()V

    const-string v0, "prohibit_chattering"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, p1}, Lcom/android/incallui/CallCardVideoFragment;->updateNoVideoImage(I)V

    :cond_4
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEasyModeOn()Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x3

    if-ne p1, v0, :cond_5

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/incallui/CallCardVideoFragment;->showIncomingHideButton(Z)V

    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/incallui/CallCardVideoFragment;->updateSurfaceViewVisibility(I)V

    return-void

    :cond_5
    move v0, v2

    goto :goto_0

    :cond_6
    invoke-virtual {p0, v2}, Lcom/android/incallui/CallCardVideoFragment;->showIncomingHideButton(Z)V

    goto :goto_1
.end method

.method public showHighQualitySoundText(Z)V
    .locals 8

    const/4 v3, -0x2

    const/high16 v6, 0x3f800000

    const/4 v5, 0x0

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/incallui/CallCardQvgaVideoFragment;->mHighQualitySoundText:Landroid/widget/TextView;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "showHighQualitySoundText, show: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/incallui/CallCardQvgaVideoFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/android/incallui/CallCardQvgaVideoFragment;->mVideoCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz p1, :cond_1

    move v2, v3

    :goto_1
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eqz p1, :cond_2

    :goto_2
    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eqz p1, :cond_3

    move v2, v5

    :goto_3
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    if-eqz p1, :cond_4

    :goto_4
    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v2, p0, Lcom/android/incallui/CallCardQvgaVideoFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/android/incallui/CallCardQvgaVideoFragment;->mVideoCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p1, :cond_5

    iget-object v2, p0, Lcom/android/incallui/CallCardQvgaVideoFragment;->mHighQualitySoundText:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    move v2, v4

    goto :goto_1

    :cond_2
    move v3, v4

    goto :goto_2

    :cond_3
    move v2, v6

    goto :goto_3

    :cond_4
    move v5, v6

    goto :goto_4

    :cond_5
    iget-object v2, p0, Lcom/android/incallui/CallCardQvgaVideoFragment;->mHighQualitySoundText:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public showNearEndDocomoImage()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/CallCardQvgaVideoFragment;->mNearEndDocomoImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const-string v0, "NearEnd no_video imageview visible :  QVGA case"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/BaseFragment;->log(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/CallCardQvgaVideoFragment;->mNearEndDocomoImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected updatePhotoHandle()V
    .locals 6

    const/16 v5, 0x8

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getFirstCallState()I

    move-result v2

    if-nez v0, :cond_0

    if-eqz v1, :cond_4

    :cond_0
    iget-object v3, p0, Lcom/android/incallui/CallCardFragment;->mPhoto:Landroid/widget/ImageView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/incallui/CallCardQvgaVideoFragment;->mCallerInfoPhoto:Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/incallui/CallCardFragment;->mPhoto:Landroid/widget/ImageView;

    :cond_1
    iget-object v3, p0, Lcom/android/incallui/CallCardQvgaVideoFragment;->mCallerInfoPhoto:Landroid/widget/ImageView;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/incallui/CallCardQvgaVideoFragment;->mCallerInfoPhoto:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    iget-object v3, p0, Lcom/android/incallui/CallCardQvgaVideoFragment;->mFarEndPhoto:Landroid/widget/ImageView;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/incallui/CallCardQvgaVideoFragment;->mFarEndPhoto:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIncomingMissedCall()Z

    move-result v3

    if-nez v3, :cond_5

    const/4 v3, 0x1

    if-eq v2, v3, :cond_5

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIncomingRejectedCall()Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_5
    iget-object v3, p0, Lcom/android/incallui/CallCardQvgaVideoFragment;->mCallerInfoPhoto:Landroid/widget/ImageView;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/incallui/CallCardQvgaVideoFragment;->mCallerInfoPhoto:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_6
    iget-object v3, p0, Lcom/android/incallui/CallCardQvgaVideoFragment;->mFarEndPhoto:Landroid/widget/ImageView;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/incallui/CallCardQvgaVideoFragment;->mFarEndPhoto:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_7
    iget-object v3, p0, Lcom/android/incallui/CallCardQvgaVideoFragment;->mCallerInfoPhoto:Landroid/widget/ImageView;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/incallui/CallCardQvgaVideoFragment;->mCallerInfoPhoto:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_8
    iget-object v3, p0, Lcom/android/incallui/CallCardQvgaVideoFragment;->mFarEndPhoto:Landroid/widget/ImageView;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/incallui/CallCardQvgaVideoFragment;->mFarEndPhoto:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public updatePrimaryCallBanner(I)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/incallui/CallCardQvgaVideoFragment;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIncomingMissedCall()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const-string v0, "volte_jpn_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIncomingRejectedCall()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/CallCardQvgaVideoFragment;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_3
    packed-switch p1, :pswitch_data_0

    iget-object v0, p0, Lcom/android/incallui/CallCardQvgaVideoFragment;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallCardQvgaVideoFragment;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const-string v0, "ims_ui_for_kor"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-interface {v0}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->updateSwitchButtonLayout()V

    goto :goto_0

    :pswitch_0
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isHDVideoQvgaLandCall()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/CallCardQvgaVideoFragment;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    const-string v0, "ims_ui_for_kor"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-interface {v0}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->updateSwitchButtonLayout()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public updatePrimaryCallBannerLayout(I)V
    .locals 11

    const v10, 0x7f0d009d

    const/4 v9, 0x3

    const v6, 0x7f0d00b9

    const/4 v8, -0x1

    iget-object v5, p0, Lcom/android/incallui/CallCardQvgaVideoFragment;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/incallui/CallCardQvgaVideoFragment;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-ne p1, v9, :cond_5

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v5, "cnap_supplementary_service"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/incallui/CallCardQvgaVideoFragment;->mPrimaryCnapName:Landroid/widget/TextView;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/incallui/CallCardQvgaVideoFragment;->mPrimaryCnapName:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v3, 0x1

    :cond_0
    const-string v5, "cdnip_supplementary_service"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/incallui/CallCardQvgaVideoFragment;->mPrimaryCdnipNumber:Landroid/widget/TextView;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/incallui/CallCardQvgaVideoFragment;->mPrimaryCdnipNumber:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v2, 0x1

    :cond_1
    if-eqz v3, :cond_4

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d00c1

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_0
    iget-object v5, p0, Lcom/android/incallui/CallCardQvgaVideoFragment;->mPrimaryCallStateContainer:Landroid/view/ViewGroup;

    if-eqz v5, :cond_2

    const-string v5, "volte_jpn_orientation_feature"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    iput v5, p0, Lcom/android/incallui/CallCardQvgaVideoFragment;->mOrientation:I

    iget-object v5, p0, Lcom/android/incallui/CallCardQvgaVideoFragment;->mPrimaryCallStateContainer:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v5, p0, Lcom/android/incallui/CallCardQvgaVideoFragment;->mOrientation:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_b

    if-ne p1, v9, :cond_a

    iput v8, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v8, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    :goto_1
    iget-object v5, p0, Lcom/android/incallui/CallCardQvgaVideoFragment;->mPrimaryCallStateContainer:Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    iget-object v5, p0, Lcom/android/incallui/CallCardQvgaVideoFragment;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    invoke-virtual {v5, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    return-void

    :cond_4
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d00c0

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    :cond_5
    const/4 v5, 0x5

    if-eq p1, v5, :cond_6

    const/16 v5, 0x14

    if-ne p1, v5, :cond_9

    :cond_6
    const/4 v1, 0x0

    const-string v5, "ims_call_message"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/incallui/CallCardQvgaVideoFragment;->mPrimaryCnapName:Landroid/widget/TextView;

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/incallui/CallCardQvgaVideoFragment;->mPrimaryCnapName:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    const/4 v1, 0x1

    :cond_7
    if-eqz v1, :cond_8

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d00c9

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    add-int/2addr v5, v6

    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    :cond_8
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto/16 :goto_1

    :cond_b
    iput v8, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v8, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto/16 :goto_1
.end method
