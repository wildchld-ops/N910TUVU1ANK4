.class public Lcom/android/mms/ui/MmsSlideView;
.super Landroid/widget/LinearLayout;
.source "MmsSlideView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/MmsSlideView$TaskStack;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/MmsSlideView"

.field private static sEmptyBitmap:Landroid/graphics/Bitmap;


# instance fields
.field inflate:Landroid/view/LayoutInflater;

.field private mActiveTextView:Landroid/widget/TextView;

.field private mActivity:Landroid/app/Activity;

.field private mAudioInfoView:Landroid/view/View;

.field private mAudioPlay:Landroid/widget/ImageView;

.field private mAudioText:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mHighlight:Ljava/util/regex/Pattern;

.field private mHoverEnterTime:J

.field private mHoverPopupWindowimg:Landroid/widget/HoverPopupWindow;

.field private mImageBitmap:Landroid/graphics/Bitmap;

.field private mImageModel:Lcom/android/mms/model/ImageModel;

.field private mImageView:Landroid/widget/ImageView;

.field private mImgContent:Landroid/view/View;

.field private mIsDelayedMessage:Z

.field private mIsFailedMessage:Z

.field private mIsScheduledMessage:Z

.field private mIsTopLayout:Z

.field private mLocationAddressView:Landroid/widget/TextView;

.field private mLocationImageView:Landroid/widget/ImageView;

.field private mLocationTitleView:Landroid/widget/TextView;

.field private mLocationView:Landroid/widget/LinearLayout;

.field private mMsgListItem:Lcom/android/mms/ui/MessageListItem;

.field private final mOnClickListener:Landroid/view/View$OnClickListener;

.field private mPlayImage:Landroid/widget/ImageView;

.field private mPreviewImage:Landroid/widget/ImageView;

.field private mSavebtn:Landroid/widget/ImageButton;

.field private mSlide:Lcom/android/mms/model/SlideModel;

.field private mSlideMediaView:Landroid/widget/FrameLayout;

.field private mTempPoint:Landroid/graphics/Point;

.field private mTextProperty:Lcom/android/mms/ui/MessageListItem$BodyTextViewProperty;

.field private mTextViewBottom:Landroid/widget/TextView;

.field private mTextViewTop:Landroid/widget/TextView;

.field private mVideoBitmap:Landroid/graphics/Bitmap;

.field private mVideoModel:Lcom/android/mms/model/VideoModel;

.field private mVideoPlayButton:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/ui/MmsSlideView;->sEmptyBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mLocationTitleView:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mLocationAddressView:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mLocationImageView:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mLocationView:Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mSlideMediaView:Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mActiveTextView:Landroid/widget/TextView;

    iput-boolean v2, p0, Lcom/android/mms/ui/MmsSlideView;->mIsTopLayout:Z

    iput-boolean v2, p0, Lcom/android/mms/ui/MmsSlideView;->mIsFailedMessage:Z

    iput-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mSlide:Lcom/android/mms/model/SlideModel;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mTempPoint:Landroid/graphics/Point;

    iput-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mMsgListItem:Lcom/android/mms/ui/MessageListItem;

    iput-boolean v2, p0, Lcom/android/mms/ui/MmsSlideView;->mIsScheduledMessage:Z

    iput-boolean v2, p0, Lcom/android/mms/ui/MmsSlideView;->mIsDelayedMessage:Z

    iput-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mHoverPopupWindowimg:Landroid/widget/HoverPopupWindow;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/mms/ui/MmsSlideView;->mHoverEnterTime:J

    new-instance v0, Lcom/android/mms/ui/MmsSlideView$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsSlideView$2;-><init>(Lcom/android/mms/ui/MmsSlideView;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mOnClickListener:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcom/android/mms/ui/MmsSlideView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mLocationTitleView:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mLocationAddressView:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mLocationImageView:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mLocationView:Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mSlideMediaView:Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mActiveTextView:Landroid/widget/TextView;

    iput-boolean v2, p0, Lcom/android/mms/ui/MmsSlideView;->mIsTopLayout:Z

    iput-boolean v2, p0, Lcom/android/mms/ui/MmsSlideView;->mIsFailedMessage:Z

    iput-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mSlide:Lcom/android/mms/model/SlideModel;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mTempPoint:Landroid/graphics/Point;

    iput-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mMsgListItem:Lcom/android/mms/ui/MessageListItem;

    iput-boolean v2, p0, Lcom/android/mms/ui/MmsSlideView;->mIsScheduledMessage:Z

    iput-boolean v2, p0, Lcom/android/mms/ui/MmsSlideView;->mIsDelayedMessage:Z

    iput-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mHoverPopupWindowimg:Landroid/widget/HoverPopupWindow;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/mms/ui/MmsSlideView;->mHoverEnterTime:J

    new-instance v0, Lcom/android/mms/ui/MmsSlideView$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsSlideView$2;-><init>(Lcom/android/mms/ui/MmsSlideView;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mOnClickListener:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcom/android/mms/ui/MmsSlideView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;
    .param p3    # I

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mLocationTitleView:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mLocationAddressView:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mLocationImageView:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mLocationView:Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mSlideMediaView:Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mActiveTextView:Landroid/widget/TextView;

    iput-boolean v2, p0, Lcom/android/mms/ui/MmsSlideView;->mIsTopLayout:Z

    iput-boolean v2, p0, Lcom/android/mms/ui/MmsSlideView;->mIsFailedMessage:Z

    iput-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mSlide:Lcom/android/mms/model/SlideModel;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mTempPoint:Landroid/graphics/Point;

    iput-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mMsgListItem:Lcom/android/mms/ui/MessageListItem;

    iput-boolean v2, p0, Lcom/android/mms/ui/MmsSlideView;->mIsScheduledMessage:Z

    iput-boolean v2, p0, Lcom/android/mms/ui/MmsSlideView;->mIsDelayedMessage:Z

    iput-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mHoverPopupWindowimg:Landroid/widget/HoverPopupWindow;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/mms/ui/MmsSlideView;->mHoverEnterTime:J

    new-instance v0, Lcom/android/mms/ui/MmsSlideView$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsSlideView$2;-><init>(Lcom/android/mms/ui/MmsSlideView;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mOnClickListener:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcom/android/mms/ui/MmsSlideView;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/MmsSlideView;)J
    .locals 2
    .param p0    # Lcom/android/mms/ui/MmsSlideView;

    iget-wide v0, p0, Lcom/android/mms/ui/MmsSlideView;->mHoverEnterTime:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/android/mms/ui/MmsSlideView;J)J
    .locals 0
    .param p0    # Lcom/android/mms/ui/MmsSlideView;
    .param p1    # J

    iput-wide p1, p0, Lcom/android/mms/ui/MmsSlideView;->mHoverEnterTime:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/android/mms/ui/MmsSlideView;)Landroid/view/View;
    .locals 1
    .param p0    # Lcom/android/mms/ui/MmsSlideView;

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mImgContent:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/mms/ui/MmsSlideView;)Lcom/android/mms/ui/MessageListItem;
    .locals 1
    .param p0    # Lcom/android/mms/ui/MmsSlideView;

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mMsgListItem:Lcom/android/mms/ui/MessageListItem;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/mms/ui/MmsSlideView;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0    # Lcom/android/mms/ui/MmsSlideView;
    .param p1    # Landroid/view/View;

    iput-object p1, p0, Lcom/android/mms/ui/MmsSlideView;->mImgContent:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/mms/ui/MmsSlideView;)Landroid/widget/ImageView;
    .locals 1
    .param p0    # Lcom/android/mms/ui/MmsSlideView;

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mPreviewImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/mms/ui/MmsSlideView;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .param p0    # Lcom/android/mms/ui/MmsSlideView;
    .param p1    # Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/mms/ui/MmsSlideView;->mPreviewImage:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/mms/ui/MmsSlideView;)Landroid/widget/ImageView;
    .locals 1
    .param p0    # Lcom/android/mms/ui/MmsSlideView;

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mPlayImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/mms/ui/MmsSlideView;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .param p0    # Lcom/android/mms/ui/MmsSlideView;
    .param p1    # Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/mms/ui/MmsSlideView;->mPlayImage:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/mms/ui/MmsSlideView;)Landroid/widget/ImageButton;
    .locals 1
    .param p0    # Lcom/android/mms/ui/MmsSlideView;

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mSavebtn:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/mms/ui/MmsSlideView;Landroid/widget/ImageButton;)Landroid/widget/ImageButton;
    .locals 0
    .param p0    # Lcom/android/mms/ui/MmsSlideView;
    .param p1    # Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/android/mms/ui/MmsSlideView;->mSavebtn:Landroid/widget/ImageButton;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/mms/ui/MmsSlideView;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0    # Lcom/android/mms/ui/MmsSlideView;

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mImageBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/mms/ui/MmsSlideView;Landroid/widget/ImageView;IIZ)V
    .locals 0
    .param p0    # Lcom/android/mms/ui/MmsSlideView;
    .param p1    # Landroid/widget/ImageView;
    .param p2    # I
    .param p3    # I
    .param p4    # Z

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/mms/ui/MmsSlideView;->preCalculateImageBounds(Landroid/widget/ImageView;IIZ)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/mms/ui/MmsSlideView;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0    # Lcom/android/mms/ui/MmsSlideView;

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mVideoBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/mms/ui/MmsSlideView;)Landroid/widget/HoverPopupWindow;
    .locals 1
    .param p0    # Lcom/android/mms/ui/MmsSlideView;

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mHoverPopupWindowimg:Landroid/widget/HoverPopupWindow;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/mms/ui/MmsSlideView;Landroid/widget/HoverPopupWindow;)Landroid/widget/HoverPopupWindow;
    .locals 0
    .param p0    # Lcom/android/mms/ui/MmsSlideView;
    .param p1    # Landroid/widget/HoverPopupWindow;

    iput-object p1, p0, Lcom/android/mms/ui/MmsSlideView;->mHoverPopupWindowimg:Landroid/widget/HoverPopupWindow;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/mms/ui/MmsSlideView;)Landroid/app/Activity;
    .locals 1
    .param p0    # Lcom/android/mms/ui/MmsSlideView;

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method private calculateDrmImageBounds(Landroid/widget/ImageView;)V
    .locals 2
    .param p1    # Landroid/widget/ImageView;

    const/4 v1, -0x2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-void
.end method

.method private static getEmptyImageBitmap(Landroid/content/res/Resources;)Landroid/graphics/Bitmap;
    .locals 3
    .param p0    # Landroid/content/res/Resources;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/OutOfMemoryError;
        }
    .end annotation

    sget-object v1, Lcom/android/mms/ui/MmsSlideView;->sEmptyBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    const v1, 0x7f020072

    :try_start_0
    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/mms/ui/MmsSlideView;->sEmptyBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    sget-object v1, Lcom/android/mms/ui/MmsSlideView;->sEmptyBitmap:Landroid/graphics/Bitmap;

    return-object v1

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->writeHprofDataToFile()V

    const-string v1, "Mms/MmsSlideView"

    const-string v2, "OutOfMemoryError caught @ BitmapFactory.decodeResource and throw"

    invoke-static {v1, v2, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static getEmptyImageBitmapForVideo(Landroid/content/res/Resources;)Landroid/graphics/Bitmap;
    .locals 3
    .param p0    # Landroid/content/res/Resources;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/OutOfMemoryError;
        }
    .end annotation

    sget-object v1, Lcom/android/mms/ui/MmsSlideView;->sEmptyBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    const v1, 0x7f020074

    :try_start_0
    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/mms/ui/MmsSlideView;->sEmptyBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    sget-object v1, Lcom/android/mms/ui/MmsSlideView;->sEmptyBitmap:Landroid/graphics/Bitmap;

    return-object v1

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->writeHprofDataToFile()V

    const-string v1, "Mms/MmsSlideView"

    const-string v2, "OutOfMemoryError caught @ BitmapFactory.decodeResource and throw"

    invoke-static {v1, v2, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private loadImage()Z
    .locals 6

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/mms/ui/MmsSlideView;->mImageModel:Lcom/android/mms/model/ImageModel;

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget-object v4, p0, Lcom/android/mms/ui/MmsSlideView;->mImageModel:Lcom/android/mms/model/ImageModel;

    invoke-virtual {v4}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v2

    iget-object v4, p0, Lcom/android/mms/ui/MmsSlideView;->mImageModel:Lcom/android/mms/model/ImageModel;

    invoke-virtual {v4}, Lcom/android/mms/model/MediaModel;->isDrmProtected()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/mms/ui/MmsSlideView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020071

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_1
    iget-object v4, p0, Lcom/android/mms/ui/MmsSlideView;->mImageModel:Lcom/android/mms/model/ImageModel;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/mms/ui/MmsSlideView;->mImageModel:Lcom/android/mms/model/ImageModel;

    invoke-virtual {v4}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iput-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mImageBitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/android/mms/ui/MmsSlideView;->mImageModel:Lcom/android/mms/model/ImageModel;

    invoke-virtual {v4}, Lcom/android/mms/model/ImageModel;->getThumbnailBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1
.end method

.method private loadImageForVideo()Z
    .locals 6

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/mms/ui/MmsSlideView;->mVideoModel:Lcom/android/mms/model/VideoModel;

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget-object v4, p0, Lcom/android/mms/ui/MmsSlideView;->mVideoModel:Lcom/android/mms/model/VideoModel;

    invoke-virtual {v4}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v2

    iget-object v4, p0, Lcom/android/mms/ui/MmsSlideView;->mVideoModel:Lcom/android/mms/model/VideoModel;

    invoke-virtual {v4}, Lcom/android/mms/model/MediaModel;->isDrmProtected()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/mms/ui/MmsSlideView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020071

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_1
    iget-object v4, p0, Lcom/android/mms/ui/MmsSlideView;->mVideoModel:Lcom/android/mms/model/VideoModel;

    invoke-virtual {v4}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iput-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mVideoBitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/android/mms/ui/MmsSlideView;->mVideoModel:Lcom/android/mms/model/VideoModel;

    invoke-virtual {v4}, Lcom/android/mms/model/VideoModel;->getCachedBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1
.end method

.method private preCalculateImageBounds(Landroid/widget/ImageView;IIZ)V
    .locals 3
    .param p1    # Landroid/widget/ImageView;
    .param p2    # I
    .param p3    # I
    .param p4    # Z

    iget-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mTempPoint:Landroid/graphics/Point;

    invoke-static {v1, p2, p3, p4}, Lcom/android/mms/model/ImageModel;->calcThumbnailImageBounds(Landroid/graphics/Point;IIZ)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mTempPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/android/mms/ui/MmsSlideView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/mms/ui/MmsSlideView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mTempPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget-object v2, p0, Lcom/android/mms/ui/MmsSlideView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/mms/ui/MmsSlideView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-void
.end method

.method private setHover(Landroid/view/View;Landroid/net/Uri;Landroid/net/Uri;Lcom/android/mms/model/ImageModel;Lcom/android/mms/model/VideoModel;)V
    .locals 7
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/net/Uri;
    .param p3    # Landroid/net/Uri;
    .param p4    # Lcom/android/mms/model/ImageModel;
    .param p5    # Lcom/android/mms/model/VideoModel;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v2, p4

    move-object v3, p5

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/View;->setHoverPopupType(I)V

    new-instance v0, Lcom/android/mms/ui/MmsSlideView$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/MmsSlideView$1;-><init>(Lcom/android/mms/ui/MmsSlideView;Lcom/android/mms/model/ImageModel;Lcom/android/mms/model/VideoModel;Landroid/view/View;Landroid/net/Uri;Landroid/net/Uri;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    return-void
.end method

.method private setImage(Lcom/android/mms/model/ImageModel;Lcom/android/mms/ui/MessageItem;Z)V
    .locals 10
    .param p1    # Lcom/android/mms/model/ImageModel;
    .param p2    # Lcom/android/mms/ui/MessageItem;
    .param p3    # Z

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mImageModel:Lcom/android/mms/model/ImageModel;

    invoke-virtual {p1, v0}, Lcom/android/mms/model/ImageModel;->equals(Ljava/lang/Object;)Z

    move-result v7

    iput-object p1, p0, Lcom/android/mms/ui/MmsSlideView;->mImageModel:Lcom/android/mms/model/ImageModel;

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mImageModel:Lcom/android/mms/model/ImageModel;

    invoke-virtual {v0}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p2}, Lcom/android/mms/ui/MessageItem;->getMessageUri()Landroid/net/Uri;

    move-result-object v2

    const-string v0, "Mms/MmsSlideView"

    const-string v1, "setImage"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mImageView:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mSlideMediaView:Landroid/widget/FrameLayout;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    if-eqz v7, :cond_0

    const-string v0, "Mms/MmsSlideView"

    const-string v1, "same image"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->isDrmProtected()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mImageView:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MmsSlideView;->calculateDrmImageBounds(Landroid/widget/ImageView;)V

    :goto_1
    if-eqz p3, :cond_3

    invoke-static {}, Lcom/android/mms/ui/MmsSlideView$TaskStack;->getInstance()Lcom/android/mms/ui/MmsSlideView$TaskStack;

    move-result-object v8

    invoke-virtual {v8, p0}, Lcom/android/mms/ui/MmsSlideView$TaskStack;->removeTask(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Lcom/android/mms/model/ImageModel;->hasCachedBitmap()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/mms/ui/MmsSlideView;->loadImage()Z

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSlideView;->onImageLoaded()V

    :goto_2
    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0c00b2

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mImageView:Landroid/widget/ImageView;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/MmsSlideView;->setHover(Landroid/view/View;Landroid/net/Uri;Landroid/net/Uri;Lcom/android/mms/model/ImageModel;Lcom/android/mms/model/VideoModel;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    const-string v0, "Mms/MmsSlideView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OutOfMemoryError"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/android/mms/model/ImageModel;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/mms/model/ImageModel;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {p0, v0, v1, v4, v5}, Lcom/android/mms/ui/MmsSlideView;->preCalculateImageBounds(Landroid/widget/ImageView;IIZ)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v8, p0}, Lcom/android/mms/ui/MmsSlideView$TaskStack;->addTask(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_3
    invoke-direct {p0}, Lcom/android/mms/ui/MmsSlideView;->loadImage()Z

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSlideView;->onImageLoaded()V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private setIsTopLayout(Z)V
    .locals 2
    .param p1    # Z

    iget-boolean v0, p0, Lcom/android/mms/ui/MmsSlideView;->mIsTopLayout:Z

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mActiveTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mTextViewTop:Landroid/widget/TextView;

    :goto_0
    iput-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mActiveTextView:Landroid/widget/TextView;

    iput-boolean p1, p0, Lcom/android/mms/ui/MmsSlideView;->mIsTopLayout:Z

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mTextProperty:Lcom/android/mms/ui/MessageListItem$BodyTextViewProperty;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MmsSlideView;->applyTextProperty(Lcom/android/mms/ui/MessageListItem$BodyTextViewProperty;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mTextViewBottom:Landroid/widget/TextView;

    goto :goto_0
.end method

.method private syncModel()V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mSlide:Lcom/android/mms/model/SlideModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mImageModel:Lcom/android/mms/model/ImageModel;

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mSlide:Lcom/android/mms/model/SlideModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->getVideo()Lcom/android/mms/model/VideoModel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mVideoModel:Lcom/android/mms/model/VideoModel;

    return-void
.end method


# virtual methods
.method public applyTextProperty(Lcom/android/mms/ui/MessageListItem$BodyTextViewProperty;)V
    .locals 3
    .param p1    # Lcom/android/mms/ui/MessageListItem$BodyTextViewProperty;

    iput-object p1, p0, Lcom/android/mms/ui/MmsSlideView;->mTextProperty:Lcom/android/mms/ui/MessageListItem$BodyTextViewProperty;

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mActiveTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mTextProperty:Lcom/android/mms/ui/MessageListItem$BodyTextViewProperty;

    iget v1, v1, Lcom/android/mms/ui/MessageListItem$BodyTextViewProperty;->mTextSizeUnit:I

    iget-object v2, p0, Lcom/android/mms/ui/MmsSlideView;->mTextProperty:Lcom/android/mms/ui/MessageListItem$BodyTextViewProperty;

    iget v2, v2, Lcom/android/mms/ui/MessageListItem$BodyTextViewProperty;->mTextSize:F

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mActiveTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mTextProperty:Lcom/android/mms/ui/MessageListItem$BodyTextViewProperty;

    iget-object v1, v1, Lcom/android/mms/ui/MessageListItem$BodyTextViewProperty;->mTextClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mTextProperty:Lcom/android/mms/ui/MessageListItem$BodyTextViewProperty;

    iget-object v0, v0, Lcom/android/mms/ui/MessageListItem$BodyTextViewProperty;->mTextClickListener:Landroid/view/View$OnClickListener;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mActiveTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mActiveTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mTextProperty:Lcom/android/mms/ui/MessageListItem$BodyTextViewProperty;

    iget-object v1, v1, Lcom/android/mms/ui/MessageListItem$BodyTextViewProperty;->mTextTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mActiveTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mTextProperty:Lcom/android/mms/ui/MessageListItem$BodyTextViewProperty;

    iget v1, v1, Lcom/android/mms/ui/MessageListItem$BodyTextViewProperty;->mLinkMask:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    return-void
.end method

.method public getImageView()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getTextView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mActiveTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCombineAndForwardMenu()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mMsgListItem:Lcom/android/mms/ui/MessageListItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListItem;->isCombineFwdMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mMsgListItem:Lcom/android/mms/ui/MessageListItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mMsgListItem:Lcom/android/mms/ui/MessageListItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListItem;->isMultiSelectMode()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mMsgListItem:Lcom/android/mms/ui/MessageListItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListItem;->onMessageListItemClick()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mMsgListItem:Lcom/android/mms/ui/MessageListItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListItem;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/MediaModel;

    invoke-static {v1, v0}, Lcom/android/mms/ui/MessageUtils;->openModel(Landroid/content/Context;Lcom/android/mms/model/Model;)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    const v0, 0x7f0b02c7

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mSlideMediaView:Landroid/widget/FrameLayout;

    const v0, 0x7f0b0193

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mImageView:Landroid/widget/ImageView;

    const v0, 0x7f0b02ca

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mLocationTitleView:Landroid/widget/TextView;

    const v0, 0x7f0b02cb

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mLocationAddressView:Landroid/widget/TextView;

    const v0, 0x7f0b02c8

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mLocationImageView:Landroid/widget/ImageView;

    const v0, 0x7f0b02a9

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mLocationView:Landroid/widget/LinearLayout;

    const v0, 0x7f0b0194

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mVideoPlayButton:Landroid/widget/ImageView;

    const v0, 0x7f0b0265

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mAudioInfoView:Landroid/view/View;

    const v0, 0x7f0b02cc

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mAudioPlay:Landroid/widget/ImageView;

    const v0, 0x7f0b02cd

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mAudioText:Landroid/widget/TextView;

    const v0, 0x7f0b0263

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mTextViewTop:Landroid/widget/TextView;

    const v0, 0x7f0b026c

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mTextViewBottom:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mTextViewBottom:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mActiveTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mTextViewTop:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mTextViewBottom:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mAudioPlay:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mAudioText:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSinglePageSlideView()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mAudioText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mVideoPlayButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mLocationView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mLocationTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mLocationImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mLocationAddressView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->inflate:Landroid/view/LayoutInflater;

    return-void
.end method

.method protected onImageLoaded()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/OutOfMemoryError;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mSlide:Lcom/android/mms/model/SlideModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v0

    if-nez v0, :cond_1

    iput-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mImageBitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mSlide:Lcom/android/mms/model/SlideModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mImageView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mImageBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/ui/MmsSlideView;->getEmptyImageBitmap(Landroid/content/res/Resources;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_1
    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mSlideMediaView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mImageModel:Lcom/android/mms/model/ImageModel;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mImageBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const-string v0, "Mms/MmsSlideView"

    const-string v1, "setMmsImage"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected onImageLoadedForVideo()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/OutOfMemoryError;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mSlide:Lcom/android/mms/model/SlideModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v0

    if-nez v0, :cond_0

    iput-object v2, p0, Lcom/android/mms/ui/MmsSlideView;->mVideoBitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mImageView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mVideoBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_3

    const-string v0, "VIDEO_BUBBLE"

    const-string v1, "video thumbnail not created"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mVideoModel:Lcom/android/mms/model/VideoModel;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/ui/MmsSlideView;->getEmptyImageBitmapForVideo(Landroid/content/res/Resources;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/model/VideoModel;->cacheBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mVideoModel:Lcom/android/mms/model/VideoModel;

    invoke-virtual {v0}, Lcom/android/mms/model/VideoModel;->getCachedBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mVideoModel:Lcom/android/mms/model/VideoModel;

    invoke-virtual {v0}, Lcom/android/mms/model/VideoModel;->getCachedBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mVideoBitmap:Landroid/graphics/Bitmap;

    :goto_1
    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mVideoModel:Lcom/android/mms/model/VideoModel;

    invoke-virtual {v0}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mVideoPlayButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_2
    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mSlideMediaView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mVideoPlayButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/MmsSlideView;->getEmptyImageBitmapForVideo(Landroid/content/res/Resources;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mVideoBitmap:Landroid/graphics/Bitmap;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mVideoModel:Lcom/android/mms/model/VideoModel;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mVideoPlayButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mVideoModel:Lcom/android/mms/model/VideoModel;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mVideoModel:Lcom/android/mms/model/VideoModel;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mVideoPlayButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mVideoModel:Lcom/android/mms/model/VideoModel;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2
.end method

.method public present(ILcom/android/mms/model/SlideModel;Lcom/android/mms/ui/MessageListItem;)Z
    .locals 1
    .param p1    # I
    .param p2    # Lcom/android/mms/model/SlideModel;
    .param p3    # Lcom/android/mms/ui/MessageListItem;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/mms/ui/MmsSlideView;->present(ILcom/android/mms/model/SlideModel;Lcom/android/mms/ui/MessageListItem;Z)Z

    move-result v0

    return v0
.end method

.method public present(ILcom/android/mms/model/SlideModel;Lcom/android/mms/ui/MessageListItem;Z)Z
    .locals 6
    .param p1    # I
    .param p2    # Lcom/android/mms/model/SlideModel;
    .param p3    # Lcom/android/mms/ui/MessageListItem;
    .param p4    # Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/android/mms/ui/MessageListItem;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mActivity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/android/mms/ui/MmsSlideView;->mMsgListItem:Lcom/android/mms/ui/MessageListItem;

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSlideView;->reset()V

    if-ne p1, v2, :cond_4

    move v1, v2

    :goto_0
    invoke-direct {p0, v1}, Lcom/android/mms/ui/MmsSlideView;->setIsTopLayout(Z)V

    const-string v1, "NGM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "present layoutType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/mms/ui/MmsSlideView;->mSlide:Lcom/android/mms/model/SlideModel;

    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v1

    if-eqz v1, :cond_5

    if-eqz p3, :cond_5

    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v1

    invoke-virtual {p3}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v4

    invoke-direct {p0, v1, v4, v2}, Lcom/android/mms/ui/MmsSlideView;->setImage(Lcom/android/mms/model/ImageModel;Lcom/android/mms/ui/MessageItem;Z)V

    const/4 v0, 0x1

    :cond_1
    :goto_1
    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->getAudio()Lcom/android/mms/model/AudioModel;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MmsSlideView;->setAudio(Lcom/android/mms/model/AudioModel;)V

    const/4 v0, 0x1

    :cond_2
    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-static {}, Lcom/android/mms/MmsConfig;->getDisableMmsAllPageBubble()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v1

    invoke-virtual {p0, v1, p4}, Lcom/android/mms/ui/MmsSlideView;->setText(Lcom/android/mms/model/TextModel;Z)V

    :goto_2
    if-nez v0, :cond_3

    invoke-virtual {p0, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    :cond_3
    const/4 v0, 0x1

    :goto_3
    invoke-direct {p0}, Lcom/android/mms/ui/MmsSlideView;->syncModel()V

    return v0

    :cond_4
    move v1, v3

    goto :goto_0

    :cond_5
    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p3, :cond_1

    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->getVideo()Lcom/android/mms/model/VideoModel;

    move-result-object v1

    invoke-virtual {p3}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/mms/ui/MmsSlideView;->setVideo(Lcom/android/mms/model/VideoModel;Lcom/android/mms/ui/MessageItem;)V

    const/4 v0, 0x1

    goto :goto_1

    :cond_6
    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MmsSlideView;->setText(Lcom/android/mms/model/TextModel;)V

    goto :goto_2

    :cond_7
    if-nez v0, :cond_8

    invoke-virtual {p0, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    :cond_8
    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MmsSlideView;->setTextVisibility(Z)V

    goto :goto_3
.end method

.method public reset()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mSlideMediaView:Landroid/widget/FrameLayout;

    invoke-static {v0, v1}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mImageView:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mAudioInfoView:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mVideoPlayButton:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mLocationView:Landroid/widget/LinearLayout;

    invoke-static {v0, v1}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    return-void
.end method

.method public run()V
    .locals 2

    invoke-direct {p0}, Lcom/android/mms/ui/MmsSlideView;->loadImage()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/mms/ui/MmsSlideView$3;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/MmsSlideView$3;-><init>(Lcom/android/mms/ui/MmsSlideView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public setAudio(Lcom/android/mms/model/AudioModel;)V
    .locals 6
    .param p1    # Lcom/android/mms/model/AudioModel;

    const v5, 0x7f0c00b4

    const v4, 0x7f02006d

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->isDrmProtected()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Mms/MmsSlideView"

    const-string v1, "set DRM Audio"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mAudioPlay:Landroid/widget/ImageView;

    const v1, 0x7f02006e

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mAudioPlay:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mAudioPlay:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setHoverPopupType(I)V

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mAudioInfoView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mAudioPlay:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mAudioText:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mAudioText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mAudioText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "Mms/MmsSlideView"

    const-string v1, "set Audio"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mAudioPlay:Landroid/widget/ImageView;

    const v1, 0x7f020307

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mAudioPlay:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mAudioPlay:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setHoverPopupType(I)V

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mAudioInfoView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mAudioPlay:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mAudioText:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mAudioText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mAudioText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setHighlight(Ljava/util/regex/Pattern;)V
    .locals 0
    .param p1    # Ljava/util/regex/Pattern;

    iput-object p1, p0, Lcom/android/mms/ui/MmsSlideView;->mHighlight:Ljava/util/regex/Pattern;

    return-void
.end method

.method public setIsDelayedMessage(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/mms/ui/MmsSlideView;->mIsDelayedMessage:Z

    return-void
.end method

.method public setIsFailedMessage(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/mms/ui/MmsSlideView;->mIsFailedMessage:Z

    return-void
.end method

.method public setIsScheduledMessage(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/mms/ui/MmsSlideView;->mIsScheduledMessage:Z

    return-void
.end method

.method public setText(Lcom/android/mms/model/TextModel;)V
    .locals 1
    .param p1    # Lcom/android/mms/model/TextModel;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/mms/ui/MmsSlideView;->setText(Lcom/android/mms/model/TextModel;Z)V

    return-void
.end method

.method public setText(Lcom/android/mms/model/TextModel;Z)V
    .locals 12
    .param p1    # Lcom/android/mms/model/TextModel;
    .param p2    # Z

    const/4 v11, 0x1

    const/4 v10, 0x0

    if-nez p1, :cond_0

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MmsSlideView;->setTextVisibility(Z)V

    :goto_0
    return-void

    :cond_0
    const-string v1, "Mms/MmsSlideView"

    const-string v2, "set text"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Lcom/android/mms/MmsConfig;->getDisableMmsAllPageBubble()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p2, :cond_1

    invoke-static {}, Lcom/android/mms/ui/MessageListItem;->getBytesForDisplayFolding()I

    move-result v1

    invoke-static {v9, v1}, Lcom/android/mms/util/TelephonyUtils;->substringByByteSize(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :cond_1
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MmsSlideView;->setTextVisibility(Z)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/mms/util/SmileyParser;->getInstance()Lcom/android/mms/util/SmileyParser;

    move-result-object v8

    iget-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mActiveTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v9, v11, v0, v8}, Lcom/android/mms/ui/MessageListItem;->formatBody(Ljava/lang/String;ZLandroid/content/Context;Lcom/android/mms/util/SmileyParser;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePoi()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mActivity:Landroid/app/Activity;

    invoke-static {v1, v6}, Lcom/android/mms/poi/PoiReflector;->extractPoiString(Landroid/app/Activity;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mHighlight:Ljava/util/regex/Pattern;

    invoke-virtual {v8}, Lcom/android/mms/util/SmileyParser;->getSmileyStart()[I

    move-result-object v2

    invoke-virtual {v8}, Lcom/android/mms/util/SmileyParser;->getSmileyEnd()[I

    move-result-object v3

    move-object v4, v6

    check-cast v4, Landroid/text/SpannableStringBuilder;

    const-string v5, "Mms/MmsSlideView"

    invoke-static/range {v0 .. v5}, Lcom/android/mms/util/UIUtils;->highlightMessage(Landroid/content/Context;Ljava/util/regex/Pattern;[I[ILandroid/text/SpannableStringBuilder;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mActiveTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mActiveTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v6}, Lcom/android/mms/ui/MessageUtils;->isTextRTL(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x5

    iput v1, v7, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    :goto_1
    iget-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mActiveTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/android/mms/ui/MmsSlideView;->mActiveTextView:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/android/mms/ui/MmsSlideView;->mIsFailedMessage:Z

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/android/mms/ui/MmsSlideView;->mIsScheduledMessage:Z

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/android/mms/ui/MmsSlideView;->mIsDelayedMessage:Z

    if-eqz v1, :cond_6

    :cond_4
    move v1, v11

    :goto_2
    invoke-static {v2, v1}, Lcom/android/mms/ui/MessageListItem;->applyBodyTextViewColor(Landroid/widget/TextView;Z)V

    invoke-virtual {p0, v11}, Lcom/android/mms/ui/MmsSlideView;->setTextVisibility(Z)V

    goto/16 :goto_0

    :cond_5
    const/4 v1, 0x3

    iput v1, v7, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    goto :goto_1

    :cond_6
    move v1, v10

    goto :goto_2
.end method

.method public setTextVisibility(Z)V
    .locals 1
    .param p1    # Z

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mActiveTextView:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mTextViewTop:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mTextViewBottom:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method public setVideo(Lcom/android/mms/model/VideoModel;Lcom/android/mms/ui/MessageItem;)V
    .locals 9
    .param p1    # Lcom/android/mms/model/VideoModel;
    .param p2    # Lcom/android/mms/ui/MessageItem;

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mVideoModel:Lcom/android/mms/model/VideoModel;

    invoke-virtual {p1, v0}, Lcom/android/mms/model/VideoModel;->equals(Ljava/lang/Object;)Z

    move-result v7

    iput-object p1, p0, Lcom/android/mms/ui/MmsSlideView;->mVideoModel:Lcom/android/mms/model/VideoModel;

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mVideoModel:Lcom/android/mms/model/VideoModel;

    invoke-virtual {v0}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p2}, Lcom/android/mms/ui/MessageItem;->getMessageUri()Landroid/net/Uri;

    move-result-object v2

    if-eqz v7, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mImageView:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mSlideMediaView:Landroid/widget/FrameLayout;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mVideoPlayButton:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    const-string v0, "VIDEO_BUBBLE"

    const-string v1, "same image"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mVideoModel:Lcom/android/mms/model/VideoModel;

    invoke-virtual {v0}, Lcom/android/mms/model/MediaModel;->isDrmProtected()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "VIDEO_BUBBLE"

    const-string v1, "set DRM Video"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mImageView:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MmsSlideView;->calculateDrmImageBounds(Landroid/widget/ImageView;)V

    invoke-direct {p0}, Lcom/android/mms/ui/MmsSlideView;->loadImageForVideo()Z

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSlideView;->onImageLoadedForVideo()V

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mVideoBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mVideoBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0c00b3

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mVideoPlayButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0c00b3

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mImageView:Landroid/widget/ImageView;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/MmsSlideView;->setHover(Landroid/view/View;Landroid/net/Uri;Landroid/net/Uri;Lcom/android/mms/model/ImageModel;Lcom/android/mms/model/VideoModel;)V

    iget-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mVideoPlayButton:Landroid/widget/ImageView;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/MmsSlideView;->setHover(Landroid/view/View;Landroid/net/Uri;Landroid/net/Uri;Lcom/android/mms/model/ImageModel;Lcom/android/mms/model/VideoModel;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    const-string v0, "Mms/MmsSlideView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OutOfMemoryError"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_3
    :try_start_1
    const-string v0, "VIDEO_BUBBLE"

    const-string v1, "set Video"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "VIDEO_BUBBLE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Same Video ? "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "VIDEO_BUBBLE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "have Video cache ? "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/android/mms/ui/MmsSlideView;->mVideoModel:Lcom/android/mms/model/VideoModel;

    invoke-virtual {v4}, Lcom/android/mms/model/VideoModel;->hasCachedBitmap()Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mVideoModel:Lcom/android/mms/model/VideoModel;

    invoke-virtual {v0}, Lcom/android/mms/model/VideoModel;->hasCachedBitmap()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/android/mms/ui/MmsSlideView;->loadImageForVideo()Z

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSlideView;->onImageLoadedForVideo()V

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mVideoBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mVideoBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v4, p0, Lcom/android/mms/ui/MmsSlideView;->mVideoBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {p0, v0, v1, v4, v5}, Lcom/android/mms/ui/MmsSlideView;->preCalculateImageBounds(Landroid/widget/ImageView;IIZ)V

    goto/16 :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mContext:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/android/mms/ui/MessageUtils;->createVideoThumbnail(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mVideoBitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mVideoModel:Lcom/android/mms/model/VideoModel;

    iget-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mVideoBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/android/mms/model/VideoModel;->cacheBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSlideView;->onImageLoadedForVideo()V

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mVideoBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mVideoBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v4, p0, Lcom/android/mms/ui/MmsSlideView;->mVideoBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {p0, v0, v1, v4, v5}, Lcom/android/mms/ui/MmsSlideView;->preCalculateImageBounds(Landroid/widget/ImageView;IIZ)V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method public setVisibility(Z)V
    .locals 0
    .param p1    # Z

    invoke-static {p0, p1}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    return-void
.end method
