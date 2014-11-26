.class public Lcom/android/mms/freemessage/FreeMessageBubbleView;
.super Landroid/widget/LinearLayout;
.source "FreeMessageBubbleView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/freemessage/FreeMessageBubbleView$TaskStack;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/FreeMessageBubbleView"

.field private static final THUMBNAIL_BOUNDS_LIMIT:I

.field private static sEmptyBitmap:Landroid/graphics/Bitmap;


# instance fields
.field inflate:Landroid/view/LayoutInflater;

.field private mActiveTextView:Landroid/widget/TextView;

.field private mAudioInfoView:Landroid/view/View;

.field private mAudioPlay:Landroid/widget/ImageView;

.field private mAudioSizeText:Landroid/widget/TextView;

.field private mAudioText:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mFreeFileIcon:Landroid/widget/ImageView;

.field private mFreeFileInfoView:Landroid/widget/LinearLayout;

.field private mFreeFileNameView:Landroid/widget/TextView;

.field private mFreeFileSizeView:Landroid/widget/TextView;

.field private mFreeFtInfoView:Landroid/widget/LinearLayout;

.field private mFreeFtModel:Lcom/android/mms/model/ImFileTransferModel;

.field private mFreeFtStatusView:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mHighlight:Ljava/util/regex/Pattern;

.field private mHoverEnterTime:J

.field private mHoverPopupWindowimg:Landroid/widget/HoverPopupWindow;

.field private mImageBitmap:Landroid/graphics/Bitmap;

.field private mImageModel:Lcom/android/mms/model/ImageModel;

.field private mImageView:Landroid/widget/ImageView;

.field private mImgContent:Landroid/view/View;

.field private mIsFailedMessage:Z

.field private mIsScheduledMessage:Z

.field private mIsTopLayout:Z

.field private mLocationAddressView:Landroid/widget/TextView;

.field private mLocationImageView:Landroid/widget/ImageView;

.field private mLocationTitleView:Landroid/widget/TextView;

.field private mLocationView:Landroid/widget/LinearLayout;

.field private mMediaUri:Landroid/net/Uri;

.field private mMsgItem:Lcom/android/mms/ui/MessageItem;

.field private mMsgListItem:Lcom/android/mms/ui/MessageListItem;

.field private final mOnClickListener:Landroid/view/View$OnClickListener;

.field private mPlayImage:Landroid/widget/ImageView;

.field private mPreviewImage:Landroid/widget/ImageView;

.field private mSavebtn:Landroid/widget/Button;

.field private mSlideMediaView:Landroid/widget/FrameLayout;

.field private mTempPoint:Landroid/graphics/Point;

.field private mTextProperty:Lcom/android/mms/ui/MessageListItem$BodyTextViewProperty;

.field private mTextViewBottom:Landroid/widget/TextView;

.field private mTextViewTop:Landroid/widget/TextView;

.field private mTransferProgess:Z

.field private mVideoBitmap:Landroid/graphics/Bitmap;

.field private mVideoModel:Lcom/android/mms/model/VideoModel;

.field private mVideoPlayButton:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->sEmptyBitmap:Landroid/graphics/Bitmap;

    const/high16 v0, 0x434b0000

    invoke-static {v0}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v0

    sput v0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->THUMBNAIL_BOUNDS_LIMIT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mLocationTitleView:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mLocationAddressView:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mLocationImageView:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mLocationView:Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mSlideMediaView:Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mActiveTextView:Landroid/widget/TextView;

    iput-boolean v2, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mIsTopLayout:Z

    iput-boolean v2, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mIsFailedMessage:Z

    iput-boolean v2, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mTransferProgess:Z

    iput-object v1, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mFreeFtModel:Lcom/android/mms/model/ImFileTransferModel;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mTempPoint:Landroid/graphics/Point;

    iput-object v1, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mMsgListItem:Lcom/android/mms/ui/MessageListItem;

    iput-object v1, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iput-boolean v2, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mIsScheduledMessage:Z

    iput-object v1, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mHoverPopupWindowimg:Landroid/widget/HoverPopupWindow;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mHoverEnterTime:J

    new-instance v0, Lcom/android/mms/freemessage/FreeMessageBubbleView$2;

    invoke-direct {v0, p0}, Lcom/android/mms/freemessage/FreeMessageBubbleView$2;-><init>(Lcom/android/mms/freemessage/FreeMessageBubbleView;)V

    iput-object v0, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mOnClickListener:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mLocationTitleView:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mLocationAddressView:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mLocationImageView:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mLocationView:Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mSlideMediaView:Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mActiveTextView:Landroid/widget/TextView;

    iput-boolean v2, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mIsTopLayout:Z

    iput-boolean v2, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mIsFailedMessage:Z

    iput-boolean v2, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mTransferProgess:Z

    iput-object v1, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mFreeFtModel:Lcom/android/mms/model/ImFileTransferModel;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mTempPoint:Landroid/graphics/Point;

    iput-object v1, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mMsgListItem:Lcom/android/mms/ui/MessageListItem;

    iput-object v1, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iput-boolean v2, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mIsScheduledMessage:Z

    iput-object v1, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mHoverPopupWindowimg:Landroid/widget/HoverPopupWindow;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mHoverEnterTime:J

    new-instance v0, Lcom/android/mms/freemessage/FreeMessageBubbleView$2;

    invoke-direct {v0, p0}, Lcom/android/mms/freemessage/FreeMessageBubbleView$2;-><init>(Lcom/android/mms/freemessage/FreeMessageBubbleView;)V

    iput-object v0, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mOnClickListener:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mContext:Landroid/content/Context;

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

    iput-object v1, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mLocationTitleView:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mLocationAddressView:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mLocationImageView:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mLocationView:Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mSlideMediaView:Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mActiveTextView:Landroid/widget/TextView;

    iput-boolean v2, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mIsTopLayout:Z

    iput-boolean v2, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mIsFailedMessage:Z

    iput-boolean v2, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mTransferProgess:Z

    iput-object v1, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mFreeFtModel:Lcom/android/mms/model/ImFileTransferModel;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mTempPoint:Landroid/graphics/Point;

    iput-object v1, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mMsgListItem:Lcom/android/mms/ui/MessageListItem;

    iput-object v1, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iput-boolean v2, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mIsScheduledMessage:Z

    iput-object v1, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mHoverPopupWindowimg:Landroid/widget/HoverPopupWindow;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mHoverEnterTime:J

    new-instance v0, Lcom/android/mms/freemessage/FreeMessageBubbleView$2;

    invoke-direct {v0, p0}, Lcom/android/mms/freemessage/FreeMessageBubbleView$2;-><init>(Lcom/android/mms/freemessage/FreeMessageBubbleView;)V

    iput-object v0, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mOnClickListener:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/freemessage/FreeMessageBubbleView;)J
    .locals 2
    .param p0    # Lcom/android/mms/freemessage/FreeMessageBubbleView;

    iget-wide v0, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mHoverEnterTime:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/android/mms/freemessage/FreeMessageBubbleView;J)J
    .locals 0
    .param p0    # Lcom/android/mms/freemessage/FreeMessageBubbleView;
    .param p1    # J

    iput-wide p1, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mHoverEnterTime:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/android/mms/freemessage/FreeMessageBubbleView;)Landroid/view/View;
    .locals 1
    .param p0    # Lcom/android/mms/freemessage/FreeMessageBubbleView;

    iget-object v0, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mImgContent:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/mms/freemessage/FreeMessageBubbleView;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0    # Lcom/android/mms/freemessage/FreeMessageBubbleView;
    .param p1    # Landroid/view/View;

    iput-object p1, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mImgContent:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/mms/freemessage/FreeMessageBubbleView;)Landroid/widget/ImageView;
    .locals 1
    .param p0    # Lcom/android/mms/freemessage/FreeMessageBubbleView;

    iget-object v0, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mPreviewImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/mms/freemessage/FreeMessageBubbleView;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .param p0    # Lcom/android/mms/freemessage/FreeMessageBubbleView;
    .param p1    # Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mPreviewImage:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/mms/freemessage/FreeMessageBubbleView;)Landroid/widget/ImageView;
    .locals 1
    .param p0    # Lcom/android/mms/freemessage/FreeMessageBubbleView;

    iget-object v0, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mPlayImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/mms/freemessage/FreeMessageBubbleView;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .param p0    # Lcom/android/mms/freemessage/FreeMessageBubbleView;
    .param p1    # Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mPlayImage:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/mms/freemessage/FreeMessageBubbleView;)Landroid/widget/Button;
    .locals 1
    .param p0    # Lcom/android/mms/freemessage/FreeMessageBubbleView;

    iget-object v0, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mSavebtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/mms/freemessage/FreeMessageBubbleView;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0
    .param p0    # Lcom/android/mms/freemessage/FreeMessageBubbleView;
    .param p1    # Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mSavebtn:Landroid/widget/Button;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/mms/freemessage/FreeMessageBubbleView;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0    # Lcom/android/mms/freemessage/FreeMessageBubbleView;

    iget-object v0, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mImageBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/mms/freemessage/FreeMessageBubbleView;Landroid/widget/ImageView;IIZ)V
    .locals 0
    .param p0    # Lcom/android/mms/freemessage/FreeMessageBubbleView;
    .param p1    # Landroid/widget/ImageView;
    .param p2    # I
    .param p3    # I
    .param p4    # Z

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/mms/freemessage/FreeMessageBubbleView;->preCalculateImageBounds(Landroid/widget/ImageView;IIZ)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/mms/freemessage/FreeMessageBubbleView;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0    # Lcom/android/mms/freemessage/FreeMessageBubbleView;

    iget-object v0, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mVideoBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/mms/freemessage/FreeMessageBubbleView;)Landroid/widget/HoverPopupWindow;
    .locals 1
    .param p0    # Lcom/android/mms/freemessage/FreeMessageBubbleView;

    iget-object v0, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mHoverPopupWindowimg:Landroid/widget/HoverPopupWindow;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/mms/freemessage/FreeMessageBubbleView;Landroid/widget/HoverPopupWindow;)Landroid/widget/HoverPopupWindow;
    .locals 0
    .param p0    # Lcom/android/mms/freemessage/FreeMessageBubbleView;
    .param p1    # Landroid/widget/HoverPopupWindow;

    iput-object p1, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mHoverPopupWindowimg:Landroid/widget/HoverPopupWindow;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/mms/freemessage/FreeMessageBubbleView;)Lcom/android/mms/ui/MessageListItem;
    .locals 1
    .param p0    # Lcom/android/mms/freemessage/FreeMessageBubbleView;

    iget-object v0, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mMsgListItem:Lcom/android/mms/ui/MessageListItem;

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

.method private decodeBitmap(Landroid/net/Uri;I)Landroid/graphics/Bitmap;
    .locals 18
    .param p1    # Landroid/net/Uri;
    .param p2    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/OutOfMemoryError;
        }
    .end annotation

    const/16 v16, 0x0

    new-instance v13, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v13}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v11, 0x0

    const/4 v15, 0x0

    const/4 v14, 0x0

    const/16 v17, 0x1

    const/4 v12, 0x0

    const/4 v10, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v10

    const/4 v2, 0x0

    invoke-static {v10, v2, v13}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    :cond_0
    :goto_0
    div-int v2, v15, v17

    sget v3, Lcom/android/mms/freemessage/FreeMessageBubbleView;->THUMBNAIL_BOUNDS_LIMIT:I

    if-gt v2, v3, :cond_1

    div-int v2, v14, v17

    sget v3, Lcom/android/mms/freemessage/FreeMessageBubbleView;->THUMBNAIL_BOUNDS_LIMIT:I

    if-le v2, v3, :cond_2

    :cond_1
    mul-int/lit8 v17, v17, 0x2

    const/4 v12, 0x1

    goto :goto_0

    :cond_2
    if-eqz v11, :cond_3

    if-eqz v1, :cond_3

    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v2, v11

    invoke-virtual {v6, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    if-eqz v12, :cond_5

    div-int v2, v15, v17

    div-int v3, v14, v17

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v16

    :goto_1
    invoke-static {v1}, Lcom/android/mms/freemessage/FreeMessageBubbleView;->recycleBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    move-object/from16 v1, v16

    :cond_3
    if-eqz v10, :cond_4

    :try_start_1
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_4
    :goto_2
    return-object v1

    :cond_5
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_2
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v7, 0x1

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v16

    goto :goto_1

    :catch_0
    move-exception v8

    const-string v2, "Mms/FreeMessageBubbleView"

    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_1
    move-exception v8

    :try_start_3
    const-string v2, "Mms/FreeMessageBubbleView"

    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v1, 0x0

    if-eqz v10, :cond_4

    :try_start_4
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception v8

    const-string v2, "Mms/FreeMessageBubbleView"

    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_3
    move-exception v9

    :try_start_5
    throw v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v2

    if-eqz v10, :cond_6

    :try_start_6
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    :cond_6
    :goto_3
    throw v2

    :catch_4
    move-exception v8

    const-string v3, "Mms/FreeMessageBubbleView"

    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method private displayFtStatus()V
    .locals 3

    iget-object v1, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mMsgListItem:Lcom/android/mms/ui/MessageListItem;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v1, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageItem;->getFreeMessageDeliveryStatus()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    iget-object v1, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mFreeFtStatusView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageItem;->isInboxMessage()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mFreeFtStatusView:Landroid/widget/TextView;

    const v2, 0x7f0c04df

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mFreeFtStatusView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method private static getEmptyImageBitmap(Landroid/content/res/Resources;)Landroid/graphics/Bitmap;
    .locals 3
    .param p0    # Landroid/content/res/Resources;

    sget-object v1, Lcom/android/mms/freemessage/FreeMessageBubbleView;->sEmptyBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    const v1, 0x7f020073

    :try_start_0
    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/mms/freemessage/FreeMessageBubbleView;->sEmptyBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    sget-object v1, Lcom/android/mms/freemessage/FreeMessageBubbleView;->sEmptyBitmap:Landroid/graphics/Bitmap;

    return-object v1

    :catch_0
    move-exception v0

    const-string v1, "Mms/FreeMessageBubbleView"

    const-string v2, "OutOfMemoryError caught @ BitmapFactory.decodeResource"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getEmptyImageBitmapForVideo(Landroid/content/res/Resources;)Landroid/graphics/Bitmap;
    .locals 3
    .param p0    # Landroid/content/res/Resources;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/OutOfMemoryError;
        }
    .end annotation

    sget-object v1, Lcom/android/mms/freemessage/FreeMessageBubbleView;->sEmptyBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    const v1, 0x7f020074

    :try_start_0
    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/mms/freemessage/FreeMessageBubbleView;->sEmptyBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    sget-object v1, Lcom/android/mms/freemessage/FreeMessageBubbleView;->sEmptyBitmap:Landroid/graphics/Bitmap;

    return-object v1

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->writeHprofDataToFile()V

    const-string v1, "Mms/FreeMessageBubbleView"

    const-string v2, "OutOfMemoryError caught @ BitmapFactory.decodeResource and throw"

    invoke-static {v1, v2, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static getErrorImageBitmap(Landroid/content/res/Resources;)Landroid/graphics/Bitmap;
    .locals 3
    .param p0    # Landroid/content/res/Resources;

    sget-object v1, Lcom/android/mms/freemessage/FreeMessageBubbleView;->sEmptyBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    const v1, 0x7f020072

    :try_start_0
    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/mms/freemessage/FreeMessageBubbleView;->sEmptyBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    sget-object v1, Lcom/android/mms/freemessage/FreeMessageBubbleView;->sEmptyBitmap:Landroid/graphics/Bitmap;

    return-object v1

    :catch_0
    move-exception v0

    const-string v1, "Mms/FreeMessageBubbleView"

    const-string v2, "OutOfMemoryError caught @ BitmapFactory.decodeResource"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private loadImage()Z
    .locals 8

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mImageModel:Lcom/android/mms/model/ImageModel;

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    iget-object v5, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mImageModel:Lcom/android/mms/model/ImageModel;

    invoke-virtual {v5}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v3

    iget-object v5, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mImageModel:Lcom/android/mms/model/ImageModel;

    invoke-virtual {v5}, Lcom/android/mms/model/MediaModel;->isDrmProtected()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020071

    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mImageModel:Lcom/android/mms/model/ImageModel;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mImageModel:Lcom/android/mms/model/ImageModel;

    invoke-virtual {v5}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iput-object v0, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mImageBitmap:Landroid/graphics/Bitmap;

    const/4 v4, 0x1

    goto :goto_0

    :cond_3
    iget-object v5, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mMsgListItem:Lcom/android/mms/ui/MessageListItem;

    invoke-virtual {v5}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/ui/MessageItem;->getThumbNailPath()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    sget-object v5, Lcom/android/mms/freemessage/FreeMessageProperties$FreeMessageFT;->URI_THUMBNAIL:Landroid/net/Uri;

    iget-object v6, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mMsgListItem:Lcom/android/mms/ui/MessageListItem;

    invoke-virtual {v6}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    iget-object v5, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mContext:Landroid/content/Context;

    invoke-static {v5, v1}, Lcom/android/mms/ui/MessageUtils;->getBitmapFromUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v5, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mImageModel:Lcom/android/mms/model/ImageModel;

    invoke-virtual {v5}, Lcom/android/mms/model/ImageModel;->getThumbnailBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    :cond_4
    iget-object v5, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mImageModel:Lcom/android/mms/model/ImageModel;

    invoke-virtual {v5}, Lcom/android/mms/model/ImageModel;->getThumbnailBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1
.end method

.method private loadImageForVideo()Z
    .locals 6

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mVideoModel:Lcom/android/mms/model/VideoModel;

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget-object v4, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mVideoModel:Lcom/android/mms/model/VideoModel;

    invoke-virtual {v4}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v2

    iget-object v4, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mVideoModel:Lcom/android/mms/model/VideoModel;

    invoke-virtual {v4}, Lcom/android/mms/model/MediaModel;->isDrmProtected()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020071

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_1
    iget-object v4, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mVideoModel:Lcom/android/mms/model/VideoModel;

    invoke-virtual {v4}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iput-object v0, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mVideoBitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mVideoModel:Lcom/android/mms/model/VideoModel;

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

    iget-object v1, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mTempPoint:Landroid/graphics/Point;

    invoke-static {v1, p2, p3, p4}, Lcom/android/mms/model/ImageModel;->calcThumbnailImageBounds(Landroid/graphics/Point;IIZ)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mTempPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v1, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mTempPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget-object v2, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-void
.end method

.method protected static recycleBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p0    # Landroid/graphics/Bitmap;

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method

.method private setHover(Landroid/view/View;Lcom/android/mms/model/ImageModel;Lcom/android/mms/model/VideoModel;)V
    .locals 4
    .param p1    # Landroid/view/View;
    .param p2    # Lcom/android/mms/model/ImageModel;
    .param p3    # Lcom/android/mms/model/VideoModel;

    move-object v1, p1

    move-object v0, p2

    move-object v2, p3

    const/4 v3, 0x3

    invoke-virtual {p1, v3}, Landroid/view/View;->setHoverPopupType(I)V

    new-instance v3, Lcom/android/mms/freemessage/FreeMessageBubbleView$1;

    invoke-direct {v3, p0, v0, v2, v1}, Lcom/android/mms/freemessage/FreeMessageBubbleView$1;-><init>(Lcom/android/mms/freemessage/FreeMessageBubbleView;Lcom/android/mms/model/ImageModel;Lcom/android/mms/model/VideoModel;Landroid/view/View;)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    return-void
.end method

.method private setImage(Lcom/android/mms/model/ImageModel;Lcom/android/mms/ui/MessageItem;Z)V
    .locals 10
    .param p1    # Lcom/android/mms/model/ImageModel;
    .param p2    # Lcom/android/mms/ui/MessageItem;
    .param p3    # Z

    const/4 v9, 0x0

    iget-object v5, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mImageModel:Lcom/android/mms/model/ImageModel;

    invoke-virtual {p1, v5}, Lcom/android/mms/model/ImageModel;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-object p1, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mImageModel:Lcom/android/mms/model/ImageModel;

    iget-object v5, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mImageModel:Lcom/android/mms/model/ImageModel;

    invoke-virtual {v5}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/mms/ui/MessageItem;->getMessageUri()Landroid/net/Uri;

    move-result-object v3

    const-string v5, "Mms/FreeMessageBubbleView"

    const-string v6, "setImage"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v5, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mImageView:Landroid/widget/ImageView;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    iget-object v5, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mSlideMediaView:Landroid/widget/FrameLayout;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    if-eqz v2, :cond_0

    const-string v5, "Mms/FreeMessageBubbleView"

    const-string v6, "same image"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->isDrmProtected()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mImageView:Landroid/widget/ImageView;

    invoke-direct {p0, v5}, Lcom/android/mms/freemessage/FreeMessageBubbleView;->calculateDrmImageBounds(Landroid/widget/ImageView;)V

    :goto_1
    if-eqz p3, :cond_3

    invoke-static {}, Lcom/android/mms/freemessage/FreeMessageBubbleView$TaskStack;->getInstance()Lcom/android/mms/freemessage/FreeMessageBubbleView$TaskStack;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/android/mms/freemessage/FreeMessageBubbleView$TaskStack;->removeTask(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Lcom/android/mms/model/ImageModel;->hasCachedBitmap()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-direct {p0}, Lcom/android/mms/freemessage/FreeMessageBubbleView;->loadImage()Z

    invoke-virtual {p0}, Lcom/android/mms/freemessage/FreeMessageBubbleView;->onImageLoaded()V

    :goto_2
    iget-object v5, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mImageView:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-direct {p0, v5, p1, v6}, Lcom/android/mms/freemessage/FreeMessageBubbleView;->setHover(Landroid/view/View;Lcom/android/mms/model/ImageModel;Lcom/android/mms/model/VideoModel;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v5, "Mms/FreeMessageBubbleView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OutOfMemoryError"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v5, v9}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v5, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/android/mms/model/ImageModel;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Lcom/android/mms/model/ImageModel;->getHeight()I

    move-result v7

    const/4 v8, 0x0

    invoke-direct {p0, v5, v6, v7, v8}, Lcom/android/mms/freemessage/FreeMessageBubbleView;->preCalculateImageBounds(Landroid/widget/ImageView;IIZ)V

    goto :goto_1

    :cond_2
    iget-object v5, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mImageView:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v4, p0}, Lcom/android/mms/freemessage/FreeMessageBubbleView$TaskStack;->addTask(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_3
    invoke-direct {p0}, Lcom/android/mms/freemessage/FreeMessageBubbleView;->loadImage()Z

    invoke-virtual {p0}, Lcom/android/mms/freemessage/FreeMessageBubbleView;->onImageLoaded()V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private setIsTopLayout(Z)V
    .locals 2
    .param p1    # Z

    iget-boolean v0, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mIsTopLayout:Z

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mActiveTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mTextViewTop:Landroid/widget/TextView;

    :goto_0
    iput-object v0, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mActiveTextView:Landroid/widget/TextView;

    iput-boolean p1, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mIsTopLayout:Z

    iget-object v0, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mTextProperty:Lcom/android/mms/ui/MessageListItem$BodyTextViewProperty;

    invoke-virtual {p0, v0}, Lcom/android/mms/freemessage/FreeMessageBubbleView;->applyTextProperty(Lcom/android/mms/ui/MessageListItem$BodyTextViewProperty;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mTextViewBottom:Landroid/widget/TextView;

    goto :goto_0
.end method

.method private syncModel()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mFreeFtModel:Lcom/android/mms/model/ImFileTransferModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mFreeFtModel:Lcom/android/mms/model/ImFileTransferModel;

    invoke-virtual {v0}, Lcom/android/mms/model/ImFileTransferModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mImageModel:Lcom/android/mms/model/ImageModel;

    iget-object v0, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mFreeFtModel:Lcom/android/mms/model/ImFileTransferModel;

    invoke-virtual {v0}, Lcom/android/mms/model/ImFileTransferModel;->getVideo()Lcom/android/mms/model/VideoModel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mVideoModel:Lcom/android/mms/model/VideoModel;

    :goto_0
    return-void

    :cond_0
    iput-object v1, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mImageModel:Lcom/android/mms/model/ImageModel;

    iput-object v1, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mVideoModel:Lcom/android/mms/model/VideoModel;

    goto :goto_0
.end method


# virtual methods
.method public applyTextProperty(Lcom/android/mms/ui/MessageListItem$BodyTextViewProperty;)V
    .locals 3
    .param p1    # Lcom/android/mms/ui/MessageListItem$BodyTextViewProperty;

    iput-object p1, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mTextProperty:Lcom/android/mms/ui/MessageListItem$BodyTextViewProperty;

    iget-object v0, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mActiveTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mTextProperty:Lcom/android/mms/ui/MessageListItem$BodyTextViewProperty;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageListItem$BodyTextViewProperty;->getTextSizeUnit()I

    move-result v1

    iget-object v2, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mTextProperty:Lcom/android/mms/ui/MessageListItem$BodyTextViewProperty;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageListItem$BodyTextViewProperty;->getTextSize()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mActiveTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mTextProperty:Lcom/android/mms/ui/MessageListItem$BodyTextViewProperty;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageListItem$BodyTextViewProperty;->getTextClickListener()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mTextProperty:Lcom/android/mms/ui/MessageListItem$BodyTextViewProperty;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListItem$BodyTextViewProperty;->getTextClickListener()Landroid/view/View$OnClickListener;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mActiveTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mActiveTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mTextProperty:Lcom/android/mms/ui/MessageListItem$BodyTextViewProperty;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageListItem$BodyTextViewProperty;->getTextTouchListener()Landroid/view/View$OnTouchListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mActiveTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mTextProperty:Lcom/android/mms/ui/MessageListItem$BodyTextViewProperty;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageListItem$BodyTextViewProperty;->getLinkMask()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/mms/util/UIUtils;->addLinks(Landroid/widget/TextView;I)V

    return-void
.end method

.method public getImageView()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getTextView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mActiveTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;

    iget-object v0, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mMsgListItem:Lcom/android/mms/ui/MessageListItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mMsgListItem:Lcom/android/mms/ui/MessageListItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListItem;->isMultiSelectMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mMsgListItem:Lcom/android/mms/ui/MessageListItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListItem;->onMessageListItemClick()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mMsgListItem:Lcom/android/mms/ui/MessageListItem;

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

    const v0, 0x7f0b01a4

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mSlideMediaView:Landroid/widget/FrameLayout;

    const v0, 0x7f0b01a5

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mImageView:Landroid/widget/ImageView;

    const v0, 0x7f0b01ab

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mLocationTitleView:Landroid/widget/TextView;

    const v0, 0x7f0b01ac

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mLocationAddressView:Landroid/widget/TextView;

    const v0, 0x7f0b01a9

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mLocationImageView:Landroid/widget/ImageView;

    const v0, 0x7f0b01a8

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mLocationView:Landroid/widget/LinearLayout;

    const v0, 0x7f0b01a6

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mVideoPlayButton:Landroid/widget/ImageView;

    const v0, 0x7f0b01ad

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mAudioInfoView:Landroid/view/View;

    const v0, 0x7f0b01ae

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mAudioPlay:Landroid/widget/ImageView;

    const v0, 0x7f0b01af

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mAudioText:Landroid/widget/TextView;

    const v0, 0x7f0b01b0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mAudioSizeText:Landroid/widget/TextView;

    const v0, 0x7f0b01b1

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mFreeFtInfoView:Landroid/widget/LinearLayout;

    const v0, 0x7f0b01b2

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mFreeFileIcon:Landroid/widget/ImageView;

    const v0, 0x7f0b01b4

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mFreeFileNameView:Landroid/widget/TextView;

    const v0, 0x7f0b01b5

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mFreeFileSizeView:Landroid/widget/TextView;

    const v0, 0x7f0b01b6

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mFreeFtStatusView:Landroid/widget/TextView;

    const v0, 0x7f0b01b3

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mFreeFileInfoView:Landroid/widget/LinearLayout;

    const v0, 0x7f0b01a3

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mTextViewTop:Landroid/widget/TextView;

    const v0, 0x7f0b01a7

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mTextViewBottom:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mTextViewBottom:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mActiveTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mTextViewTop:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mTextViewBottom:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mAudioPlay:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mAudioText:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSinglePageSlideView()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mAudioText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mVideoPlayButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mLocationView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mLocationTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mLocationImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mLocationAddressView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->inflate:Landroid/view/LayoutInflater;

    return-void
.end method

.method protected onImageLoaded()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mImageBitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mMsgListItem:Lcom/android/mms/ui/MessageListItem;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->getThumbNailPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mTransferProgess:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/freemessage/FreeMessageBubbleView;->getEmptyImageBitmap(Landroid/content/res/Resources;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4}, Lcom/android/mms/freemessage/FreeMessageBubbleView;->getEmptyImageBitmap(Landroid/content/res/Resources;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/mms/freemessage/FreeMessageBubbleView;->preCalculateImageBounds(Landroid/widget/ImageView;IIZ)V

    iget-object v2, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/freemessage/FreeMessageBubbleView;->getEmptyImageBitmap(Landroid/content/res/Resources;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    iget-object v2, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    iget-object v2, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mSlideMediaView:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/freemessage/FreeMessageBubbleView;->getErrorImageBitmap(Landroid/content/res/Resources;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4}, Lcom/android/mms/freemessage/FreeMessageBubbleView;->getErrorImageBitmap(Landroid/content/res/Resources;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/mms/freemessage/FreeMessageBubbleView;->preCalculateImageBounds(Landroid/widget/ImageView;IIZ)V

    iget-object v2, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/freemessage/FreeMessageBubbleView;->getErrorImageBitmap(Landroid/content/res/Resources;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_1
    invoke-static {v1, v6}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v2, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/mms/freemessage/FreeMessageBubbleView;->preCalculateImageBounds(Landroid/widget/ImageView;IIZ)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/freemessage/FreeMessageBubbleView;->getEmptyImageBitmap(Landroid/content/res/Resources;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4}, Lcom/android/mms/freemessage/FreeMessageBubbleView;->getErrorImageBitmap(Landroid/content/res/Resources;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/mms/freemessage/FreeMessageBubbleView;->preCalculateImageBounds(Landroid/widget/ImageView;IIZ)V

    iget-object v2, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/freemessage/FreeMessageBubbleView;->getEmptyImageBitmap(Landroid/content/res/Resources;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mImageView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mImageModel:Lcom/android/mms/model/ImageModel;

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mImageView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mImageBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_1
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

    iget-object v0, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mFreeFtModel:Lcom/android/mms/model/ImFileTransferModel;

    invoke-virtual {v0}, Lcom/android/mms/model/ImFileTransferModel;->hasVideo()Z

    move-result v0

    if-nez v0, :cond_0

    iput-object v2, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mVideoBitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mImageView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mVideoBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    const-string v0, "VIDEO_BUBBLE"

    const-string v1, "video thumbnail not created"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mVideoModel:Lcom/android/mms/model/VideoModel;

    invoke-virtual {v0}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mVideoPlayButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/freemessage/FreeMessageBubbleView;->getEmptyImageBitmapForVideo(Landroid/content/res/Resources;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_1
    iget-object v0, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mSlideMediaView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mVideoPlayButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mVideoModel:Lcom/android/mms/model/VideoModel;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mVideoPlayButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mVideoModel:Lcom/android/mms/model/VideoModel;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mVideoModel:Lcom/android/mms/model/VideoModel;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mVideoPlayButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mVideoModel:Lcom/android/mms/model/VideoModel;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method public present(ILcom/android/mms/model/ImFileTransferModel;Lcom/android/mms/ui/MessageListItem;)Z
    .locals 1
    .param p1    # I
    .param p2    # Lcom/android/mms/model/ImFileTransferModel;
    .param p3    # Lcom/android/mms/ui/MessageListItem;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/mms/freemessage/FreeMessageBubbleView;->present(ILcom/android/mms/model/ImFileTransferModel;Lcom/android/mms/ui/MessageListItem;Z)Z

    move-result v0

    return v0
.end method

.method public present(ILcom/android/mms/model/ImFileTransferModel;Lcom/android/mms/ui/MessageListItem;Z)Z
    .locals 7
    .param p1    # I
    .param p2    # Lcom/android/mms/model/ImFileTransferModel;
    .param p3    # Lcom/android/mms/ui/MessageListItem;
    .param p4    # Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object p3, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mMsgListItem:Lcom/android/mms/ui/MessageListItem;

    iput-object p2, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mFreeFtModel:Lcom/android/mms/model/ImFileTransferModel;

    iget-object v2, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mMsgListItem:Lcom/android/mms/ui/MessageListItem;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mMsgListItem:Lcom/android/mms/ui/MessageListItem;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->getFreeMessageDeliveryStatus()I

    move-result v2

    const/4 v5, 0x3

    if-ge v2, v5, :cond_2

    iget-object v2, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mMsgListItem:Lcom/android/mms/ui/MessageListItem;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->isInboxMessage()Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mTransferProgess:Z

    invoke-virtual {p0}, Lcom/android/mms/freemessage/FreeMessageBubbleView;->reset()V

    if-ne p1, v3, :cond_3

    move v2, v3

    :goto_1
    invoke-direct {p0, v2}, Lcom/android/mms/freemessage/FreeMessageBubbleView;->setIsTopLayout(Z)V

    const-string v2, "NGM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "present layoutType: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mFreeFtModel:Lcom/android/mms/model/ImFileTransferModel;

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mMsgListItem:Lcom/android/mms/ui/MessageListItem;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->isCreatedStatus()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/android/mms/freemessage/FreeMessageBubbleView;->setEmptyImage()V

    :goto_2
    invoke-direct {p0}, Lcom/android/mms/freemessage/FreeMessageBubbleView;->displayFtStatus()V

    if-nez v0, :cond_0

    invoke-virtual {p0, v4, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    invoke-direct {p0}, Lcom/android/mms/freemessage/FreeMessageBubbleView;->syncModel()V

    move v4, v0

    :cond_1
    :goto_3
    return v4

    :cond_2
    move v2, v4

    goto :goto_0

    :cond_3
    move v2, v4

    goto :goto_1

    :cond_4
    const-string v2, "Mms/FreeMessageBubbleView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mFreeFtModel : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mFreeFtModel:Lcom/android/mms/model/ImFileTransferModel;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    iget-object v2, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mFreeFtModel:Lcom/android/mms/model/ImFileTransferModel;

    invoke-virtual {v2}, Lcom/android/mms/model/ImFileTransferModel;->hasImage()Z

    move-result v2

    if-eqz v2, :cond_6

    if-eqz p3, :cond_6

    iget-object v2, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mFreeFtModel:Lcom/android/mms/model/ImFileTransferModel;

    invoke-virtual {v2}, Lcom/android/mms/model/ImFileTransferModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v2

    invoke-virtual {p3}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v5

    invoke-direct {p0, v2, v5, v3}, Lcom/android/mms/freemessage/FreeMessageBubbleView;->setImage(Lcom/android/mms/model/ImageModel;Lcom/android/mms/ui/MessageItem;Z)V

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mFreeFtModel:Lcom/android/mms/model/ImFileTransferModel;

    invoke-virtual {v2}, Lcom/android/mms/model/ImFileTransferModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mMediaUri:Landroid/net/Uri;

    goto :goto_2

    :cond_6
    iget-object v2, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mFreeFtModel:Lcom/android/mms/model/ImFileTransferModel;

    invoke-virtual {v2}, Lcom/android/mms/model/ImFileTransferModel;->hasVideo()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mFreeFtModel:Lcom/android/mms/model/ImFileTransferModel;

    invoke-virtual {v2}, Lcom/android/mms/model/ImFileTransferModel;->getVideo()Lcom/android/mms/model/VideoModel;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/mms/freemessage/FreeMessageBubbleView;->setVideo(Lcom/android/mms/model/VideoModel;)V

    const/4 v0, 0x1

    goto :goto_2

    :cond_7
    iget-object v2, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mFreeFtModel:Lcom/android/mms/model/ImFileTransferModel;

    invoke-virtual {v2}, Lcom/android/mms/model/ImFileTransferModel;->hasAudio()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mFreeFtModel:Lcom/android/mms/model/ImFileTransferModel;

    invoke-virtual {v2}, Lcom/android/mms/model/ImFileTransferModel;->getAudio()Lcom/android/mms/model/AudioModel;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/mms/freemessage/FreeMessageBubbleView;->setAudio(Lcom/android/mms/model/AudioModel;)V

    const/4 v0, 0x1

    goto :goto_2

    :cond_8
    iget-object v2, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mFreeFtModel:Lcom/android/mms/model/ImFileTransferModel;

    invoke-virtual {v2}, Lcom/android/mms/model/ImFileTransferModel;->hasText()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mFreeFtModel:Lcom/android/mms/model/ImFileTransferModel;

    invoke-virtual {v2}, Lcom/android/mms/model/ImFileTransferModel;->getText()Lcom/android/mms/model/ImTextModel;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/mms/freemessage/FreeMessageBubbleView;->setText(Lcom/android/mms/model/ImTextModel;)V

    const/4 v0, 0x1

    goto/16 :goto_2

    :cond_9
    iget-object v2, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mFreeFtModel:Lcom/android/mms/model/ImFileTransferModel;

    invoke-virtual {v2}, Lcom/android/mms/model/ImFileTransferModel;->hasApplication()Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mFreeFtModel:Lcom/android/mms/model/ImFileTransferModel;

    invoke-virtual {v2}, Lcom/android/mms/model/ImFileTransferModel;->getApplication()Lcom/android/mms/model/ImTextModel;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/mms/freemessage/FreeMessageBubbleView;->setText(Lcom/android/mms/model/ImTextModel;)V

    const/4 v0, 0x1

    goto/16 :goto_2

    :cond_a
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mImageBitmap:Landroid/graphics/Bitmap;

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/mms/freemessage/FreeMessageBubbleView;->onImageLoaded()V

    goto/16 :goto_2
.end method

.method public reset()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mSlideMediaView:Landroid/widget/FrameLayout;

    invoke-static {v0, v1}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mImageView:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mAudioInfoView:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mVideoPlayButton:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mLocationView:Landroid/widget/LinearLayout;

    invoke-static {v0, v1}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mFreeFtInfoView:Landroid/widget/LinearLayout;

    invoke-static {v0, v1}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    return-void
.end method

.method public run()V
    .locals 2

    invoke-direct {p0}, Lcom/android/mms/freemessage/FreeMessageBubbleView;->loadImage()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/mms/freemessage/FreeMessageBubbleView$3;

    invoke-direct {v1, p0}, Lcom/android/mms/freemessage/FreeMessageBubbleView$3;-><init>(Lcom/android/mms/freemessage/FreeMessageBubbleView;)V

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

    const-string v0, "Mms/FreeMessageBubbleView"

    const-string v1, "set DRM Audio"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mAudioPlay:Landroid/widget/ImageView;

    const v1, 0x7f02006e

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mAudioPlay:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mAudioPlay:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setHoverPopupType(I)V

    iget-object v0, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mAudioInfoView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mAudioPlay:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mAudioText:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mAudioText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mAudioText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "Mms/FreeMessageBubbleView"

    const-string v1, "set Audio"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mAudioPlay:Landroid/widget/ImageView;

    const v1, 0x7f020307

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mAudioPlay:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mAudioPlay:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setHoverPopupType(I)V

    iget-object v0, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mAudioInfoView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mAudioPlay:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mAudioText:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mAudioText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mAudioText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setEmptyImage()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/freemessage/FreeMessageBubbleView;->getEmptyImageBitmap(Landroid/content/res/Resources;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/freemessage/FreeMessageBubbleView;->getErrorImageBitmap(Landroid/content/res/Resources;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/mms/freemessage/FreeMessageBubbleView;->preCalculateImageBounds(Landroid/widget/ImageView;IIZ)V

    iget-object v0, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/freemessage/FreeMessageBubbleView;->getEmptyImageBitmap(Landroid/content/res/Resources;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mSlideMediaView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setHighlight(Ljava/util/regex/Pattern;)V
    .locals 0
    .param p1    # Ljava/util/regex/Pattern;

    iput-object p1, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mHighlight:Ljava/util/regex/Pattern;

    return-void
.end method

.method public setIsFailedMessage(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mIsFailedMessage:Z

    return-void
.end method

.method public setIsReservedMessage(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mIsScheduledMessage:Z

    return-void
.end method

.method public setText(Lcom/android/mms/model/ImTextModel;)V
    .locals 12
    .param p1    # Lcom/android/mms/model/ImTextModel;

    const v5, 0x7f02029a

    const/4 v11, 0x0

    iget-object v4, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mMsgListItem:Lcom/android/mms/ui/MessageListItem;

    invoke-virtual {v4}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/ui/MessageItem;->getFreeMsgFTContentType()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/mms/util/MessageMimeTypeMap;->getSingleton()Lcom/android/mms/util/MessageMimeTypeMap;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/mms/util/MessageMimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    const-string v4, "vcf"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mFreeFileIcon:Landroid/widget/ImageView;

    const v5, 0x7f020051

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_0
    iget-object v4, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mMsgListItem:Lcom/android/mms/ui/MessageListItem;

    invoke-virtual {v4}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/ui/MessageItem;->getFtTotalSize()I

    move-result v2

    iget-object v4, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mFreeFileNameView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mFreeFileSizeView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c04dc

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mContext:Landroid/content/Context;

    int-to-long v9, v2

    invoke-static {v8, v9, v10}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mFreeFtInfoView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v11}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mFreeFileInfoView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v11}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mMsgListItem:Lcom/android/mms/ui/MessageListItem;

    invoke-virtual {v4}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/ui/MessageItem;->getFreeMessageDeliveryStatus()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_c

    iget-object v4, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mFreeFileIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    iget-object v4, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mFreeFileIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mFreeFtInfoView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string v4, "vcs"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "vts"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    iget-object v4, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mFreeFileIcon:Landroid/widget/ImageView;

    const v5, 0x7f020050

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_2
    const-string v4, "doc"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mFreeFileIcon:Landroid/widget/ImageView;

    const v5, 0x7f020052

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_0

    :cond_3
    const-string v4, "gul"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mFreeFileIcon:Landroid/widget/ImageView;

    const v5, 0x7f020054

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_0

    :cond_4
    const-string v4, "hwp"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mFreeFileIcon:Landroid/widget/ImageView;

    const v5, 0x7f020055

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_0

    :cond_5
    const-string v4, "pdf"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mFreeFileIcon:Landroid/widget/ImageView;

    const v5, 0x7f02005b

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_0

    :cond_6
    const-string v4, "ppt"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mFreeFileIcon:Landroid/widget/ImageView;

    const v5, 0x7f02005c

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_0

    :cond_7
    const-string v4, "rtf"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mFreeFileIcon:Landroid/widget/ImageView;

    const v5, 0x7f02005d

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_0

    :cond_8
    const-string v4, "txt"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mFreeFileIcon:Landroid/widget/ImageView;

    const v5, 0x7f02005e

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_0

    :cond_9
    const-string v4, "xls"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mFreeFileIcon:Landroid/widget/ImageView;

    const v5, 0x7f020060

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_0

    :cond_a
    iget-object v4, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mFreeFileIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_0

    :cond_b
    iget-object v4, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mFreeFileIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_0

    :cond_c
    iget-object v4, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mFreeFileIcon:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1
.end method

.method public setText(Lcom/android/mms/model/TextModel;Z)V
    .locals 10
    .param p1    # Lcom/android/mms/model/TextModel;
    .param p2    # Z

    const/4 v9, 0x1

    const/4 v8, 0x0

    if-nez p1, :cond_0

    invoke-virtual {p0, v8}, Lcom/android/mms/freemessage/FreeMessageBubbleView;->setTextVisibility(Z)V

    :goto_0
    return-void

    :cond_0
    const-string v1, "Mms/FreeMessageBubbleView"

    const-string v2, "set text"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/android/mms/MmsConfig;->getDisableMmsAllPageBubble()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p2, :cond_1

    invoke-static {}, Lcom/android/mms/ui/MessageListItem;->getBytesForDisplayFolding()I

    move-result v1

    invoke-static {v7, v1}, Lcom/android/mms/util/TelephonyUtils;->substringByByteSize(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_1
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v8}, Lcom/android/mms/freemessage/FreeMessageBubbleView;->setTextVisibility(Z)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/mms/util/SmileyParser;->getInstance()Lcom/android/mms/util/SmileyParser;

    move-result-object v6

    iget-object v1, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mActiveTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v7, v9, v0, v6}, Lcom/android/mms/ui/MessageListItem;->formatBody(Ljava/lang/String;ZLandroid/content/Context;Lcom/android/mms/util/SmileyParser;)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mHighlight:Ljava/util/regex/Pattern;

    invoke-virtual {v6}, Lcom/android/mms/util/SmileyParser;->getSmileyStart()[I

    move-result-object v2

    invoke-virtual {v6}, Lcom/android/mms/util/SmileyParser;->getSmileyEnd()[I

    move-result-object v3

    const-string v5, "Mms/FreeMessageBubbleView"

    invoke-static/range {v0 .. v5}, Lcom/android/mms/util/UIUtils;->highlightMessage(Landroid/content/Context;Ljava/util/regex/Pattern;[I[ILandroid/text/SpannableStringBuilder;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mActiveTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mActiveTextView:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mIsFailedMessage:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mIsScheduledMessage:Z

    if-eqz v1, :cond_4

    :cond_3
    move v1, v9

    :goto_1
    invoke-static {v2, v1}, Lcom/android/mms/ui/MessageListItem;->applyBodyTextViewColor(Landroid/widget/TextView;Z)V

    invoke-virtual {p0, v9}, Lcom/android/mms/freemessage/FreeMessageBubbleView;->setTextVisibility(Z)V

    goto :goto_0

    :cond_4
    move v1, v8

    goto :goto_1
.end method

.method public setTextVisibility(Z)V
    .locals 1
    .param p1    # Z

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mActiveTextView:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mTextViewTop:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mTextViewBottom:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method public setVideo(Lcom/android/mms/model/VideoModel;)V
    .locals 8
    .param p1    # Lcom/android/mms/model/VideoModel;

    const/4 v7, 0x0

    iget-object v3, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mVideoModel:Lcom/android/mms/model/VideoModel;

    invoke-virtual {p1, v3}, Lcom/android/mms/model/VideoModel;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-object p1, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mVideoModel:Lcom/android/mms/model/VideoModel;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mImageView:Landroid/widget/ImageView;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    iget-object v3, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mSlideMediaView:Landroid/widget/FrameLayout;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    iget-object v3, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mVideoPlayButton:Landroid/widget/ImageView;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    const-string v3, "VIDEO_BUBBLE"

    const-string v4, "same image"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mVideoModel:Lcom/android/mms/model/VideoModel;

    invoke-virtual {v3}, Lcom/android/mms/model/MediaModel;->isDrmProtected()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "VIDEO_BUBBLE"

    const-string v4, "set DRM Video"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mImageView:Landroid/widget/ImageView;

    invoke-direct {p0, v3}, Lcom/android/mms/freemessage/FreeMessageBubbleView;->calculateDrmImageBounds(Landroid/widget/ImageView;)V

    invoke-direct {p0}, Lcom/android/mms/freemessage/FreeMessageBubbleView;->loadImageForVideo()Z

    invoke-virtual {p0}, Lcom/android/mms/freemessage/FreeMessageBubbleView;->onImageLoadedForVideo()V

    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mVideoBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mImageView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mVideoBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_2
    iget-object v3, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c00b3

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mVideoPlayButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c00b3

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mImageView:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4, p1}, Lcom/android/mms/freemessage/FreeMessageBubbleView;->setHover(Landroid/view/View;Lcom/android/mms/model/ImageModel;Lcom/android/mms/model/VideoModel;)V

    iget-object v3, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mVideoPlayButton:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4, p1}, Lcom/android/mms/freemessage/FreeMessageBubbleView;->setHover(Landroid/view/View;Lcom/android/mms/model/ImageModel;Lcom/android/mms/model/VideoModel;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "Mms/FreeMessageBubbleView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OutOfMemoryError"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_3
    :try_start_1
    iget-object v3, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mMsgListItem:Lcom/android/mms/ui/MessageListItem;

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->getThumbNailPath()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v3, "VIDEO_BUBBLE"

    const-string v4, "set Video"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "VIDEO_BUBBLE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Same Video ? "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "VIDEO_BUBBLE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "have Video cache ? "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mVideoModel:Lcom/android/mms/model/VideoModel;

    invoke-virtual {v5}, Lcom/android/mms/model/VideoModel;->hasCachedBitmap()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mVideoModel:Lcom/android/mms/model/VideoModel;

    invoke-virtual {v3}, Lcom/android/mms/model/VideoModel;->hasCachedBitmap()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-direct {p0}, Lcom/android/mms/freemessage/FreeMessageBubbleView;->loadImageForVideo()Z

    invoke-virtual {p0}, Lcom/android/mms/freemessage/FreeMessageBubbleView;->onImageLoadedForVideo()V

    iget-object v3, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mVideoBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mImageView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mVideoBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mVideoBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/android/mms/freemessage/FreeMessageBubbleView;->preCalculateImageBounds(Landroid/widget/ImageView;IIZ)V

    goto/16 :goto_1

    :cond_4
    sget-object v3, Lcom/android/mms/freemessage/FreeMessageProperties$FreeMessageFT;->URI_THUMBNAIL:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mMsgListItem:Lcom/android/mms/ui/MessageListItem;

    invoke-virtual {v4}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mContext:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/android/mms/ui/MessageUtils;->getBitmapFromUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mVideoBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mVideoModel:Lcom/android/mms/model/VideoModel;

    iget-object v4, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mVideoBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Lcom/android/mms/model/VideoModel;->cacheBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Lcom/android/mms/freemessage/FreeMessageBubbleView;->onImageLoadedForVideo()V

    iget-object v3, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mVideoBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mImageView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mVideoBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView;->mVideoBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/android/mms/freemessage/FreeMessageBubbleView;->preCalculateImageBounds(Landroid/widget/ImageView;IIZ)V
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
