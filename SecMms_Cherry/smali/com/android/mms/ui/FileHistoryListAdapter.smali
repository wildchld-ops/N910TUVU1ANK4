.class public Lcom/android/mms/ui/FileHistoryListAdapter;
.super Landroid/widget/CursorAdapter;
.source "FileHistoryListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/FileHistoryListAdapter$OnContentChangedListener;
    }
.end annotation


# static fields
.field public static final CACHE_SIZE:I = 0x32

.field private static final TAG:Ljava/lang/String; = "Mms/FileHistoryListAdapter"

.field private static final THUMBNAIL_BOUNDS_LIMIT:I

.field private static final sSupportedAudioTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sSupportedImageTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sSupportedVideoTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field filePath:Ljava/lang/String;

.field private mContentType:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDateView:Landroid/widget/TextView;

.field private final mFactory:Landroid/view/LayoutInflater;

.field private mFilePath:I

.field private mFileSize:J

.field private mFileSizeView:Landroid/widget/TextView;

.field mFileTransferUri:Landroid/net/Uri;

.field private mFilenameView:Landroid/widget/TextView;

.field private mFontSize:I

.field private mImageView:Landroid/widget/ImageView;

.field private mImageViewFrame:Landroid/widget/FrameLayout;

.field private mListHoverController:Lcom/android/mms/hover/ListHoverController;

.field private mListItemLayout:Landroid/widget/RelativeLayout;

.field private mMsgId:I

.field public mMsgListMode:I

.field private mMsgType:I

.field mOnContentChangedListener:Lcom/android/mms/ui/FileHistoryListAdapter$OnContentChangedListener;

.field mRcsUri:Landroid/net/Uri;

.field mRootLayout:Landroid/widget/LinearLayout;

.field private mTimestamp:I

.field private mVideoPlay:Landroid/widget/ImageView;

.field private m_LayoutInflater:Landroid/view/LayoutInflater;

.field private m_nViewResourceId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, 0x434b0000

    invoke-static {v0}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v0

    sput v0, Lcom/android/mms/ui/FileHistoryListAdapter;->THUMBNAIL_BOUNDS_LIMIT:I

    invoke-static {}, Lcom/google/android/mms/ContentType;->getImageTypes()Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/FileHistoryListAdapter;->sSupportedImageTypes:Ljava/util/ArrayList;

    invoke-static {}, Lcom/google/android/mms/ContentType;->getAudioTypes()Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/FileHistoryListAdapter;->sSupportedAudioTypes:Ljava/util/ArrayList;

    invoke-static {}, Lcom/google/android/mms/ContentType;->getVideoTypes()Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/FileHistoryListAdapter;->sSupportedVideoTypes:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/FileHistoryListAdapter;->mContext:Landroid/content/Context;

    iput v1, p0, Lcom/android/mms/ui/FileHistoryListAdapter;->mMsgListMode:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/mms/ui/FileHistoryListAdapter;->mFontSize:I

    iput-object p1, p0, Lcom/android/mms/ui/FileHistoryListAdapter;->mContext:Landroid/content/Context;

    iput p3, p0, Lcom/android/mms/ui/FileHistoryListAdapter;->m_nViewResourceId:I

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/FileHistoryListAdapter;->mFactory:Landroid/view/LayoutInflater;

    iget-object v0, p0, Lcom/android/mms/ui/FileHistoryListAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/mms/ui/FileHistoryListAdapter;->m_LayoutInflater:Landroid/view/LayoutInflater;

    invoke-static {}, Lcom/android/mms/ui/FontSizeController;->getFontSizeIndexForUi()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/FileHistoryListAdapter;->setFontSize(I)V

    new-instance v0, Lcom/android/mms/hover/ListHoverController;

    invoke-direct {v0, p1}, Lcom/android/mms/hover/ListHoverController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mms/ui/FileHistoryListAdapter;->mListHoverController:Lcom/android/mms/hover/ListHoverController;

    return-void
.end method

.method private changeFontSize(I)V
    .locals 6

    const/4 v2, 0x4

    if-ge p1, v2, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v2, "Mms/FileHistoryListAdapter"

    const-string v3, "changeFontSize"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/mms/ui/FileHistoryListAdapter;->mListItemLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v2, p0, Lcom/android/mms/ui/FileHistoryListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    packed-switch p1, :pswitch_data_0

    :goto_1
    iget-object v2, p0, Lcom/android/mms/ui/FileHistoryListAdapter;->mListItemLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :pswitch_0
    const v2, 0x7f0a0003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1

    :pswitch_1
    const v2, 0x7f0a0004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lcom/android/mms/ui/FileHistoryListAdapter;->mFilenameView:Landroid/widget/TextView;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/mms/ui/FileHistoryListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0009

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static createVideoThumbnail(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 4

    const/4 v0, 0x0

    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    :try_start_0
    invoke-virtual {v1, p0, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    const-wide/16 v2, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :try_start_1
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-object v0

    :catchall_0
    move-exception v2

    :try_start_2
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_1
    throw v2

    :catch_0
    move-exception v2

    :try_start_3
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_0

    :catch_2
    move-exception v3

    goto :goto_1
.end method

.method private decodeBitmap(Landroid/net/Uri;I)Landroid/graphics/Bitmap;
    .locals 18
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

    iget-object v2, v0, Lcom/android/mms/ui/FileHistoryListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v10

    const/4 v2, 0x2

    iput v2, v13, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

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

    sget v3, Lcom/android/mms/ui/FileHistoryListAdapter;->THUMBNAIL_BOUNDS_LIMIT:I

    if-gt v2, v3, :cond_1

    div-int v2, v14, v17

    sget v3, Lcom/android/mms/ui/FileHistoryListAdapter;->THUMBNAIL_BOUNDS_LIMIT:I

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
    invoke-static {v1}, Lcom/android/mms/ui/FileHistoryListAdapter;->recycleBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    move-object/from16 v1, v16

    :cond_3
    if-eqz v10, :cond_4

    :try_start_1
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

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
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v16

    goto :goto_1

    :catch_0
    move-exception v8

    :try_start_3
    const-string v2, "Mms/FileHistoryListAdapter"

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
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception v8

    const-string v2, "Mms/FileHistoryListAdapter"

    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    :goto_3
    invoke-static {v2, v3, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_2
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
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :cond_6
    :goto_4
    throw v2

    :catch_3
    move-exception v8

    const-string v3, "Mms/FileHistoryListAdapter"

    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :catch_4
    move-exception v8

    const-string v2, "Mms/FileHistoryListAdapter"

    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    goto :goto_3
.end method

.method protected static recycleBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 11

    const/4 v10, 0x0

    move-object v6, p1

    if-nez v6, :cond_0

    iget-object v7, p0, Lcom/android/mms/ui/FileHistoryListAdapter;->m_LayoutInflater:Landroid/view/LayoutInflater;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/mms/ui/FileHistoryListAdapter;->m_LayoutInflater:Landroid/view/LayoutInflater;

    iget v8, p0, Lcom/android/mms/ui/FileHistoryListAdapter;->m_nViewResourceId:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    :cond_0
    invoke-static {}, Lcom/android/mms/data/Conversation;->loadingThreads()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-static {}, Lcom/android/mms/data/Contact;->invalidateCache()V

    :cond_1
    const-string v7, "file_path"

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/android/mms/ui/FileHistoryListAdapter;->mFilePath:I

    const-string v7, "date"

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/android/mms/ui/FileHistoryListAdapter;->mTimestamp:I

    const-string v7, "type"

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/android/mms/ui/FileHistoryListAdapter;->mMsgType:I

    const-string v7, "_id"

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/android/mms/ui/FileHistoryListAdapter;->mMsgId:I

    const-string v7, "content_type"

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/mms/ui/FileHistoryListAdapter;->mContentType:Ljava/lang/String;

    const-string v7, "file_size"

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/mms/ui/FileHistoryListAdapter;->mFileSize:J

    const v7, 0x7f0b0191

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, p0, Lcom/android/mms/ui/FileHistoryListAdapter;->mRootLayout:Landroid/widget/LinearLayout;

    const v7, 0x7f0b0192

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    iput-object v7, p0, Lcom/android/mms/ui/FileHistoryListAdapter;->mImageViewFrame:Landroid/widget/FrameLayout;

    const v7, 0x7f0b0193

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/android/mms/ui/FileHistoryListAdapter;->mImageView:Landroid/widget/ImageView;

    const v7, 0x7f0b0194

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/android/mms/ui/FileHistoryListAdapter;->mVideoPlay:Landroid/widget/ImageView;

    const v7, 0x7f0b0196

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/mms/ui/FileHistoryListAdapter;->mFilenameView:Landroid/widget/TextView;

    const v7, 0x7f0b0197

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/mms/ui/FileHistoryListAdapter;->mFileSizeView:Landroid/widget/TextView;

    const v7, 0x7f0b0151

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/mms/ui/FileHistoryListAdapter;->mDateView:Landroid/widget/TextView;

    const v7, 0x7f0b0195

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    iput-object v7, p0, Lcom/android/mms/ui/FileHistoryListAdapter;->mListItemLayout:Landroid/widget/RelativeLayout;

    iget v7, p0, Lcom/android/mms/ui/FileHistoryListAdapter;->mMsgType:I

    const/4 v8, 0x1

    if-eq v7, v8, :cond_2

    iget v7, p0, Lcom/android/mms/ui/FileHistoryListAdapter;->mMsgType:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_4

    :cond_2
    iget v7, p0, Lcom/android/mms/ui/FileHistoryListAdapter;->mFilePath:I

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/mms/ui/FileHistoryListAdapter;->filePath:Ljava/lang/String;

    iget v7, p0, Lcom/android/mms/ui/FileHistoryListAdapter;->mMsgId:I

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    sget-object v7, Lcom/android/mms/freemessage/FreeMessageProperties$FreeMessageFT;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    iput-object v7, p0, Lcom/android/mms/ui/FileHistoryListAdapter;->mFileTransferUri:Landroid/net/Uri;

    sget-object v7, Lcom/android/mms/rcs/transaction/RcsTransaction$RcsFt;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    iput-object v7, p0, Lcom/android/mms/ui/FileHistoryListAdapter;->mRcsUri:Landroid/net/Uri;

    :goto_0
    sget-object v7, Lcom/android/mms/ui/FileHistoryListAdapter;->sSupportedImageTypes:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/android/mms/ui/FileHistoryListAdapter;->mContentType:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-static {}, Lcom/android/mms/MmsConfig;->isFreeMessageEnabled()Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/mms/ui/FileHistoryListAdapter;->mFileTransferUri:Landroid/net/Uri;

    sget v8, Lcom/android/mms/ui/FileHistoryListAdapter;->THUMBNAIL_BOUNDS_LIMIT:I

    invoke-direct {p0, v7, v8}, Lcom/android/mms/ui/FileHistoryListAdapter;->decodeBitmap(Landroid/net/Uri;I)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_1
    iget-object v7, p0, Lcom/android/mms/ui/FileHistoryListAdapter;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v7, p0, Lcom/android/mms/ui/FileHistoryListAdapter;->mImageViewFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    iget-object v7, p0, Lcom/android/mms/ui/FileHistoryListAdapter;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v7, p0, Lcom/android/mms/ui/FileHistoryListAdapter;->mFilenameView:Landroid/widget/TextView;

    new-instance v8, Ljava/io/File;

    iget-object v9, p0, Lcom/android/mms/ui/FileHistoryListAdapter;->filePath:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/android/mms/ui/FileHistoryListAdapter;->mFileSizeView:Landroid/widget/TextView;

    iget-wide v8, p0, Lcom/android/mms/ui/FileHistoryListAdapter;->mFileSize:J

    invoke-static {p2, v8, v9}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/android/mms/ui/FileHistoryListAdapter;->mDateView:Landroid/widget/TextView;

    iget v8, p0, Lcom/android/mms/ui/FileHistoryListAdapter;->mTimestamp:I

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const/high16 v10, 0x20000

    invoke-static {p2, v8, v9, v10}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v7, p0, Lcom/android/mms/ui/FileHistoryListAdapter;->mFontSize:I

    invoke-direct {p0, v7}, Lcom/android/mms/ui/FileHistoryListAdapter;->changeFontSize(I)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->isSupportHoveringUI()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/mms/ui/FileHistoryListAdapter;->mListHoverController:Lcom/android/mms/hover/ListHoverController;

    invoke-virtual {v7, v6}, Lcom/android/mms/hover/ListHoverController;->setHoverPopupStyle(Landroid/view/View;)V

    :cond_3
    return-void

    :cond_4
    iget v7, p0, Lcom/android/mms/ui/FileHistoryListAdapter;->mFilePath:I

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/mms/ui/FileHistoryListAdapter;->filePath:Ljava/lang/String;

    new-instance v7, Ljava/io/File;

    iget-object v8, p0, Lcom/android/mms/ui/FileHistoryListAdapter;->filePath:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v7

    iput-object v7, p0, Lcom/android/mms/ui/FileHistoryListAdapter;->mFileTransferUri:Landroid/net/Uri;

    new-instance v7, Ljava/io/File;

    iget-object v8, p0, Lcom/android/mms/ui/FileHistoryListAdapter;->filePath:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v7

    iput-object v7, p0, Lcom/android/mms/ui/FileHistoryListAdapter;->mRcsUri:Landroid/net/Uri;

    goto/16 :goto_0

    :cond_5
    iget-object v7, p0, Lcom/android/mms/ui/FileHistoryListAdapter;->mRcsUri:Landroid/net/Uri;

    sget v8, Lcom/android/mms/ui/FileHistoryListAdapter;->THUMBNAIL_BOUNDS_LIMIT:I

    invoke-direct {p0, v7, v8}, Lcom/android/mms/ui/FileHistoryListAdapter;->decodeBitmap(Landroid/net/Uri;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    :cond_6
    sget-object v7, Lcom/android/mms/ui/FileHistoryListAdapter;->sSupportedVideoTypes:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/android/mms/ui/FileHistoryListAdapter;->mContentType:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-static {}, Lcom/android/mms/MmsConfig;->isFreeMessageEnabled()Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/android/mms/ui/FileHistoryListAdapter;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/mms/ui/FileHistoryListAdapter;->mFileTransferUri:Landroid/net/Uri;

    invoke-static {v7, v8}, Lcom/android/mms/ui/FileHistoryListAdapter;->createVideoThumbnail(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_2
    iget-object v7, p0, Lcom/android/mms/ui/FileHistoryListAdapter;->mVideoPlay:Landroid/widget/ImageView;

    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    :cond_7
    iget-object v7, p0, Lcom/android/mms/ui/FileHistoryListAdapter;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/mms/ui/FileHistoryListAdapter;->mRcsUri:Landroid/net/Uri;

    invoke-static {v7, v8}, Lcom/android/mms/ui/FileHistoryListAdapter;->createVideoThumbnail(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_2

    :cond_8
    const/4 v5, 0x0

    sget-object v7, Lcom/android/mms/ui/FileHistoryListAdapter;->sSupportedAudioTypes:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/android/mms/ui/FileHistoryListAdapter;->mContentType:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    iget-object v7, p0, Lcom/android/mms/ui/FileHistoryListAdapter;->mContentType:Ljava/lang/String;

    const-string v8, "audio"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_b

    :cond_9
    const v5, 0x7f02029c

    :cond_a
    :goto_3
    iget-object v7, p0, Lcom/android/mms/ui/FileHistoryListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {v7, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto/16 :goto_1

    :cond_b
    invoke-static {}, Lcom/android/mms/util/MessageMimeTypeMap;->getSingleton()Lcom/android/mms/util/MessageMimeTypeMap;

    move-result-object v2

    iget-object v7, p0, Lcom/android/mms/ui/FileHistoryListAdapter;->mContentType:Ljava/lang/String;

    invoke-virtual {v2, v7}, Lcom/android/mms/util/MessageMimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    const-string v7, "vcf"

    invoke-virtual {v1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_c

    const v5, 0x7f0202a1

    goto :goto_3

    :cond_c
    const-string v7, "vcs"

    invoke-virtual {v1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_d

    const v5, 0x7f0202a0

    goto :goto_3

    :cond_d
    const-string v7, "vts"

    invoke-virtual {v1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_e

    const v5, 0x7f02029f

    goto :goto_3

    :cond_e
    const-string v7, "doc"

    invoke-virtual {v1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_f

    const v5, 0x7f020299

    goto :goto_3

    :cond_f
    const-string v7, "hwp"

    invoke-virtual {v1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_10

    const v5, 0x7f02029b

    goto :goto_3

    :cond_10
    const-string v7, "pdf"

    invoke-virtual {v1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_11

    const v5, 0x7f02029d

    goto :goto_3

    :cond_11
    const-string v7, "ppt"

    invoke-virtual {v1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_12

    const v5, 0x7f02029e

    goto :goto_3

    :cond_12
    const-string v7, "txt"

    invoke-virtual {v1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_13

    const v5, 0x7f0202a2

    goto :goto_3

    :cond_13
    const-string v7, "xls"

    invoke-virtual {v1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_14

    const v5, 0x7f0202a3

    goto/16 :goto_3

    :cond_14
    const-string v7, "zip"

    invoke-virtual {v1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_15

    const v5, 0x7f0202a4

    goto/16 :goto_3

    :cond_15
    const v5, 0x7f02029a

    goto/16 :goto_3
.end method

.method public getCurrentListMode()I
    .locals 1

    iget v0, p0, Lcom/android/mms/ui/FileHistoryListAdapter;->mMsgListMode:I

    return v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/android/mms/ui/FileHistoryListAdapter;->mFactory:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/android/mms/ui/FileHistoryListAdapter;->m_nViewResourceId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onContentChanged()V
    .locals 2

    const-string v0, "Mms/FileHistoryListAdapter"

    const-string v1, "ConversationListAdapter: onContentChanged"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Landroid/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/FileHistoryListAdapter;->mOnContentChangedListener:Lcom/android/mms/ui/FileHistoryListAdapter$OnContentChangedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/FileHistoryListAdapter;->mOnContentChangedListener:Lcom/android/mms/ui/FileHistoryListAdapter$OnContentChangedListener;

    invoke-interface {v0, p0}, Lcom/android/mms/ui/FileHistoryListAdapter$OnContentChangedListener;->onContentChanged(Lcom/android/mms/ui/FileHistoryListAdapter;)V

    :cond_0
    return-void
.end method

.method public refreshFontSize()V
    .locals 1

    invoke-static {}, Lcom/android/mms/ui/FontSizeController;->getFontSizeIndexForUi()I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/FileHistoryListAdapter;->mFontSize:I

    return-void
.end method

.method public setFontSize(I)V
    .locals 0

    iput p1, p0, Lcom/android/mms/ui/FileHistoryListAdapter;->mFontSize:I

    return-void
.end method

.method public setMessageListMode(I)V
    .locals 1

    iget v0, p0, Lcom/android/mms/ui/FileHistoryListAdapter;->mMsgListMode:I

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/android/mms/ui/FileHistoryListAdapter;->mMsgListMode:I

    goto :goto_0
.end method

.method public setOnContentChangedListener(Lcom/android/mms/ui/FileHistoryListAdapter$OnContentChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/FileHistoryListAdapter;->mOnContentChangedListener:Lcom/android/mms/ui/FileHistoryListAdapter$OnContentChangedListener;

    return-void
.end method
