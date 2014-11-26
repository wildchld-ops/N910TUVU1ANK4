.class public Lcom/android/mms/rcs/RcsBubbleView;
.super Landroid/widget/LinearLayout;
.source "RcsBubbleView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/rcs/RcsBubbleView$TaskStack;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/RcsBubbleView"

.field private static final THUMBNAIL_BOUNDS_LIMIT:I

.field private static sEmptyBitmap:Landroid/graphics/Bitmap;


# instance fields
.field private mActiveTextView:Landroid/widget/TextView;

.field private mAudioInfoView:Landroid/view/View;

.field private mAudioPlay:Landroid/widget/ImageView;

.field private mAudioSizeText:Landroid/widget/TextView;

.field private mAudioText:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mHighlight:Ljava/util/regex/Pattern;

.field private mImageBitmap:Landroid/graphics/Bitmap;

.field private mImageModel:Lcom/android/mms/model/ImageModel;

.field private mImageView:Landroid/widget/ImageView;

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

.field private mPreviousTransferProgess:Z

.field private mRcsFileIcon:Landroid/widget/ImageView;

.field private mRcsFileInfoView:Landroid/widget/LinearLayout;

.field private mRcsFileNameView:Landroid/widget/TextView;

.field private mRcsFileSizeTextView:Landroid/widget/TextView;

.field private mRcsFileSizeView:Landroid/widget/TextView;

.field private mRcsFtInfoView:Landroid/widget/LinearLayout;

.field private mRcsFtModel:Lcom/android/mms/model/ImFileTransferModel;

.field private mRcsFtStatusView:Landroid/widget/TextView;

.field private mSlideMediaView:Landroid/widget/FrameLayout;

.field private mTempPoint:Landroid/graphics/Point;

.field private mTextProperty:Lcom/android/mms/ui/MessageListItem$BodyTextViewProperty;

.field private mTextViewBottom:Landroid/widget/TextView;

.field private mTextViewTop:Landroid/widget/TextView;

.field private mTransferProgess:Z

.field private mVideoModel:Lcom/android/mms/model/VideoModel;

.field private mVideoPlayButton:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/rcs/RcsBubbleView;->sEmptyBitmap:Landroid/graphics/Bitmap;

    const/high16 v0, 0x434b0000

    invoke-static {v0}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v0

    sput v0, Lcom/android/mms/rcs/RcsBubbleView;->THUMBNAIL_BOUNDS_LIMIT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/mms/rcs/RcsBubbleView;->mLocationTitleView:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/rcs/RcsBubbleView;->mLocationAddressView:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/rcs/RcsBubbleView;->mLocationImageView:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/mms/rcs/RcsBubbleView;->mLocationView:Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/mms/rcs/RcsBubbleView;->mSlideMediaView:Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/mms/rcs/RcsBubbleView;->mActiveTextView:Landroid/widget/TextView;

    iput-boolean v2, p0, Lcom/android/mms/rcs/RcsBubbleView;->mIsTopLayout:Z

    iput-boolean v2, p0, Lcom/android/mms/rcs/RcsBubbleView;->mIsFailedMessage:Z

    iput-boolean v2, p0, Lcom/android/mms/rcs/RcsBubbleView;->mPreviousTransferProgess:Z

    iput-boolean v2, p0, Lcom/android/mms/rcs/RcsBubbleView;->mTransferProgess:Z

    iput-object v1, p0, Lcom/android/mms/rcs/RcsBubbleView;->mRcsFtModel:Lcom/android/mms/model/ImFileTransferModel;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/rcs/RcsBubbleView;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/mms/rcs/RcsBubbleView;->mTempPoint:Landroid/graphics/Point;

    iput-object v1, p0, Lcom/android/mms/rcs/RcsBubbleView;->mMsgListItem:Lcom/android/mms/ui/MessageListItem;

    iput-object v1, p0, Lcom/android/mms/rcs/RcsBubbleView;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iput-boolean v2, p0, Lcom/android/mms/rcs/RcsBubbleView;->mIsScheduledMessage:Z

    new-instance v0, Lcom/android/mms/rcs/RcsBubbleView$1;

    invoke-direct {v0, p0}, Lcom/android/mms/rcs/RcsBubbleView$1;-><init>(Lcom/android/mms/rcs/RcsBubbleView;)V

    iput-object v0, p0, Lcom/android/mms/rcs/RcsBubbleView;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/android/mms/rcs/RcsBubbleView;->mLocationTitleView:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/rcs/RcsBubbleView;->mLocationAddressView:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/rcs/RcsBubbleView;->mLocationImageView:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/mms/rcs/RcsBubbleView;->mLocationView:Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/mms/rcs/RcsBubbleView;->mSlideMediaView:Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/mms/rcs/RcsBubbleView;->mActiveTextView:Landroid/widget/TextView;

    iput-boolean v2, p0, Lcom/android/mms/rcs/RcsBubbleView;->mIsTopLayout:Z

    iput-boolean v2, p0, Lcom/android/mms/rcs/RcsBubbleView;->mIsFailedMessage:Z

    iput-boolean v2, p0, Lcom/android/mms/rcs/RcsBubbleView;->mPreviousTransferProgess:Z

    iput-boolean v2, p0, Lcom/android/mms/rcs/RcsBubbleView;->mTransferProgess:Z

    iput-object v1, p0, Lcom/android/mms/rcs/RcsBubbleView;->mRcsFtModel:Lcom/android/mms/model/ImFileTransferModel;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/rcs/RcsBubbleView;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/mms/rcs/RcsBubbleView;->mTempPoint:Landroid/graphics/Point;

    iput-object v1, p0, Lcom/android/mms/rcs/RcsBubbleView;->mMsgListItem:Lcom/android/mms/ui/MessageListItem;

    iput-object v1, p0, Lcom/android/mms/rcs/RcsBubbleView;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iput-boolean v2, p0, Lcom/android/mms/rcs/RcsBubbleView;->mIsScheduledMessage:Z

    new-instance v0, Lcom/android/mms/rcs/RcsBubbleView$1;

    invoke-direct {v0, p0}, Lcom/android/mms/rcs/RcsBubbleView$1;-><init>(Lcom/android/mms/rcs/RcsBubbleView;)V

    iput-object v0, p0, Lcom/android/mms/rcs/RcsBubbleView;->mOnClickListener:Landroid/view/View$OnClickListener;

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

    iput-object v1, p0, Lcom/android/mms/rcs/RcsBubbleView;->mLocationTitleView:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/rcs/RcsBubbleView;->mLocationAddressView:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/rcs/RcsBubbleView;->mLocationImageView:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/mms/rcs/RcsBubbleView;->mLocationView:Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/mms/rcs/RcsBubbleView;->mSlideMediaView:Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/mms/rcs/RcsBubbleView;->mActiveTextView:Landroid/widget/TextView;

    iput-boolean v2, p0, Lcom/android/mms/rcs/RcsBubbleView;->mIsTopLayout:Z

    iput-boolean v2, p0, Lcom/android/mms/rcs/RcsBubbleView;->mIsFailedMessage:Z

    iput-boolean v2, p0, Lcom/android/mms/rcs/RcsBubbleView;->mPreviousTransferProgess:Z

    iput-boolean v2, p0, Lcom/android/mms/rcs/RcsBubbleView;->mTransferProgess:Z

    iput-object v1, p0, Lcom/android/mms/rcs/RcsBubbleView;->mRcsFtModel:Lcom/android/mms/model/ImFileTransferModel;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/rcs/RcsBubbleView;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/mms/rcs/RcsBubbleView;->mTempPoint:Landroid/graphics/Point;

    iput-object v1, p0, Lcom/android/mms/rcs/RcsBubbleView;->mMsgListItem:Lcom/android/mms/ui/MessageListItem;

    iput-object v1, p0, Lcom/android/mms/rcs/RcsBubbleView;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iput-boolean v2, p0, Lcom/android/mms/rcs/RcsBubbleView;->mIsScheduledMessage:Z

    new-instance v0, Lcom/android/mms/rcs/RcsBubbleView$1;

    invoke-direct {v0, p0}, Lcom/android/mms/rcs/RcsBubbleView$1;-><init>(Lcom/android/mms/rcs/RcsBubbleView;)V

    iput-object v0, p0, Lcom/android/mms/rcs/RcsBubbleView;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/rcs/RcsBubbleView;)Lcom/android/mms/ui/MessageListItem;
    .locals 1
    .param p0    # Lcom/android/mms/rcs/RcsBubbleView;

    iget-object v0, p0, Lcom/android/mms/rcs/RcsBubbleView;->mMsgListItem:Lcom/android/mms/ui/MessageListItem;

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

    iget-object v2, v0, Landroid/view/View;->mContext:Landroid/content/Context;

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

    sget v3, Lcom/android/mms/rcs/RcsBubbleView;->THUMBNAIL_BOUNDS_LIMIT:I

    if-gt v2, v3, :cond_1

    div-int v2, v14, v17

    sget v3, Lcom/android/mms/rcs/RcsBubbleView;->THUMBNAIL_BOUNDS_LIMIT:I

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
    invoke-static {v1}, Lcom/android/mms/rcs/RcsBubbleView;->recycleBitmap(Landroid/graphics/Bitmap;)V
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

    const-string v2, "Mms/RcsBubbleView"

    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_1
    move-exception v8

    :try_start_3
    const-string v2, "Mms/RcsBubbleView"

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

    const-string v2, "Mms/RcsBubbleView"

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

    const-string v3, "Mms/RcsBubbleView"

    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method private displayFtSize()V
    .locals 10

    const/4 v9, 0x1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableIPME()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/rcs/RcsBubbleView;->mMsgListItem:Lcom/android/mms/ui/MessageListItem;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v1

    iget v0, v1, Lcom/android/mms/ui/MessageItem;->mRcsFtContentFilesSize:I

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/android/mms/rcs/RcsBubbleView;->mRcsFileSizeTextView:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c04dc

    new-array v4, v9, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    int-to-long v7, v0

    invoke-static {v6, v7, v8}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/mms/rcs/RcsBubbleView;->mRcsFileSizeTextView:Landroid/widget/TextView;

    invoke-static {v1, v9}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method private displayFtStatus()V
    .locals 9

    const/16 v8, 0x8

    const/4 v7, 0x0

    const v6, 0x7f0c04df

    iget-object v4, p0, Lcom/android/mms/rcs/RcsBubbleView;->mMsgListItem:Lcom/android/mms/ui/MessageListItem;

    invoke-virtual {v4}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/rcs/RcsBubbleView;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v4, p0, Lcom/android/mms/rcs/RcsBubbleView;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v4, v4, Lcom/android/mms/ui/MessageItem;->mStatus:J

    long-to-int v1, v4

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableIPME()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x4

    if-eq v1, v4, :cond_0

    iget-object v4, p0, Lcom/android/mms/rcs/RcsBubbleView;->mRcsFtStatusView:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    packed-switch v1, :pswitch_data_0

    :pswitch_0
    iget-object v4, p0, Lcom/android/mms/rcs/RcsBubbleView;->mRcsFtStatusView:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :pswitch_1
    const-string v4, "Mms/RcsBubbleView"

    const-string v5, "bindImdicator RcsFTState.BLOCKED"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const-string v4, "Mms/RcsBubbleView"

    const-string v5, "bindImdicator RcsFTState.CANCELED"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/mms/rcs/RcsBubbleView;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v4}, Lcom/android/mms/ui/MessageItem;->isInboxMessage()Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "Mms/RcsBubbleView"

    const-string v5, "bindImdicator RcsFTState.CANCELED 1"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v4, p0, Lcom/android/mms/rcs/RcsBubbleView;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v4}, Lcom/android/mms/ui/MessageItem;->getRcsFtCancelReason()I

    move-result v4

    if-ne v4, v8, :cond_2

    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v4, 0x7f0c04ee

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/mms/rcs/RcsBubbleView;->mRcsFtStatusView:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v4, "Mms/RcsBubbleView"

    const-string v5, "bindImdicator RcsFTState.CANCELED 2"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget-object v4, p0, Lcom/android/mms/rcs/RcsBubbleView;->mRcsFtStatusView:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/android/mms/rcs/RcsBubbleView;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v4}, Lcom/android/mms/ui/MessageItem;->getRcsFtCancelReason()I

    move-result v4

    const/16 v5, 0xb

    if-ne v4, v5, :cond_3

    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v4, 0x7f0c04ef

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/mms/rcs/RcsBubbleView;->mRcsFtStatusView:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v4, "Mms/RcsBubbleView"

    const-string v5, "bindImdicator RcsFTState.CANCELED 3"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/android/mms/rcs/RcsBubbleView;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v4}, Lcom/android/mms/ui/MessageItem;->getRcsFtCancelReason()I

    move-result v4

    const/4 v5, 0x7

    if-ne v4, v5, :cond_4

    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v4, 0x7f0c04f0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/mms/rcs/RcsBubbleView;->mRcsFtStatusView:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v4, "Mms/RcsBubbleView"

    const-string v5, "bindImdicator RcsFTState.CANCELED 4"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_4
    iget-object v4, p0, Lcom/android/mms/rcs/RcsBubbleView;->mRcsFtStatusView:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    const-string v4, "Mms/RcsBubbleView"

    const-string v5, "bindImdicator RcsFTState.CANCELED 5"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_3
    const-string v4, "Mms/RcsBubbleView"

    const-string v5, "bindImdicator RcsFTState.COMPLETED 1"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/mms/rcs/RcsBubbleView;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v4}, Lcom/android/mms/ui/MessageItem;->getRcsFtCancelReason()I

    move-result v2

    if-lez v2, :cond_5

    iget-object v4, p0, Lcom/android/mms/rcs/RcsBubbleView;->mRcsFtStatusView:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    const-string v4, "Mms/RcsBubbleView"

    const-string v5, "bindImdicator RcsFTState.COMPLETED 2"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    iget-object v4, p0, Lcom/android/mms/rcs/RcsBubbleView;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v4}, Lcom/android/mms/ui/MessageItem;->isInboxMessage()Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/android/mms/rcs/RcsBubbleView;->mRcsFtStatusView:Landroid/widget/TextView;

    const v5, 0x7f0c04ed

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    iget-object v4, p0, Lcom/android/mms/rcs/RcsBubbleView;->mRcsFtStatusView:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    const-string v4, "Mms/RcsBubbleView"

    const-string v5, "bindImdicator RcsFTState.COMPLETED 3"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    iget-object v4, p0, Lcom/android/mms/rcs/RcsBubbleView;->mRcsFtStatusView:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    const-string v4, "Mms/RcsBubbleView"

    const-string v5, "bindImdicator RcsFTState.COMPLETED 4"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_4
    const-string v4, "Mms/RcsBubbleView"

    const-string v5, "bindImdicator RcsFTState.IN_PROGRESS 1"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/mms/rcs/RcsBubbleView;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v4}, Lcom/android/mms/ui/MessageItem;->isInboxMessage()Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/mms/rcs/RcsBubbleView;->mRcsFtStatusView:Landroid/widget/TextView;

    const v5, 0x7f0c04ec

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    const-string v4, "Mms/RcsBubbleView"

    const-string v5, "bindImdicator RcsFTState.ATTACHED 2"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    iget-object v4, p0, Lcom/android/mms/rcs/RcsBubbleView;->mRcsFtStatusView:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_7
    iget-object v4, p0, Lcom/android/mms/rcs/RcsBubbleView;->mRcsFtStatusView:Landroid/widget/TextView;

    const v5, 0x7f0c04e2

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    const-string v4, "Mms/RcsBubbleView"

    const-string v5, "bindImdicator RcsFTState.ATTACHED 3"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_5
    const-string v4, "Mms/RcsBubbleView"

    const-string v5, "bindImdicator RCSFTDeliveryStatus.PENDING 1"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/mms/rcs/RcsBubbleView;->mRcsFtStatusView:Landroid/widget/TextView;

    const v5, 0x7f0c04e0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    iget-object v4, p0, Lcom/android/mms/rcs/RcsBubbleView;->mRcsFtStatusView:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private static getEmptyImageBitmap(Landroid/content/res/Resources;)Landroid/graphics/Bitmap;
    .locals 3
    .param p0    # Landroid/content/res/Resources;

    sget-object v1, Lcom/android/mms/rcs/RcsBubbleView;->sEmptyBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    const v1, 0x7f020073

    :try_start_0
    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/mms/rcs/RcsBubbleView;->sEmptyBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    sget-object v1, Lcom/android/mms/rcs/RcsBubbleView;->sEmptyBitmap:Landroid/graphics/Bitmap;

    return-object v1

    :catch_0
    move-exception v0

    const-string v1, "Mms/RcsBubbleView"

    const-string v2, "OutOfMemoryError caught @ BitmapFactory.decodeResource"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getErrorImageBitmap(Landroid/content/res/Resources;)Landroid/graphics/Bitmap;
    .locals 3
    .param p0    # Landroid/content/res/Resources;

    sget-object v1, Lcom/android/mms/rcs/RcsBubbleView;->sEmptyBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    const v1, 0x7f020072

    :try_start_0
    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/mms/rcs/RcsBubbleView;->sEmptyBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    sget-object v1, Lcom/android/mms/rcs/RcsBubbleView;->sEmptyBitmap:Landroid/graphics/Bitmap;

    return-object v1

    :catch_0
    move-exception v0

    const-string v1, "Mms/RcsBubbleView"

    const-string v2, "OutOfMemoryError caught @ BitmapFactory.decodeResource"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private loadImage()Z
    .locals 6

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/mms/rcs/RcsBubbleView;->mImageModel:Lcom/android/mms/model/ImageModel;

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget-object v4, p0, Lcom/android/mms/rcs/RcsBubbleView;->mImageModel:Lcom/android/mms/model/ImageModel;

    invoke-virtual {v4}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v2

    iget-object v4, p0, Lcom/android/mms/rcs/RcsBubbleView;->mImageModel:Lcom/android/mms/model/ImageModel;

    invoke-virtual {v4}, Lcom/android/mms/model/MediaModel;->isDrmProtected()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020071

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_1
    iget-object v4, p0, Lcom/android/mms/rcs/RcsBubbleView;->mImageModel:Lcom/android/mms/model/ImageModel;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/mms/rcs/RcsBubbleView;->mImageModel:Lcom/android/mms/model/ImageModel;

    invoke-virtual {v4}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iput-object v0, p0, Lcom/android/mms/rcs/RcsBubbleView;->mImageBitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/android/mms/rcs/RcsBubbleView;->mImageModel:Lcom/android/mms/model/ImageModel;

    invoke-virtual {v4}, Lcom/android/mms/model/ImageModel;->getThumbnailBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1
.end method

.method private preCalculateImageBoudns(Landroid/widget/ImageView;II)V
    .locals 3
    .param p1    # Landroid/widget/ImageView;
    .param p2    # I
    .param p3    # I

    iget-object v1, p0, Lcom/android/mms/rcs/RcsBubbleView;->mTempPoint:Landroid/graphics/Point;

    const/4 v2, 0x0

    invoke-static {v1, p2, p3, v2}, Lcom/android/mms/model/ImageModel;->calcThumbnailImageBounds(Landroid/graphics/Point;IIZ)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/rcs/RcsBubbleView;->mTempPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/android/mms/rcs/RcsBubbleView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/mms/rcs/RcsBubbleView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v1, p0, Lcom/android/mms/rcs/RcsBubbleView;->mTempPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget-object v2, p0, Lcom/android/mms/rcs/RcsBubbleView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/mms/rcs/RcsBubbleView;->mImageView:Landroid/widget/ImageView;

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

.method private setImage(Lcom/android/mms/model/ImageModel;ZZ)V
    .locals 7
    .param p1    # Lcom/android/mms/model/ImageModel;
    .param p2    # Z
    .param p3    # Z

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/android/mms/rcs/RcsBubbleView;->mImageModel:Lcom/android/mms/model/ImageModel;

    invoke-virtual {p1, v3}, Lcom/android/mms/model/ImageModel;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-object p1, p0, Lcom/android/mms/rcs/RcsBubbleView;->mImageModel:Lcom/android/mms/model/ImageModel;

    const-string v3, "Mms/RcsBubbleView"

    const-string v4, "setImage"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v3, p0, Lcom/android/mms/rcs/RcsBubbleView;->mImageView:Landroid/widget/ImageView;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    iget-object v3, p0, Lcom/android/mms/rcs/RcsBubbleView;->mSlideMediaView:Landroid/widget/FrameLayout;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    if-eqz v1, :cond_0

    if-nez p2, :cond_0

    const-string v3, "Mms/RcsBubbleView"

    const-string v4, "same image"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->isDrmProtected()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/mms/rcs/RcsBubbleView;->mImageView:Landroid/widget/ImageView;

    invoke-direct {p0, v3}, Lcom/android/mms/rcs/RcsBubbleView;->calculateDrmImageBounds(Landroid/widget/ImageView;)V

    :goto_1
    if-eqz p3, :cond_3

    invoke-static {}, Lcom/android/mms/rcs/RcsBubbleView$TaskStack;->getInstance()Lcom/android/mms/rcs/RcsBubbleView$TaskStack;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/mms/rcs/RcsBubbleView$TaskStack;->removeTask(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Lcom/android/mms/model/ImageModel;->hasCachedBitmap()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0}, Lcom/android/mms/rcs/RcsBubbleView;->loadImage()Z

    invoke-virtual {p0}, Lcom/android/mms/rcs/RcsBubbleView;->onImageLoaded()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "Mms/RcsBubbleView"

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

    iget-object v3, p0, Lcom/android/mms/rcs/RcsBubbleView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/android/mms/rcs/RcsBubbleView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/mms/rcs/RcsBubbleView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/android/mms/model/ImageModel;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Lcom/android/mms/model/ImageModel;->getHeight()I

    move-result v5

    invoke-direct {p0, v3, v4, v5}, Lcom/android/mms/rcs/RcsBubbleView;->preCalculateImageBoudns(Landroid/widget/ImageView;II)V

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/android/mms/rcs/RcsBubbleView;->mImageView:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, p0}, Lcom/android/mms/rcs/RcsBubbleView$TaskStack;->addTask(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/android/mms/rcs/RcsBubbleView;->loadImage()Z

    invoke-virtual {p0}, Lcom/android/mms/rcs/RcsBubbleView;->onImageLoaded()V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private setIsTopLayout(Z)V
    .locals 2
    .param p1    # Z

    iget-boolean v0, p0, Lcom/android/mms/rcs/RcsBubbleView;->mIsTopLayout:Z

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/mms/rcs/RcsBubbleView;->mActiveTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/mms/rcs/RcsBubbleView;->mTextViewTop:Landroid/widget/TextView;

    :goto_0
    iput-object v0, p0, Lcom/android/mms/rcs/RcsBubbleView;->mActiveTextView:Landroid/widget/TextView;

    iput-boolean p1, p0, Lcom/android/mms/rcs/RcsBubbleView;->mIsTopLayout:Z

    iget-object v0, p0, Lcom/android/mms/rcs/RcsBubbleView;->mTextProperty:Lcom/android/mms/ui/MessageListItem$BodyTextViewProperty;

    invoke-virtual {p0, v0}, Lcom/android/mms/rcs/RcsBubbleView;->applyTextProperty(Lcom/android/mms/ui/MessageListItem$BodyTextViewProperty;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/mms/rcs/RcsBubbleView;->mTextViewBottom:Landroid/widget/TextView;

    goto :goto_0
.end method

.method private syncModel()V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/rcs/RcsBubbleView;->mRcsFtModel:Lcom/android/mms/model/ImFileTransferModel;

    invoke-virtual {v0}, Lcom/android/mms/model/ImFileTransferModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/rcs/RcsBubbleView;->mImageModel:Lcom/android/mms/model/ImageModel;

    iget-object v0, p0, Lcom/android/mms/rcs/RcsBubbleView;->mRcsFtModel:Lcom/android/mms/model/ImFileTransferModel;

    invoke-virtual {v0}, Lcom/android/mms/model/ImFileTransferModel;->getVideo()Lcom/android/mms/model/VideoModel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/rcs/RcsBubbleView;->mVideoModel:Lcom/android/mms/model/VideoModel;

    return-void
.end method


# virtual methods
.method public applyTextProperty(Lcom/android/mms/ui/MessageListItem$BodyTextViewProperty;)V
    .locals 3
    .param p1    # Lcom/android/mms/ui/MessageListItem$BodyTextViewProperty;

    iput-object p1, p0, Lcom/android/mms/rcs/RcsBubbleView;->mTextProperty:Lcom/android/mms/ui/MessageListItem$BodyTextViewProperty;

    iget-object v0, p0, Lcom/android/mms/rcs/RcsBubbleView;->mActiveTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/mms/rcs/RcsBubbleView;->mTextProperty:Lcom/android/mms/ui/MessageListItem$BodyTextViewProperty;

    iget v1, v1, Lcom/android/mms/ui/MessageListItem$BodyTextViewProperty;->mTextSizeUnit:I

    iget-object v2, p0, Lcom/android/mms/rcs/RcsBubbleView;->mTextProperty:Lcom/android/mms/ui/MessageListItem$BodyTextViewProperty;

    iget v2, v2, Lcom/android/mms/ui/MessageListItem$BodyTextViewProperty;->mTextSize:F

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/android/mms/rcs/RcsBubbleView;->mActiveTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/mms/rcs/RcsBubbleView;->mTextProperty:Lcom/android/mms/ui/MessageListItem$BodyTextViewProperty;

    iget-object v1, v1, Lcom/android/mms/ui/MessageListItem$BodyTextViewProperty;->mTextClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/mms/rcs/RcsBubbleView;->mTextProperty:Lcom/android/mms/ui/MessageListItem$BodyTextViewProperty;

    iget-object v0, v0, Lcom/android/mms/ui/MessageListItem$BodyTextViewProperty;->mTextClickListener:Landroid/view/View$OnClickListener;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/rcs/RcsBubbleView;->mActiveTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/mms/rcs/RcsBubbleView;->mActiveTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/mms/rcs/RcsBubbleView;->mTextProperty:Lcom/android/mms/ui/MessageListItem$BodyTextViewProperty;

    iget-object v1, v1, Lcom/android/mms/ui/MessageListItem$BodyTextViewProperty;->mTextTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/android/mms/rcs/RcsBubbleView;->mActiveTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/mms/rcs/RcsBubbleView;->mTextProperty:Lcom/android/mms/ui/MessageListItem$BodyTextViewProperty;

    iget v1, v1, Lcom/android/mms/ui/MessageListItem$BodyTextViewProperty;->mLinkMask:I

    invoke-static {v0, v1}, Lcom/android/mms/util/UIUtils;->addLinks(Landroid/widget/TextView;I)V

    return-void
.end method

.method public getImageView()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/rcs/RcsBubbleView;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getTextView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/rcs/RcsBubbleView;->mActiveTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;

    iget-object v0, p0, Lcom/android/mms/rcs/RcsBubbleView;->mMsgListItem:Lcom/android/mms/ui/MessageListItem;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/rcs/RcsBubbleView;->mMsgListItem:Lcom/android/mms/ui/MessageListItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListItem;->isMultiSelectMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/rcs/RcsBubbleView;->mMsgListItem:Lcom/android/mms/ui/MessageListItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListItem;->onMessageListItemClick()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/mms/rcs/RcsBubbleView;->mMsgListItem:Lcom/android/mms/ui/MessageListItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/rcs/RcsBubbleView;->mMsgListItem:Lcom/android/mms/ui/MessageListItem;

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

    const v0, 0x7f0b02ed

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/mms/rcs/RcsBubbleView;->mSlideMediaView:Landroid/widget/FrameLayout;

    const v0, 0x7f0b02ee

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/rcs/RcsBubbleView;->mImageView:Landroid/widget/ImageView;

    const v0, 0x7f0b02f4

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/rcs/RcsBubbleView;->mLocationTitleView:Landroid/widget/TextView;

    const v0, 0x7f0b02f5

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/rcs/RcsBubbleView;->mLocationAddressView:Landroid/widget/TextView;

    const v0, 0x7f0b02f2

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/rcs/RcsBubbleView;->mLocationImageView:Landroid/widget/ImageView;

    const v0, 0x7f0b02f1

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/rcs/RcsBubbleView;->mLocationView:Landroid/widget/LinearLayout;

    const v0, 0x7f0b02ef

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/rcs/RcsBubbleView;->mVideoPlayButton:Landroid/widget/ImageView;

    const v0, 0x7f0b02f6

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/rcs/RcsBubbleView;->mAudioInfoView:Landroid/view/View;

    const v0, 0x7f0b02f7

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/rcs/RcsBubbleView;->mAudioPlay:Landroid/widget/ImageView;

    const v0, 0x7f0b02f8

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/rcs/RcsBubbleView;->mAudioText:Landroid/widget/TextView;

    const v0, 0x7f0b02f9

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/rcs/RcsBubbleView;->mAudioSizeText:Landroid/widget/TextView;

    const v0, 0x7f0b02fa

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/rcs/RcsBubbleView;->mRcsFtInfoView:Landroid/widget/LinearLayout;

    const v0, 0x7f0b02fb

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/rcs/RcsBubbleView;->mRcsFileIcon:Landroid/widget/ImageView;

    const v0, 0x7f0b02fd

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/rcs/RcsBubbleView;->mRcsFileNameView:Landroid/widget/TextView;

    const v0, 0x7f0b02fe

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/rcs/RcsBubbleView;->mRcsFileSizeView:Landroid/widget/TextView;

    const v0, 0x7f0b0300

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/rcs/RcsBubbleView;->mRcsFtStatusView:Landroid/widget/TextView;

    const v0, 0x7f0b02fc

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/rcs/RcsBubbleView;->mRcsFileInfoView:Landroid/widget/LinearLayout;

    const v0, 0x7f0b02ec

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/rcs/RcsBubbleView;->mTextViewTop:Landroid/widget/TextView;

    const v0, 0x7f0b02f0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/rcs/RcsBubbleView;->mTextViewBottom:Landroid/widget/TextView;

    const v0, 0x7f0b02ff

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/rcs/RcsBubbleView;->mRcsFileSizeTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/mms/rcs/RcsBubbleView;->mTextViewBottom:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/rcs/RcsBubbleView;->mActiveTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/mms/rcs/RcsBubbleView;->mTextViewTop:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/android/mms/rcs/RcsBubbleView;->mTextViewBottom:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/android/mms/rcs/RcsBubbleView;->mRcsFileIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/mms/rcs/RcsBubbleView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/mms/rcs/RcsBubbleView;->mAudioPlay:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSinglePageSlideView()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/rcs/RcsBubbleView;->mAudioText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/mms/rcs/RcsBubbleView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/android/mms/rcs/RcsBubbleView;->mVideoPlayButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/mms/rcs/RcsBubbleView;->mLocationView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/mms/rcs/RcsBubbleView;->mLocationTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/mms/rcs/RcsBubbleView;->mLocationImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/mms/rcs/RcsBubbleView;->mLocationAddressView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onImageLoaded()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/mms/rcs/RcsBubbleView;->mImageBitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/mms/rcs/RcsBubbleView;->mMsgListItem:Lcom/android/mms/ui/MessageListItem;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->getThumbNailPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/mms/rcs/RcsBubbleView;->mTransferProgess:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/rcs/RcsBubbleView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/rcs/RcsBubbleView;->getEmptyImageBitmap(Landroid/content/res/Resources;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4}, Lcom/android/mms/rcs/RcsBubbleView;->getEmptyImageBitmap(Landroid/content/res/Resources;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-direct {p0, v2, v3, v4}, Lcom/android/mms/rcs/RcsBubbleView;->preCalculateImageBoudns(Landroid/widget/ImageView;II)V

    iget-object v2, p0, Lcom/android/mms/rcs/RcsBubbleView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/rcs/RcsBubbleView;->getEmptyImageBitmap(Landroid/content/res/Resources;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/mms/rcs/RcsBubbleView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/mms/rcs/RcsBubbleView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    iget-object v2, p0, Lcom/android/mms/rcs/RcsBubbleView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/mms/rcs/RcsBubbleView;->mSlideMediaView:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/mms/rcs/RcsBubbleView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/rcs/RcsBubbleView;->getErrorImageBitmap(Landroid/content/res/Resources;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4}, Lcom/android/mms/rcs/RcsBubbleView;->getErrorImageBitmap(Landroid/content/res/Resources;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-direct {p0, v2, v3, v4}, Lcom/android/mms/rcs/RcsBubbleView;->preCalculateImageBoudns(Landroid/widget/ImageView;II)V

    iget-object v2, p0, Lcom/android/mms/rcs/RcsBubbleView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/rcs/RcsBubbleView;->getErrorImageBitmap(Landroid/content/res/Resources;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_2
    invoke-static {v1, v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/mms/rcs/RcsBubbleView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v2, p0, Lcom/android/mms/rcs/RcsBubbleView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-direct {p0, v2, v3, v4}, Lcom/android/mms/rcs/RcsBubbleView;->preCalculateImageBoudns(Landroid/widget/ImageView;II)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/mms/rcs/RcsBubbleView;->mImageView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/mms/rcs/RcsBubbleView;->mImageModel:Lcom/android/mms/model/ImageModel;

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/mms/rcs/RcsBubbleView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/mms/rcs/RcsBubbleView;->mImageView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/mms/rcs/RcsBubbleView;->mImageBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method

.method public present(ILcom/android/mms/model/ImFileTransferModel;Lcom/android/mms/ui/MessageListItem;)Z
    .locals 1
    .param p1    # I
    .param p2    # Lcom/android/mms/model/ImFileTransferModel;
    .param p3    # Lcom/android/mms/ui/MessageListItem;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/mms/rcs/RcsBubbleView;->present(ILcom/android/mms/model/ImFileTransferModel;Lcom/android/mms/ui/MessageListItem;Z)Z

    move-result v0

    return v0
.end method

.method public present(ILcom/android/mms/model/ImFileTransferModel;Lcom/android/mms/ui/MessageListItem;Z)Z
    .locals 9
    .param p1    # I
    .param p2    # Lcom/android/mms/model/ImFileTransferModel;
    .param p3    # Lcom/android/mms/ui/MessageListItem;
    .param p4    # Z

    const-wide/16 v7, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object p3, p0, Lcom/android/mms/rcs/RcsBubbleView;->mMsgListItem:Lcom/android/mms/ui/MessageListItem;

    iput-object p2, p0, Lcom/android/mms/rcs/RcsBubbleView;->mRcsFtModel:Lcom/android/mms/model/ImFileTransferModel;

    iget-boolean v2, p0, Lcom/android/mms/rcs/RcsBubbleView;->mTransferProgess:Z

    iput-boolean v2, p0, Lcom/android/mms/rcs/RcsBubbleView;->mPreviousTransferProgess:Z

    iget-object v2, p0, Lcom/android/mms/rcs/RcsBubbleView;->mMsgListItem:Lcom/android/mms/ui/MessageListItem;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v2

    iget-wide v5, v2, Lcom/android/mms/ui/MessageItem;->mStatus:J

    cmp-long v2, v5, v7

    if-gez v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/rcs/RcsBubbleView;->mMsgListItem:Lcom/android/mms/ui/MessageListItem;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->isInboxMessage()Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/mms/rcs/RcsBubbleView;->mTransferProgess:Z

    iget-object v2, p0, Lcom/android/mms/rcs/RcsBubbleView;->mMsgListItem:Lcom/android/mms/ui/MessageListItem;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v2

    iget-wide v5, v2, Lcom/android/mms/ui/MessageItem;->mStatus:J

    cmp-long v2, v5, v7

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/mms/rcs/RcsBubbleView;->mMsgListItem:Lcom/android/mms/ui/MessageListItem;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->isInboxMessage()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/mms/rcs/RcsBubbleView;->mPreviousTransferProgess:Z

    iget-boolean v5, p0, Lcom/android/mms/rcs/RcsBubbleView;->mTransferProgess:Z

    if-eq v2, v5, :cond_2

    move v1, v3

    :goto_1
    invoke-virtual {p0}, Lcom/android/mms/rcs/RcsBubbleView;->reset()V

    if-ne p1, v3, :cond_3

    move v2, v3

    :goto_2
    invoke-direct {p0, v2}, Lcom/android/mms/rcs/RcsBubbleView;->setIsTopLayout(Z)V

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

    iget-object v2, p0, Lcom/android/mms/rcs/RcsBubbleView;->mRcsFtModel:Lcom/android/mms/model/ImFileTransferModel;

    invoke-virtual {v2}, Lcom/android/mms/model/ImFileTransferModel;->hasImage()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/mms/rcs/RcsBubbleView;->mRcsFtModel:Lcom/android/mms/model/ImFileTransferModel;

    invoke-virtual {v2}, Lcom/android/mms/model/ImFileTransferModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v2

    invoke-direct {p0, v2, v1, v3}, Lcom/android/mms/rcs/RcsBubbleView;->setImage(Lcom/android/mms/model/ImageModel;ZZ)V

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/android/mms/rcs/RcsBubbleView;->mRcsFtModel:Lcom/android/mms/model/ImFileTransferModel;

    invoke-virtual {v2}, Lcom/android/mms/model/ImFileTransferModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/rcs/RcsBubbleView;->mMediaUri:Landroid/net/Uri;

    invoke-direct {p0}, Lcom/android/mms/rcs/RcsBubbleView;->displayFtSize()V

    :goto_3
    invoke-direct {p0}, Lcom/android/mms/rcs/RcsBubbleView;->displayFtStatus()V

    if-nez v0, :cond_0

    invoke-virtual {p0, v4, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    invoke-virtual {p0, v4}, Lcom/android/mms/rcs/RcsBubbleView;->setTextVisibility(Z)V

    invoke-direct {p0}, Lcom/android/mms/rcs/RcsBubbleView;->syncModel()V

    return v0

    :cond_1
    move v2, v4

    goto :goto_0

    :cond_2
    move v1, v4

    goto :goto_1

    :cond_3
    move v2, v4

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lcom/android/mms/rcs/RcsBubbleView;->mRcsFtModel:Lcom/android/mms/model/ImFileTransferModel;

    invoke-virtual {v2}, Lcom/android/mms/model/ImFileTransferModel;->hasVideo()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/mms/rcs/RcsBubbleView;->mRcsFtModel:Lcom/android/mms/model/ImFileTransferModel;

    invoke-virtual {v2}, Lcom/android/mms/model/ImFileTransferModel;->getVideo()Lcom/android/mms/model/VideoModel;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/mms/rcs/RcsBubbleView;->setVideo(Lcom/android/mms/model/VideoModel;)V

    invoke-direct {p0}, Lcom/android/mms/rcs/RcsBubbleView;->displayFtSize()V

    const/4 v0, 0x1

    goto :goto_3

    :cond_5
    iget-object v2, p0, Lcom/android/mms/rcs/RcsBubbleView;->mRcsFtModel:Lcom/android/mms/model/ImFileTransferModel;

    invoke-virtual {v2}, Lcom/android/mms/model/ImFileTransferModel;->hasAudio()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/mms/rcs/RcsBubbleView;->mRcsFtModel:Lcom/android/mms/model/ImFileTransferModel;

    invoke-virtual {v2}, Lcom/android/mms/model/ImFileTransferModel;->getAudio()Lcom/android/mms/model/AudioModel;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/mms/rcs/RcsBubbleView;->setAudio(Lcom/android/mms/model/AudioModel;)V

    const/4 v0, 0x1

    goto :goto_3

    :cond_6
    iget-object v2, p0, Lcom/android/mms/rcs/RcsBubbleView;->mRcsFtModel:Lcom/android/mms/model/ImFileTransferModel;

    invoke-virtual {v2}, Lcom/android/mms/model/ImFileTransferModel;->hasText()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/mms/rcs/RcsBubbleView;->mRcsFtModel:Lcom/android/mms/model/ImFileTransferModel;

    invoke-virtual {v2}, Lcom/android/mms/model/ImFileTransferModel;->getText()Lcom/android/mms/model/ImTextModel;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/mms/rcs/RcsBubbleView;->setText(Lcom/android/mms/model/ImTextModel;)V

    const/4 v0, 0x1

    goto :goto_3

    :cond_7
    iget-object v2, p0, Lcom/android/mms/rcs/RcsBubbleView;->mRcsFtModel:Lcom/android/mms/model/ImFileTransferModel;

    invoke-virtual {v2}, Lcom/android/mms/model/ImFileTransferModel;->hasApplication()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/mms/rcs/RcsBubbleView;->mRcsFtModel:Lcom/android/mms/model/ImFileTransferModel;

    invoke-virtual {v2}, Lcom/android/mms/model/ImFileTransferModel;->getApplication()Lcom/android/mms/model/ImTextModel;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/mms/rcs/RcsBubbleView;->setText(Lcom/android/mms/model/ImTextModel;)V

    const/4 v0, 0x1

    goto :goto_3

    :cond_8
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/mms/rcs/RcsBubbleView;->mImageBitmap:Landroid/graphics/Bitmap;

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/mms/rcs/RcsBubbleView;->onImageLoaded()V

    goto :goto_3
.end method

.method public reset()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/mms/rcs/RcsBubbleView;->mSlideMediaView:Landroid/widget/FrameLayout;

    invoke-static {v0, v1}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/android/mms/rcs/RcsBubbleView;->mImageView:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/android/mms/rcs/RcsBubbleView;->mAudioInfoView:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/android/mms/rcs/RcsBubbleView;->mVideoPlayButton:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/android/mms/rcs/RcsBubbleView;->mLocationView:Landroid/widget/LinearLayout;

    invoke-static {v0, v1}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/android/mms/rcs/RcsBubbleView;->mRcsFtInfoView:Landroid/widget/LinearLayout;

    invoke-static {v0, v1}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/android/mms/rcs/RcsBubbleView;->mRcsFileSizeTextView:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    return-void
.end method

.method public run()V
    .locals 2

    invoke-direct {p0}, Lcom/android/mms/rcs/RcsBubbleView;->loadImage()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/mms/rcs/RcsBubbleView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/mms/rcs/RcsBubbleView$2;

    invoke-direct {v1, p0}, Lcom/android/mms/rcs/RcsBubbleView$2;-><init>(Lcom/android/mms/rcs/RcsBubbleView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public setAudio(Lcom/android/mms/model/AudioModel;)V
    .locals 9
    .param p1    # Lcom/android/mms/model/AudioModel;

    const/4 v8, 0x0

    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->isDrmProtected()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Mms/RcsBubbleView"

    const-string v2, "set DRM Audio"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/mms/rcs/RcsBubbleView;->mAudioPlay:Landroid/widget/ImageView;

    const v2, 0x7f02006e

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/android/mms/rcs/RcsBubbleView;->mAudioText:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/mms/rcs/RcsBubbleView;->mAudioInfoView:Landroid/view/View;

    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/mms/rcs/RcsBubbleView;->mAudioPlay:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v1, p0, Lcom/android/mms/rcs/RcsBubbleView;->mMsgListItem:Lcom/android/mms/ui/MessageListItem;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v1

    iget v0, v1, Lcom/android/mms/ui/MessageItem;->mRcsFtContentFilesSize:I

    iget-object v1, p0, Lcom/android/mms/rcs/RcsBubbleView;->mAudioSizeText:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/mms/rcs/RcsBubbleView;->mAudioSizeText:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c04dc

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    int-to-long v6, v0

    invoke-static {v5, v6, v7}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/android/mms/rcs/RcsBubbleView;->mTransferProgess:Z

    if-eqz v1, :cond_1

    const-string v1, "Mms/RcsBubbleView"

    const-string v2, "set ThumbNail Audio"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/mms/rcs/RcsBubbleView;->mAudioPlay:Landroid/widget/ImageView;

    const v2, 0x7f02006f

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/android/mms/rcs/RcsBubbleView;->mAudioText:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/mms/rcs/RcsBubbleView;->mAudioInfoView:Landroid/view/View;

    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/mms/rcs/RcsBubbleView;->mAudioPlay:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const-string v1, "Mms/RcsBubbleView"

    const-string v2, "set Audio"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/mms/rcs/RcsBubbleView;->mAudioPlay:Landroid/widget/ImageView;

    const v2, 0x7f02004f

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/android/mms/rcs/RcsBubbleView;->mAudioText:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/mms/rcs/RcsBubbleView;->mAudioInfoView:Landroid/view/View;

    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/mms/rcs/RcsBubbleView;->mAudioPlay:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setHighlight(Ljava/util/regex/Pattern;)V
    .locals 0
    .param p1    # Ljava/util/regex/Pattern;

    iput-object p1, p0, Lcom/android/mms/rcs/RcsBubbleView;->mHighlight:Ljava/util/regex/Pattern;

    return-void
.end method

.method public setIsFailedMessage(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/mms/rcs/RcsBubbleView;->mIsFailedMessage:Z

    return-void
.end method

.method public setIsReservedMessage(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/mms/rcs/RcsBubbleView;->mIsScheduledMessage:Z

    return-void
.end method

.method public setText(Lcom/android/mms/model/ImTextModel;)V
    .locals 12
    .param p1    # Lcom/android/mms/model/ImTextModel;

    const v5, 0x7f02029a

    const/4 v11, 0x0

    iget-object v4, p0, Lcom/android/mms/rcs/RcsBubbleView;->mMsgListItem:Lcom/android/mms/ui/MessageListItem;

    invoke-virtual {v4}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v4

    iget-object v0, v4, Lcom/android/mms/ui/MessageItem;->mRcsFTContentType:Ljava/lang/String;

    invoke-static {}, Lcom/android/mms/util/MessageMimeTypeMap;->getSingleton()Lcom/android/mms/util/MessageMimeTypeMap;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/mms/util/MessageMimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    const-string v4, "vcf"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/mms/rcs/RcsBubbleView;->mRcsFileIcon:Landroid/widget/ImageView;

    const v5, 0x7f020051

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_0
    iget-object v4, p0, Lcom/android/mms/rcs/RcsBubbleView;->mMsgListItem:Lcom/android/mms/ui/MessageListItem;

    invoke-virtual {v4}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v4

    iget v2, v4, Lcom/android/mms/ui/MessageItem;->mRcsFtContentFilesSize:I

    iget-object v4, p0, Lcom/android/mms/rcs/RcsBubbleView;->mRcsFileNameView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/mms/rcs/RcsBubbleView;->mRcsFileSizeView:Landroid/widget/TextView;

    iget-object v5, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c04dc

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    int-to-long v9, v2

    invoke-static {v8, v9, v10}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/mms/rcs/RcsBubbleView;->mRcsFtInfoView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v11}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/mms/rcs/RcsBubbleView;->mRcsFileInfoView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v11}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/mms/rcs/RcsBubbleView;->mRcsFileIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/android/mms/rcs/RcsBubbleView;->mRcsFtInfoView:Landroid/widget/LinearLayout;

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
    iget-object v4, p0, Lcom/android/mms/rcs/RcsBubbleView;->mRcsFileIcon:Landroid/widget/ImageView;

    const v5, 0x7f020050

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_2
    const-string v4, "doc"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/mms/rcs/RcsBubbleView;->mRcsFileIcon:Landroid/widget/ImageView;

    const v5, 0x7f020052

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_3
    const-string v4, "gul"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/mms/rcs/RcsBubbleView;->mRcsFileIcon:Landroid/widget/ImageView;

    const v5, 0x7f020054

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_4
    const-string v4, "hwp"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/mms/rcs/RcsBubbleView;->mRcsFileIcon:Landroid/widget/ImageView;

    const v5, 0x7f020055

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_0

    :cond_5
    const-string v4, "pdf"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/mms/rcs/RcsBubbleView;->mRcsFileIcon:Landroid/widget/ImageView;

    const v5, 0x7f02005b

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_0

    :cond_6
    const-string v4, "ppt"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/mms/rcs/RcsBubbleView;->mRcsFileIcon:Landroid/widget/ImageView;

    const v5, 0x7f02005c

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_0

    :cond_7
    const-string v4, "rtf"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/mms/rcs/RcsBubbleView;->mRcsFileIcon:Landroid/widget/ImageView;

    const v5, 0x7f02005d

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_0

    :cond_8
    const-string v4, "txt"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/android/mms/rcs/RcsBubbleView;->mRcsFileIcon:Landroid/widget/ImageView;

    const v5, 0x7f02005e

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_0

    :cond_9
    const-string v4, "xls"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/android/mms/rcs/RcsBubbleView;->mRcsFileIcon:Landroid/widget/ImageView;

    const v5, 0x7f020060

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_0

    :cond_a
    iget-object v4, p0, Lcom/android/mms/rcs/RcsBubbleView;->mRcsFileIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_0

    :cond_b
    iget-object v4, p0, Lcom/android/mms/rcs/RcsBubbleView;->mRcsFileIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_0
.end method

.method public setText(Lcom/android/mms/model/TextModel;Z)V
    .locals 10
    .param p1    # Lcom/android/mms/model/TextModel;
    .param p2    # Z

    const/4 v9, 0x1

    const/4 v8, 0x0

    if-nez p1, :cond_0

    invoke-virtual {p0, v8}, Lcom/android/mms/rcs/RcsBubbleView;->setTextVisibility(Z)V

    :goto_0
    return-void

    :cond_0
    const-string v1, "Mms/RcsBubbleView"

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

    invoke-virtual {p0, v8}, Lcom/android/mms/rcs/RcsBubbleView;->setTextVisibility(Z)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/mms/util/SmileyParser;->getInstance()Lcom/android/mms/util/SmileyParser;

    move-result-object v6

    iget-object v1, p0, Lcom/android/mms/rcs/RcsBubbleView;->mActiveTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v7, v9, v0, v6}, Lcom/android/mms/ui/MessageListItem;->formatBody(Ljava/lang/String;ZLandroid/content/Context;Lcom/android/mms/util/SmileyParser;)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lcom/android/mms/rcs/RcsBubbleView;->mHighlight:Ljava/util/regex/Pattern;

    invoke-virtual {v6}, Lcom/android/mms/util/SmileyParser;->getSmileyStart()[I

    move-result-object v2

    invoke-virtual {v6}, Lcom/android/mms/util/SmileyParser;->getSmileyEnd()[I

    move-result-object v3

    const-string v5, "Mms/RcsBubbleView"

    invoke-static/range {v0 .. v5}, Lcom/android/mms/util/UIUtils;->highlightMessage(Landroid/content/Context;Ljava/util/regex/Pattern;[I[ILandroid/text/SpannableStringBuilder;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/mms/rcs/RcsBubbleView;->mActiveTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/mms/rcs/RcsBubbleView;->mActiveTextView:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/android/mms/rcs/RcsBubbleView;->mIsFailedMessage:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/mms/rcs/RcsBubbleView;->mIsScheduledMessage:Z

    if-eqz v1, :cond_4

    :cond_3
    move v1, v9

    :goto_1
    invoke-static {v2, v1}, Lcom/android/mms/ui/MessageListItem;->applyBodyTextViewColor(Landroid/widget/TextView;Z)V

    invoke-virtual {p0, v9}, Lcom/android/mms/rcs/RcsBubbleView;->setTextVisibility(Z)V

    goto :goto_0

    :cond_4
    move v1, v8

    goto :goto_1
.end method

.method public setTextVisibility(Z)V
    .locals 1
    .param p1    # Z

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/mms/rcs/RcsBubbleView;->mActiveTextView:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/mms/rcs/RcsBubbleView;->mTextViewTop:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/android/mms/rcs/RcsBubbleView;->mTextViewBottom:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method public setVideo(Lcom/android/mms/model/VideoModel;)V
    .locals 8
    .param p1    # Lcom/android/mms/model/VideoModel;

    const/4 v7, 0x0

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/mms/rcs/RcsBubbleView;->mVideoModel:Lcom/android/mms/model/VideoModel;

    invoke-virtual {p1, v4}, Lcom/android/mms/model/VideoModel;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v3

    if-eqz v2, :cond_0

    iget-object v4, p0, Lcom/android/mms/rcs/RcsBubbleView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/mms/rcs/RcsBubbleView;->mSlideMediaView:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/mms/rcs/RcsBubbleView;->mVideoPlayButton:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    const-string v4, "Mms/RcsBubbleView"

    const-string v5, "same video"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->isDrmProtected()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "Mms/RcsBubbleView"

    const-string v5, "set DRM Video"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020071

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v4, p0, Lcom/android/mms/rcs/RcsBubbleView;->mImageView:Landroid/widget/ImageView;

    invoke-direct {p0, v4}, Lcom/android/mms/rcs/RcsBubbleView;->calculateDrmImageBounds(Landroid/widget/ImageView;)V

    :goto_1
    if-nez v0, :cond_5

    const-string v4, "Mms/RcsBubbleView"

    const-string v5, "video thumbnail not created"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/android/mms/rcs/RcsBubbleView;->mTransferProgess:Z

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020075

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_2
    if-nez v3, :cond_4

    iget-object v4, p0, Lcom/android/mms/rcs/RcsBubbleView;->mImageView:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/android/mms/rcs/RcsBubbleView;->mVideoPlayButton:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/android/mms/rcs/RcsBubbleView;->mImageView:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_3
    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->isDrmProtected()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/mms/rcs/RcsBubbleView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-direct {p0, v4, v5, v6}, Lcom/android/mms/rcs/RcsBubbleView;->preCalculateImageBoudns(Landroid/widget/ImageView;II)V

    :cond_1
    iget-object v4, p0, Lcom/android/mms/rcs/RcsBubbleView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v4, p0, Lcom/android/mms/rcs/RcsBubbleView;->mImageView:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/mms/rcs/RcsBubbleView;->mSlideMediaView:Landroid/widget/FrameLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/mms/rcs/RcsBubbleView;->mVideoPlayButton:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v4, "Mms/RcsBubbleView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OutOfMemoryError"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/mms/rcs/RcsBubbleView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/android/mms/rcs/RcsBubbleView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    :cond_2
    :try_start_1
    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/android/mms/ui/MessageUtils;->createVideoThumbnail(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto/16 :goto_1

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020074

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_2

    :cond_4
    iget-object v4, p0, Lcom/android/mms/rcs/RcsBubbleView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v4, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/android/mms/rcs/RcsBubbleView;->mVideoPlayButton:Landroid/widget/ImageView;

    invoke-virtual {v4, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/android/mms/rcs/RcsBubbleView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    :cond_5
    iget-object v4, p0, Lcom/android/mms/rcs/RcsBubbleView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v4, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/android/mms/rcs/RcsBubbleView;->mVideoPlayButton:Landroid/widget/ImageView;

    invoke-virtual {v4, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/android/mms/rcs/RcsBubbleView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3
.end method

.method public setVisibility(Z)V
    .locals 0
    .param p1    # Z

    invoke-static {p0, p1}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    return-void
.end method
