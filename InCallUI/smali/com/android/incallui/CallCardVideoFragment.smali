.class public Lcom/android/incallui/CallCardVideoFragment;
.super Lcom/android/incallui/CallCardFragment;
.source "CallCardVideoFragment.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/incallui/vt/VTStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/CallCardVideoFragment$CameraPreviewDragShadowBuilder;,
        Lcom/android/incallui/CallCardVideoFragment$CameraPreviewTouchListerner;,
        Lcom/android/incallui/CallCardVideoFragment$CameraFarTouchListerner;,
        Lcom/android/incallui/CallCardVideoFragment$CameraPreviewDragListener;,
        Lcom/android/incallui/CallCardVideoFragment$DefaultImageTimer;
    }
.end annotation


# static fields
.field private static SRC_TAGS:Ljava/lang/String;


# instance fields
.field private final HIDE_INCALL_BANNER_DELAY:I

.field public final MEMO_DURING_CALL:I

.field private isShowingPreparingAnimation:Z

.field private isSwapClicked:Z

.field private mBigTouchArea:Landroid/view/View;

.field private mBottomOffsetForDrag:I

.field private mCallBanner:Landroid/view/ViewGroup;

.field private mCallerInfoPhoto:Landroid/widget/ImageView;

.field private mCameraFarTouchListerner:Lcom/android/incallui/CallCardVideoFragment$CameraFarTouchListerner;

.field private mCameraPreviewTouchListerner:Lcom/android/incallui/CallCardVideoFragment$CameraPreviewTouchListerner;

.field private mContactImage:Landroid/widget/ImageView;

.field private mDivider:Landroid/view/View;

.field private mElapsedTime:Landroid/widget/TextView;

.field private mFarEndCaptureAnimatinoView:Landroid/view/View;

.field private mFarEndContainter:Landroid/view/ViewGroup;

.field private mFarEndContainterResizeTemplate:Landroid/view/ViewGroup;

.field private mFarEndContainterTemplate:Landroid/view/ViewGroup;

.field private mFarEndDocomoImage:Landroid/widget/ImageView;

.field private mFarEndModify:Landroid/widget/ImageView;

.field private mFarEndPhoto:Landroid/widget/ImageView;

.field private mFarEndSurface:Landroid/graphics/SurfaceTexture;

.field private mFarEndView:Landroid/view/TextureView;

.field private mHandler:Landroid/os/Handler;

.field private mHighQualitySoundText:Landroid/widget/TextView;

.field private mIncomingContainterTemplate:Landroid/view/ViewGroup;

.field private mIncomingHideButton:Landroid/widget/ToggleButton;

.field private mIndicatorArea:Landroid/view/ViewGroup;

.field private mIsCameraViewMoved:Z

.field private mIsHold:Z

.field private mMergeBtn:Landroid/view/View;

.field private mModifyRequestLayout:Landroid/widget/RelativeLayout;

.field private mModifyText:Landroid/widget/TextView;

.field private mNearEndCaptureAnimatinoView:Landroid/view/View;

.field private mNearEndContainter:Landroid/view/ViewGroup;

.field private mNearEndContainterTemplate:Landroid/view/ViewGroup;

.field private mNearEndDocomoImage:Landroid/widget/ImageView;

.field private mNearEndModify:Landroid/widget/ImageView;

.field private mNearEndSurface:Landroid/graphics/SurfaceTexture;

.field private mNearEndSwitchAnimationView:Landroid/widget/ImageView;

.field private mNearEndView:Landroid/view/TextureView;

.field private mOrientation:I

.field private mOutgoingContainterTemplate:Landroid/view/ViewGroup;

.field private mPreparingAnimation:Landroid/widget/RelativeLayout;

.field private mPreparingAnimationImage:Landroid/widget/ProgressBar;

.field private mPreparingAnimationText:Landroid/widget/TextView;

.field private mPrevActiveCallId:I

.field private mPrevActiveCallState:I

.field private mPrevActiveCallType:I

.field private mPrimaryCallBanner:Landroid/view/ViewGroup;

.field private mPrimaryCallStateContainer:Landroid/view/ViewGroup;

.field private mPrimaryCdnipNumber:Landroid/widget/TextView;

.field private mPrimaryCnapName:Landroid/widget/TextView;

.field private mPrimaryCnapNameContainer:Landroid/view/View;

.field private mPrimaryName:Landroid/widget/TextView;

.field private mPrimaryNameForSwapVT:Ljava/lang/String;

.field private mProfileImage:Landroid/widget/ImageView;

.field private mResizedTouchArea:Landroid/view/View;

.field private mSecondaryCallBanner:Landroid/view/View;

.field private mSecondaryCallBannerLayout:Landroid/view/View;

.field private mSecondaryCallBtnContainer:Landroid/view/View;

.field private mSecondaryControlBtnContainer:Landroid/view/View;

.field private mSecondaryInfoContainer:Landroid/view/View;

.field private mSmallTouchArea:Landroid/view/View;

.field private mSwapBtn:Landroid/view/View;

.field private mSwapBtnText:Landroid/view/View;

.field private mToggleTouchListener:Landroid/view/View$OnTouchListener;

.field private mTouchBackground:Landroid/view/View;

.field private mUpgradeDowngradeButton:Landroid/widget/ImageButton;

.field mVideoCallManager:Lcom/android/incallui/vt/VideoCallManager;

.field private mVideoCallStateLabel:Landroid/widget/TextView;

.field private mVideoContainer:Landroid/view/ViewGroup;

.field private mVideoTouchListener:Landroid/view/View$OnTouchListener;

.field private mZoomed:Z

.field private previousDist:I

.field private showImgTimer:Lcom/android/incallui/CallCardVideoFragment$DefaultImageTimer;

.field private zoomGestureState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "%s"

    sput-object v0, Lcom/android/incallui/CallCardVideoFragment;->SRC_TAGS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/incallui/CallCardFragment;-><init>()V

    iput-object v1, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndCaptureAnimatinoView:Landroid/view/View;

    iput-object v1, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndCaptureAnimatinoView:Landroid/view/View;

    iput-object v1, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndView:Landroid/view/TextureView;

    iput-object v1, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndSurface:Landroid/graphics/SurfaceTexture;

    iput-object v1, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndView:Landroid/view/TextureView;

    iput-object v1, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndSurface:Landroid/graphics/SurfaceTexture;

    iput-boolean v2, p0, Lcom/android/incallui/CallCardVideoFragment;->isShowingPreparingAnimation:Z

    iput-boolean v2, p0, Lcom/android/incallui/CallCardVideoFragment;->isSwapClicked:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mPrimaryNameForSwapVT:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/incallui/CallCardVideoFragment;->mVideoCallManager:Lcom/android/incallui/vt/VideoCallManager;

    iput-object v1, p0, Lcom/android/incallui/CallCardVideoFragment;->mHighQualitySoundText:Landroid/widget/TextView;

    iput-boolean v2, p0, Lcom/android/incallui/CallCardVideoFragment;->mIsCameraViewMoved:Z

    iput-object v1, p0, Lcom/android/incallui/CallCardVideoFragment;->mCameraPreviewTouchListerner:Lcom/android/incallui/CallCardVideoFragment$CameraPreviewTouchListerner;

    iput-object v1, p0, Lcom/android/incallui/CallCardVideoFragment;->mCameraFarTouchListerner:Lcom/android/incallui/CallCardVideoFragment$CameraFarTouchListerner;

    iput v3, p0, Lcom/android/incallui/CallCardVideoFragment;->mPrevActiveCallType:I

    iput v2, p0, Lcom/android/incallui/CallCardVideoFragment;->mPrevActiveCallState:I

    iput v3, p0, Lcom/android/incallui/CallCardVideoFragment;->mPrevActiveCallId:I

    iput-boolean v2, p0, Lcom/android/incallui/CallCardVideoFragment;->mIsHold:Z

    const/16 v0, 0x12e

    iput v0, p0, Lcom/android/incallui/CallCardVideoFragment;->MEMO_DURING_CALL:I

    iput v2, p0, Lcom/android/incallui/CallCardVideoFragment;->zoomGestureState:I

    iput v2, p0, Lcom/android/incallui/CallCardVideoFragment;->previousDist:I

    iput-boolean v2, p0, Lcom/android/incallui/CallCardVideoFragment;->mZoomed:Z

    const/16 v0, 0x1388

    iput v0, p0, Lcom/android/incallui/CallCardVideoFragment;->HIDE_INCALL_BANNER_DELAY:I

    new-instance v0, Lcom/android/incallui/CallCardVideoFragment$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/CallCardVideoFragment$1;-><init>(Lcom/android/incallui/CallCardVideoFragment;)V

    iput-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/incallui/CallCardVideoFragment$2;

    invoke-direct {v0, p0}, Lcom/android/incallui/CallCardVideoFragment$2;-><init>(Lcom/android/incallui/CallCardVideoFragment;)V

    iput-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mVideoTouchListener:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcom/android/incallui/CallCardVideoFragment$3;

    invoke-direct {v0, p0}, Lcom/android/incallui/CallCardVideoFragment$3;-><init>(Lcom/android/incallui/CallCardVideoFragment;)V

    iput-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mToggleTouchListener:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method static synthetic access$1000(Lcom/android/incallui/CallCardVideoFragment;)Landroid/view/View;
    .locals 1
    .param p0    # Lcom/android/incallui/CallCardVideoFragment;

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mSmallTouchArea:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/incallui/CallCardVideoFragment;)Landroid/view/View;
    .locals 1
    .param p0    # Lcom/android/incallui/CallCardVideoFragment;

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mResizedTouchArea:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/incallui/CallCardVideoFragment;)Landroid/view/View;
    .locals 1
    .param p0    # Lcom/android/incallui/CallCardVideoFragment;

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mBigTouchArea:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/incallui/CallCardVideoFragment;)Lcom/android/incallui/vt/VideoCallManager;
    .locals 1
    .param p0    # Lcom/android/incallui/CallCardVideoFragment;

    invoke-direct {p0}, Lcom/android/incallui/CallCardVideoFragment;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/incallui/CallCardVideoFragment;)Landroid/view/ViewGroup;
    .locals 1
    .param p0    # Lcom/android/incallui/CallCardVideoFragment;

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndContainter:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/incallui/CallCardVideoFragment;)Landroid/view/TextureView;
    .locals 1
    .param p0    # Lcom/android/incallui/CallCardVideoFragment;

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndView:Landroid/view/TextureView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/incallui/CallCardVideoFragment;)Landroid/view/TextureView;
    .locals 1
    .param p0    # Lcom/android/incallui/CallCardVideoFragment;

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndView:Landroid/view/TextureView;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/incallui/CallCardVideoFragment;)I
    .locals 1
    .param p0    # Lcom/android/incallui/CallCardVideoFragment;

    iget v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mOrientation:I

    return v0
.end method

.method static synthetic access$1800(Lcom/android/incallui/CallCardVideoFragment;)I
    .locals 1
    .param p0    # Lcom/android/incallui/CallCardVideoFragment;

    iget v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mBottomOffsetForDrag:I

    return v0
.end method

.method static synthetic access$1900(Lcom/android/incallui/CallCardVideoFragment;)Landroid/view/ViewGroup;
    .locals 1
    .param p0    # Lcom/android/incallui/CallCardVideoFragment;

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndContainterTemplate:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/incallui/CallCardVideoFragment;Z)Z
    .locals 0
    .param p0    # Lcom/android/incallui/CallCardVideoFragment;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/incallui/CallCardVideoFragment;->mIsCameraViewMoved:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/incallui/CallCardVideoFragment;Lcom/android/services/telephony/common/Call;)Z
    .locals 1
    .param p0    # Lcom/android/incallui/CallCardVideoFragment;
    .param p1    # Lcom/android/services/telephony/common/Call;

    invoke-direct {p0, p1}, Lcom/android/incallui/CallCardVideoFragment;->isCameraOffTx(Lcom/android/services/telephony/common/Call;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/android/incallui/CallCardVideoFragment;)Z
    .locals 1
    .param p0    # Lcom/android/incallui/CallCardVideoFragment;

    iget-boolean v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mZoomed:Z

    return v0
.end method

.method static synthetic access$2202(Lcom/android/incallui/CallCardVideoFragment;Z)Z
    .locals 0
    .param p0    # Lcom/android/incallui/CallCardVideoFragment;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/incallui/CallCardVideoFragment;->mZoomed:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/android/incallui/CallCardVideoFragment;)I
    .locals 1
    .param p0    # Lcom/android/incallui/CallCardVideoFragment;

    iget v0, p0, Lcom/android/incallui/CallCardVideoFragment;->zoomGestureState:I

    return v0
.end method

.method static synthetic access$2302(Lcom/android/incallui/CallCardVideoFragment;I)I
    .locals 0
    .param p0    # Lcom/android/incallui/CallCardVideoFragment;
    .param p1    # I

    iput p1, p0, Lcom/android/incallui/CallCardVideoFragment;->zoomGestureState:I

    return p1
.end method

.method static synthetic access$2400(Lcom/android/incallui/CallCardVideoFragment;)I
    .locals 1
    .param p0    # Lcom/android/incallui/CallCardVideoFragment;

    iget v0, p0, Lcom/android/incallui/CallCardVideoFragment;->previousDist:I

    return v0
.end method

.method static synthetic access$2402(Lcom/android/incallui/CallCardVideoFragment;I)I
    .locals 0
    .param p0    # Lcom/android/incallui/CallCardVideoFragment;
    .param p1    # I

    iput p1, p0, Lcom/android/incallui/CallCardVideoFragment;->previousDist:I

    return p1
.end method

.method static synthetic access$2500(Lcom/android/incallui/CallCardVideoFragment;Landroid/view/MotionEvent;)F
    .locals 1
    .param p0    # Lcom/android/incallui/CallCardVideoFragment;
    .param p1    # Landroid/view/MotionEvent;

    invoke-direct {p0, p1}, Lcom/android/incallui/CallCardVideoFragment;->spacing(Landroid/view/MotionEvent;)F

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/incallui/CallCardVideoFragment;)Z
    .locals 1
    .param p0    # Lcom/android/incallui/CallCardVideoFragment;

    invoke-direct {p0}, Lcom/android/incallui/CallCardVideoFragment;->isPossibleToHideBanner()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/incallui/CallCardVideoFragment;)Landroid/os/Handler;
    .locals 1
    .param p0    # Lcom/android/incallui/CallCardVideoFragment;

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/incallui/CallCardVideoFragment;)Landroid/view/ViewGroup;
    .locals 1
    .param p0    # Lcom/android/incallui/CallCardVideoFragment;

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/incallui/CallCardVideoFragment;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0    # Lcom/android/incallui/CallCardVideoFragment;

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mModifyRequestLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/incallui/CallCardVideoFragment;)Lcom/android/incallui/CallCardVideoFragment$DefaultImageTimer;
    .locals 1
    .param p0    # Lcom/android/incallui/CallCardVideoFragment;

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->showImgTimer:Lcom/android/incallui/CallCardVideoFragment$DefaultImageTimer;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/incallui/CallCardVideoFragment;)Landroid/widget/ImageView;
    .locals 1
    .param p0    # Lcom/android/incallui/CallCardVideoFragment;

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndDocomoImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method private copyParams(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V
    .locals 1
    .param p1    # Landroid/view/ViewGroup;
    .param p2    # Landroid/view/ViewGroup;

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private getPhotoDrawable(Lcom/android/services/telephony/common/Call;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1    # Lcom/android/services/telephony/common/Call;

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/incallui/ContactInfoCache;->getInfo(I)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v2, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isPersonalPhotoAvailable:Z

    if-eqz v2, :cond_0

    iget-object v1, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mVideoCallManager:Lcom/android/incallui/vt/VideoCallManager;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/vt/VideoCallManager;->getInstance()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mVideoCallManager:Lcom/android/incallui/vt/VideoCallManager;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mVideoCallManager:Lcom/android/incallui/vt/VideoCallManager;

    return-object v0
.end method

.method private isCameraOffRx(Lcom/android/services/telephony/common/Call;)Z
    .locals 2
    .param p1    # Lcom/android/services/telephony/common/Call;

    const/4 v1, 0x2

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getType()I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->getVideoResponseType()I

    move-result v0

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isCameraOffTx(Lcom/android/services/telephony/common/Call;)Z
    .locals 2
    .param p1    # Lcom/android/services/telephony/common/Call;

    const/4 v0, 0x1

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getType()I

    move-result v1

    if-ne v1, v0, :cond_0

    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallButtonPresenter;->getVideoRequestType()I

    move-result v1

    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isConference(Lcom/android/services/telephony/common/Call;)Z
    .locals 1
    .param p1    # Lcom/android/services/telephony/common/Call;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->isConferenceCall()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isGenericConference(Lcom/android/services/telephony/common/Call;)Z
    .locals 1
    .param p1    # Lcom/android/services/telephony/common/Call;

    if-eqz p1, :cond_0

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Lcom/android/services/telephony/common/Call;->can(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPossibleToHideBanner()Z
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/services/telephony/common/Call;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getInCallMenu()Lcom/android/incallui/InCallMenu;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getInCallMenu()Lcom/android/incallui/InCallMenu;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallMenu;->isMenuOpen()Z

    move-result v3

    if-eq v3, v1, :cond_1

    :cond_0
    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->isDialpadVisible()Z

    move-result v0

    if-ne v0, v1, :cond_3

    :cond_1
    move v0, v2

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isPossibleToHideBanner ? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    return v0

    :cond_2
    const-string v0, "isPossibleToHideBanner : Activity is null!"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move v0, v2

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private isVideoShareRx(Lcom/android/services/telephony/common/Call;)Z
    .locals 2
    .param p1    # Lcom/android/services/telephony/common/Call;

    const/4 v1, 0x2

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getType()I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->getVideoResponseType()I

    move-result v0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isVideoShareTx(Lcom/android/services/telephony/common/Call;)Z
    .locals 2
    .param p1    # Lcom/android/services/telephony/common/Call;

    const/4 v0, 0x1

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getType()I

    move-result v1

    if-ne v1, v0, :cond_0

    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallButtonPresenter;->getVideoRequestType()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resizeAndChangeVideoLocation()V
    .locals 4

    invoke-direct {p0}, Lcom/android/incallui/CallCardVideoFragment;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/vt/VideoCallManager;->isSurfaceViewSwipe()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resizeSurfaceView : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/incallui/BaseFragment;->log(Ljava/lang/String;)V

    const/16 v1, 0xfa

    invoke-static {}, Lcom/android/incallui/CallCardPresenter;->getInstance()Lcom/android/incallui/CallCardPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallCardPresenter;->getResizeChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndContainter:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndContainter:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndContainterResizeTemplate:Landroid/view/ViewGroup;

    invoke-static {v0, v2, v3, v1}, Lcom/android/incallui/AnimationUtils$Move;->move(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndContainter:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndContainter:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndContainterTemplate:Landroid/view/ViewGroup;

    invoke-static {v0, v2, v3, v1}, Lcom/android/incallui/AnimationUtils$Move;->move(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndContainter:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndContainter:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndContainter:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndContainter:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndContainterResizeTemplate:Landroid/view/ViewGroup;

    invoke-static {v0, v2, v3, v1}, Lcom/android/incallui/AnimationUtils$Move;->move(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndContainter:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndContainter:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndContainterTemplate:Landroid/view/ViewGroup;

    invoke-static {v0, v2, v3, v1}, Lcom/android/incallui/AnimationUtils$Move;->move(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndContainter:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndContainter:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndContainter:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndContainter:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndContainterTemplate:Landroid/view/ViewGroup;

    invoke-static {v0, v2, v3, v1}, Lcom/android/incallui/AnimationUtils$Move;->move(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndContainter:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndContainter:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndContainterTemplate:Landroid/view/ViewGroup;

    invoke-static {v0, v2, v3, v1}, Lcom/android/incallui/AnimationUtils$Move;->move(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndContainter:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndContainter:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndContainter:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndContainter:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndContainterTemplate:Landroid/view/ViewGroup;

    invoke-static {v0, v2, v3, v1}, Lcom/android/incallui/AnimationUtils$Move;->move(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndContainter:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndContainter:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndContainterTemplate:Landroid/view/ViewGroup;

    invoke-static {v0, v2, v3, v1}, Lcom/android/incallui/AnimationUtils$Move;->move(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndContainter:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndContainter:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    goto :goto_0
.end method

.method private setCallPhoto(Landroid/widget/ImageView;Z)V
    .locals 5

    const v4, 0x7f020172

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    const-string v1, "BaseFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isConference(call) "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, v0}, Lcom/android/incallui/CallCardVideoFragment;->isConference(Lcom/android/services/telephony/common/Call;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "BaseFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isGenericConference(call) "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, v0}, Lcom/android/incallui/CallCardVideoFragment;->isGenericConference(Lcom/android/services/telephony/common/Call;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const-string v0, "BaseFragment"

    const-string v1, "mImageView is null"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/incallui/CallCardVideoFragment;->isConference(Lcom/android/services/telephony/common/Call;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "feature_ctc"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "usa_cdma_concept"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, v0}, Lcom/android/incallui/CallCardVideoFragment;->isGenericConference(Lcom/android/services/telephony/common/Call;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_2
    const-string v1, "ims_ui_for_kor"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIMSConferenceCall()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, v0}, Lcom/android/incallui/CallCardVideoFragment;->getPhotoDrawable(Lcom/android/services/telephony/common/Call;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_5

    if-nez p2, :cond_4

    const v0, 0x7f020173

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    :cond_4
    const v0, 0x7f020171

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_5
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method private setCallUnknownPhoto(Landroid/widget/ImageView;)V
    .locals 5

    const v4, 0x7f020172

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    const-string v1, "BaseFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isConference(call) "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, v0}, Lcom/android/incallui/CallCardVideoFragment;->isConference(Lcom/android/services/telephony/common/Call;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "BaseFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isGenericConference(call) "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, v0}, Lcom/android/incallui/CallCardVideoFragment;->isGenericConference(Lcom/android/services/telephony/common/Call;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const-string v0, "BaseFragment"

    const-string v1, "mImageView is null"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/incallui/CallCardVideoFragment;->isConference(Lcom/android/services/telephony/common/Call;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "feature_ctc"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "usa_cdma_concept"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, v0}, Lcom/android/incallui/CallCardVideoFragment;->isGenericConference(Lcom/android/services/telephony/common/Call;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_2
    const-string v0, "ims_ui_for_kor"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIMSConferenceCall()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_3
    const v0, 0x7f020171

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0
.end method

.method private setCamera(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mVideoCallManager:Lcom/android/incallui/vt/VideoCallManager;

    invoke-virtual {v0}, Lcom/android/incallui/vt/VideoCallManager;->getCameraState()Lcom/samsung/commonimsinterface/imscommon/CameraState;

    move-result-object v0

    const-string v1, "BaseFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setCamera] CameraState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " bStartCAM :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mVideoCallManager:Lcom/android/incallui/vt/VideoCallManager;

    invoke-virtual {v0}, Lcom/android/incallui/vt/VideoCallManager;->getCameraState()Lcom/samsung/commonimsinterface/imscommon/CameraState;

    move-result-object v0

    sget-object v1, Lcom/samsung/commonimsinterface/imscommon/CameraState;->PREVIEW_STARTED:Lcom/samsung/commonimsinterface/imscommon/CameraState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mVideoCallManager:Lcom/android/incallui/vt/VideoCallManager;

    iget-object v1, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Lcom/android/incallui/vt/VideoCallManager;->initializeCamera(Landroid/graphics/SurfaceTexture;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mVideoCallManager:Lcom/android/incallui/vt/VideoCallManager;

    invoke-virtual {v0}, Lcom/android/incallui/vt/VideoCallManager;->getCameraState()Lcom/samsung/commonimsinterface/imscommon/CameraState;

    move-result-object v0

    sget-object v1, Lcom/samsung/commonimsinterface/imscommon/CameraState;->CAMERA_CLOSED:Lcom/samsung/commonimsinterface/imscommon/CameraState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mVideoCallManager:Lcom/android/incallui/vt/VideoCallManager;

    invoke-virtual {v0}, Lcom/android/incallui/vt/VideoCallManager;->stopCameraPreview()V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mVideoCallManager:Lcom/android/incallui/vt/VideoCallManager;

    invoke-virtual {v0}, Lcom/android/incallui/vt/VideoCallManager;->closeCamera()V

    goto :goto_0
.end method

.method private setNearEndViewToDefaultPosition()V
    .locals 6

    const/4 v5, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mSecondaryCallBanner:Landroid/view/View;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mOrientation:I

    if-eq v0, v5, :cond_2

    move v0, v1

    :goto_0
    iget v2, p0, Lcom/android/incallui/CallCardVideoFragment;->mOrientation:I

    if-ne v2, v5, :cond_4

    iget v2, p0, Lcom/android/incallui/CallCardVideoFragment;->mBottomOffsetForDrag:I

    :goto_1
    iget-object v3, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndModify:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndModify:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndContainter:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int v2, v3, v2

    :goto_2
    const-string v3, "att_volte_ui"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "tmo_volte_ui"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndContainter:Landroid/view/ViewGroup;

    int-to-float v3, v0

    invoke-virtual {v1, v3}, Landroid/view/View;->setX(F)V

    iget-object v1, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndContainter:Landroid/view/ViewGroup;

    int-to-float v3, v2

    invoke-virtual {v1, v3}, Landroid/view/View;->setY(F)V

    iget-object v1, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndContainterTemplate:Landroid/view/ViewGroup;

    int-to-float v3, v0

    invoke-virtual {v1, v3}, Landroid/view/View;->setX(F)V

    iget-object v1, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndContainterTemplate:Landroid/view/ViewGroup;

    int-to-float v3, v2

    invoke-virtual {v1, v3}, Landroid/view/View;->setY(F)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setNearEndViewToDefaultPosition : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v5}, Lcom/android/incallui/BaseFragment;->log(Ljava/lang/String;Z)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v2, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndContainter:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v0, v2

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndView:Landroid/view/TextureView;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndContainter:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int v2, v3, v2

    goto :goto_2

    :cond_4
    move v2, v1

    goto :goto_1
.end method

.method private setVideoLocationInternal(ILandroid/graphics/SurfaceTexture;Landroid/view/TextureView;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVideoLocationInternal : surface - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", view - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/BaseFragment;->log(Ljava/lang/String;Z)V

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    const/16 v0, 0x8

    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/android/incallui/CallCardPresenter;->onSurfaceAvailable(ILandroid/graphics/SurfaceTexture;II)V

    goto :goto_0
.end method

.method private showPrimaryCallBanner(Z)V
    .locals 1
    .param p1    # Z

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/incallui/CallCardVideoFragment;->setPrimaryVisible(Z)V

    const-string v0, "att_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "tmo_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-interface {v0, p1}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->updateInCallButton(Z)V

    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-interface {v0, p1}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->updatePreviewEffectLayout(Z)V

    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-interface {v0, p1}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->updateSwitchButtonLayout(Z)V

    :cond_2
    return-void

    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/CallCardVideoFragment;->setPrimaryVisible(Z)V

    const-string v0, "att_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "tmo_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_4
    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-interface {v0, p1}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->updateInCallButton(Z)V

    goto :goto_0
.end method

.method private spacing(Landroid/view/MotionEvent;)F
    .locals 6
    .param p1    # Landroid/view/MotionEvent;

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float v0, v2, v3

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    sub-float v1, v2, v3

    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    invoke-static {v2}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v2

    return v2
.end method

.method private updateHoldeView(I)V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/16 v3, 0x8

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ONHOLD "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    const/4 v1, 0x7

    if-ne p1, v1, :cond_2

    iput-boolean v4, p0, Lcom/android/incallui/CallCardVideoFragment;->mIsHold:Z

    iget-object v1, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndView:Landroid/view/TextureView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndView:Landroid/view/TextureView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndModify:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndModify:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v2}, Lcom/android/incallui/CallCardVideoFragment;->setCallPhoto(Landroid/widget/ImageView;Z)V

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getType()I

    move-result v0

    if-ne v0, v5, :cond_1

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndModify:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndContainter:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndModify:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndModify:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/android/incallui/CallCardVideoFragment;->setCallUnknownPhoto(Landroid/widget/ImageView;)V

    goto :goto_0

    :cond_2
    iget-boolean v1, p0, Lcom/android/incallui/CallCardVideoFragment;->mIsHold:Z

    if-ne v1, v4, :cond_0

    iput-boolean v2, p0, Lcom/android/incallui/CallCardVideoFragment;->mIsHold:Z

    iget-object v1, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndModify:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getType()I

    move-result v1

    if-ne v1, v5, :cond_3

    iget-object v1, p0, Lcom/android/incallui/CallCardVideoFragment;->mVideoCallManager:Lcom/android/incallui/vt/VideoCallManager;

    invoke-virtual {v1}, Lcom/android/incallui/vt/VideoCallManager;->stopCameraPreview()V

    iget-object v1, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndView:Landroid/view/TextureView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndModify:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_2
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getType()I

    move-result v0

    if-ne v0, v4, :cond_4

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndModify:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndView:Landroid/view/TextureView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndModify:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v2}, Lcom/android/incallui/CallCardVideoFragment;->setCallPhoto(Landroid/widget/ImageView;Z)V

    :goto_3
    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndContainter:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/incallui/CallCardVideoFragment;->mCameraPreviewTouchListerner:Lcom/android/incallui/CallCardVideoFragment$CameraPreviewTouchListerner;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndView:Landroid/view/TextureView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndModify:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndView:Landroid/view/TextureView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3
.end method

.method private updateSecondaryCallContainer()V
    .locals 5

    const/16 v4, 0x8

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/incallui/CallCardVideoFragment;->mSecondaryInfoContainer:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/CallCardVideoFragment;->mSecondaryCallBtnContainer:Landroid/view/View;

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    const-string v1, "vzw_volte_ui"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "att_volte_ui"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "tmo_volte_ui"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getType()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getType()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_3

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/CallCardVideoFragment;->mSecondaryInfoContainer:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/CallCardVideoFragment;->mSecondaryCallBtnContainer:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v1, p0, Lcom/android/incallui/CallCardVideoFragment;->mSecondaryInfoContainer:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/CallCardVideoFragment;->mSecondaryCallBtnContainer:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateVideoBanner(I)V
    .locals 1
    .param p1    # I

    const-string v0, "att_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "tmo_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/incallui/CallCardVideoFragment;->updateVideoBannerGSM(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v0, "vzw_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/incallui/CallCardVideoFragment;->updateVideoViewCDMA(I)V

    goto :goto_0
.end method

.method private updateVideoBannerGSM(I)V
    .locals 9

    const/16 v8, 0x8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x3

    const/16 v4, 0x66

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getVideoResponseType ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallButtonPresenter;->getVideoResponseType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean v1, Lcom/android/incallui/InCallUtils;->isSessionModificationInitated:Z

    if-eq v1, v7, :cond_1

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getType()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getType()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_b

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/CallCardVideoFragment;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/CallCardVideoFragment;->mModifyRequestLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    const-string v1, "setCallState Modify photo set complete"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallButtonPresenter;->getVideoResponseType()I

    move-result v1

    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallButtonPresenter;->getVideoRequestType()I

    move-result v2

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getType()I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_7

    if-ne v2, v5, :cond_4

    iget v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mPrevActiveCallType:I

    if-eq v0, v5, :cond_4

    const-string v0, "att_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "tmo_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mModifyText:Landroid/widget/TextView;

    const v1, 0x7f090217

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mModifyText:Landroid/widget/TextView;

    const v1, 0x7f090385

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x2

    if-ne v2, v0, :cond_5

    iget v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mPrevActiveCallType:I

    if-ne v0, v5, :cond_5

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mModifyText:Landroid/widget/TextView;

    const-string v1, "Downgrade video call"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_5
    if-ne v2, v7, :cond_6

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mModifyText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f09038a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/incallui/CallCardVideoFragment;->SRC_TAGS:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/incallui/CallCardVideoFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mModifyText:Landroid/widget/TextView;

    const-string v1, "Downgrading call"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndModify:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_7
    if-ne v1, v5, :cond_9

    iget v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mPrevActiveCallType:I

    if-ne v0, v7, :cond_9

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mModifyText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090386

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/incallui/CallCardVideoFragment;->SRC_TAGS:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/incallui/CallCardVideoFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_8
    :goto_1
    const-string v0, "setCallState EVENT_MODIFYCALL_DIALOG_COMPLETE"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v6, v7}, Lcom/android/incallui/CallCardFragment;->ModifyCallDialogComplete(IZ)V

    const/16 v0, 0x4e20

    invoke-virtual {p0, v0, v6}, Lcom/android/incallui/CallCardFragment;->ModifyCallDialogComplete(IZ)V

    goto/16 :goto_0

    :cond_9
    if-ne v1, v5, :cond_a

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mModifyText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090386

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/incallui/CallCardVideoFragment;->SRC_TAGS:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/incallui/CallCardVideoFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_a
    const/4 v0, 0x2

    if-ne v1, v0, :cond_8

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mModifyText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f09038b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/incallui/CallCardVideoFragment;->SRC_TAGS:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/incallui/CallCardVideoFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_b
    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallButtonPresenter;->getVideoRequestType()I

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getType()I

    move-result v1

    if-ne v1, v7, :cond_d

    iget v1, p0, Lcom/android/incallui/CallCardVideoFragment;->mPrevActiveCallType:I

    if-ne v1, v5, :cond_d

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mModifyRequestLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mModifyText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f09038c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/incallui/CallCardVideoFragment;->SRC_TAGS:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/incallui/CallCardVideoFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    :cond_c
    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_d
    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_f

    iget v1, p0, Lcom/android/incallui/CallCardVideoFragment;->mPrevActiveCallType:I

    if-ne v1, v5, :cond_f

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mModifyRequestLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mModifyText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090378

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    :cond_e
    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_f
    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getType()I

    move-result v0

    if-ne v0, v5, :cond_11

    iget v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mPrevActiveCallType:I

    if-ne v0, v7, :cond_11

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mModifyRequestLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mModifyText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090399

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/incallui/CallCardVideoFragment;->SRC_TAGS:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/incallui/CallCardVideoFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    :cond_10
    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_11
    iget v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mPrevActiveCallState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_12

    iget v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mPrevActiveCallType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_12

    iget v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mPrevActiveCallType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_14

    :cond_12
    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mModifyRequestLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_13
    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCallState mVideoCallManager.getVideoHeld() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallCardVideoFragment;->mVideoCallManager:Lcom/android/incallui/vt/VideoCallManager;

    invoke-virtual {v1}, Lcom/android/incallui/vt/VideoCallManager;->getVideoHeld()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private updateVideoViewCDMA(I)V
    .locals 8

    const/16 v3, 0x8

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/16 v5, 0x66

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getVideoResponseType ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallButtonPresenter;->getVideoResponseType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getType()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getType()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_9

    :cond_2
    const-string v1, "setCallState Modify photo set complete"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/CallCardVideoFragment;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/CallCardVideoFragment;->mModifyRequestLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallButtonPresenter;->getVideoResponseType()I

    move-result v1

    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallButtonPresenter;->getVideoRequestType()I

    move-result v2

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getType()I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_6

    if-ne v2, v7, :cond_5

    const-string v0, "att_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "tmo_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mModifyText:Landroid/widget/TextView;

    const v1, 0x7f090217

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mModifyText:Landroid/widget/TextView;

    const v1, 0x7f090385

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_5
    if-ne v2, v6, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mModifyText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f09038a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/incallui/CallCardVideoFragment;->SRC_TAGS:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/incallui/CallCardVideoFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_6
    if-ne v1, v7, :cond_8

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mModifyText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090386

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/incallui/CallCardVideoFragment;->SRC_TAGS:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/incallui/CallCardVideoFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    :goto_1
    const-string v0, "setCallState EVENT_MODIFYCALL_DIALOG_COMPLETE"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v4, v6}, Lcom/android/incallui/CallCardFragment;->ModifyCallDialogComplete(IZ)V

    const/16 v0, 0x4e20

    invoke-virtual {p0, v0, v4}, Lcom/android/incallui/CallCardFragment;->ModifyCallDialogComplete(IZ)V

    goto/16 :goto_0

    :cond_8
    const/4 v0, 0x2

    if-ne v1, v0, :cond_7

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mModifyText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f09038b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/incallui/CallCardVideoFragment;->SRC_TAGS:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/incallui/CallCardVideoFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_9
    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallButtonPresenter;->getVideoRequestType()I

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getType()I

    move-result v1

    if-ne v1, v6, :cond_b

    iget v1, p0, Lcom/android/incallui/CallCardVideoFragment;->mPrevActiveCallType:I

    if-ne v1, v7, :cond_b

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mModifyRequestLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mModifyText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f09038c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/incallui/CallCardVideoFragment;->SRC_TAGS:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/incallui/CallCardVideoFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    :cond_a
    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v5, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_b
    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getType()I

    move-result v0

    if-ne v0, v7, :cond_d

    iget v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mPrevActiveCallType:I

    if-ne v0, v6, :cond_d

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mModifyRequestLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mModifyText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090399

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/incallui/CallCardVideoFragment;->SRC_TAGS:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/incallui/CallCardVideoFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    :cond_c
    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v5, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_d
    iget v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mPrevActiveCallState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_e

    iget v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mPrevActiveCallType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_e

    iget v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mPrevActiveCallType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_10

    :cond_e
    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mModifyRequestLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_f
    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCallState mVideoCallManager.getVideoHeld() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallCardVideoFragment;->mVideoCallManager:Lcom/android/incallui/vt/VideoCallManager;

    invoke-virtual {v1}, Lcom/android/incallui/vt/VideoCallManager;->getVideoHeld()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public changeVideoLocation(IZ)V
    .locals 9

    const/4 v8, 0x2

    const/16 v7, 0x8

    const/4 v6, 0x0

    const/4 v4, 0x1

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeVideoLocation : locationCommand - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", animate - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v4}, Lcom/android/incallui/BaseFragment;->log(Ljava/lang/String;Z)V

    if-eqz p2, :cond_24

    const-string v0, "vzw_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "att_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "tmo_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    const/16 v0, 0x3e8

    move v1, v0

    :goto_0
    invoke-direct {p0}, Lcom/android/incallui/CallCardVideoFragment;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/vt/VideoCallManager;->isSurfaceViewSwipe()Z

    move-result v0

    const/16 v3, 0x12e

    if-ne p1, v3, :cond_1

    if-eqz v0, :cond_5

    const/16 p1, 0xca

    :cond_1
    :goto_1
    const-string v0, "ims_resize_screen"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/android/incallui/CallCardPresenter;->getInstance()Lcom/android/incallui/CallCardPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallCardPresenter;->getResizeChecked()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIMSConferenceCall()Z

    move-result v0

    if-nez v0, :cond_6

    move v3, v4

    :goto_2
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIMSConferenceCall()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x64

    if-ne p1, v0, :cond_2

    const/16 p1, 0xca

    :cond_2
    sparse-switch p1, :sswitch_data_0

    :cond_3
    :goto_3
    return-void

    :cond_4
    const/16 v0, 0xfa

    move v1, v0

    goto :goto_0

    :cond_5
    const/16 p1, 0x64

    goto :goto_1

    :cond_6
    move v3, v2

    goto :goto_2

    :sswitch_0
    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v0, v4}, Lcom/android/incallui/CallCardPresenter;->setSurfaceViewSwipe(Z)V

    if-eqz v3, :cond_7

    invoke-direct {p0}, Lcom/android/incallui/CallCardVideoFragment;->resizeAndChangeVideoLocation()V

    goto :goto_3

    :cond_7
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    const-string v3, "vzw_volte_ui"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getType()I

    move-result v3

    const/4 v5, 0x4

    if-eq v3, v5, :cond_8

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getType()I

    move-result v3

    const/4 v5, 0x5

    if-ne v3, v5, :cond_b

    :cond_8
    iget-object v3, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndModify:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndModify:Landroid/widget/ImageView;

    invoke-direct {p0, v3, v2}, Lcom/android/incallui/CallCardVideoFragment;->setCallPhoto(Landroid/widget/ImageView;Z)V

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getType()I

    move-result v3

    const/4 v5, 0x5

    if-ne v3, v5, :cond_9

    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallButtonPresenter;->getVideoResponseType()I

    move-result v3

    if-ne v3, v8, :cond_9

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndModify:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndContainter:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndContainterTemplate:Landroid/view/ViewGroup;

    invoke-static {v0, v3, v4, v2}, Lcom/android/incallui/AnimationUtils$Move;->move(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    :goto_4
    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndContainter:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndContainter:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndContainterTemplate:Landroid/view/ViewGroup;

    invoke-static {v0, v2, v3, v1}, Lcom/android/incallui/AnimationUtils$Move;->move(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndContainter:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndContainter:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndContainter:Landroid/view/ViewGroup;

    invoke-virtual {v0, v6}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_3

    :cond_9
    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getType()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_a

    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->getVideoRequestType()I

    move-result v0

    if-ne v0, v4, :cond_a

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndModify:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndContainter:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndContainterTemplate:Landroid/view/ViewGroup;

    invoke-static {v0, v2, v3, v1}, Lcom/android/incallui/AnimationUtils$Move;->move(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    goto :goto_4

    :cond_a
    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndModify:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndContainter:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndContainterTemplate:Landroid/view/ViewGroup;

    invoke-static {v0, v2, v3, v1}, Lcom/android/incallui/AnimationUtils$Move;->move(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    goto :goto_4

    :cond_b
    const-string v3, "att_volte_ui"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c

    const-string v3, "tmo_volte_ui"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    :cond_c
    sget-boolean v3, Lcom/android/incallui/InCallUtils;->isSessionModificationInitated:Z

    if-eq v3, v4, :cond_d

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getType()I

    move-result v0

    const/4 v3, 0x5

    if-ne v0, v3, :cond_e

    :cond_d
    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndModify:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndModify:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v4}, Lcom/android/incallui/CallCardVideoFragment;->setCallPhoto(Landroid/widget/ImageView;Z)V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndModify:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndContainter:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndContainterTemplate:Landroid/view/ViewGroup;

    invoke-static {v0, v2, v3, v1}, Lcom/android/incallui/AnimationUtils$Move;->move(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    goto :goto_4

    :cond_e
    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndContainter:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndContainter:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndContainterTemplate:Landroid/view/ViewGroup;

    invoke-static {v0, v2, v3, v1}, Lcom/android/incallui/AnimationUtils$Move;->move(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    goto :goto_4

    :sswitch_1
    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v0, v2}, Lcom/android/incallui/CallCardPresenter;->setSurfaceViewSwipe(Z)V

    if-eqz v3, :cond_f

    invoke-direct {p0}, Lcom/android/incallui/CallCardVideoFragment;->resizeAndChangeVideoLocation()V

    goto/16 :goto_3

    :cond_f
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    const-string v3, "vzw_volte_ui"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1b

    iget-object v3, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndModify:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndContainter:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndContainter:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "changeVideoLocation : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getType()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/CallButtonPresenter;->getVideoResponseType()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/CallButtonPresenter;->getVideoRequestType()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v4}, Lcom/android/incallui/BaseFragment;->log(Ljava/lang/String;Z)V

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getType()I

    move-result v3

    if-ne v3, v8, :cond_10

    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallButtonPresenter;->getVideoResponseType()I

    move-result v3

    if-ne v3, v8, :cond_10

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndContainter:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndContainter:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndContainterTemplate:Landroid/view/ViewGroup;

    invoke-static {v0, v3, v5, v2}, Lcom/android/incallui/AnimationUtils$Move;->move(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndContainter:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndContainter:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndContainterTemplate:Landroid/view/ViewGroup;

    invoke-static {v0, v3, v5, v2}, Lcom/android/incallui/AnimationUtils$Move;->move(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndContainter:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndContainter:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndContainterTemplate:Landroid/view/ViewGroup;

    invoke-static {v0, v3, v5, v1}, Lcom/android/incallui/AnimationUtils$Move;->move(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v0, v4}, Lcom/android/incallui/CallCardPresenter;->onSurfaceDestroyed(I)V

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndSurface:Landroid/graphics/SurfaceTexture;

    iget-object v3, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndView:Landroid/view/TextureView;

    invoke-direct {p0, v0, v1, v3}, Lcom/android/incallui/CallCardVideoFragment;->setVideoLocationInternal(ILandroid/graphics/SurfaceTexture;Landroid/view/TextureView;)V

    invoke-direct {p0}, Lcom/android/incallui/CallCardVideoFragment;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/incallui/vt/VideoCallManager;->setFarEndSurface(Landroid/graphics/SurfaceTexture;II)V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndContainter:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndContainter:Landroid/view/ViewGroup;

    invoke-virtual {v0, v6}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto/16 :goto_3

    :cond_10
    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getType()I

    move-result v3

    if-ne v3, v4, :cond_11

    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallButtonPresenter;->getVideoRequestType()I

    move-result v3

    if-ne v3, v4, :cond_11

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndContainter:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndContainter:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndContainterTemplate:Landroid/view/ViewGroup;

    invoke-static {v0, v3, v4, v2}, Lcom/android/incallui/AnimationUtils$Move;->move(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndContainter:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndContainter:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndContainterTemplate:Landroid/view/ViewGroup;

    invoke-static {v0, v3, v4, v2}, Lcom/android/incallui/AnimationUtils$Move;->move(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndContainter:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndContainter:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndContainterTemplate:Landroid/view/ViewGroup;

    invoke-static {v0, v3, v4, v1}, Lcom/android/incallui/AnimationUtils$Move;->move(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v0, v2}, Lcom/android/incallui/CallCardPresenter;->onSurfaceDestroyed(I)V

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndSurface:Landroid/graphics/SurfaceTexture;

    iget-object v3, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndView:Landroid/view/TextureView;

    invoke-direct {p0, v0, v1, v3}, Lcom/android/incallui/CallCardVideoFragment;->setVideoLocationInternal(ILandroid/graphics/SurfaceTexture;Landroid/view/TextureView;)V

    invoke-direct {p0}, Lcom/android/incallui/CallCardVideoFragment;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/incallui/vt/VideoCallManager;->setNearEndSurface(Landroid/graphics/SurfaceTexture;II)V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndContainter:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndContainter:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/incallui/CallCardVideoFragment;->mCameraPreviewTouchListerner:Lcom/android/incallui/CallCardVideoFragment$CameraPreviewTouchListerner;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto/16 :goto_3

    :cond_11
    iget-object v3, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndView:Landroid/view/TextureView;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-ne v3, v7, :cond_12

    iget-object v3, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndSurface:Landroid/graphics/SurfaceTexture;

    iget-object v5, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndView:Landroid/view/TextureView;

    invoke-direct {p0, v2, v3, v5}, Lcom/android/incallui/CallCardVideoFragment;->setVideoLocationInternal(ILandroid/graphics/SurfaceTexture;Landroid/view/TextureView;)V

    :cond_12
    iget-object v3, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndView:Landroid/view/TextureView;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-ne v3, v7, :cond_13

    iget-object v3, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndSurface:Landroid/graphics/SurfaceTexture;

    iget-object v5, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndView:Landroid/view/TextureView;

    invoke-direct {p0, v4, v3, v5}, Lcom/android/incallui/CallCardVideoFragment;->setVideoLocationInternal(ILandroid/graphics/SurfaceTexture;Landroid/view/TextureView;)V

    :cond_13
    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getType()I

    move-result v3

    if-ne v3, v8, :cond_15

    invoke-direct {p0}, Lcom/android/incallui/CallCardVideoFragment;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v3

    invoke-virtual {v3, v6, v2, v2}, Lcom/android/incallui/vt/VideoCallManager;->setNearEndSurface(Landroid/graphics/SurfaceTexture;II)V

    invoke-direct {p0}, Lcom/android/incallui/CallCardVideoFragment;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v3

    iget-object v5, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v3, v5, v2, v2}, Lcom/android/incallui/vt/VideoCallManager;->setNearEndSurface(Landroid/graphics/SurfaceTexture;II)V

    :cond_14
    :goto_5
    invoke-direct {p0}, Lcom/android/incallui/CallCardVideoFragment;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/vt/VideoCallManager;->getVideoHeldRemote()Z

    move-result v3

    if-ne v3, v4, :cond_17

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getHoldCallState()Z

    move-result v0

    if-nez v0, :cond_16

    invoke-direct {p0, v4}, Lcom/android/incallui/CallCardVideoFragment;->setCamera(Z)V

    :goto_6
    invoke-static {}, Lcom/android/incallui/vt/VideoCallManager;->getInstance()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0, v6, v2, v2}, Lcom/android/incallui/vt/VideoCallManager;->setFarEndSurface(Landroid/graphics/SurfaceTexture;II)V

    invoke-static {}, Lcom/android/incallui/vt/VideoCallManager;->getInstance()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    iget-object v3, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v3, v2, v2}, Lcom/android/incallui/vt/VideoCallManager;->setFarEndSurface(Landroid/graphics/SurfaceTexture;II)V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndContainter:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndContainter:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndContainterTemplate:Landroid/view/ViewGroup;

    invoke-static {v0, v2, v3, v1}, Lcom/android/incallui/AnimationUtils$Move;->move(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndContainter:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndContainter:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndContainterTemplate:Landroid/view/ViewGroup;

    invoke-static {v0, v2, v3, v1}, Lcom/android/incallui/AnimationUtils$Move;->move(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndContainter:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndContainter:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndContainter:Landroid/view/ViewGroup;

    invoke-virtual {v0, v6}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto/16 :goto_3

    :cond_15
    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getType()I

    move-result v3

    if-ne v3, v4, :cond_14

    invoke-direct {p0}, Lcom/android/incallui/CallCardVideoFragment;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v3

    invoke-virtual {v3, v6, v2, v2}, Lcom/android/incallui/vt/VideoCallManager;->setFarEndSurface(Landroid/graphics/SurfaceTexture;II)V

    invoke-direct {p0}, Lcom/android/incallui/CallCardVideoFragment;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v3

    iget-object v5, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v3, v5, v2, v2}, Lcom/android/incallui/vt/VideoCallManager;->setFarEndSurface(Landroid/graphics/SurfaceTexture;II)V

    goto :goto_5

    :cond_16
    invoke-direct {p0}, Lcom/android/incallui/CallCardVideoFragment;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0, v6, v2, v2}, Lcom/android/incallui/vt/VideoCallManager;->setNearEndSurface(Landroid/graphics/SurfaceTexture;II)V

    invoke-direct {p0}, Lcom/android/incallui/CallCardVideoFragment;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    iget-object v3, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v3, v2, v2}, Lcom/android/incallui/vt/VideoCallManager;->setNearEndSurface(Landroid/graphics/SurfaceTexture;II)V

    goto :goto_6

    :cond_17
    invoke-static {}, Lcom/android/incallui/InCallUtils;->getHoldCallState()Z

    move-result v3

    if-ne v3, v4, :cond_19

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getHoldCallState()Z

    move-result v0

    if-nez v0, :cond_18

    invoke-direct {p0, v4}, Lcom/android/incallui/CallCardVideoFragment;->setCamera(Z)V

    :goto_7
    invoke-static {}, Lcom/android/incallui/vt/VideoCallManager;->getInstance()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0, v6, v2, v2}, Lcom/android/incallui/vt/VideoCallManager;->setFarEndSurface(Landroid/graphics/SurfaceTexture;II)V

    invoke-static {}, Lcom/android/incallui/vt/VideoCallManager;->getInstance()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    iget-object v3, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v3, v2, v2}, Lcom/android/incallui/vt/VideoCallManager;->setFarEndSurface(Landroid/graphics/SurfaceTexture;II)V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndContainter:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndContainter:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndContainterTemplate:Landroid/view/ViewGroup;

    invoke-static {v0, v2, v3, v1}, Lcom/android/incallui/AnimationUtils$Move;->move(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndContainter:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndContainter:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndContainterTemplate:Landroid/view/ViewGroup;

    invoke-static {v0, v2, v3, v1}, Lcom/android/incallui/AnimationUtils$Move;->move(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndContainter:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndContainter:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndContainter:Landroid/view/ViewGroup;

    invoke-virtual {v0, v6}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto/16 :goto_3

    :cond_18
    invoke-direct {p0}, Lcom/android/incallui/CallCardVideoFragment;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0, v6, v2, v2}, Lcom/android/incallui/vt/VideoCallManager;->setNearEndSurface(Landroid/graphics/SurfaceTexture;II)V

    invoke-direct {p0}, Lcom/android/incallui/CallCardVideoFragment;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    iget-object v3, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v3, v2, v2}, Lcom/android/incallui/vt/VideoCallManager;->setNearEndSurface(Landroid/graphics/SurfaceTexture;II)V

    goto :goto_7

    :cond_19
    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getType()I

    move-result v0

    if-ne v0, v4, :cond_1a

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndContainter:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndContainter:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndContainterTemplate:Landroid/view/ViewGroup;

    invoke-static {v0, v2, v3, v1}, Lcom/android/incallui/AnimationUtils$Move;->move(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndContainter:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndContainter:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndContainterTemplate:Landroid/view/ViewGroup;

    invoke-static {v0, v2, v3, v1}, Lcom/android/incallui/AnimationUtils$Move;->move(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndContainter:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndContainter:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndContainter:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/incallui/CallCardVideoFragment;->mCameraPreviewTouchListerner:Lcom/android/incallui/CallCardVideoFragment$CameraPreviewTouchListerner;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto/16 :goto_3

    :cond_1a
    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndContainter:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndContainter:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndContainterTemplate:Landroid/view/ViewGroup;

    invoke-static {v0, v2, v3, v1}, Lcom/android/incallui/AnimationUtils$Move;->move(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndContainter:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndContainter:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndContainterTemplate:Landroid/view/ViewGroup;

    invoke-static {v0, v2, v3, v1}, Lcom/android/incallui/AnimationUtils$Move;->move(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndContainter:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndContainter:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndContainter:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/incallui/CallCardVideoFragment;->mCameraPreviewTouchListerner:Lcom/android/incallui/CallCardVideoFragment$CameraPreviewTouchListerner;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto/16 :goto_3

    :cond_1b
    const-string v3, "att_volte_ui"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1c

    const-string v3, "tmo_volte_ui"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_22

    :cond_1c
    iget-object v3, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndContainter:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndContainter:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndModify:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndModify:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "changeVideoLocation : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getType()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/CallButtonPresenter;->getVideoResponseType()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/CallButtonPresenter;->getVideoRequestType()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v4}, Lcom/android/incallui/BaseFragment;->log(Ljava/lang/String;Z)V

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getType()I

    move-result v3

    if-ne v3, v8, :cond_1d

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndView:Landroid/view/TextureView;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndModify:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndModify:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/android/incallui/CallCardVideoFragment;->setCallUnknownPhoto(Landroid/widget/ImageView;)V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndContainter:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndContainter:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndContainterTemplate:Landroid/view/ViewGroup;

    invoke-static {v0, v3, v4, v1}, Lcom/android/incallui/AnimationUtils$Move;->move(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndContainter:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndContainter:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndContainterTemplate:Landroid/view/ViewGroup;

    invoke-static {v0, v3, v4, v1}, Lcom/android/incallui/AnimationUtils$Move;->move(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    invoke-direct {p0}, Lcom/android/incallui/CallCardVideoFragment;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/incallui/vt/VideoCallManager;->setFarEndSurface(Landroid/graphics/SurfaceTexture;II)V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndContainter:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndContainter:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    goto/16 :goto_3

    :cond_1d
    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getType()I

    move-result v0

    if-ne v0, v4, :cond_1e

    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v0, v2}, Lcom/android/incallui/CallCardPresenter;->onSurfaceDestroyed(I)V

    const/4 v0, 0x3

    iget-object v3, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndSurface:Landroid/graphics/SurfaceTexture;

    iget-object v4, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndView:Landroid/view/TextureView;

    invoke-direct {p0, v0, v3, v4}, Lcom/android/incallui/CallCardVideoFragment;->setVideoLocationInternal(ILandroid/graphics/SurfaceTexture;Landroid/view/TextureView;)V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndView:Landroid/view/TextureView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/incallui/CallCardVideoFragment;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    iget-object v3, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v3, v2, v2}, Lcom/android/incallui/vt/VideoCallManager;->setNearEndSurface(Landroid/graphics/SurfaceTexture;II)V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndModify:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndModify:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndModify:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v2}, Lcom/android/incallui/CallCardVideoFragment;->setCallPhoto(Landroid/widget/ImageView;Z)V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndContainter:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndContainter:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndContainterTemplate:Landroid/view/ViewGroup;

    invoke-static {v0, v2, v3, v1}, Lcom/android/incallui/AnimationUtils$Move;->move(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndContainter:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndContainter:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndContainterTemplate:Landroid/view/ViewGroup;

    invoke-static {v0, v2, v3, v1}, Lcom/android/incallui/AnimationUtils$Move;->move(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndModify:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndModify:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndContainterTemplate:Landroid/view/ViewGroup;

    invoke-static {v0, v2, v3, v1}, Lcom/android/incallui/AnimationUtils$Move;->move(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndContainter:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndContainter:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    goto/16 :goto_3

    :cond_1e
    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v7, :cond_1f

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndView:Landroid/view/TextureView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1f
    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v7, :cond_20

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndView:Landroid/view/TextureView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_20
    invoke-direct {p0}, Lcom/android/incallui/CallCardVideoFragment;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/vt/VideoCallManager;->getVideoHeldRemote()Z

    move-result v0

    if-ne v0, v4, :cond_21

    invoke-direct {p0, v4}, Lcom/android/incallui/CallCardVideoFragment;->setCamera(Z)V

    invoke-static {}, Lcom/android/incallui/vt/VideoCallManager;->getInstance()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0, v6, v2, v2}, Lcom/android/incallui/vt/VideoCallManager;->setFarEndSurface(Landroid/graphics/SurfaceTexture;II)V

    invoke-static {}, Lcom/android/incallui/vt/VideoCallManager;->getInstance()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/incallui/vt/VideoCallManager;->setFarEndSurface(Landroid/graphics/SurfaceTexture;II)V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndContainter:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndContainter:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndContainterTemplate:Landroid/view/ViewGroup;

    const/16 v3, 0x9c4

    invoke-static {v0, v1, v2, v3}, Lcom/android/incallui/AnimationUtils$Move;->move(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndContainter:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndContainter:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndContainterTemplate:Landroid/view/ViewGroup;

    const/16 v3, 0x9c4

    invoke-static {v0, v1, v2, v3}, Lcom/android/incallui/AnimationUtils$Move;->move(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndContainter:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndContainter:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndContainter:Landroid/view/ViewGroup;

    invoke-virtual {v0, v6}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto/16 :goto_3

    :cond_21
    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndContainter:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndContainter:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndContainterTemplate:Landroid/view/ViewGroup;

    invoke-static {v0, v2, v3, v1}, Lcom/android/incallui/AnimationUtils$Move;->move(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndContainter:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndContainter:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndContainterTemplate:Landroid/view/ViewGroup;

    invoke-static {v0, v2, v3, v1}, Lcom/android/incallui/AnimationUtils$Move;->move(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndContainter:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndContainter:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndContainter:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/incallui/CallCardVideoFragment;->mCameraPreviewTouchListerner:Lcom/android/incallui/CallCardVideoFragment$CameraPreviewTouchListerner;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto/16 :goto_3

    :cond_22
    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndContainter:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndContainter:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndContainterTemplate:Landroid/view/ViewGroup;

    invoke-static {v0, v2, v3, v1}, Lcom/android/incallui/AnimationUtils$Move;->move(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndContainter:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndContainter:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndContainterTemplate:Landroid/view/ViewGroup;

    invoke-static {v0, v2, v3, v1}, Lcom/android/incallui/AnimationUtils$Move;->move(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndContainter:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndContainter:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    goto/16 :goto_3

    :sswitch_2
    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndContainter:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndContainter:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/incallui/CallCardVideoFragment;->mOutgoingContainterTemplate:Landroid/view/ViewGroup;

    invoke-static {v0, v3, v4, v1}, Lcom/android/incallui/AnimationUtils$Move;->move(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndContainter:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndContainter:Landroid/view/ViewGroup;

    invoke-virtual {v0, v6}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v0, v2}, Lcom/android/incallui/CallCardPresenter;->setSurfaceViewSwipe(Z)V

    goto/16 :goto_3

    :sswitch_3
    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndContainter:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndContainter:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/incallui/CallCardVideoFragment;->mIncomingContainterTemplate:Landroid/view/ViewGroup;

    invoke-static {v0, v3, v4, v1}, Lcom/android/incallui/AnimationUtils$Move;->move(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndContainter:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mIncomingHideButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mIncomingHideButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    :cond_23
    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v0, v2}, Lcom/android/incallui/CallCardPresenter;->setSurfaceViewSwipe(Z)V

    goto/16 :goto_3

    :sswitch_4
    const-string v0, "ims_resize_screen"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/incallui/CallCardVideoFragment;->resizeAndChangeVideoLocation()V

    goto/16 :goto_3

    :cond_24
    move v1, v2

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xca -> :sswitch_1
        0x12d -> :sswitch_3
        0x12f -> :sswitch_2
        0x191 -> :sswitch_4
    .end sparse-switch
.end method

.method public getInCallMenu()Lcom/android/incallui/InCallMenu;
    .locals 2

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isPSDomain()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/incallui/vt/InPSVTCallMenu;

    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/incallui/vt/InPSVTCallMenu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/incallui/vt/InCSVTCallMenu;

    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/incallui/vt/InCSVTCallMenu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    goto :goto_0
.end method

.method public getMenuRes()I
    .locals 1

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isPSDomain()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f110001

    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x7f110000

    goto :goto_0
.end method

.method public getNearEndAnimationImageView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndSwitchAnimationView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getSurfaceViewHeight(I)I
    .locals 2
    .param p1    # I

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return v0

    :pswitch_0
    iget-object v1, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndView:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v0

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndView:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getSurfaceViewWidth(I)I
    .locals 2
    .param p1    # I

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return v0

    :pswitch_0
    iget-object v1, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndView:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v0

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndView:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public manageSecondaryControlBtn(ZZZ)V
    .locals 2
    .param p1    # Z
    .param p2    # Z
    .param p3    # Z

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mSwapBtn:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mSwapBtn:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/incallui/CallCardVideoFragment;->mSwapBtn:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Lcom/android/incallui/CallCardFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCameraEvent(I)V
    .locals 0
    .param p1    # I

    return-void
.end method

.method public onCaptureAndRecordEvent(I)V
    .locals 0
    .param p1    # I

    return-void
.end method

.method public onCastingEvent(I)V
    .locals 0
    .param p1    # I

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick(View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0, p1}, Lcom/android/incallui/CallCardFragment;->onClick(Landroid/view/View;)V

    :goto_0
    return-void

    :sswitch_0
    invoke-virtual {p0}, Lcom/android/incallui/CallCardVideoFragment;->toggleIncomingHideShow()V

    goto :goto_0

    :sswitch_1
    const-string v0, "vzw_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v3, p0, Lcom/android/incallui/CallCardVideoFragment;->isSwapClicked:Z

    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mSecondaryCallName:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mPrimaryNameForSwapVT:Ljava/lang/String;

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallCardPresenter;->swapClicked()V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallCardPresenter;->mergeClicked()V

    goto :goto_0

    :sswitch_3
    invoke-direct {p0, v3}, Lcom/android/incallui/CallCardVideoFragment;->showPrimaryCallBanner(Z)V

    invoke-super {p0, p1}, Lcom/android/incallui/CallCardFragment;->onClick(Landroid/view/View;)V

    goto :goto_0

    :sswitch_4
    const-string v0, "onClick upgradeDowngradeButton"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sput-boolean v3, Lcom/android/incallui/InCallUtils;->isSessionModificationInitated:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isSessionModificationInitated"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/incallui/InCallUtils;->isSessionModificationInitated:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-interface {v0}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->updateModifyPannel()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f0e0030 -> :sswitch_1
        0x7f0e0033 -> :sswitch_2
        0x7f0e0112 -> :sswitch_3
        0x7f0e020e -> :sswitch_4
        0x7f0e0246 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1    # Landroid/view/LayoutInflater;
    .param p2    # Landroid/view/ViewGroup;
    .param p3    # Landroid/os/Bundle;

    const-string v1, "onCreateView..."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Lcom/android/incallui/CallCardFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    const v1, 0x7f040015

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/android/incallui/CallCardVideoFragment;->mOrientation:I

    return-object v0
.end method

.method public onDestroyView()V
    .locals 7

    const/16 v6, 0x66

    const/16 v5, 0x64

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-super {p0}, Lcom/android/incallui/CallCardFragment;->onDestroyView()V

    const-string v2, "onDestroyView..."

    invoke-virtual {p0, v2, v4}, Lcom/android/incallui/BaseFragment;->log(Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/android/incallui/CallCardFragment;->mPhoto:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/CallCardFragment;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/android/incallui/CallCardFragment;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_0
    iget-object v2, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndPhoto:Landroid/widget/ImageView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndPhoto:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndPhoto:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_1
    iget-object v2, p0, Lcom/android/incallui/CallCardVideoFragment;->mCallerInfoPhoto:Landroid/widget/ImageView;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/incallui/CallCardVideoFragment;->mCallerInfoPhoto:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/android/incallui/CallCardVideoFragment;->mCallerInfoPhoto:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_2
    iget-object v2, p0, Lcom/android/incallui/CallCardVideoFragment;->mPreparingAnimationImage:Landroid/widget/ProgressBar;

    if-eqz v2, :cond_3

    :cond_3
    iget-object v2, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndSwitchAnimationView:Landroid/widget/ImageView;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndSwitchAnimationView:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    iget-object v2, p0, Lcom/android/incallui/CallCardVideoFragment;->mIncomingHideButton:Landroid/widget/ToggleButton;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/incallui/CallCardVideoFragment;->mIncomingHideButton:Landroid/widget/ToggleButton;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/incallui/CallCardVideoFragment;->mIncomingHideButton:Landroid/widget/ToggleButton;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_5
    iget-object v2, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndView:Landroid/view/TextureView;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndView:Landroid/view/TextureView;

    invoke-virtual {v2, v3}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    :cond_6
    iget-object v2, p0, Lcom/android/incallui/CallCardVideoFragment;->mTouchBackground:Landroid/view/View;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/incallui/CallCardVideoFragment;->mTouchBackground:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_7
    iget-object v2, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndView:Landroid/view/TextureView;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndView:Landroid/view/TextureView;

    invoke-virtual {v2, v3}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    :cond_8
    const-string v2, "prohibit_chattering"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/incallui/CallCardVideoFragment;->showImgTimer:Lcom/android/incallui/CallCardVideoFragment$DefaultImageTimer;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/incallui/CallCardVideoFragment;->showImgTimer:Lcom/android/incallui/CallCardVideoFragment$DefaultImageTimer;

    invoke-virtual {v2}, Landroid/os/CountDownTimer;->cancel()V

    iput-object v3, p0, Lcom/android/incallui/CallCardVideoFragment;->showImgTimer:Lcom/android/incallui/CallCardVideoFragment$DefaultImageTimer;

    :cond_9
    invoke-virtual {p0}, Lcom/android/incallui/CallCardVideoFragment;->getInCallMenu()Lcom/android/incallui/InCallMenu;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/vt/InVTCallMenu;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/android/incallui/vt/InVTCallMenu;->dismissDialogs()V

    :cond_a
    iget-object v2, p0, Lcom/android/incallui/CallCardVideoFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/android/incallui/CallCardVideoFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    :cond_b
    iget-object v2, p0, Lcom/android/incallui/CallCardVideoFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/android/incallui/CallCardVideoFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    :cond_c
    iget-object v2, p0, Lcom/android/incallui/CallCardVideoFragment;->mVideoContainer:Landroid/view/ViewGroup;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/android/incallui/CallCardVideoFragment;->mVideoContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    :cond_d
    iget-object v2, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndContainter:Landroid/view/ViewGroup;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndContainter:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_e
    invoke-static {}, Lcom/android/incallui/vt/VideoCallManager;->getInstance()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-virtual {v1, p0}, Lcom/android/incallui/vt/VideoCallManager;->removeListener(Lcom/android/incallui/vt/VTStateListener;)V

    :cond_f
    const-string v2, "vzw_volte_ui"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v4}, Lcom/android/incallui/CallCardFragment;->ModifyCallDialogComplete(IZ)V

    :cond_10
    return-void
.end method

.method public onPause()V
    .locals 4

    invoke-super {p0}, Lcom/android/incallui/CallCardFragment;->onPause()V

    const-string v2, "vzw_volte_ui"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "volte_jpn_orientation_feature"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/services/telephony/common/Call;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v2, p0, Lcom/android/incallui/CallCardVideoFragment;->mOrientation:I

    iget v3, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v3, :cond_1

    invoke-direct {p0}, Lcom/android/incallui/CallCardVideoFragment;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/android/incallui/CallCardVideoFragment;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/vt/VideoCallManager;->getScreenRotated()Z

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isActiveVideoCall()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 7

    const/4 v6, 0x4

    const/4 v4, 0x0

    const/16 v5, 0x66

    invoke-super {p0}, Lcom/android/incallui/CallCardFragment;->onResume()V

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v2, p0, Lcom/android/incallui/CallCardVideoFragment;->mOrientation:I

    iget v3, v0, Landroid/content/res/Configuration;->orientation:I

    if-eq v2, v3, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/incallui/InCallPresenter;->configurationChanged(Landroid/content/res/Configuration;)V

    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Lcom/android/incallui/CallCardVideoFragment;->mOrientation:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "vzw_volte_ui"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "volte_jpn_orientation_feature"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/services/telephony/common/Call;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_3

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v2

    if-ne v2, v6, :cond_4

    :cond_3
    const-string v2, "onResume return"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/android/incallui/CallCardVideoFragment;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/CallCardVideoFragment;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/vt/VideoCallManager;->getScreenRotated()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    const-string v2, "onResume rotation return"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/incallui/CallCardVideoFragment;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/incallui/vt/VideoCallManager;->setScreenRotated(Z)V

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/android/incallui/CallCardVideoFragment;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/vt/VideoCallManager;->getVideoHeld()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getType()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getType()I

    move-result v2

    if-eq v2, v6, :cond_0

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getType()I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/incallui/CallCardVideoFragment;->mModifyRequestLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/incallui/CallCardVideoFragment;->mModifyText:Landroid/widget/TextView;

    const v3, 0x7f090390

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, p0, Lcom/android/incallui/CallCardVideoFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/incallui/CallCardVideoFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    :cond_6
    iget-object v2, p0, Lcom/android/incallui/CallCardVideoFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x1388

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v4, 0x1

    const/4 v6, 0x0

    const-string v0, "onSurfaceTextureAvailable..."

    invoke-virtual {p0, v0, v4}, Lcom/android/incallui/BaseFragment;->log(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "This is inside mFarEndView created"

    invoke-virtual {p0, v0}, Lcom/android/incallui/BaseFragment;->log(Ljava/lang/String;)V

    const-string v0, "prohibit_chattering"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->showImgTimer:Lcom/android/incallui/CallCardVideoFragment$DefaultImageTimer;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/incallui/CallCardVideoFragment$DefaultImageTimer;

    const-wide/16 v2, 0x7d0

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/incallui/CallCardVideoFragment$DefaultImageTimer;-><init>(Lcom/android/incallui/CallCardVideoFragment;JJ)V

    iput-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->showImgTimer:Lcom/android/incallui/CallCardVideoFragment$DefaultImageTimer;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->showImgTimer:Lcom/android/incallui/CallCardVideoFragment$DefaultImageTimer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->showImgTimer:Lcom/android/incallui/CallCardVideoFragment$DefaultImageTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->showImgTimer:Lcom/android/incallui/CallCardVideoFragment$DefaultImageTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    :cond_1
    iput-object p1, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndSurface:Landroid/graphics/SurfaceTexture;

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndSurface:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndView:Landroid/view/TextureView;

    invoke-direct {p0, v6, v0, v1}, Lcom/android/incallui/CallCardVideoFragment;->setVideoLocationInternal(ILandroid/graphics/SurfaceTexture;Landroid/view/TextureView;)V

    invoke-direct {p0}, Lcom/android/incallui/CallCardVideoFragment;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/vt/VideoCallManager;->getVideoHeldRemote()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/incallui/CallCardVideoFragment;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0, v8, v6, v6}, Lcom/android/incallui/vt/VideoCallManager;->setFarEndSurface(Landroid/graphics/SurfaceTexture;II)V

    invoke-direct {p0}, Lcom/android/incallui/CallCardVideoFragment;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1, v6, v6}, Lcom/android/incallui/vt/VideoCallManager;->setFarEndSurface(Landroid/graphics/SurfaceTexture;II)V

    :cond_2
    const-string v0, "att_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "tmo_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getType()I

    move-result v0

    if-ne v0, v7, :cond_4

    invoke-direct {p0}, Lcom/android/incallui/CallCardVideoFragment;->setNearEndViewToDefaultPosition()V

    :cond_4
    :goto_0
    const-string v0, "att_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "tmo_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "vzw_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_5
    invoke-direct {p0}, Lcom/android/incallui/CallCardVideoFragment;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/vt/VideoCallManager;->getVideoHeldRemote()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallCardPresenter;->updateVideoView()V

    :cond_6
    :goto_1
    return-void

    :cond_7
    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "This is inside mNearEndView created"

    invoke-virtual {p0, v0}, Lcom/android/incallui/BaseFragment;->log(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndSurface:Landroid/graphics/SurfaceTexture;

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIMSLandscapeConfCall()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isHDVideoLandscapeCall()Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndView:Landroid/view/TextureView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter;

    iget-object v1, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndSurface:Landroid/graphics/SurfaceTexture;

    iget-object v2, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndView:Landroid/view/TextureView;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndView:Landroid/view/TextureView;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/incallui/CallCardPresenter;->onSurfaceAvailable(ILandroid/graphics/SurfaceTexture;II)V

    goto :goto_0

    :cond_9
    const-string v0, "vzw_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-direct {p0}, Lcom/android/incallui/CallCardVideoFragment;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getType()I

    move-result v1

    if-ne v1, v7, :cond_c

    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallButtonPresenter;->getVideoResponseType()I

    move-result v1

    if-eq v1, v7, :cond_c

    const-string v0, "mNearEndView still shot"

    invoke-virtual {p0, v0}, Lcom/android/incallui/BaseFragment;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndSurface:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndView:Landroid/view/TextureView;

    invoke-direct {p0, v4, v0, v1}, Lcom/android/incallui/CallCardVideoFragment;->setVideoLocationInternal(ILandroid/graphics/SurfaceTexture;Landroid/view/TextureView;)V

    invoke-direct {p0}, Lcom/android/incallui/CallCardVideoFragment;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/vt/VideoCallManager;->stopCameraPreview()V

    invoke-direct {p0}, Lcom/android/incallui/CallCardVideoFragment;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0, v8, v6, v6}, Lcom/android/incallui/vt/VideoCallManager;->setNearEndSurface(Landroid/graphics/SurfaceTexture;II)V

    :cond_a
    :goto_2
    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndSurface:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndView:Landroid/view/TextureView;

    invoke-direct {p0, v4, v0, v1}, Lcom/android/incallui/CallCardVideoFragment;->setVideoLocationInternal(ILandroid/graphics/SurfaceTexture;Landroid/view/TextureView;)V

    :cond_b
    invoke-direct {p0}, Lcom/android/incallui/CallCardVideoFragment;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/vt/VideoCallManager;->getVideoHeldRemote()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/android/incallui/CallCardVideoFragment;->setNearEndViewToDefaultPosition()V

    goto/16 :goto_0

    :cond_c
    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getType()I

    move-result v0

    if-ne v0, v4, :cond_a

    invoke-direct {p0}, Lcom/android/incallui/CallCardVideoFragment;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0, v8, v6, v6}, Lcom/android/incallui/vt/VideoCallManager;->setFarEndSurface(Landroid/graphics/SurfaceTexture;II)V

    invoke-direct {p0}, Lcom/android/incallui/CallCardVideoFragment;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1, v6, v6}, Lcom/android/incallui/vt/VideoCallManager;->setFarEndSurface(Landroid/graphics/SurfaceTexture;II)V

    goto :goto_2

    :cond_d
    const-string v0, "att_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "tmo_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_e
    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndSurface:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndView:Landroid/view/TextureView;

    invoke-direct {p0, v4, v0, v1}, Lcom/android/incallui/CallCardVideoFragment;->setVideoLocationInternal(ILandroid/graphics/SurfaceTexture;Landroid/view/TextureView;)V

    invoke-direct {p0}, Lcom/android/incallui/CallCardVideoFragment;->setNearEndViewToDefaultPosition()V

    goto/16 :goto_0

    :cond_f
    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndSurface:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndView:Landroid/view/TextureView;

    invoke-direct {p0, v4, v0, v1}, Lcom/android/incallui/CallCardVideoFragment;->setVideoLocationInternal(ILandroid/graphics/SurfaceTexture;Landroid/view/TextureView;)V

    goto/16 :goto_0

    :cond_10
    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallCardPresenter;->updateVideoView()V

    goto/16 :goto_1
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 3

    const/4 v2, 0x1

    const-string v0, "onSurfaceTextureDestroyed..."

    invoke-virtual {p0, v0, v2}, Lcom/android/incallui/BaseFragment;->log(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "mFarEndView surface texture destroyed"

    invoke-virtual {p0, v0, v2}, Lcom/android/incallui/BaseFragment;->log(Ljava/lang/String;Z)V

    const-string v0, "prohibit_chattering"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->showImgTimer:Lcom/android/incallui/CallCardVideoFragment$DefaultImageTimer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->showImgTimer:Lcom/android/incallui/CallCardVideoFragment$DefaultImageTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->showImgTimer:Lcom/android/incallui/CallCardVideoFragment$DefaultImageTimer;

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/CallCardPresenter;->onSurfaceDestroyed(I)V

    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->release()V

    const-string v0, "vzw_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "volte_jpn_orientation_feature"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/CallCardVideoFragment;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/vt/VideoCallManager;->getScreenRotated()Z

    move-result v0

    if-ne v0, v2, :cond_2

    :cond_2
    :goto_0
    return v2

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "mNearEndView surface texture destroyed"

    invoke-virtual {p0, v0, v2}, Lcom/android/incallui/BaseFragment;->log(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v0, v2}, Lcom/android/incallui/CallCardPresenter;->onSurfaceDestroyed(I)V

    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->release()V

    const-string v0, "vzw_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "volte_jpn_orientation_feature"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_4
    invoke-direct {p0}, Lcom/android/incallui/CallCardVideoFragment;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/vt/VideoCallManager;->getScreenRotated()Z

    move-result v0

    if-ne v0, v2, :cond_2

    goto :goto_0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    const-string v0, "onSurfaceTextureSizeChanged..."

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/BaseFragment;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 3
    .param p1    # Landroid/graphics/SurfaceTexture;

    const/16 v2, 0x8

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/CallCardPresenter;->startRender(Z)V

    const-string v0, "prohibit_chattering"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndDocomoImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndDocomoImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndDocomoImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->showImgTimer:Lcom/android/incallui/CallCardVideoFragment$DefaultImageTimer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->showImgTimer:Lcom/android/incallui/CallCardVideoFragment$DefaultImageTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->showImgTimer:Lcom/android/incallui/CallCardVideoFragment$DefaultImageTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "camera_fail_image"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndDocomoImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndDocomoImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndDocomoImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/incallui/CallCardPresenter;->startRender(Z)V

    goto :goto_0
.end method

.method public onVideoCallEvent(I)V
    .locals 10

    const/4 v9, 0x0

    const/16 v8, 0x3e8

    const/16 v7, 0x66

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getFirstCallState()I

    move-result v1

    const-string v2, "BaseFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onVideoCallEvent() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getFirstCallState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "BaseFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onVideoCallEvent() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/incallui/CallCardVideoFragment;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/vt/VideoCallManager;->getVideoHeld()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    const-string v2, "BaseFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onVideoCallEvent() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v0}, Lcom/android/incallui/CallCardVideoFragment;->isVideoShareRx(Lcom/android/services/telephony/common/Call;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v0}, Lcom/android/incallui/CallCardVideoFragment;->isVideoShareTx(Lcom/android/services/telephony/common/Call;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    const-string v1, "vzw_volte_ui"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/CallCardVideoFragment;->mVideoCallManager:Lcom/android/incallui/vt/VideoCallManager;

    invoke-virtual {v1}, Lcom/android/incallui/vt/VideoCallManager;->getVideoHeld()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/CallCardVideoFragment;->mVideoCallManager:Lcom/android/incallui/vt/VideoCallManager;

    invoke-virtual {v1}, Lcom/android/incallui/vt/VideoCallManager;->getVideoHeldRemote()Z

    move-result v1

    if-ne v1, v6, :cond_0

    invoke-direct {p0, v0}, Lcom/android/incallui/CallCardVideoFragment;->isCameraOffRx(Lcom/android/services/telephony/common/Call;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndContainter:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndContainter:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndContainterTemplate:Landroid/view/ViewGroup;

    invoke-static {v0, v1, v2, v8}, Lcom/android/incallui/AnimationUtils$Move;->move(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndContainter:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndContainter:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndContainterTemplate:Landroid/view/ViewGroup;

    invoke-static {v0, v1, v2, v8}, Lcom/android/incallui/AnimationUtils$Move;->move(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndContainter:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndContainter:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mVideoCallManager:Lcom/android/incallui/vt/VideoCallManager;

    invoke-virtual {v0, v5}, Lcom/android/incallui/vt/VideoCallManager;->setVideoHeldRemote(Z)V

    goto :goto_0

    :sswitch_1
    const-string v2, "vzw_volte_ui"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x3

    if-eq v1, v2, :cond_5

    const/4 v2, 0x4

    if-eq v1, v2, :cond_5

    iget-object v2, p0, Lcom/android/incallui/CallCardVideoFragment;->mVideoCallManager:Lcom/android/incallui/vt/VideoCallManager;

    invoke-virtual {v2}, Lcom/android/incallui/vt/VideoCallManager;->getVideoHeld()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/android/incallui/CallCardVideoFragment;->mVideoCallManager:Lcom/android/incallui/vt/VideoCallManager;

    invoke-virtual {v2, v6}, Lcom/android/incallui/vt/VideoCallManager;->setVideoHeldRemote(Z)V

    const-string v2, "BaseFragment"

    const-string v3, "onVideoCallEvent() VT_VIDEO_HELD"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0}, Lcom/android/incallui/CallCardVideoFragment;->isVideoShareRx(Lcom/android/services/telephony/common/Call;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/incallui/CallCardVideoFragment;->mVideoCallManager:Lcom/android/incallui/vt/VideoCallManager;

    invoke-virtual {v2, v9, v5, v5}, Lcom/android/incallui/vt/VideoCallManager;->setFarEndSurface(Landroid/graphics/SurfaceTexture;II)V

    iget-object v2, p0, Lcom/android/incallui/CallCardVideoFragment;->mVideoCallManager:Lcom/android/incallui/vt/VideoCallManager;

    iget-object v3, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v2, v3, v5, v5}, Lcom/android/incallui/vt/VideoCallManager;->setFarEndSurface(Landroid/graphics/SurfaceTexture;II)V

    :cond_1
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/incallui/CallCardVideoFragment;->isVideoShareRx(Lcom/android/services/telephony/common/Call;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0, v0}, Lcom/android/incallui/CallCardVideoFragment;->isVideoShareTx(Lcom/android/services/telephony/common/Call;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mModifyRequestLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mModifyText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f09038d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/incallui/CallCardVideoFragment;->SRC_TAGS:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/incallui/CallCardVideoFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->removeMessages(I)V

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v7, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndContainter:Landroid/view/ViewGroup;

    invoke-virtual {v0, v9}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_5
    const/4 v0, 0x4

    if-ne v1, v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/CallCardVideoFragment;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/vt/VideoCallManager;->getVideoHeld()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mVideoCallManager:Lcom/android/incallui/vt/VideoCallManager;

    invoke-virtual {v0}, Lcom/android/incallui/vt/VideoCallManager;->startCameraPreviewWithSurface()V

    goto/16 :goto_0

    :cond_6
    invoke-direct {p0, v0}, Lcom/android/incallui/CallCardVideoFragment;->isVideoShareTx(Lcom/android/services/telephony/common/Call;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0, v0}, Lcom/android/incallui/CallCardVideoFragment;->isCameraOffRx(Lcom/android/services/telephony/common/Call;)Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/android/incallui/CallCardVideoFragment;->mVideoCallManager:Lcom/android/incallui/vt/VideoCallManager;

    invoke-virtual {v2}, Lcom/android/incallui/vt/VideoCallManager;->getCameraState()Lcom/samsung/commonimsinterface/imscommon/CameraState;

    move-result-object v2

    sget-object v3, Lcom/samsung/commonimsinterface/imscommon/CameraState;->CAMERA_CLOSED:Lcom/samsung/commonimsinterface/imscommon/CameraState;

    if-ne v2, v3, :cond_8

    iget-object v2, p0, Lcom/android/incallui/CallCardVideoFragment;->mVideoCallManager:Lcom/android/incallui/vt/VideoCallManager;

    iget-object v3, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v2, v3}, Lcom/android/incallui/vt/VideoCallManager;->initializeCamera(Landroid/graphics/SurfaceTexture;)V

    :goto_2
    iget-object v2, p0, Lcom/android/incallui/CallCardVideoFragment;->mVideoCallManager:Lcom/android/incallui/vt/VideoCallManager;

    invoke-virtual {v2, v9, v5, v5}, Lcom/android/incallui/vt/VideoCallManager;->setFarEndSurface(Landroid/graphics/SurfaceTexture;II)V

    iget-object v2, p0, Lcom/android/incallui/CallCardVideoFragment;->mVideoCallManager:Lcom/android/incallui/vt/VideoCallManager;

    iget-object v3, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v2, v3, v5, v5}, Lcom/android/incallui/vt/VideoCallManager;->setFarEndSurface(Landroid/graphics/SurfaceTexture;II)V

    :cond_7
    iget-object v2, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndContainter:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndContainter:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndContainterTemplate:Landroid/view/ViewGroup;

    invoke-static {v2, v3, v4, v8}, Lcom/android/incallui/AnimationUtils$Move;->move(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    iget-object v2, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndContainter:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndContainter:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndContainterTemplate:Landroid/view/ViewGroup;

    invoke-static {v2, v3, v4, v8}, Lcom/android/incallui/AnimationUtils$Move;->move(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    iget-object v2, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndContainter:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/View;->bringToFront()V

    iget-object v2, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndContainter:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/View;->bringToFront()V

    goto/16 :goto_1

    :cond_8
    iget-object v2, p0, Lcom/android/incallui/CallCardVideoFragment;->mVideoCallManager:Lcom/android/incallui/vt/VideoCallManager;

    invoke-virtual {v2}, Lcom/android/incallui/vt/VideoCallManager;->getCameraState()Lcom/samsung/commonimsinterface/imscommon/CameraState;

    move-result-object v2

    sget-object v3, Lcom/samsung/commonimsinterface/imscommon/CameraState;->PREVIEW_STARTED:Lcom/samsung/commonimsinterface/imscommon/CameraState;

    if-ne v2, v3, :cond_9

    iget-object v2, p0, Lcom/android/incallui/CallCardVideoFragment;->mVideoCallManager:Lcom/android/incallui/vt/VideoCallManager;

    invoke-virtual {v2}, Lcom/android/incallui/vt/VideoCallManager;->stopCameraPreview()V

    :cond_9
    iget-object v2, p0, Lcom/android/incallui/CallCardVideoFragment;->mVideoCallManager:Lcom/android/incallui/vt/VideoCallManager;

    iget-object v3, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v2, v3, v5, v5}, Lcom/android/incallui/vt/VideoCallManager;->setNearEndSurface(Landroid/graphics/SurfaceTexture;II)V

    iget-object v2, p0, Lcom/android/incallui/CallCardVideoFragment;->mVideoCallManager:Lcom/android/incallui/vt/VideoCallManager;

    invoke-virtual {v2}, Lcom/android/incallui/vt/VideoCallManager;->startCameraPreviewWithSurface()V

    goto :goto_2

    :sswitch_2
    const-string v2, "vzw_volte_ui"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "BaseFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onVideoCallEvent() VT_VIDEO_RESUMED "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/incallui/CallCardVideoFragment;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/vt/VideoCallManager;->getVideoHeld()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/services/telephony/common/Call;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_e

    const/4 v2, 0x4

    if-eq v1, v2, :cond_e

    iget-object v1, p0, Lcom/android/incallui/CallCardVideoFragment;->mVideoCallManager:Lcom/android/incallui/vt/VideoCallManager;

    invoke-virtual {v1}, Lcom/android/incallui/vt/VideoCallManager;->getVideoHeld()Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, p0, Lcom/android/incallui/CallCardVideoFragment;->mVideoCallManager:Lcom/android/incallui/vt/VideoCallManager;

    invoke-virtual {v1, v5}, Lcom/android/incallui/vt/VideoCallManager;->setVideoHeldRemote(Z)V

    :cond_a
    invoke-direct {p0, v0}, Lcom/android/incallui/CallCardVideoFragment;->isVideoShareRx(Lcom/android/services/telephony/common/Call;)Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndSurface:Landroid/graphics/SurfaceTexture;

    iget-object v2, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndView:Landroid/view/TextureView;

    invoke-direct {p0, v5, v1, v2}, Lcom/android/incallui/CallCardVideoFragment;->setVideoLocationInternal(ILandroid/graphics/SurfaceTexture;Landroid/view/TextureView;)V

    iget-object v1, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndContainter:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->bringToFront()V

    :cond_b
    :goto_3
    invoke-direct {p0, v0}, Lcom/android/incallui/CallCardVideoFragment;->isVideoShareRx(Lcom/android/services/telephony/common/Call;)Z

    move-result v1

    if-nez v1, :cond_c

    invoke-direct {p0, v0}, Lcom/android/incallui/CallCardVideoFragment;->isVideoShareTx(Lcom/android/services/telephony/common/Call;)Z

    move-result v0

    if-nez v0, :cond_e

    :cond_c
    invoke-direct {p0}, Lcom/android/incallui/CallCardVideoFragment;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/vt/VideoCallManager;->getVideoHeld()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mModifyRequestLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/android/incallui/CallCardVideoFragment;->isSwapClicked:Z

    if-ne v0, v6, :cond_11

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mModifyText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f09038e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/incallui/CallCardVideoFragment;->SRC_TAGS:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/incallui/CallCardVideoFragment;->mPrimaryNameForSwapVT:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iput-boolean v5, p0, Lcom/android/incallui/CallCardVideoFragment;->isSwapClicked:Z

    :goto_4
    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->removeMessages(I)V

    :cond_d
    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v7, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_e
    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mVideoCallManager:Lcom/android/incallui/vt/VideoCallManager;

    invoke-virtual {v0}, Lcom/android/incallui/vt/VideoCallManager;->getVideoMoResume()Z

    move-result v0

    if-ne v0, v6, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mVideoCallManager:Lcom/android/incallui/vt/VideoCallManager;

    invoke-virtual {v0, v5}, Lcom/android/incallui/vt/VideoCallManager;->setVideoMoResume(Z)V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mVideoCallManager:Lcom/android/incallui/vt/VideoCallManager;

    invoke-virtual {v0, v5}, Lcom/android/incallui/vt/VideoCallManager;->setVideoHeld(Z)V

    goto/16 :goto_0

    :cond_f
    invoke-direct {p0, v0}, Lcom/android/incallui/CallCardVideoFragment;->isVideoShareTx(Lcom/android/services/telephony/common/Call;)Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndSurface:Landroid/graphics/SurfaceTexture;

    iget-object v2, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndView:Landroid/view/TextureView;

    invoke-direct {p0, v5, v1, v2}, Lcom/android/incallui/CallCardVideoFragment;->setVideoLocationInternal(ILandroid/graphics/SurfaceTexture;Landroid/view/TextureView;)V

    invoke-direct {p0, v0}, Lcom/android/incallui/CallCardVideoFragment;->isCameraOffRx(Lcom/android/services/telephony/common/Call;)Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-direct {p0}, Lcom/android/incallui/CallCardVideoFragment;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/vt/VideoCallManager;->getVideoHeld()Z

    move-result v1

    if-nez v1, :cond_10

    iget-object v1, p0, Lcom/android/incallui/CallCardVideoFragment;->mVideoCallManager:Lcom/android/incallui/vt/VideoCallManager;

    invoke-virtual {v1}, Lcom/android/incallui/vt/VideoCallManager;->getCameraState()Lcom/samsung/commonimsinterface/imscommon/CameraState;

    move-result-object v1

    sget-object v2, Lcom/samsung/commonimsinterface/imscommon/CameraState;->PREVIEW_STARTED:Lcom/samsung/commonimsinterface/imscommon/CameraState;

    if-ne v1, v2, :cond_10

    const-string v1, "BaseFragment"

    const-string v2, "onVideoCallEvent() stopCameraPreview "

    invoke-static {v1, v2, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v1, p0, Lcom/android/incallui/CallCardVideoFragment;->mVideoCallManager:Lcom/android/incallui/vt/VideoCallManager;

    invoke-virtual {v1}, Lcom/android/incallui/vt/VideoCallManager;->stopCameraPreview()V

    iget-object v1, p0, Lcom/android/incallui/CallCardVideoFragment;->mVideoCallManager:Lcom/android/incallui/vt/VideoCallManager;

    invoke-virtual {v1, v9, v5, v5}, Lcom/android/incallui/vt/VideoCallManager;->setNearEndSurface(Landroid/graphics/SurfaceTexture;II)V

    iget-object v1, p0, Lcom/android/incallui/CallCardVideoFragment;->mVideoCallManager:Lcom/android/incallui/vt/VideoCallManager;

    iget-object v2, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1, v2, v5, v5}, Lcom/android/incallui/vt/VideoCallManager;->setNearEndSurface(Landroid/graphics/SurfaceTexture;II)V

    :cond_10
    iget-object v1, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndSurface:Landroid/graphics/SurfaceTexture;

    iget-object v2, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndView:Landroid/view/TextureView;

    invoke-direct {p0, v6, v1, v2}, Lcom/android/incallui/CallCardVideoFragment;->setVideoLocationInternal(ILandroid/graphics/SurfaceTexture;Landroid/view/TextureView;)V

    invoke-direct {p0}, Lcom/android/incallui/CallCardVideoFragment;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/vt/VideoCallManager;->getVideoHeldRemote()Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndContainter:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndContainter:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndContainterTemplate:Landroid/view/ViewGroup;

    invoke-static {v1, v2, v3, v8}, Lcom/android/incallui/AnimationUtils$Move;->move(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    iget-object v1, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndContainter:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndContainter:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndContainterTemplate:Landroid/view/ViewGroup;

    invoke-static {v1, v2, v3, v8}, Lcom/android/incallui/AnimationUtils$Move;->move(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    iget-object v1, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndContainter:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->bringToFront()V

    iget-object v1, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndContainter:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->bringToFront()V

    iget-object v1, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndContainter:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/incallui/CallCardVideoFragment;->mCameraPreviewTouchListerner:Lcom/android/incallui/CallCardVideoFragment$CameraPreviewTouchListerner;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto/16 :goto_3

    :cond_11
    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mModifyText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f09038e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/incallui/CallCardVideoFragment;->SRC_TAGS:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/incallui/CallCardVideoFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    nop

    :sswitch_data_0
    .sparse-switch
        0xc9 -> :sswitch_0
        0xd6 -> :sswitch_1
        0xd7 -> :sswitch_2
    .end sparse-switch
.end method

.method public onVideoCallEvent(ILsiso/vt/VideoTelephonyData;)V
    .locals 0
    .param p1    # I
    .param p2    # Lsiso/vt/VideoTelephonyData;

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 12
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/os/Bundle;

    const/16 v11, 0x8

    const v10, 0x3f800054

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-super {p0, p1, p2}, Lcom/android/incallui/CallCardFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const-string v5, "onViewCreated..."

    invoke-virtual {p0, v5, v8}, Lcom/android/incallui/BaseFragment;->log(Ljava/lang/String;Z)V

    const v5, 0x7f0e01e2

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iput-object v5, p0, Lcom/android/incallui/CallCardVideoFragment;->mIndicatorArea:Landroid/view/ViewGroup;

    const v5, 0x7f0e0248

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iput-object v5, p0, Lcom/android/incallui/CallCardVideoFragment;->mCallBanner:Landroid/view/ViewGroup;

    const v5, 0x7f0e01ee

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iput-object v5, p0, Lcom/android/incallui/CallCardVideoFragment;->mPrimaryCallStateContainer:Landroid/view/ViewGroup;

    const v5, 0x7f0e01e4

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iput-object v5, p0, Lcom/android/incallui/CallCardVideoFragment;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    const v5, 0x7f0e0042

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/incallui/CallCardVideoFragment;->mPrimaryName:Landroid/widget/TextView;

    const v5, 0x7f0e0239

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iput-object v5, p0, Lcom/android/incallui/CallCardVideoFragment;->mIncomingContainterTemplate:Landroid/view/ViewGroup;

    const v5, 0x7f0e024e

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iput-object v5, p0, Lcom/android/incallui/CallCardVideoFragment;->mOutgoingContainterTemplate:Landroid/view/ViewGroup;

    const v5, 0x7f0e022c

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iput-object v5, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndContainterTemplate:Landroid/view/ViewGroup;

    const-string v5, "att_volte_ui"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "tmo_volte_ui"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    iget-object v5, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndContainterTemplate:Landroid/view/ViewGroup;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndContainterTemplate:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d009e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v5, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndContainterTemplate:Landroid/view/ViewGroup;

    invoke-virtual {v5, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget-object v5, p0, Lcom/android/incallui/CallCardVideoFragment;->mOutgoingContainterTemplate:Landroid/view/ViewGroup;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/incallui/CallCardVideoFragment;->mOutgoingContainterTemplate:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d009e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v5, p0, Lcom/android/incallui/CallCardVideoFragment;->mOutgoingContainterTemplate:Landroid/view/ViewGroup;

    invoke-virtual {v5, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    const v5, 0x7f0e022e

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iput-object v5, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndContainter:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndContainterTemplate:Landroid/view/ViewGroup;

    iget-object v6, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndContainter:Landroid/view/ViewGroup;

    invoke-direct {p0, v5, v6}, Lcom/android/incallui/CallCardVideoFragment;->copyParams(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    const v5, 0x7f0e023a

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iput-object v5, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndContainterTemplate:Landroid/view/ViewGroup;

    const-string v5, "att_volte_ui"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "tmo_volte_ui"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    iget-object v5, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndContainterTemplate:Landroid/view/ViewGroup;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndContainterTemplate:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v3, v8, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v5, 0xc

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v5, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndContainterTemplate:Landroid/view/ViewGroup;

    invoke-virtual {v5, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    const v5, 0x7f0e023b

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iput-object v5, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndContainter:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndContainterTemplate:Landroid/view/ViewGroup;

    iget-object v6, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndContainter:Landroid/view/ViewGroup;

    invoke-direct {p0, v5, v6}, Lcom/android/incallui/CallCardVideoFragment;->copyParams(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    const v5, 0x7f0e022f

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/TextureView;

    iput-object v5, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndView:Landroid/view/TextureView;

    const v5, 0x7f0e022d

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iput-object v5, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndContainterResizeTemplate:Landroid/view/ViewGroup;

    const v5, 0x7f0e022b

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iput-object v5, p0, Lcom/android/incallui/CallCardVideoFragment;->mVideoContainer:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndView:Landroid/view/TextureView;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndView:Landroid/view/TextureView;

    invoke-virtual {v5, v10}, Landroid/view/View;->setScaleX(F)V

    iget-object v5, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndView:Landroid/view/TextureView;

    invoke-virtual {v5, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    :cond_5
    const v5, 0x7f0e023c

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/TextureView;

    iput-object v5, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndView:Landroid/view/TextureView;

    iget-object v5, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndView:Landroid/view/TextureView;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndView:Landroid/view/TextureView;

    invoke-virtual {v5, v10}, Landroid/view/View;->setScaleX(F)V

    iget-object v5, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndView:Landroid/view/TextureView;

    invoke-virtual {v5, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    :cond_6
    const v5, 0x7f0e020e

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, p0, Lcom/android/incallui/CallCardVideoFragment;->mUpgradeDowngradeButton:Landroid/widget/ImageButton;

    iget-object v5, p0, Lcom/android/incallui/CallCardVideoFragment;->mUpgradeDowngradeButton:Landroid/widget/ImageButton;

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/incallui/CallCardVideoFragment;->mUpgradeDowngradeButton:Landroid/widget/ImageButton;

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_7
    const-string v5, "vzw_volte_ui"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8

    const-string v5, "att_volte_ui"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8

    const-string v5, "tmo_volte_ui"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    :cond_8
    const-string v5, "vzw_volte_ui"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d025d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/android/incallui/CallCardVideoFragment;->mBottomOffsetForDrag:I

    :cond_9
    iget-object v5, p0, Lcom/android/incallui/CallCardVideoFragment;->mVideoContainer:Landroid/view/ViewGroup;

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/android/incallui/CallCardVideoFragment;->mVideoContainer:Landroid/view/ViewGroup;

    new-instance v6, Lcom/android/incallui/CallCardVideoFragment$CameraPreviewDragListener;

    invoke-direct {v6, p0, v9}, Lcom/android/incallui/CallCardVideoFragment$CameraPreviewDragListener;-><init>(Lcom/android/incallui/CallCardVideoFragment;Lcom/android/incallui/CallCardVideoFragment$1;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    :cond_a
    iget-object v5, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndContainter:Landroid/view/ViewGroup;

    if-eqz v5, :cond_b

    new-instance v5, Lcom/android/incallui/CallCardVideoFragment$CameraPreviewTouchListerner;

    invoke-direct {v5, p0, v9}, Lcom/android/incallui/CallCardVideoFragment$CameraPreviewTouchListerner;-><init>(Lcom/android/incallui/CallCardVideoFragment;Lcom/android/incallui/CallCardVideoFragment$1;)V

    iput-object v5, p0, Lcom/android/incallui/CallCardVideoFragment;->mCameraPreviewTouchListerner:Lcom/android/incallui/CallCardVideoFragment$CameraPreviewTouchListerner;

    iget-object v5, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndContainter:Landroid/view/ViewGroup;

    iget-object v6, p0, Lcom/android/incallui/CallCardVideoFragment;->mCameraPreviewTouchListerner:Lcom/android/incallui/CallCardVideoFragment$CameraPreviewTouchListerner;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_b
    iget-object v5, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndContainter:Landroid/view/ViewGroup;

    if-eqz v5, :cond_c

    new-instance v5, Lcom/android/incallui/CallCardVideoFragment$CameraFarTouchListerner;

    invoke-direct {v5, p0, v9}, Lcom/android/incallui/CallCardVideoFragment$CameraFarTouchListerner;-><init>(Lcom/android/incallui/CallCardVideoFragment;Lcom/android/incallui/CallCardVideoFragment$1;)V

    iput-object v5, p0, Lcom/android/incallui/CallCardVideoFragment;->mCameraFarTouchListerner:Lcom/android/incallui/CallCardVideoFragment$CameraFarTouchListerner;

    iget-object v5, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndContainter:Landroid/view/ViewGroup;

    iget-object v6, p0, Lcom/android/incallui/CallCardVideoFragment;->mCameraFarTouchListerner:Lcom/android/incallui/CallCardVideoFragment$CameraFarTouchListerner;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_c
    const v5, 0x7f0e0252

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndModify:Landroid/widget/ImageView;

    const v5, 0x7f0e0253

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/android/incallui/CallCardVideoFragment;->mProfileImage:Landroid/widget/ImageView;

    const v5, 0x7f0e0251

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/android/incallui/CallCardVideoFragment;->mContactImage:Landroid/widget/ImageView;

    const v5, 0x7f0e0250

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndModify:Landroid/widget/ImageView;

    const v5, 0x7f0e0255

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    iput-object v5, p0, Lcom/android/incallui/CallCardVideoFragment;->mModifyRequestLayout:Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/android/incallui/CallCardVideoFragment;->mIncomingContainterTemplate:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d008e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v5, p0, Lcom/android/incallui/CallCardVideoFragment;->mIncomingContainterTemplate:Landroid/view/ViewGroup;

    invoke-virtual {v5, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_d
    const v5, 0x7f0e0246

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ToggleButton;

    iput-object v5, p0, Lcom/android/incallui/CallCardVideoFragment;->mIncomingHideButton:Landroid/widget/ToggleButton;

    iget-object v5, p0, Lcom/android/incallui/CallCardVideoFragment;->mIncomingHideButton:Landroid/widget/ToggleButton;

    if-eqz v5, :cond_e

    iget-object v5, p0, Lcom/android/incallui/CallCardVideoFragment;->mIncomingHideButton:Landroid/widget/ToggleButton;

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lcom/android/incallui/CallCardVideoFragment;->mIncomingHideButton:Landroid/widget/ToggleButton;

    new-instance v6, Lcom/android/incallui/SmallerHitTargetTouchListener;

    invoke-direct {v6}, Lcom/android/incallui/SmallerHitTargetTouchListener;-><init>()V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_e
    const v5, 0x7f0e024a

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/incallui/CallCardVideoFragment;->mTouchBackground:Landroid/view/View;

    const-string v5, "vzw_volte_ui"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_f

    const-string v5, "att_volte_ui"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_f

    const-string v5, "tmo_volte_ui"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_18

    :cond_f
    iget-object v5, p0, Lcom/android/incallui/CallCardVideoFragment;->mTouchBackground:Landroid/view/View;

    if-eqz v5, :cond_10

    iget-object v5, p0, Lcom/android/incallui/CallCardVideoFragment;->mTouchBackground:Landroid/view/View;

    iget-object v6, p0, Lcom/android/incallui/CallCardVideoFragment;->mToggleTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_10
    :goto_0
    const v5, 0x7f0e024b

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/incallui/CallCardVideoFragment;->mBigTouchArea:Landroid/view/View;

    const v5, 0x7f0e024d

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/incallui/CallCardVideoFragment;->mSmallTouchArea:Landroid/view/View;

    const v5, 0x7f0e024c

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/incallui/CallCardVideoFragment;->mResizedTouchArea:Landroid/view/View;

    const v5, 0x7f0e0230

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    iput-object v5, p0, Lcom/android/incallui/CallCardVideoFragment;->mPreparingAnimation:Landroid/widget/RelativeLayout;

    const v5, 0x7f0e0231

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ProgressBar;

    iput-object v5, p0, Lcom/android/incallui/CallCardVideoFragment;->mPreparingAnimationImage:Landroid/widget/ProgressBar;

    const v5, 0x7f0e0232

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/incallui/CallCardVideoFragment;->mPreparingAnimationText:Landroid/widget/TextView;

    const v5, 0x7f0e0234

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndPhoto:Landroid/widget/ImageView;

    const v5, 0x7f0e004b

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/android/incallui/CallCardVideoFragment;->mCallerInfoPhoto:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/incallui/CallCardVideoFragment;->mCallerInfoPhoto:Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/android/incallui/CallCardFragment;->mPhoto:Landroid/widget/ImageView;

    const-string v5, "cnap_supplementary_service"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_11

    const v5, 0x7f0e020a

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/incallui/CallCardVideoFragment;->mPrimaryCnapNameContainer:Landroid/view/View;

    const v5, 0x7f0e020b

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/incallui/CallCardVideoFragment;->mPrimaryCnapName:Landroid/widget/TextView;

    :cond_11
    const-string v5, "cdnip_supplementary_service"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_12

    const v5, 0x7f0e020c

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/incallui/CallCardVideoFragment;->mPrimaryCdnipNumber:Landroid/widget/TextView;

    :cond_12
    const v5, 0x7f0e01fc

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/incallui/CallCardVideoFragment;->mElapsedTime:Landroid/widget/TextView;

    const v5, 0x7f0e0043

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/incallui/CallCardVideoFragment;->mVideoCallStateLabel:Landroid/widget/TextView;

    const v5, 0x7f0e0240

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndSwitchAnimationView:Landroid/widget/ImageView;

    const v5, 0x7f0e0236

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndCaptureAnimatinoView:Landroid/view/View;

    const v5, 0x7f0e0241

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndCaptureAnimatinoView:Landroid/view/View;

    const-string v5, "prohibit_chattering"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_13

    const v5, 0x7f0e0233

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndDocomoImage:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndDocomoImage:Landroid/widget/ImageView;

    if-eqz v5, :cond_13

    iget-object v5, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndDocomoImage:Landroid/widget/ImageView;

    invoke-virtual {v5, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_13
    const-string v5, "camera_fail_image"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_14

    const v5, 0x7f0e023f

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndDocomoImage:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndDocomoImage:Landroid/widget/ImageView;

    if-eqz v5, :cond_14

    invoke-direct {p0}, Lcom/android/incallui/CallCardVideoFragment;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/vt/VideoCallManager;->getAllowCamera()Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-static {}, Lcom/android/incallui/CallCardPresenter;->getInstance()Lcom/android/incallui/CallCardPresenter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/CallCardPresenter;->isCameraFailed()Z

    move-result v5

    if-nez v5, :cond_19

    iget-object v5, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndDocomoImage:Landroid/widget/ImageView;

    invoke-virtual {v5, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_14
    :goto_1
    const-string v5, "show_audio_codec_amr_wb"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_15

    const v5, 0x7f0e01f9

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/incallui/CallCardVideoFragment;->mHighQualitySoundText:Landroid/widget/TextView;

    :cond_15
    const v5, 0x7f0e0256

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/incallui/CallCardVideoFragment;->mModifyText:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/incallui/vt/VideoCallManager;->getInstance()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v4

    if-eqz v4, :cond_16

    invoke-virtual {v4, p0}, Lcom/android/incallui/vt/VideoCallManager;->addListener(Lcom/android/incallui/vt/VTStateListener;)V

    :cond_16
    const-string v5, "hide_penwindow_indicator_area"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_17

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIMSLandscapeConfCall()Z

    move-result v5

    if-nez v5, :cond_17

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    if-eqz v5, :cond_17

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    instance-of v5, v5, Lcom/android/incallui/InCallActivity;

    if-eqz v5, :cond_17

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    check-cast v5, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v5}, Lcom/android/incallui/InCallActivity;->isPenMultiWindow()Z

    move-result v5

    if-eqz v5, :cond_1a

    invoke-virtual {p0, v7}, Lcom/android/incallui/CallCardVideoFragment;->setIndicatorVisible(Z)V

    :cond_17
    :goto_2
    return-void

    :cond_18
    iget-object v5, p0, Lcom/android/incallui/CallCardVideoFragment;->mTouchBackground:Landroid/view/View;

    if-eqz v5, :cond_10

    iget-object v5, p0, Lcom/android/incallui/CallCardVideoFragment;->mTouchBackground:Landroid/view/View;

    iget-object v6, p0, Lcom/android/incallui/CallCardVideoFragment;->mVideoTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto/16 :goto_0

    :cond_19
    iget-object v5, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndDocomoImage:Landroid/widget/ImageView;

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_1a
    invoke-virtual {p0, v8}, Lcom/android/incallui/CallCardVideoFragment;->setIndicatorVisible(Z)V

    goto :goto_2
.end method

.method onZoomIn()V
    .locals 2

    const-string v0, "onZoomIn"

    invoke-virtual {p0, v0}, Lcom/android/incallui/BaseFragment;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mVideoCallManager:Lcom/android/incallui/vt/VideoCallManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mVideoCallManager:Lcom/android/incallui/vt/VideoCallManager;

    invoke-virtual {v0}, Lcom/android/incallui/vt/VideoCallManager;->getZoom()I

    move-result v0

    iget-object v1, p0, Lcom/android/incallui/CallCardVideoFragment;->mVideoCallManager:Lcom/android/incallui/vt/VideoCallManager;

    invoke-virtual {v1}, Lcom/android/incallui/vt/VideoCallManager;->getMaxZoom()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/CallCardVideoFragment;->mVideoCallManager:Lcom/android/incallui/vt/VideoCallManager;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Lcom/android/incallui/vt/VideoCallManager;->setZoom(I)V

    :cond_0
    return-void
.end method

.method onZoomOut()V
    .locals 2

    const-string v0, "onZoomOut"

    invoke-virtual {p0, v0}, Lcom/android/incallui/BaseFragment;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mVideoCallManager:Lcom/android/incallui/vt/VideoCallManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mVideoCallManager:Lcom/android/incallui/vt/VideoCallManager;

    invoke-virtual {v0}, Lcom/android/incallui/vt/VideoCallManager;->getZoom()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/android/incallui/CallCardVideoFragment;->mVideoCallManager:Lcom/android/incallui/vt/VideoCallManager;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Lcom/android/incallui/vt/VideoCallManager;->setZoom(I)V

    :cond_0
    return-void
.end method

.method public setActionMemoFilePath(ILjava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setActionMemoFilePath : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x12e

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/incallui/InCallUtils;->setActionMemoFilePathForLog(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "It should not be here... only for MEMO_DURING_CALL"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public setCallState(ILcom/android/services/telephony/common/Call$DisconnectCause;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 10

    const/4 v9, 0x4

    const/4 v4, -0x1

    const/4 v8, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-super/range {p0 .. p5}, Lcom/android/incallui/CallCardFragment;->setCallState(ILcom/android/services/telephony/common/Call$DisconnectCause;ZLjava/lang/String;Ljava/lang/String;)V

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

    invoke-virtual {p0, p1}, Lcom/android/incallui/CallCardVideoFragment;->updateBgColorForCallState(I)V

    invoke-virtual {p0, p1}, Lcom/android/incallui/CallCardVideoFragment;->updatePrimaryCallBanner(I)V

    invoke-virtual {p0, p1}, Lcom/android/incallui/CallCardVideoFragment;->updatePrimaryName(I)V

    invoke-virtual {p0, p1}, Lcom/android/incallui/CallCardVideoFragment;->updatePrimaryCallStateContainer(I)V

    invoke-virtual {p0, p1}, Lcom/android/incallui/CallCardVideoFragment;->updateVideoCallStateLabel(I)V

    invoke-virtual {p0}, Lcom/android/incallui/CallCardVideoFragment;->updatePhotoHandle()V

    invoke-direct {p0}, Lcom/android/incallui/CallCardVideoFragment;->updateSecondaryCallContainer()V

    const-string v0, "prohibit_chattering"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/incallui/CallCardVideoFragment;->updateNoVideoImage(I)V

    :cond_0
    const-string v0, "incoming_call_widget_for_volte"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isPSVideoCall()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0, v2}, Lcom/android/incallui/CallCardVideoFragment;->showIncomingHideButton(Z)V

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/incallui/CallCardVideoFragment;->updateSurfaceViewVisibility(I)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/services/telephony/common/Call;

    move-result-object v5

    const/4 v0, 0x2

    if-ne p1, v0, :cond_13

    invoke-direct {p0}, Lcom/android/incallui/CallCardVideoFragment;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "vzw_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getType()I

    move-result v0

    if-ne v0, v3, :cond_12

    invoke-virtual {p0, v3}, Lcom/android/incallui/CallCardVideoFragment;->updateFarEndPreparingAnimationImage(Z)V

    :cond_1
    :goto_1
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIMSLandscapeConfCall()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isHDVideoLandscapeCall()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_3
    const-string v0, "feature_ktt"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallCommandClient;->isDisplayBitrate()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v6, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    const-class v7, Lcom/android/incallui/service/DisplayBitratePopupService;

    invoke-direct {v6, v1, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v6}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_4
    invoke-direct {p0, p1}, Lcom/android/incallui/CallCardVideoFragment;->updateVideoBanner(I)V

    invoke-virtual {v5}, Lcom/android/services/telephony/common/Call;->getType()I

    move-result v0

    iput v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mPrevActiveCallType:I

    :cond_5
    :goto_2
    const-string v0, "att_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "tmo_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    invoke-direct {p0, p1}, Lcom/android/incallui/CallCardVideoFragment;->updateHoldeView(I)V

    :cond_7
    const-string v0, "vzw_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "att_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "tmo_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCallState2...state ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallCardVideoFragment;->mVideoCallManager:Lcom/android/incallui/vt/VideoCallManager;

    invoke-virtual {v1}, Lcom/android/incallui/vt/VideoCallManager;->getCameraState()Lcom/samsung/commonimsinterface/imscommon/CameraState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    if-eqz v5, :cond_18

    invoke-virtual {v5}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v0

    :goto_3
    if-ne p1, v8, :cond_9

    iget v1, p0, Lcom/android/incallui/CallCardVideoFragment;->mPrevActiveCallState:I

    if-eq v1, v9, :cond_b

    :cond_9
    if-ne p1, v8, :cond_a

    iget v1, p0, Lcom/android/incallui/CallCardVideoFragment;->mPrevActiveCallState:I

    if-ne v1, v8, :cond_a

    iget v1, p0, Lcom/android/incallui/CallCardVideoFragment;->mPrevActiveCallId:I

    if-ne v1, v0, :cond_b

    :cond_a
    if-ne p1, v8, :cond_c

    iget v1, p0, Lcom/android/incallui/CallCardVideoFragment;->mPrevActiveCallState:I

    const/16 v4, 0x9

    if-ne v1, v4, :cond_c

    :cond_b
    const-string v1, "setCallState start camera"

    invoke-static {p0, v1, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/incallui/CallCardVideoFragment;->mVideoCallManager:Lcom/android/incallui/vt/VideoCallManager;

    invoke-virtual {v1}, Lcom/android/incallui/vt/VideoCallManager;->getCameraState()Lcom/samsung/commonimsinterface/imscommon/CameraState;

    move-result-object v1

    sget-object v3, Lcom/samsung/commonimsinterface/imscommon/CameraState;->CAMERA_CLOSED:Lcom/samsung/commonimsinterface/imscommon/CameraState;

    if-ne v1, v3, :cond_16

    iget-object v1, p0, Lcom/android/incallui/CallCardVideoFragment;->mVideoCallManager:Lcom/android/incallui/vt/VideoCallManager;

    iget-object v2, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1, v2}, Lcom/android/incallui/vt/VideoCallManager;->initializeCamera(Landroid/graphics/SurfaceTexture;)V

    :cond_c
    :goto_4
    iput p1, p0, Lcom/android/incallui/CallCardVideoFragment;->mPrevActiveCallState:I

    iput v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mPrevActiveCallId:I

    :cond_d
    return-void

    :cond_e
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEasyModeOn()Z

    move-result v0

    if-nez v0, :cond_11

    if-eq p1, v8, :cond_f

    if-ne p1, v9, :cond_10

    :cond_f
    move v0, v3

    :goto_5
    invoke-virtual {p0, v0}, Lcom/android/incallui/CallCardVideoFragment;->showIncomingHideButton(Z)V

    goto/16 :goto_0

    :cond_10
    move v0, v2

    goto :goto_5

    :cond_11
    invoke-virtual {p0, v2}, Lcom/android/incallui/CallCardVideoFragment;->showIncomingHideButton(Z)V

    goto/16 :goto_0

    :cond_12
    invoke-direct {p0}, Lcom/android/incallui/CallCardVideoFragment;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/vt/VideoCallManager;->isFarFrameReady()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/CallCardVideoFragment;->updateFarEndPreparingAnimationImage(Z)V

    goto/16 :goto_1

    :cond_13
    iput v4, p0, Lcom/android/incallui/CallCardVideoFragment;->mPrevActiveCallType:I

    const/16 v0, 0x9

    if-ne p1, v0, :cond_14

    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/incallui/CallButtonPresenter;->setVideoResponseType(I)V

    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/incallui/CallButtonPresenter;->setVideoRequestType(I)V

    goto/16 :goto_2

    :cond_14
    const-string v0, "vzw_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    if-ne p1, v9, :cond_5

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_15
    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mModifyRequestLayout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    :cond_16
    iget-object v1, p0, Lcom/android/incallui/CallCardVideoFragment;->mVideoCallManager:Lcom/android/incallui/vt/VideoCallManager;

    invoke-virtual {v1}, Lcom/android/incallui/vt/VideoCallManager;->getCameraState()Lcom/samsung/commonimsinterface/imscommon/CameraState;

    move-result-object v1

    sget-object v3, Lcom/samsung/commonimsinterface/imscommon/CameraState;->PREVIEW_STARTED:Lcom/samsung/commonimsinterface/imscommon/CameraState;

    if-ne v1, v3, :cond_17

    iget-object v1, p0, Lcom/android/incallui/CallCardVideoFragment;->mVideoCallManager:Lcom/android/incallui/vt/VideoCallManager;

    invoke-virtual {v1}, Lcom/android/incallui/vt/VideoCallManager;->stopCameraPreview()V

    :cond_17
    iget-object v1, p0, Lcom/android/incallui/CallCardVideoFragment;->mVideoCallManager:Lcom/android/incallui/vt/VideoCallManager;

    iget-object v3, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1, v3, v2, v2}, Lcom/android/incallui/vt/VideoCallManager;->setNearEndSurface(Landroid/graphics/SurfaceTexture;II)V

    iget-object v1, p0, Lcom/android/incallui/CallCardVideoFragment;->mVideoCallManager:Lcom/android/incallui/vt/VideoCallManager;

    invoke-virtual {v1}, Lcom/android/incallui/vt/VideoCallManager;->startCameraPreviewWithSurface()V

    goto :goto_4

    :cond_18
    move v0, v4

    goto/16 :goto_3
.end method

.method protected setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-nez p1, :cond_0

    const-string v0, "view is null"

    invoke-virtual {p0, v0}, Lcom/android/incallui/BaseFragment;->log(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    if-nez p2, :cond_1

    const-string v0, "photo is null"

    invoke-virtual {p0, v0}, Lcom/android/incallui/BaseFragment;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setIncomingHideButton(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mIncomingHideButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mIncomingHideButton:Landroid/widget/ToggleButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mIncomingHideButton:Landroid/widget/ToggleButton;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09015a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mIncomingHideButton:Landroid/widget/ToggleButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mIncomingHideButton:Landroid/widget/ToggleButton;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09017e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setIndicatorVisible(Z)V
    .locals 2
    .param p1    # Z

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mIndicatorArea:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/incallui/CallCardVideoFragment;->mIndicatorArea:Landroid/view/ViewGroup;

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setPrimary(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILandroid/graphics/drawable/Drawable;ZZZZZ)V
    .locals 1

    const-string v0, "setPrimary.. CallCardVideoFragment"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/CallCardVideoFragment;->updatePhotoHandle()V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndPhoto:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, p6}, Lcom/android/incallui/CallCardVideoFragment;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    invoke-super/range {p0 .. p11}, Lcom/android/incallui/CallCardFragment;->setPrimary(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILandroid/graphics/drawable/Drawable;ZZZZZ)V

    return-void
.end method

.method public setPrimaryCallElapsedTime(ZLjava/lang/String;J)V
    .locals 3
    .param p1    # Z
    .param p2    # Ljava/lang/String;
    .param p3    # J

    const/4 v0, 0x0

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mElapsedTime:Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/incallui/CallCardFragment;->mEndCallTime:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallCardPresenter;

    iget-object v2, p0, Lcom/android/incallui/CallCardFragment;->mEndCallTime:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/incallui/CallCardPresenter;->setEndCallTime(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/CallCardVideoFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/android/incallui/AnimationUtils$Fade;->show(Landroid/view/View;)V

    :cond_0
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/android/incallui/AnimationUtils$Fade;->hide(Landroid/view/View;I)V

    goto :goto_0
.end method

.method public setPrimaryCdnipNumber(ZLjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mPrimaryCdnipNumber:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cdnipNumber = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0901ab

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallCardVideoFragment;->mPrimaryCdnipNumber:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mPrimaryCdnipNumber:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/incallui/InCallUtils;->getFirstCallState()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/CallCardVideoFragment;->updatePrimaryCallBannerLayout(I)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mPrimaryCdnipNumber:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setPrimaryCnapName(ZLjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mPrimaryCnapNameContainer:Landroid/view/View;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cnapName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mPrimaryCnapName:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mPrimaryCnapName:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mPrimaryCnapName:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mPrimaryCnapNameContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/incallui/InCallUtils;->getFirstCallState()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/CallCardVideoFragment;->updatePrimaryCallBannerLayout(I)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mPrimaryCnapNameContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setPrimaryImage(Landroid/graphics/drawable/Drawable;Z)V
    .locals 1

    const-string v0, "setPrimaryImage..CallCardVideoFragment"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/CallCardVideoFragment;->updatePhotoHandle()V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndPhoto:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, p1}, Lcom/android/incallui/CallCardVideoFragment;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    invoke-super {p0, p1, p2}, Lcom/android/incallui/CallCardFragment;->setPrimaryImage(Landroid/graphics/drawable/Drawable;Z)V

    return-void
.end method

.method public setPrimaryLabel(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;

    return-void
.end method

.method public setPrimaryVisible(Z)V
    .locals 4

    const/16 v3, 0x64

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    const-string v0, "us_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "volte_jpn_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isHDVideoQvgaLandCall()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_4

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_4
    iget-object v1, p0, Lcom/android/incallui/CallCardVideoFragment;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    const/4 v0, 0x1

    if-ne p1, v0, :cond_5

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_5
    const/16 v0, 0x8

    goto :goto_1
.end method

.method public showAndInitializeSecondaryCallInfo()V
    .locals 8

    const v2, 0x7f0e02ef

    const/16 v7, 0x8

    const/4 v6, 0x1

    const/4 v5, -0x1

    invoke-super {p0}, Lcom/android/incallui/CallCardFragment;->showAndInitializeSecondaryCallInfo()V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mSecondaryInfoContainer:Landroid/view/View;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0e02e6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mSecondaryInfoContainer:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mSecondaryCallBannerLayout:Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0e0044

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mSecondaryCallBannerLayout:Landroid/view/View;

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mSecondaryCallBtnContainer:Landroid/view/View;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mSecondaryCallBtnContainer:Landroid/view/View;

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mSecondaryCallBanner:Landroid/view/View;

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0e02e8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mSecondaryCallBanner:Landroid/view/View;

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mSecondaryControlBtnContainer:Landroid/view/View;

    if-nez v0, :cond_4

    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mSecondaryControlBtnContainer:Landroid/view/View;

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mSwapBtn:Landroid/view/View;

    if-nez v0, :cond_5

    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0e0030

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mSwapBtn:Landroid/view/View;

    :cond_5
    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mSwapBtnText:Landroid/view/View;

    if-nez v0, :cond_6

    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0e02f2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mSwapBtnText:Landroid/view/View;

    :cond_6
    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mDivider:Landroid/view/View;

    if-nez v0, :cond_7

    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0e02f1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mDivider:Landroid/view/View;

    :cond_7
    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mMergeBtn:Landroid/view/View;

    if-nez v0, :cond_8

    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0e0033

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mMergeBtn:Landroid/view/View;

    :cond_8
    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mMergeBtn:Landroid/view/View;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mMergeBtn:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mMergeBtn:Landroid/view/View;

    new-instance v1, Lcom/android/incallui/SmallerHitTargetTouchListener;

    invoke-direct {v1}, Lcom/android/incallui/SmallerHitTargetTouchListener;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_9
    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mSwapBtn:Landroid/view/View;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mSwapBtn:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mSwapBtn:Landroid/view/View;

    new-instance v1, Lcom/android/incallui/SmallerHitTargetTouchListener;

    invoke-direct {v1}, Lcom/android/incallui/SmallerHitTargetTouchListener;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_a
    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mSecondaryCallBannerLayout:Landroid/view/View;

    if-eqz v0, :cond_d

    const-string v0, "att_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "tmo_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_b
    const-string v0, "mSecondaryCallBannerLayout sets a margin bottom for VOLTE ATT model."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mSecondaryCallBannerLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/android/incallui/CallCardVideoFragment;->mOrientation:I

    if-ne v1, v6, :cond_f

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0014

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-boolean v1, p0, Lcom/android/incallui/CallCardFragment;->mShowSecondary:Z

    if-eqz v1, :cond_c

    const-string v1, "NearEnd view is set on secondary state."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0220

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndView:Landroid/view/TextureView;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndContainter:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int v2, v3, v2

    iget-object v3, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndContainter:Landroid/view/ViewGroup;

    int-to-float v4, v1

    invoke-virtual {v3, v4}, Landroid/view/View;->setX(F)V

    iget-object v3, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndContainter:Landroid/view/ViewGroup;

    int-to-float v4, v2

    invoke-virtual {v3, v4}, Landroid/view/View;->setY(F)V

    iget-object v3, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndContainterTemplate:Landroid/view/ViewGroup;

    int-to-float v1, v1

    invoke-virtual {v3, v1}, Landroid/view/View;->setX(F)V

    iget-object v1, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndContainterTemplate:Landroid/view/ViewGroup;

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setY(F)V

    :cond_c
    :goto_0
    iget-object v1, p0, Lcom/android/incallui/CallCardVideoFragment;->mSecondaryCallBannerLayout:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallCardPresenter;->updateVideoView()V

    :cond_d
    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mMergeBtn:Landroid/view/View;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mDivider:Landroid/view/View;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mSwapBtn:Landroid/view/View;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mSecondaryCallBtnContainer:Landroid/view/View;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mSecondaryInfoContainer:Landroid/view/View;

    if-eqz v0, :cond_e

    const-string v0, "vzw_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mMergeBtn:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mDivider:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mSwapBtn:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget v2, p0, Lcom/android/incallui/CallCardVideoFragment;->mOrientation:I

    if-ne v2, v6, :cond_10

    const/16 v2, 0xb4

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/16 v2, 0x21c

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    :goto_1
    iget-object v2, p0, Lcom/android/incallui/CallCardVideoFragment;->mSecondaryInfoContainer:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/android/incallui/CallCardVideoFragment;->mSwapBtn:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_e
    return-void

    :cond_f
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d025e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    :cond_10
    const/16 v2, 0x111

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/16 v2, 0x270

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_1
.end method

.method public showEpdgIcon(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showEpdgIcon show: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mEpdgIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mEpdgIcon:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public showFarEndCaptureAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndCaptureAnimatinoView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndCaptureAnimatinoView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public showHighQualitySoundText(Z)V
    .locals 7

    const/4 v3, -0x2

    const/high16 v6, 0x3f800000

    const/4 v5, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mHighQualitySoundText:Landroid/widget/TextView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showHighQualitySoundText, show: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/android/incallui/CallCardVideoFragment;->mVideoCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

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

    iget-object v2, p0, Lcom/android/incallui/CallCardVideoFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mVideoCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mHighQualitySoundText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

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
    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mHighQualitySoundText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public showHoldBanner(Z)V
    .locals 7

    const/16 v6, 0x64

    const/16 v5, 0x8

    const/4 v3, 0x0

    const/16 v4, 0x66

    const-string v0, "BaseFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showHoldBanner2 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mModifyRequestLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mModifyText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090398

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/incallui/CallCardVideoFragment;->SRC_TAGS:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/incallui/CallCardVideoFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mModifyRequestLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mModifyText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f09038f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/incallui/CallCardVideoFragment;->SRC_TAGS:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/incallui/CallCardVideoFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public showIncomingHideButton(Z)V
    .locals 2
    .param p1    # Z

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mIncomingHideButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mIncomingHideButton:Landroid/widget/ToggleButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    invoke-direct {p0}, Lcom/android/incallui/CallCardVideoFragment;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/CallCardVideoFragment;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/vt/VideoCallManager;->isShowMe()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/CallCardVideoFragment;->setIncomingHideButton(Z)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mIncomingHideButton:Landroid/widget/ToggleButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public showModifyCall(Z)V
    .locals 2
    .param p1    # Z

    const-string v0, "att_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "tmo_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mUpgradeDowngradeButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/incallui/CallCardVideoFragment;->mUpgradeDowngradeButton:Landroid/widget/ImageButton;

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void

    :cond_2
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public showNearEndCaptureAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndCaptureAnimatinoView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndCaptureAnimatinoView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public showNearEndDocomoImage()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndDocomoImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndDocomoImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "NearEnd no_video imageview visible : VGA & QVGA case"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/BaseFragment;->log(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndDocomoImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public showOnHoldText(Z)V
    .locals 7

    const/4 v3, -0x2

    const/high16 v6, 0x3f800000

    const/4 v5, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mOnHoldText:Landroid/widget/TextView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showOnHoldText, show: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/android/incallui/CallCardVideoFragment;->mVideoCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

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

    iget-object v2, p0, Lcom/android/incallui/CallCardVideoFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mVideoCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mOnHoldText:Landroid/widget/TextView;

    if-eqz p1, :cond_5

    :goto_5
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

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
    const/16 v4, 0x8

    goto :goto_5
.end method

.method public showSecondaryHDVoiceIcon(ZZ)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showSecondaryHDVoiceIcon, show: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " / isPSVideoCall: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mSecondaryHDVoiceIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mSecondaryHDVoiceIcon:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public showSecondaryVideoIcon(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showSecondaryVideoIcon isPSVideoCall: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mSecondaryVideoIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mSecondaryVideoIcon:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public toggleIncomingHideShow()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallCardPresenter;->setIncomingHideShow()V

    return-void
.end method

.method protected togglePrimaryCallBanner()V
    .locals 5

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v3, "vzw_volte_ui"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "att_volte_ui"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "tmo_volte_ui"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/services/telephony/common/Call;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    :cond_3
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/incallui/CallCardVideoFragment;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/incallui/CallCardVideoFragment;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_4

    invoke-direct {p0}, Lcom/android/incallui/CallCardVideoFragment;->isPossibleToHideBanner()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x0

    :goto_1
    invoke-direct {p0, v2}, Lcom/android/incallui/CallCardVideoFragment;->showPrimaryCallBanner(Z)V

    goto :goto_0

    :cond_4
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public updateBgColorForCallState(I)V
    .locals 5

    const v3, 0x7f0a0085

    const v2, 0x7f0a0087

    const v1, 0x7f0a0086

    const/16 v0, 0x8

    if-ne v0, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "volte_jpn_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIncomingRejectedCall()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0078

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a007d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    :goto_1
    iget-object v2, p0, Lcom/android/incallui/CallCardVideoFragment;->mIndicatorArea:Landroid/view/ViewGroup;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/incallui/CallCardVideoFragment;->mIndicatorArea:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mPrimaryCallStateContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mPrimaryCallStateContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {p0, p1}, Lcom/android/incallui/CallCardVideoFragment;->updatePrimaryCallBannerLayout(I)V

    goto :goto_0

    :pswitch_1
    const-string v0, "att_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "tmo_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    :goto_2
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    move v4, v1

    move v1, v0

    move v0, v4

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_2

    :pswitch_2
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0074

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a007a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0076

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a007c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_1

    :pswitch_4
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto/16 :goto_1

    :pswitch_5
    const-string v0, "att_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "tmo_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    :goto_3
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    move v4, v1

    move v1, v0

    move v0, v4

    goto/16 :goto_1

    :cond_8
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public updateConfUI(Z)V
    .locals 4
    .param p1    # Z

    const/4 v3, 0x0

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndView:Landroid/view/TextureView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndSurface:Landroid/graphics/SurfaceTexture;

    iget-object v2, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndView:Landroid/view/TextureView;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/incallui/CallCardVideoFragment;->setVideoLocationInternal(ILandroid/graphics/SurfaceTexture;Landroid/view/TextureView;)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndSwitchAnimationView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndSwitchAnimationView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndSwitchAnimationView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    invoke-static {}, Lcom/android/incallui/CallCardPresenter;->getInstance()Lcom/android/incallui/CallCardPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallCardPresenter;->getResizeChecked()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/incallui/CallCardVideoFragment;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/vt/VideoCallManager;->isSurfaceViewSwipe()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndContainter:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndContainter:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndContainterTemplate:Landroid/view/ViewGroup;

    invoke-static {v0, v1, v2}, Lcom/android/incallui/AnimationUtils$Move;->move(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    invoke-direct {p0}, Lcom/android/incallui/CallCardVideoFragment;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/incallui/vt/VideoCallManager;->setSurfaceViewSwipe(Z)V

    invoke-static {}, Lcom/android/incallui/CallCardPresenter;->getInstance()Lcom/android/incallui/CallCardPresenter;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/incallui/CallCardPresenter;->setResizeChecked(Z)V

    :cond_3
    return-void
.end method

.method public updateFarEndPreparingAnimationImage(Z)V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    iget-boolean v0, p0, Lcom/android/incallui/CallCardVideoFragment;->isShowingPreparingAnimation:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/CallCardVideoFragment;->isShowingPreparingAnimation:Z

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mPreparingAnimationImage:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mPreparingAnimationText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mPreparingAnimation:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mPreparingAnimation:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0033

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean v1, p0, Lcom/android/incallui/CallCardVideoFragment;->isShowingPreparingAnimation:Z

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mPreparingAnimationImage:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mPreparingAnimationText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mPreparingAnimation:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mPreparingAnimation:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method public updateInCallBanner()V
    .locals 4

    const/16 v3, 0x64

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public updateIncomingModifyCall(I)V
    .locals 1

    const-string v0, "updateIncomingModifyCall()"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/android/incallui/CallCardFragment;->updateIncomingModifyCall(I)V

    return-void
.end method

.method public updateNoVideoImage(I)V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateNoVideoImage... state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndDocomoImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    const-string v0, "FarEnd no_video imageview making GONE in updateVideoCallStatelabel : VGA & QVGA case"

    invoke-virtual {p0, v0, v2}, Lcom/android/incallui/BaseFragment;->log(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndDocomoImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndDocomoImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const-string v0, "NearEnd no_video imageview making GONE in updateVideoCallStatelabel : VGA & QVGA case"

    invoke-virtual {p0, v0, v2}, Lcom/android/incallui/BaseFragment;->log(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndDocomoImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->showImgTimer:Lcom/android/incallui/CallCardVideoFragment$DefaultImageTimer;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mPrevActiveCallState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->showImgTimer:Lcom/android/incallui/CallCardVideoFragment$DefaultImageTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->showImgTimer:Lcom/android/incallui/CallCardVideoFragment$DefaultImageTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x8 -> :sswitch_0
        0x9 -> :sswitch_0
    .end sparse-switch
.end method

.method protected updatePhotoHandle()V
    .locals 6

    const/4 v5, 0x0

    const/16 v4, 0x8

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

    iget-object v3, p0, Lcom/android/incallui/CallCardVideoFragment;->mCallerInfoPhoto:Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/incallui/CallCardFragment;->mPhoto:Landroid/widget/ImageView;

    :cond_1
    iget-object v3, p0, Lcom/android/incallui/CallCardVideoFragment;->mCallerInfoPhoto:Landroid/widget/ImageView;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/incallui/CallCardVideoFragment;->mCallerInfoPhoto:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    iget-object v3, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndPhoto:Landroid/widget/ImageView;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndPhoto:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

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
    iget-object v3, p0, Lcom/android/incallui/CallCardVideoFragment;->mCallerInfoPhoto:Landroid/widget/ImageView;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/incallui/CallCardVideoFragment;->mCallerInfoPhoto:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_6
    iget-object v3, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndPhoto:Landroid/widget/ImageView;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndPhoto:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_7
    if-eq v2, v4, :cond_8

    const/16 v3, 0x9

    if-ne v2, v3, :cond_c

    :cond_8
    iget-object v3, p0, Lcom/android/incallui/CallCardVideoFragment;->mCallerInfoPhoto:Landroid/widget/ImageView;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/incallui/CallCardVideoFragment;->mCallerInfoPhoto:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_9
    iget-object v3, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndPhoto:Landroid/widget/ImageView;

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIMSConferenceCall()Z

    move-result v3

    if-nez v3, :cond_a

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isHDVideoLandscapeCall()Z

    move-result v3

    if-eqz v3, :cond_b

    :cond_a
    iget-object v3, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndPhoto:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_b
    iget-object v3, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndPhoto:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_c
    iget-object v3, p0, Lcom/android/incallui/CallCardVideoFragment;->mCallerInfoPhoto:Landroid/widget/ImageView;

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/android/incallui/CallCardVideoFragment;->mCallerInfoPhoto:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_d
    iget-object v3, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndPhoto:Landroid/widget/ImageView;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndPhoto:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public updatePrimaryCallBanner(I)V
    .locals 3

    const/16 v2, 0x8

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mPrimaryCallBanner:Landroid/view/ViewGroup;

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
    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_3
    sparse-switch p1, :sswitch_data_0

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    const/4 v1, 0x0

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

    :sswitch_0
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIMSLandscapeConfCall()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isHDVideoLandscapeCall()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_5
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

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x8 -> :sswitch_0
        0x9 -> :sswitch_0
    .end sparse-switch
.end method

.method public updatePrimaryCallBannerLayout(I)V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    const v5, 0x7f0d00b7

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-eq p1, v6, :cond_0

    if-ne p1, v7, :cond_7

    const-string v0, "vzw_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "common_volte_hk"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "att_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "tmo_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_0
    const-string v0, "cnap_supplementary_service"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mPrimaryCnapName:Landroid/widget/TextView;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mPrimaryCnapName:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    move v0, v1

    :goto_0
    const-string v4, "cdnip_supplementary_service"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/incallui/CallCardVideoFragment;->mPrimaryCdnipNumber:Landroid/widget/TextView;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/incallui/CallCardVideoFragment;->mPrimaryCdnipNumber:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    move v2, v1

    :cond_1
    if-eqz v0, :cond_5

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d00c1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_1
    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mCallBanner:Landroid/view/ViewGroup;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mCallBanner:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eq p1, v6, :cond_3

    const/4 v1, 0x5

    if-eq p1, v1, :cond_3

    if-ne p1, v7, :cond_c

    :cond_3
    const-string v1, "vzw_volte_ui"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    :goto_2
    iget-object v1, p0, Lcom/android/incallui/CallCardVideoFragment;->mCallBanner:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    return-void

    :cond_5
    const-string v0, "vzw_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d00c0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1

    :cond_7
    const/4 v0, 0x5

    if-eq p1, v0, :cond_8

    const/16 v0, 0x14

    if-ne p1, v0, :cond_b

    :cond_8
    const-string v0, "ims_call_message"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mPrimaryCnapName:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mPrimaryCnapName:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    move v2, v1

    :cond_9
    if-eqz v2, :cond_a

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d00c9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    iput v0, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto/16 :goto_1

    :cond_a
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto/16 :goto_1

    :cond_b
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto/16 :goto_1

    :cond_c
    const-string v1, "att_volte_ui"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    const-string v1, "tmo_volte_ui"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    :cond_d
    if-eq p1, v6, :cond_e

    if-ne p1, v7, :cond_f

    :cond_e
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto/16 :goto_2

    :cond_f
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d009e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto/16 :goto_2

    :cond_10
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d009d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto/16 :goto_2

    :cond_11
    move v0, v2

    goto/16 :goto_0
.end method

.method public updatePrimaryCallStateContainer(I)V
    .locals 2

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mPrimaryCallStateContainer:Landroid/view/ViewGroup;

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
    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mPrimaryCallStateContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_3
    packed-switch p1, :pswitch_data_0

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mPrimaryCallStateContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :pswitch_0
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIMSLandscapeConfCall()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isHDVideoLandscapeCall()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mPrimaryCallStateContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public updatePrimaryName(I)V
    .locals 8

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mPrimaryName:Landroid/widget/TextView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d00cf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d00d0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d006c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0071

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    sparse-switch p1, :sswitch_data_0

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEasyModeOn()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mPrimaryName:Landroid/widget/TextView;

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto :goto_0

    :sswitch_0
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEasyModeOn()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mPrimaryName:Landroid/widget/TextView;

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/CallCardVideoFragment;->mPrimaryName:Landroid/widget/TextView;

    float-to-int v4, v0

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setMaxWidth(I)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v4, p0, Lcom/android/incallui/CallCardVideoFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v5, v0, v6}, Landroid/graphics/Paint;->breakText(Ljava/lang/String;ZF[F)I

    move-result v0

    iget-object v1, p0, Lcom/android/incallui/CallCardVideoFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setPrimaryName... nameLength = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", breakLength = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v0, v7, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v0, v7, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mPrimaryName:Landroid/widget/TextView;

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v0, v7, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x5 -> :sswitch_0
        0x14 -> :sswitch_0
    .end sparse-switch
.end method

.method public updateSurfaceViewVisibility(I)V
    .locals 3

    const/4 v2, 0x3

    const-string v0, "volte_jpn_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIncomingRejectedCall()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    if-ne v0, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Lcom/android/services/telephony/common/Call$State;->isConnected(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getType()I

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    const-string v0, "updateSurfaceViewVisibility null"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/BaseFragment;->log(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndSurface:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/android/incallui/CallCardVideoFragment;->mFarEndView:Landroid/view/TextureView;

    invoke-direct {p0, v2, v0, v1}, Lcom/android/incallui/CallCardVideoFragment;->setVideoLocationInternal(ILandroid/graphics/SurfaceTexture;Landroid/view/TextureView;)V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndSurface:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/android/incallui/CallCardVideoFragment;->mNearEndView:Landroid/view/TextureView;

    invoke-direct {p0, v2, v0, v1}, Lcom/android/incallui/CallCardVideoFragment;->setVideoLocationInternal(ILandroid/graphics/SurfaceTexture;Landroid/view/TextureView;)V

    goto :goto_0
.end method

.method public updateVideoCallStateLabel(I)V
    .locals 5

    const v4, 0x7f09021c

    const/16 v2, 0x8

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mVideoCallStateLabel:Landroid/widget/TextView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sparse-switch p1, :sswitch_data_0

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mVideoCallStateLabel:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mVideoCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :sswitch_0
    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mElapsedTime:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :sswitch_1
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIMSConferenceCall()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mVideoCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09021a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mVideoCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const-string v0, "ims_ui_for_kor"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mVideoCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09021b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mVideoCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09021d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :sswitch_2
    const-string v0, "ims_ui_for_kor"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "volte_jpn_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mVideoCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIMSLandscapeConfCall()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mVideoCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mVideoCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mVideoCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09007e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mVideoCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mElapsedTime:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mVideoCallStateLabel:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mVideoCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment;->mVideoCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090013

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x4 -> :sswitch_0
        0x5 -> :sswitch_2
        0x7 -> :sswitch_4
        0x8 -> :sswitch_3
        0x9 -> :sswitch_3
        0x14 -> :sswitch_2
    .end sparse-switch
.end method
