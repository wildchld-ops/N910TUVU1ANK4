.class public Lcom/android/incallui/CallCardQcifVideoFragment;
.super Lcom/android/incallui/CallCardFragment;
.source "CallCardQcifVideoFragment.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/CallCardQcifVideoFragment$1;,
        Lcom/android/incallui/CallCardQcifVideoFragment$DefaultImageTimer;
    }
.end annotation


# instance fields
.field public final MEMO_DURING_CALL:I

.field private isShowingPreparingAnimation:Z

.field private isSurfaceViewSwipe:Z

.field private mCallerInfoPhoto:Landroid/widget/ImageView;

.field private mCaptureAnimationView:Landroid/view/View;

.field private mElapsedTime:Landroid/widget/TextView;

.field private mFarEndCaptureAnimatinoView:Landroid/view/View;

.field private mFarEndContainter:Landroid/view/ViewGroup;

.field private mFarEndContainterResizeTemplate:Landroid/view/ViewGroup;

.field private mFarEndContainterTemplate:Landroid/view/ViewGroup;

.field private mFarEndDocomoImage:Landroid/widget/ImageView;

.field private mFarEndPhoto:Landroid/widget/ImageView;

.field private mFarEndSurface:Landroid/graphics/SurfaceTexture;

.field private mFarEndSwitchAnimationView:Landroid/widget/ImageView;

.field private mFarEndView:Landroid/view/TextureView;

.field private mHighQualitySoundText:Landroid/widget/TextView;

.field private mIncomingContainterTemplate:Landroid/view/ViewGroup;

.field private mIncomingHideButton:Landroid/widget/ToggleButton;

.field private mIncomingHideButtonImage:Landroid/widget/ImageView;

.field private mIncomingHideButtonLayout:Landroid/view/ViewGroup;

.field private mIndicatorArea:Landroid/view/ViewGroup;

.field private mNearEndCaptureAnimatinoView:Landroid/view/View;

.field private mNearEndContainter:Landroid/view/ViewGroup;

.field private mNearEndContainterTemplate:Landroid/view/ViewGroup;

.field private mNearEndDocomoImage:Landroid/widget/ImageView;

.field private mNearEndSurface:Landroid/graphics/SurfaceTexture;

.field private mNearEndSwitchAnimationView:Landroid/widget/ImageView;

.field private mNearEndView:Landroid/view/TextureView;

.field private mPreparingAnimation:Landroid/widget/RelativeLayout;

.field private mPreparingAnimationImage:Landroid/widget/ProgressBar;

.field private mPreparingAnimationText:Landroid/widget/TextView;

.field private mPrimaryCallBanner:Landroid/view/ViewGroup;

.field private mPrimaryCallStateContainer:Landroid/view/ViewGroup;

.field private mPrimaryCdnipNumber:Landroid/widget/TextView;

.field private mPrimaryCnapName:Landroid/widget/TextView;

.field private mPrimaryCnapNameContainer:Landroid/view/View;

.field private mPrimaryLabelAndNumber:Landroid/view/ViewGroup;

.field private mPrimaryName:Landroid/widget/TextView;

.field private mRecInfoFarEnd:Landroid/view/ViewGroup;

.field private mRecInfoNearEnd:Landroid/view/ViewGroup;

.field private mRecInfoTimeTextViewFarEnd:Landroid/widget/TextView;

.field private mRecInfoTimeTextViewNearEnd:Landroid/widget/TextView;

.field private mRecordAnimationView:Landroid/view/View;

.field mVideoCallManager:Lcom/android/incallui/vt/VideoCallManager;

.field private mVideoCallStateLabel:Landroid/widget/TextView;

.field private showImgTimer:Lcom/android/incallui/CallCardQcifVideoFragment$DefaultImageTimer;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/incallui/CallCardFragment;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mRecordAnimationView:Landroid/view/View;

    iput-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mCaptureAnimationView:Landroid/view/View;

    iput-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mFarEndCaptureAnimatinoView:Landroid/view/View;

    iput-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mNearEndCaptureAnimatinoView:Landroid/view/View;

    iput-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mFarEndView:Landroid/view/TextureView;

    iput-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mFarEndSurface:Landroid/graphics/SurfaceTexture;

    iput-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mNearEndView:Landroid/view/TextureView;

    iput-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mNearEndSurface:Landroid/graphics/SurfaceTexture;

    iput-boolean v1, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->isSurfaceViewSwipe:Z

    iput-boolean v1, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->isShowingPreparingAnimation:Z

    iput-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mVideoCallManager:Lcom/android/incallui/vt/VideoCallManager;

    iput-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mRecInfoFarEnd:Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mRecInfoTimeTextViewFarEnd:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mRecInfoNearEnd:Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mRecInfoTimeTextViewNearEnd:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mHighQualitySoundText:Landroid/widget/TextView;

    const/16 v0, 0x12e

    iput v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->MEMO_DURING_CALL:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/CallCardQcifVideoFragment;)Lcom/android/incallui/CallCardQcifVideoFragment$DefaultImageTimer;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->showImgTimer:Lcom/android/incallui/CallCardQcifVideoFragment$DefaultImageTimer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/incallui/CallCardQcifVideoFragment;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mFarEndDocomoImage:Landroid/widget/ImageView;

    return-object v0
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

    iget-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mVideoCallManager:Lcom/android/incallui/vt/VideoCallManager;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/vt/VideoCallManager;->getInstance()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mVideoCallManager:Lcom/android/incallui/vt/VideoCallManager;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mVideoCallManager:Lcom/android/incallui/vt/VideoCallManager;

    return-object v0
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

.method private updatePhotoHandle()V
    .locals 5

    const/4 v4, 0x0

    const/16 v3, 0x8

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v1

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/android/incallui/CallCardFragment;->mPhoto:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mCallerInfoPhoto:Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/incallui/CallCardFragment;->mPhoto:Landroid/widget/ImageView;

    :cond_0
    iget-object v2, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mCallerInfoPhoto:Landroid/widget/ImageView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mCallerInfoPhoto:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    iget-object v2, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mFarEndPhoto:Landroid/widget/ImageView;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mFarEndPhoto:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    if-eqz v1, :cond_6

    iget-object v2, p0, Lcom/android/incallui/CallCardFragment;->mPhoto:Landroid/widget/ImageView;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mFarEndPhoto:Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/incallui/CallCardFragment;->mPhoto:Landroid/widget/ImageView;

    :cond_4
    iget-object v2, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mCallerInfoPhoto:Landroid/widget/ImageView;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mCallerInfoPhoto:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_5
    iget-object v2, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mFarEndPhoto:Landroid/widget/ImageView;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mFarEndPhoto:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mCallerInfoPhoto:Landroid/widget/ImageView;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mCallerInfoPhoto:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_7
    iget-object v2, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mFarEndPhoto:Landroid/widget/ImageView;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mFarEndPhoto:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public changeVideoLocation(IZ)V
    .locals 5

    const/4 v4, 0x1

    const/4 v1, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeVideoLocation : locationCommand - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", animate - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v4}, Lcom/android/incallui/BaseFragment;->log(Ljava/lang/String;Z)V

    if-eqz p2, :cond_6

    const/16 v0, 0xfa

    :goto_0
    const/16 v2, 0x12e

    if-ne p1, v2, :cond_0

    iget-boolean v2, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->isSurfaceViewSwipe:Z

    if-eqz v2, :cond_2

    const/16 p1, 0xc8

    :cond_0
    :goto_1
    sparse-switch p1, :sswitch_data_0

    :cond_1
    :goto_2
    return-void

    :cond_2
    const/16 p1, 0x64

    goto :goto_1

    :sswitch_0
    iget-boolean v1, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->isSurfaceViewSwipe:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mFarEndContainter:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mFarEndContainterTemplate:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mNearEndContainterTemplate:Landroid/view/ViewGroup;

    invoke-static {v1, v2, v3, v0}, Lcom/android/incallui/AnimationUtils$Move;->move(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    iget-object v1, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mNearEndContainter:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mNearEndContainterTemplate:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mFarEndContainterTemplate:Landroid/view/ViewGroup;

    invoke-static {v1, v2, v3, v0}, Lcom/android/incallui/AnimationUtils$Move;->move(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    iget-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mNearEndContainter:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    iget-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mFarEndContainter:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    iput-boolean v4, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->isSurfaceViewSwipe:Z

    goto :goto_2

    :sswitch_1
    iget-boolean v2, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->isSurfaceViewSwipe:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mNearEndContainter:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mFarEndContainterTemplate:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mNearEndContainterTemplate:Landroid/view/ViewGroup;

    invoke-static {v2, v3, v4, v0}, Lcom/android/incallui/AnimationUtils$Move;->move(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    iget-object v2, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mFarEndContainter:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mNearEndContainterTemplate:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mFarEndContainterTemplate:Landroid/view/ViewGroup;

    invoke-static {v2, v3, v4, v0}, Lcom/android/incallui/AnimationUtils$Move;->move(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    iget-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mFarEndContainter:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    iget-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mNearEndContainter:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    iput-boolean v1, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->isSurfaceViewSwipe:Z

    goto :goto_2

    :sswitch_2
    const-string v2, "ims_resize_screen"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/android/incallui/CallCardPresenter;->getInstance()Lcom/android/incallui/CallCardPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallCardPresenter;->getResizeChecked()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIMSConferenceCall()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mNearEndContainter:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mNearEndContainter:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mNearEndContainterTemplate:Landroid/view/ViewGroup;

    invoke-static {v2, v3, v4, v0}, Lcom/android/incallui/AnimationUtils$Move;->move(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    iget-object v2, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mFarEndContainter:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mFarEndContainter:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mFarEndContainterResizeTemplate:Landroid/view/ViewGroup;

    invoke-static {v2, v3, v4, v0}, Lcom/android/incallui/AnimationUtils$Move;->move(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    iget-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mFarEndContainter:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    iget-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mNearEndContainter:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    iput-boolean v1, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->isSurfaceViewSwipe:Z

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mNearEndContainter:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mNearEndContainter:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mNearEndContainterTemplate:Landroid/view/ViewGroup;

    invoke-static {v2, v3, v4, v0}, Lcom/android/incallui/AnimationUtils$Move;->move(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    iget-object v2, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mFarEndContainter:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mFarEndContainter:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mFarEndContainterTemplate:Landroid/view/ViewGroup;

    invoke-static {v2, v3, v4, v0}, Lcom/android/incallui/AnimationUtils$Move;->move(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    iget-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mFarEndContainter:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    iget-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mNearEndContainter:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    iput-boolean v1, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->isSurfaceViewSwipe:Z

    goto/16 :goto_2

    :sswitch_3
    iget-object v2, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mNearEndContainter:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mNearEndContainter:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mIncomingContainterTemplate:Landroid/view/ViewGroup;

    invoke-static {v2, v3, v4, v0}, Lcom/android/incallui/AnimationUtils$Move;->move(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    iget-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mNearEndContainter:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    iget-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mIncomingHideButtonLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mIncomingHideButtonLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    :cond_4
    iput-boolean v1, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->isSurfaceViewSwipe:Z

    goto/16 :goto_2

    :sswitch_4
    const-string v1, "ims_resize_screen"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/incallui/CallCardPresenter;->getInstance()Lcom/android/incallui/CallCardPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallCardPresenter;->getResizeChecked()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIMSConferenceCall()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mNearEndContainter:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mNearEndContainter:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mNearEndContainterTemplate:Landroid/view/ViewGroup;

    invoke-static {v1, v2, v3, v0}, Lcom/android/incallui/AnimationUtils$Move;->move(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    iget-object v1, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mFarEndContainter:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mFarEndContainter:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mFarEndContainterResizeTemplate:Landroid/view/ViewGroup;

    invoke-static {v1, v2, v3, v0}, Lcom/android/incallui/AnimationUtils$Move;->move(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    iget-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mFarEndContainter:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    iget-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mNearEndContainter:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    goto/16 :goto_2

    :cond_5
    iget-object v1, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mNearEndContainter:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mNearEndContainter:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mNearEndContainterTemplate:Landroid/view/ViewGroup;

    invoke-static {v1, v2, v3, v0}, Lcom/android/incallui/AnimationUtils$Move;->move(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    iget-object v1, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mFarEndContainter:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mFarEndContainter:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mFarEndContainterTemplate:Landroid/view/ViewGroup;

    invoke-static {v1, v2, v3, v0}, Lcom/android/incallui/AnimationUtils$Move;->move(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    iget-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mFarEndContainter:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    iget-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mNearEndContainter:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    goto/16 :goto_2

    :cond_6
    move v0, v1

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_1
        0xca -> :sswitch_2
        0x12d -> :sswitch_3
        0x12f -> :sswitch_1
        0x191 -> :sswitch_4
    .end sparse-switch
.end method

.method protected getCallFailedString(Lcom/android/services/telephony/common/Call$DisconnectCause;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/android/incallui/CallCardQcifVideoFragment$1;->$SwitchMap$com$android$services$telephony$common$Call$DisconnectCause:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/incallui/CallCardFragment;->getCallFailedString(Lcom/android/services/telephony/common/Call$DisconnectCause;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    const v0, 0x7f090083

    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
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

    iget-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mNearEndSwitchAnimationView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getSurfaceViewHeight(I)I
    .locals 2

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return v0

    :pswitch_0
    iget-object v1, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mFarEndView:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v0

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mNearEndView:Landroid/view/TextureView;

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

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return v0

    :pswitch_0
    iget-object v1, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mFarEndView:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v0

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mNearEndView:Landroid/view/TextureView;

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

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/incallui/CallCardFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

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

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/incallui/CallCardFragment;->onClick(Landroid/view/View;)V

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/incallui/CallCardQcifVideoFragment;->toggleIncomingHideShow()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0e0244
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const-string v1, "onCreateView..."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Lcom/android/incallui/CallCardFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    const v1, 0x7f040013

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/android/incallui/CallCardFragment;->onDestroyView()V

    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mPhoto:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mFarEndPhoto:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mFarEndPhoto:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mFarEndPhoto:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mCallerInfoPhoto:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mCallerInfoPhoto:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mCallerInfoPhoto:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mIncomingHideButtonImage:Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mIncomingHideButtonImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mIncomingHideButtonImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_3
    iget-object v1, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mPreparingAnimationImage:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_4

    :cond_4
    iget-object v1, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mFarEndSwitchAnimationView:Landroid/widget/ImageView;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mFarEndSwitchAnimationView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_5
    iget-object v1, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mNearEndSwitchAnimationView:Landroid/widget/ImageView;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mNearEndSwitchAnimationView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_6
    iget-object v1, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mIncomingHideButtonLayout:Landroid/view/ViewGroup;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mIncomingHideButtonLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mIncomingHideButtonLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_7
    iget-object v1, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mFarEndView:Landroid/view/TextureView;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mFarEndView:Landroid/view/TextureView;

    invoke-virtual {v1, v2}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    :cond_8
    iget-object v1, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mNearEndView:Landroid/view/TextureView;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mNearEndView:Landroid/view/TextureView;

    invoke-virtual {v1, v2}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    :cond_9
    const-string v1, "prohibit_chattering"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->showImgTimer:Lcom/android/incallui/CallCardQcifVideoFragment$DefaultImageTimer;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->showImgTimer:Lcom/android/incallui/CallCardQcifVideoFragment$DefaultImageTimer;

    invoke-virtual {v1}, Landroid/os/CountDownTimer;->cancel()V

    iput-object v2, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->showImgTimer:Lcom/android/incallui/CallCardQcifVideoFragment$DefaultImageTimer;

    :cond_a
    invoke-virtual {p0}, Lcom/android/incallui/CallCardQcifVideoFragment;->getInCallMenu()Lcom/android/incallui/InCallMenu;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/vt/InVTCallMenu;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/android/incallui/vt/InVTCallMenu;->dismissDialogs()V

    :cond_b
    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/incallui/CallCardFragment;->onResume()V

    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 6

    const/4 v2, 0x1

    const-string v0, "onSurfaceTextureAvailable..."

    invoke-virtual {p0, v0, v2}, Lcom/android/incallui/BaseFragment;->log(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mFarEndView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "This is inside mFarEndView created"

    invoke-virtual {p0, v0}, Lcom/android/incallui/BaseFragment;->log(Ljava/lang/String;)V

    const-string v0, "prohibit_chattering"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->showImgTimer:Lcom/android/incallui/CallCardQcifVideoFragment$DefaultImageTimer;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/incallui/CallCardQcifVideoFragment$DefaultImageTimer;

    const-wide/16 v2, 0x7d0

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/incallui/CallCardQcifVideoFragment$DefaultImageTimer;-><init>(Lcom/android/incallui/CallCardQcifVideoFragment;JJ)V

    iput-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->showImgTimer:Lcom/android/incallui/CallCardQcifVideoFragment$DefaultImageTimer;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->showImgTimer:Lcom/android/incallui/CallCardQcifVideoFragment$DefaultImageTimer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->showImgTimer:Lcom/android/incallui/CallCardQcifVideoFragment$DefaultImageTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    iget-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->showImgTimer:Lcom/android/incallui/CallCardQcifVideoFragment$DefaultImageTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    :cond_1
    iput-object p1, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mFarEndSurface:Landroid/graphics/SurfaceTexture;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mFarEndSurface:Landroid/graphics/SurfaceTexture;

    iget-object v2, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mFarEndView:Landroid/view/TextureView;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/incallui/CallCardQcifVideoFragment;->setVideoLocationInternal(ILandroid/graphics/SurfaceTexture;Landroid/view/TextureView;)V

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallCardPresenter;->updateVideoView()V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mNearEndView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "This is inside mNearEndView created"

    invoke-virtual {p0, v0}, Lcom/android/incallui/BaseFragment;->log(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mNearEndSurface:Landroid/graphics/SurfaceTexture;

    iget-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mNearEndSurface:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mNearEndView:Landroid/view/TextureView;

    invoke-direct {p0, v2, v0, v1}, Lcom/android/incallui/CallCardQcifVideoFragment;->setVideoLocationInternal(ILandroid/graphics/SurfaceTexture;Landroid/view/TextureView;)V

    goto :goto_0
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 3

    const/4 v2, 0x1

    const-string v0, "onSurfaceTextureDestroyed..."

    invoke-virtual {p0, v0, v2}, Lcom/android/incallui/BaseFragment;->log(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mFarEndView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "mFarEndView surface texture destroyed"

    invoke-virtual {p0, v0, v2}, Lcom/android/incallui/BaseFragment;->log(Ljava/lang/String;Z)V

    const-string v0, "prohibit_chattering"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->showImgTimer:Lcom/android/incallui/CallCardQcifVideoFragment$DefaultImageTimer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->showImgTimer:Lcom/android/incallui/CallCardQcifVideoFragment$DefaultImageTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->showImgTimer:Lcom/android/incallui/CallCardQcifVideoFragment$DefaultImageTimer;

    :cond_0
    const-string v0, "ims_ui_for_kor"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "prohibit_chattering"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/CallCardPresenter;->onSurfaceDestroyed(I)V

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->release()V

    :cond_3
    :goto_0
    return v2

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mNearEndView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "mNearEndView surface texture destroyed"

    invoke-virtual {p0, v0, v2}, Lcom/android/incallui/BaseFragment;->log(Ljava/lang/String;Z)V

    const-string v0, "ims_ui_for_kor"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "prohibit_chattering"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v0, v2}, Lcom/android/incallui/CallCardPresenter;->onSurfaceDestroyed(I)V

    :cond_6
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->release()V

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

    const/16 v2, 0x8

    iget-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mFarEndView:Landroid/view/TextureView;

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

    iget-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mFarEndDocomoImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mFarEndDocomoImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mFarEndDocomoImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->showImgTimer:Lcom/android/incallui/CallCardQcifVideoFragment$DefaultImageTimer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->showImgTimer:Lcom/android/incallui/CallCardQcifVideoFragment$DefaultImageTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    iget-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->showImgTimer:Lcom/android/incallui/CallCardQcifVideoFragment$DefaultImageTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mNearEndView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "camera_fail_image"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mNearEndDocomoImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mNearEndDocomoImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mNearEndDocomoImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/incallui/CallCardPresenter;->startRender(Z)V

    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    const/16 v5, 0x8

    const/4 v4, 0x1

    const v3, 0x3f800054

    const/4 v2, 0x0

    invoke-super {p0, p1, p2}, Lcom/android/incallui/CallCardFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const-string v0, "onViewCreated..."

    invoke-virtual {p0, v0, v4}, Lcom/android/incallui/BaseFragment;->log(Ljava/lang/String;Z)V

    const v0, 0x7f0e01e2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mIndicatorArea:Landroid/view/ViewGroup;

    const v0, 0x7f0e01ee

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mPrimaryCallStateContainer:Landroid/view/ViewGroup;

    const v0, 0x7f0e01e4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    const v0, 0x7f0e0042

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mPrimaryName:Landroid/widget/TextView;

    const v0, 0x7f0e0200

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mPrimaryLabelAndNumber:Landroid/view/ViewGroup;

    const v0, 0x7f0e022c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mFarEndContainterTemplate:Landroid/view/ViewGroup;

    const v0, 0x7f0e022e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mFarEndContainter:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mFarEndContainterTemplate:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mFarEndContainter:Landroid/view/ViewGroup;

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/CallCardQcifVideoFragment;->copyParams(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    const v0, 0x7f0e023a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mNearEndContainterTemplate:Landroid/view/ViewGroup;

    const v0, 0x7f0e023b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mNearEndContainter:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mNearEndContainterTemplate:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mNearEndContainter:Landroid/view/ViewGroup;

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/CallCardQcifVideoFragment;->copyParams(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    const v0, 0x7f0e0239

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mIncomingContainterTemplate:Landroid/view/ViewGroup;

    const v0, 0x7f0e022f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/TextureView;

    iput-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mFarEndView:Landroid/view/TextureView;

    const v0, 0x7f0e022d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mFarEndContainterResizeTemplate:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mFarEndView:Landroid/view/TextureView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mFarEndView:Landroid/view/TextureView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mFarEndView:Landroid/view/TextureView;

    invoke-virtual {v0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    :cond_0
    const v0, 0x7f0e023c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/TextureView;

    iput-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mNearEndView:Landroid/view/TextureView;

    iget-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mNearEndView:Landroid/view/TextureView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mNearEndView:Landroid/view/TextureView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mNearEndView:Landroid/view/TextureView;

    invoke-virtual {v0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    :cond_1
    const v0, 0x7f0e0244

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mIncomingHideButtonLayout:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mIncomingHideButtonLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mIncomingHideButtonLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mIncomingHideButtonLayout:Landroid/view/ViewGroup;

    new-instance v1, Lcom/android/incallui/SmallerHitTargetTouchListener;

    invoke-direct {v1}, Lcom/android/incallui/SmallerHitTargetTouchListener;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_2
    const v0, 0x7f0e0246

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mIncomingHideButton:Landroid/widget/ToggleButton;

    const v0, 0x7f0e0245

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mIncomingHideButtonImage:Landroid/widget/ImageView;

    const v0, 0x7f0e0230

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mPreparingAnimation:Landroid/widget/RelativeLayout;

    const v0, 0x7f0e0231

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mPreparingAnimationImage:Landroid/widget/ProgressBar;

    const v0, 0x7f0e0232

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mPreparingAnimationText:Landroid/widget/TextView;

    const v0, 0x7f0e0234

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mFarEndPhoto:Landroid/widget/ImageView;

    const v0, 0x7f0e004b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mCallerInfoPhoto:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mFarEndPhoto:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->mPhoto:Landroid/widget/ImageView;

    const-string v0, "cnap_supplementary_service"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f0e020a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mPrimaryCnapNameContainer:Landroid/view/View;

    const v0, 0x7f0e020b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mPrimaryCnapName:Landroid/widget/TextView;

    :cond_3
    const-string v0, "cdnip_supplementary_service"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x7f0e020c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mPrimaryCdnipNumber:Landroid/widget/TextView;

    :cond_4
    const v0, 0x7f0e01fc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mElapsedTime:Landroid/widget/TextView;

    const v0, 0x7f0e0043

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mVideoCallStateLabel:Landroid/widget/TextView;

    const v0, 0x7f0e0235

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mFarEndSwitchAnimationView:Landroid/widget/ImageView;

    const v0, 0x7f0e0240

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mNearEndSwitchAnimationView:Landroid/widget/ImageView;

    const v0, 0x7f0e0236

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mFarEndCaptureAnimatinoView:Landroid/view/View;

    const v0, 0x7f0e0241

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mNearEndCaptureAnimatinoView:Landroid/view/View;

    const v0, 0x7f0e023d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mCaptureAnimationView:Landroid/view/View;

    const v0, 0x7f0e023e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mRecordAnimationView:Landroid/view/View;

    const v0, 0x7f0e0237

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mRecInfoFarEnd:Landroid/view/ViewGroup;

    const v0, 0x7f0e0238

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mRecInfoTimeTextViewFarEnd:Landroid/widget/TextView;

    const v0, 0x7f0e0242

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mRecInfoNearEnd:Landroid/view/ViewGroup;

    const v0, 0x7f0e0243

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mRecInfoTimeTextViewNearEnd:Landroid/widget/TextView;

    const-string v0, "prohibit_chattering"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const v0, 0x7f0e0233

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mFarEndDocomoImage:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mFarEndDocomoImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mFarEndDocomoImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_5
    const-string v0, "camera_fail_image"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const v0, 0x7f0e023f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mNearEndDocomoImage:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mNearEndDocomoImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/android/incallui/CallCardQcifVideoFragment;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/vt/VideoCallManager;->getAllowCamera()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {}, Lcom/android/incallui/CallCardPresenter;->getInstance()Lcom/android/incallui/CallCardPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallCardPresenter;->isCameraFailed()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mNearEndDocomoImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

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

    iput-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mHighQualitySoundText:Landroid/widget/TextView;

    :cond_7
    invoke-direct {p0}, Lcom/android/incallui/CallCardQcifVideoFragment;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/vt/VideoCallManager;->isShowMe()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-direct {p0}, Lcom/android/incallui/CallCardQcifVideoFragment;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/vt/VideoCallManager;->sendStillImage()V

    :cond_8
    invoke-direct {p0}, Lcom/android/incallui/CallCardQcifVideoFragment;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/vt/VideoCallManager;->isNearEndRecord()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mRecInfoNearEnd:Landroid/view/ViewGroup;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mRecInfoNearEnd:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    invoke-direct {p0}, Lcom/android/incallui/CallCardQcifVideoFragment;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/vt/VideoCallManager;->isFarEndRecord()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mRecInfoFarEnd:Landroid/view/ViewGroup;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mRecInfoFarEnd:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    const-string v0, "hide_penwindow_indicator_area"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->isPenMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0, v2}, Lcom/android/incallui/CallCardQcifVideoFragment;->setIndicatorVisible(Z)V

    :cond_b
    :goto_1
    return-void

    :cond_c
    iget-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mNearEndDocomoImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_d
    invoke-virtual {p0, v4}, Lcom/android/incallui/CallCardQcifVideoFragment;->setIndicatorVisible(Z)V

    goto :goto_1
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
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-super/range {p0 .. p5}, Lcom/android/incallui/CallCardFragment;->setCallState(ILcom/android/services/telephony/common/Call$DisconnectCause;ZLjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lcom/android/incallui/CallCardQcifVideoFragment;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/CallCardQcifVideoFragment;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/vt/VideoCallManager;->isFarFrameReady()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/CallCardQcifVideoFragment;->updateFarEndPreparingAnimationImage(Z)V

    :cond_0
    const-string v0, "feature_ktt"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallCommandClient;->isDisplayBitrate()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v4, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    const-class v5, Lcom/android/incallui/service/DisplayBitratePopupService;

    invoke-direct {v4, v1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v4}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/incallui/CallCardQcifVideoFragment;->updateBgColorForCallState(I)V

    const-string v0, "ims_ui_for_kor"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/incallui/CallCardQcifVideoFragment;->updatePrimaryName(I)V

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/incallui/CallCardQcifVideoFragment;->updateVideoCallStateLabel(I)V

    invoke-direct {p0}, Lcom/android/incallui/CallCardQcifVideoFragment;->updatePhotoHandle()V

    const-string v0, "prohibit_chattering"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1}, Lcom/android/incallui/CallCardQcifVideoFragment;->updateNoVideoImage(I)V

    :cond_3
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEasyModeOn()Z

    move-result v0

    if-nez v0, :cond_7

    const/4 v0, 0x3

    if-ne p1, v0, :cond_6

    move v0, v2

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/incallui/CallCardQcifVideoFragment;->showIncomingHideButton(Z)V

    :goto_1
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIncomingMissedCall()Z

    move-result v0

    if-nez v0, :cond_4

    if-eq p1, v2, :cond_4

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIncomingRejectedCall()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    invoke-virtual {p0, v3}, Lcom/android/incallui/CallCardFragment;->setPrimaryVisible(Z)V

    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/incallui/CallCardQcifVideoFragment;->updateSurfaceViewVisibility(I)V

    return-void

    :cond_6
    move v0, v3

    goto :goto_0

    :cond_7
    invoke-virtual {p0, v3}, Lcom/android/incallui/CallCardQcifVideoFragment;->showIncomingHideButton(Z)V

    goto :goto_1
.end method

.method public setIncomingHideButton(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mIncomingHideButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mIncomingHideButton:Landroid/widget/ToggleButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mIncomingHideButton:Landroid/widget/ToggleButton;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09015a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mIncomingHideButtonImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mIncomingHideButtonImage:Landroid/widget/ImageView;

    const v1, 0x7f0205d2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mIncomingHideButton:Landroid/widget/ToggleButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mIncomingHideButton:Landroid/widget/ToggleButton;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09017e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mIncomingHideButtonImage:Landroid/widget/ImageView;

    const v1, 0x7f0205d4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method public setIndicatorVisible(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mIndicatorArea:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mIndicatorArea:Landroid/view/ViewGroup;

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

    const-string v0, "setPrimary.. CallCardQcifVideoFragment"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/incallui/CallCardQcifVideoFragment;->updatePhotoHandle()V

    invoke-super/range {p0 .. p11}, Lcom/android/incallui/CallCardFragment;->setPrimary(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILandroid/graphics/drawable/Drawable;ZZZZZ)V

    return-void
.end method

.method public setPrimaryCallElapsedTime(ZLjava/lang/String;J)V
    .locals 9

    const-wide/16 v7, 0x3e8

    const/4 v0, 0x0

    iget-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mElapsedTime:Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/incallui/CallCardFragment;->mEndCallTime:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/CallCardPresenter;

    iget-object v4, p0, Lcom/android/incallui/CallCardFragment;->mEndCallTime:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/incallui/CallCardPresenter;->setEndCallTime(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-static {v3}, Lcom/android/incallui/AnimationUtils$Fade;->show(Landroid/view/View;)V

    :cond_0
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-direct {p0}, Lcom/android/incallui/CallCardQcifVideoFragment;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/vt/VideoCallManager;->isFarEndRecord()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mRecInfoTimeTextViewFarEnd:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {p0}, Lcom/android/incallui/CallCardQcifVideoFragment;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/vt/VideoCallManager;->getRecordingStartTimeFarEnd()J

    move-result-wide v5

    sub-long v1, v3, v5

    iget-object v3, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mRecInfoTimeTextViewFarEnd:Landroid/widget/TextView;

    div-long v4, v1, v7

    invoke-static {v4, v5}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v3, 0x4

    invoke-static {v0, v3}, Lcom/android/incallui/AnimationUtils$Fade;->hide(Landroid/view/View;I)V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/android/incallui/CallCardQcifVideoFragment;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/vt/VideoCallManager;->isNearEndRecord()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mRecInfoTimeTextViewNearEnd:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {p0}, Lcom/android/incallui/CallCardQcifVideoFragment;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/vt/VideoCallManager;->getRecordingStartTimeNearEnd()J

    move-result-wide v5

    sub-long v1, v3, v5

    iget-object v3, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mRecInfoTimeTextViewNearEnd:Landroid/widget/TextView;

    div-long v4, v1, v7

    invoke-static {v4, v5}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public setPrimaryCdnipNumber(ZLjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mPrimaryCdnipNumber:Landroid/widget/TextView;

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

    iget-object v1, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mPrimaryCdnipNumber:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mPrimaryCdnipNumber:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mPrimaryCdnipNumber:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setPrimaryCnapName(ZLjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mPrimaryCnapNameContainer:Landroid/view/View;

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

    iget-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mPrimaryCnapName:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mPrimaryCnapName:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mPrimaryCnapName:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mPrimaryCnapNameContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mPrimaryCnapNameContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setPrimaryImage(Landroid/graphics/drawable/Drawable;Z)V
    .locals 1

    const-string v0, "setPrimaryImage..CallCardQcifVideoFragment"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/incallui/CallCardQcifVideoFragment;->updatePhotoHandle()V

    invoke-super {p0, p1, p2}, Lcom/android/incallui/CallCardFragment;->setPrimaryImage(Landroid/graphics/drawable/Drawable;Z)V

    return-void
.end method

.method public setPrimaryLabel(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setVisibleCameraPreview(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVisibleCameraPreview["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mNearEndView:Landroid/view/TextureView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mNearEndView:Landroid/view/TextureView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mNearEndView:Landroid/view/TextureView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mNearEndView:Landroid/view/TextureView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public showAnimationCapture(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mCaptureAnimationView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mCaptureAnimationView:Landroid/view/View;

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public showAnimationRecord(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mRecordAnimationView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mRecordAnimationView:Landroid/view/View;

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public showFarEndCaptureAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mFarEndCaptureAnimatinoView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mFarEndCaptureAnimatinoView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public showFarEndRecordingInfo(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mRecInfoFarEnd:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mRecInfoFarEnd:Landroid/view/ViewGroup;

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mRecInfoTimeTextViewFarEnd:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mRecInfoTimeTextViewFarEnd:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearComposingText()V

    iget-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mRecInfoTimeTextViewFarEnd:Landroid/widget/TextView;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public showHighQualitySoundText(Z)V
    .locals 7

    const/4 v3, -0x2

    const/high16 v6, 0x3f800000

    const/4 v5, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mHighQualitySoundText:Landroid/widget/TextView;

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

    iget-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mVideoCallStateLabel:Landroid/widget/TextView;

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

    iget-object v2, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mVideoCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mHighQualitySoundText:Landroid/widget/TextView;

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
    iget-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mHighQualitySoundText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public showIncomingHideButton(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mIncomingHideButtonLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mIncomingHideButtonLayout:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    invoke-direct {p0}, Lcom/android/incallui/CallCardQcifVideoFragment;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/CallCardQcifVideoFragment;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/vt/VideoCallManager;->isShowMe()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/CallCardQcifVideoFragment;->setIncomingHideButton(Z)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mIncomingHideButtonLayout:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public showNearEndCaptureAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mNearEndCaptureAnimatinoView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mNearEndCaptureAnimatinoView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public showNearEndDocomoImage()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mNearEndDocomoImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mNearEndDocomoImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "NearEnd no_video imageview visible : QCIF case"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/BaseFragment;->log(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mNearEndDocomoImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public showNearEndRecordingInfo(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mRecInfoNearEnd:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mRecInfoNearEnd:Landroid/view/ViewGroup;

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mRecInfoTimeTextViewNearEnd:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mRecInfoTimeTextViewNearEnd:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearComposingText()V

    iget-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mRecInfoTimeTextViewNearEnd:Landroid/widget/TextView;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public toggleIncomingHideShow()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mIncomingHideButtonImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mIncomingHideButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mIncomingHideButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mIncomingHideButtonImage:Landroid/widget/ImageView;

    const v1, 0x7f0205d2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    iget-object v1, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mIncomingHideButton:Landroid/widget/ToggleButton;

    iget-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mIncomingHideButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallCardPresenter;->setIncomingHideShow()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mIncomingHideButtonImage:Landroid/widget/ImageView;

    const v1, 0x7f0205d4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public updateBgColorForCallState(I)V
    .locals 10

    const v9, 0x7f0a0088

    const v8, 0x7f0a0086

    const v7, 0x7f0a0085

    const/4 v4, 0x0

    const/4 v0, 0x0

    const/16 v5, 0x8

    if-ne v5, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v3, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/services/telephony/common/Call;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/incallui/ContactInfoCache;->getInfo(I)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-boolean v3, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isPersonalPhotoAvailable:Z

    :cond_2
    sget-boolean v5, Lcom/android/incallui/InCallUtils;->isFromContactAgent:Z

    if-eqz v5, :cond_3

    sget-object v5, Lcom/android/incallui/InCallUtils;->contactAgentImage:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_3

    const/4 v3, 0x1

    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateBgColorForCallState()... isPersonalPhotoAvailable: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {p0, v5, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0078

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a007d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    :goto_1
    iget-object v5, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mIndicatorArea:Landroid/view/ViewGroup;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mIndicatorArea:Landroid/view/ViewGroup;

    invoke-virtual {v5, v0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_4
    iget-object v5, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mPrimaryCallStateContainer:Landroid/view/ViewGroup;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mPrimaryCallStateContainer:Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_5
    iget-object v5, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0087

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0074

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a007a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0076

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a007c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_1

    :pswitch_4
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_1

    :pswitch_5
    if-eqz v3, :cond_6

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    :goto_2
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto/16 :goto_1

    :cond_6
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    goto :goto_2

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
    .locals 3

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/incallui/CallCardPresenter;->getInstance()Lcom/android/incallui/CallCardPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallCardPresenter;->getResizeChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mFarEndContainter:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mFarEndContainter:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mFarEndContainterTemplate:Landroid/view/ViewGroup;

    invoke-static {v0, v1, v2}, Lcom/android/incallui/AnimationUtils$Move;->move(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    invoke-static {}, Lcom/android/incallui/CallCardPresenter;->getInstance()Lcom/android/incallui/CallCardPresenter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/CallCardPresenter;->setResizeChecked(Z)V

    :cond_0
    return-void
.end method

.method public updateFarEndPreparingAnimationImage(Z)V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    if-nez p1, :cond_1

    iget-boolean v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->isShowingPreparingAnimation:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->isShowingPreparingAnimation:Z

    iget-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mPreparingAnimationImage:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mPreparingAnimationText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mPreparingAnimation:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mPreparingAnimation:Landroid/widget/RelativeLayout;

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
    iput-boolean v1, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->isShowingPreparingAnimation:Z

    iget-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mPreparingAnimationImage:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mPreparingAnimationText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mPreparingAnimation:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mPreparingAnimation:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0
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

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mFarEndDocomoImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    const-string v0, "FarEnd no_video imageview making GONE in updateVideoCallStatelabel : QCIF case"

    invoke-virtual {p0, v0, v2}, Lcom/android/incallui/BaseFragment;->log(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mFarEndDocomoImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mNearEndDocomoImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const-string v0, "NearEnd no_video imageview making GONE in updateVideoCallStatelabel : QCIF case"

    invoke-virtual {p0, v0, v2}, Lcom/android/incallui/BaseFragment;->log(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mNearEndDocomoImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public updatePrimaryName(I)V
    .locals 13

    const v11, 0x7f0d00d7

    const/4 v12, 0x0

    iget-object v9, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mPrimaryName:Landroid/widget/TextView;

    if-eqz v9, :cond_0

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEasyModeOn()Z

    move-result v9

    if-eqz v9, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0d00d1

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0d00d2

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0d006c

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0d0071

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    iget-object v9, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v9, v9

    iput v9, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget-object v9, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v9, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v9, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mPrimaryLabelAndNumber:Landroid/view/ViewGroup;

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mPrimaryLabelAndNumber:Landroid/view/ViewGroup;

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v9, v9

    iput v9, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget-object v9, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mPrimaryLabelAndNumber:Landroid/view/ViewGroup;

    invoke-virtual {v9, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    packed-switch p1, :pswitch_data_0

    iget-object v9, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mPrimaryName:Landroid/widget/TextView;

    float-to-int v10, v2

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setMaxWidth(I)V

    iget-object v9, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0d00d8

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v10, v10

    invoke-virtual {v9, v12, v12, v10, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v9, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v9, v12, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0

    :pswitch_0
    iget-object v9, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v9, v12, v12, v12, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v9, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mPrimaryName:Landroid/widget/TextView;

    float-to-int v10, v5

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setMaxWidth(I)V

    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v9, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual {v7, v9, v10, v5, v11}, Landroid/graphics/Paint;->breakText(Ljava/lang/String;ZF[F)I

    move-result v0

    iget-object v9, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->length()I

    move-result v3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setPrimaryName... nameLength = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", breakLength = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, v9}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-ge v0, v3, :cond_3

    iget-object v9, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v9, v12, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_0

    :cond_3
    iget-object v9, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v9, v12, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public updateSurfaceViewVisibility(I)V
    .locals 3

    const/4 v2, 0x3

    invoke-static {p1}, Lcom/android/services/telephony/common/Call$State;->isConnected(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mFarEndSurface:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mFarEndView:Landroid/view/TextureView;

    invoke-direct {p0, v2, v0, v1}, Lcom/android/incallui/CallCardQcifVideoFragment;->setVideoLocationInternal(ILandroid/graphics/SurfaceTexture;Landroid/view/TextureView;)V

    iget-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mNearEndSurface:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mNearEndView:Landroid/view/TextureView;

    invoke-direct {p0, v2, v0, v1}, Lcom/android/incallui/CallCardQcifVideoFragment;->setVideoLocationInternal(ILandroid/graphics/SurfaceTexture;Landroid/view/TextureView;)V

    :cond_0
    return-void
.end method

.method public updateVideoCallStateLabel(I)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mVideoCallStateLabel:Landroid/widget/TextView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sparse-switch p1, :sswitch_data_0

    iget-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mVideoCallStateLabel:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mVideoCallStateLabel:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :sswitch_0
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIMSConferenceCall()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mVideoCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09021a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mVideoCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const-string v0, "ims_ui_for_kor"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mVideoCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09021b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mVideoCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09021d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :sswitch_1
    const-string v0, "ims_ui_for_kor"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "volte_jpn_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mVideoCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09021c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    iget-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mVideoCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/CallCardQcifVideoFragment;->mVideoCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09007e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x5 -> :sswitch_1
        0x14 -> :sswitch_1
    .end sparse-switch
.end method
