.class public Lcom/android/mms/cover/MissedMsgActivity;
.super Landroid/app/Activity;
.source "MissedMsgActivity.java"


# static fields
.field private static final CLICK_MAX_LENGTH:I = 0x14

.field private static final COLUMN_MMS_DATE:I = 0x6

.field private static final COLUMN_MSG_BODY:I = 0x2

.field private static final COLUMN_MSG_DATE:I = 0x8

.field private static final COLUMN_MSG_ID:I = 0x7

.field private static final COLUMN_MSG_TYPE:I = 0x0

.field private static final COLUMN_SMS_DATE:I = 0x3

.field private static final COLUMN_SUBJECT:I = 0x4

.field private static final COLUMN_SUBJECT_CS:I = 0x5

.field private static final COLUMN_THREAD_ID:I = 0x1

.field private static final COVER_REQUEST:Ljava/lang/String; = "com.sec.android.sviewcover.request"

.field private static final DELAY_TIME_FOR_SCOVER_HIDE:I = 0x190

.field private static final DELAY_TIME_FOR_SCOVER_SHOW:I = 0x1f4

.field private static final DELAY_TIME_FOR_UPDATE_MSG:I = 0x258

.field private static final DIM_SCREEN_TIMEOUT_ON_CLEAR_COVER:I = 0x0

.field private static final FLICK_MIN_LENGTH:I = 0x96

.field private static final FLICK_TYPE_CLICK:I = 0x1

.field private static final FLICK_TYPE_NONE:I = 0x0

.field private static final FLICK_TYPE_TO_LEFT:I = 0x3

.field private static final FLICK_TYPE_TO_RIGHT:I = 0x2

.field public static final MSG_TYPE_SIZE:I = 0x4

.field private static final SCOVER_WALLPAPER_MODE_ON:I = 0x1

.field private static final SCOVER_WALLPAPER_MODE_USER:I = 0x9

.field private static final SCREEN_TIMEOUT_ON_CLEAR_COVER:I = 0x1770

.field private static final TAG:Ljava/lang/String; = "Mms/MissedMsgActivity"

.field public static final TYPES:[Ljava/lang/String;

.field private static final TYPE_S_VIEW_CHARGER_COVER:I = 0x3

.field private static final TYPE_S_VIEW_COVER:I = 0x1

.field private static final TYPE_S_VIEW_WALLET_COVER:I = 0x6

.field public static final VZW_MSG_APP:Ljava/lang/String; = "com.verizon.messaging.vzmsgs"

.field private static mIsFinishing:Z

.field private static sEnablePreview:Z

.field private static sPduPersister:Lcom/google/android/mms/pdu/PduPersister;


# instance fields
.field private WALLPAPER_IMAGE_NAME:Ljava/lang/String;

.field private WALLPAPER_IMAGE_USER_NAME:Ljava/lang/String;

.field private conversation:Lcom/android/mms/data/Conversation;

.field private endX:I

.field private endY:I

.field filter:Landroid/content/IntentFilter;

.field private isCmas:Z

.field private mAddressToCall:Ljava/lang/String;

.field private mAnimLayout:Landroid/widget/LinearLayout;

.field private mAttachmentBitmap:Landroid/graphics/Bitmap;

.field private mBackgroundColorLayout:Landroid/widget/LinearLayout;

.field mBlockFlickUntilMillis:J

.field private mCmasType:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCoverBgDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

.field mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

.field private mCoverWallPaper:I

.field private mCurrentIdx:I

.field private mCurrentTime:Landroid/widget/TextView;

.field private mDateView:Landroid/widget/TextView;

.field private mExitButton:Landroid/widget/ImageButton;

.field public mHandler:Landroid/os/Handler;

.field private mIsEnterConvList:Z

.field private mIsInvalidMessage:Z

.field private mLaunchThreadId:J

.field private mMakeCall:Landroid/widget/ImageButton;

.field private mMessageBodyView:Landroid/widget/TextView;

.field private mMissedMsgMainView:Landroid/widget/LinearLayout;

.field private mMmsImageView:Landroid/widget/ImageView;

.field private mMmsIndicatorView:Landroid/widget/TextView;

.field private mMsgBodys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMsgCountView:Landroid/widget/TextView;

.field private mMsgIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mMsgSubjects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMsgTimes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mMsgTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRecipientList:Lcom/android/mms/data/ContactList;

.field private mRecipientNumberView:Landroid/widget/TextView;

.field private mRecipientNumbers:Ljava/lang/String;

.field private mRecipientView:Landroid/widget/TextView;

.field private mRecipients:Ljava/lang/String;

.field mScover:Lcom/samsung/android/sdk/cover/Scover;

.field mScoverState:Lcom/samsung/android/sdk/cover/ScoverState;

.field private mShowMsgId:J

.field private mShowMsgPreview:Z

.field private mShowMsgUri:Ljava/lang/String;

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mThreadId:J

.field private mThreadIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mTotalUnreadMsgCount:I

.field private msgUri:Landroid/net/Uri;

.field projection:[Ljava/lang/String;

.field public screenOffReceiver:Landroid/content/BroadcastReceiver;

.field private startX:I

.field private startY:I

.field thread_projection:[Ljava/lang/String;

.field private update_read:Z

.field private update_seen:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    sput-boolean v3, Lcom/android/mms/cover/MissedMsgActivity;->sEnablePreview:Z

    sput-boolean v2, Lcom/android/mms/cover/MissedMsgActivity;->mIsFinishing:Z

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "mms"

    aput-object v1, v0, v2

    const-string v1, "sms"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "wpm"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "cmas"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "sms"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "directDisplayMessage"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/cover/MissedMsgActivity;->TYPES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    const/4 v7, 0x1

    const-wide/16 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-wide v5, p0, Lcom/android/mms/cover/MissedMsgActivity;->mThreadId:J

    iput v3, p0, Lcom/android/mms/cover/MissedMsgActivity;->mCurrentIdx:I

    iput v3, p0, Lcom/android/mms/cover/MissedMsgActivity;->mTotalUnreadMsgCount:I

    iput-object v4, p0, Lcom/android/mms/cover/MissedMsgActivity;->mRecipientList:Lcom/android/mms/data/ContactList;

    iput-object v4, p0, Lcom/android/mms/cover/MissedMsgActivity;->mAddressToCall:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMissedMsgMainView:Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/mms/cover/MissedMsgActivity;->mAnimLayout:Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/mms/cover/MissedMsgActivity;->mBackgroundColorLayout:Landroid/widget/LinearLayout;

    iput v3, p0, Lcom/android/mms/cover/MissedMsgActivity;->mCoverWallPaper:I

    const-string v0, "cover_wallpaper.jpg"

    iput-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->WALLPAPER_IMAGE_NAME:Ljava/lang/String;

    const-string v0, "cover_index_wallpaper.jpg"

    iput-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->WALLPAPER_IMAGE_USER_NAME:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/mms/cover/MissedMsgActivity;->mCoverBgDrawable:Landroid/graphics/drawable/BitmapDrawable;

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "transport_type"

    aput-object v1, v0, v3

    const-string v1, "thread_id"

    aput-object v1, v0, v7

    const/4 v1, 0x2

    const-string v2, "body"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "sub"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "sub_cs"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "normalized_date"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->projection:[Ljava/lang/String;

    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->thread_projection:[Ljava/lang/String;

    iput-wide v5, p0, Lcom/android/mms/cover/MissedMsgActivity;->mBlockFlickUntilMillis:J

    iput-object v4, p0, Lcom/android/mms/cover/MissedMsgActivity;->mCmasType:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/android/mms/cover/MissedMsgActivity;->update_read:Z

    iput-boolean v3, p0, Lcom/android/mms/cover/MissedMsgActivity;->update_seen:Z

    iput-object v4, p0, Lcom/android/mms/cover/MissedMsgActivity;->msgUri:Landroid/net/Uri;

    iput-boolean v3, p0, Lcom/android/mms/cover/MissedMsgActivity;->mIsEnterConvList:Z

    iput-wide v5, p0, Lcom/android/mms/cover/MissedMsgActivity;->mLaunchThreadId:J

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mHandler:Landroid/os/Handler;

    iput-object v4, p0, Lcom/android/mms/cover/MissedMsgActivity;->mShowMsgUri:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/android/mms/cover/MissedMsgActivity;->mShowMsgPreview:Z

    iput-boolean v3, p0, Lcom/android/mms/cover/MissedMsgActivity;->mIsInvalidMessage:Z

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->filter:Landroid/content/IntentFilter;

    new-instance v0, Lcom/android/mms/cover/MissedMsgActivity$9;

    invoke-direct {v0, p0}, Lcom/android/mms/cover/MissedMsgActivity$9;-><init>(Lcom/android/mms/cover/MissedMsgActivity;)V

    iput-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->screenOffReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/cover/MissedMsgActivity;->sEnablePreview:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/mms/cover/MissedMsgActivity;)Z
    .locals 1
    .param p0    # Lcom/android/mms/cover/MissedMsgActivity;

    iget-boolean v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mIsEnterConvList:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/mms/cover/MissedMsgActivity;)V
    .locals 0
    .param p0    # Lcom/android/mms/cover/MissedMsgActivity;

    invoke-direct {p0}, Lcom/android/mms/cover/MissedMsgActivity;->sendExitBroadCastToScover()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/mms/cover/MissedMsgActivity;)I
    .locals 1
    .param p0    # Lcom/android/mms/cover/MissedMsgActivity;

    iget v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mCurrentIdx:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/mms/cover/MissedMsgActivity;Ljava/lang/Runnable;IZ)V
    .locals 0
    .param p0    # Lcom/android/mms/cover/MissedMsgActivity;
    .param p1    # Ljava/lang/Runnable;
    .param p2    # I
    .param p3    # Z

    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/cover/MissedMsgActivity;->markAsRead(Ljava/lang/Runnable;IZ)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/mms/cover/MissedMsgActivity;IZZ)V
    .locals 0
    .param p0    # Lcom/android/mms/cover/MissedMsgActivity;
    .param p1    # I
    .param p2    # Z
    .param p3    # Z

    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/cover/MissedMsgActivity;->setMissedMsgInfo(IZZ)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/mms/cover/MissedMsgActivity;)Landroid/net/Uri;
    .locals 1
    .param p0    # Lcom/android/mms/cover/MissedMsgActivity;

    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->msgUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/mms/cover/MissedMsgActivity;)Z
    .locals 1
    .param p0    # Lcom/android/mms/cover/MissedMsgActivity;

    iget-boolean v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->update_seen:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/android/mms/cover/MissedMsgActivity;Z)Z
    .locals 0
    .param p0    # Lcom/android/mms/cover/MissedMsgActivity;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/mms/cover/MissedMsgActivity;->update_seen:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/mms/cover/MissedMsgActivity;)Z
    .locals 1
    .param p0    # Lcom/android/mms/cover/MissedMsgActivity;

    iget-boolean v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->update_read:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/android/mms/cover/MissedMsgActivity;Z)Z
    .locals 0
    .param p0    # Lcom/android/mms/cover/MissedMsgActivity;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/mms/cover/MissedMsgActivity;->update_read:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/android/mms/cover/MissedMsgActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0    # Lcom/android/mms/cover/MissedMsgActivity;

    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMsgTypes:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/cover/MissedMsgActivity;)Z
    .locals 1
    .param p0    # Lcom/android/mms/cover/MissedMsgActivity;

    iget-boolean v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mShowMsgPreview:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/mms/cover/MissedMsgActivity;)J
    .locals 2
    .param p0    # Lcom/android/mms/cover/MissedMsgActivity;

    iget-wide v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mThreadId:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/android/mms/cover/MissedMsgActivity;)J
    .locals 2
    .param p0    # Lcom/android/mms/cover/MissedMsgActivity;

    iget-wide v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mLaunchThreadId:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/android/mms/cover/MissedMsgActivity;)Z
    .locals 1
    .param p0    # Lcom/android/mms/cover/MissedMsgActivity;

    iget-boolean v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->isCmas:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/mms/cover/MissedMsgActivity;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/mms/cover/MissedMsgActivity;

    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/mms/cover/MissedMsgActivity;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/android/mms/cover/MissedMsgActivity;

    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mCmasType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Z)Z
    .locals 0
    .param p0    # Z

    sput-boolean p0, Lcom/android/mms/cover/MissedMsgActivity;->mIsFinishing:Z

    return p0
.end method

.method static synthetic access$900(Lcom/android/mms/cover/MissedMsgActivity;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/android/mms/cover/MissedMsgActivity;

    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mAddressToCall:Ljava/lang/String;

    return-object v0
.end method

.method private checkEnterMsgMode()V
    .locals 8

    const/4 v4, 0x0

    const/4 v7, 0x1

    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/mms/data/Conversation;->sAllThreadsUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/mms/cover/MissedMsgActivity;->thread_projection:[Ljava/lang/String;

    const-string v3, "read=0"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-nez v6, :cond_1

    const-string v0, "Mms/MissedMsgActivity"

    const-string v1, "cursor is null so just return"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mIsInvalidMessage:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const/4 v6, 0x0

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v7, :cond_3

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mLaunchThreadId:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mIsEnterConvList:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const/4 v6, 0x0

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mIsEnterConvList:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const/4 v6, 0x0

    :cond_4
    throw v0
.end method

.method private createBackgroundDrawable()V
    .locals 5

    const/4 v4, 0x1

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sview_color_wallpaper"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/mms/cover/MissedMsgActivity;->mCoverWallPaper:I

    iget v1, p0, Lcom/android/mms/cover/MissedMsgActivity;->mCoverWallPaper:I

    if-eq v1, v4, :cond_0

    iget v1, p0, Lcom/android/mms/cover/MissedMsgActivity;->mCoverWallPaper:I

    const/16 v2, 0x9

    if-le v1, v2, :cond_2

    :cond_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sview_bg_wallpaper_path"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, p0, Lcom/android/mms/cover/MissedMsgActivity;->mCoverWallPaper:I

    if-ne v1, v4, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/cover/MissedMsgActivity;->WALLPAPER_IMAGE_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/mms/cover/MissedMsgActivity;->mCoverBgDrawable:Landroid/graphics/drawable/BitmapDrawable;

    :cond_2
    return-void

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/cover/MissedMsgActivity;->WALLPAPER_IMAGE_USER_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getBackgroundColor()I
    .locals 6

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "s_vew_cover_background_color"

    const/16 v3, 0x8

    const/16 v4, 0x6b

    const/16 v5, 0x77

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string v1, "Mms/MissedMsgActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBackgroundColor tempColor="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private getCallableRecipient(Lcom/android/mms/data/ContactList;)Ljava/lang/String;
    .locals 3
    .param p1    # Lcom/android/mms/data/ContactList;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->isEmail()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->isPhoneNumber()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/cover/MissedMsgActivity;->mAddressToCall:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getContactHeaderString(Lcom/android/mms/data/ContactList;)Ljava/lang/String;
    .locals 5
    .param p1    # Lcom/android/mms/data/ContactList;

    const/4 v4, 0x1

    const-string v2, ""

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v4, :cond_7

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/data/Contact;

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v0

    const-string v3, "CBmessages"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const v3, 0x7f0c0100

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    const-string v3, "Pushmessage"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const v3, 0x7f0c0163

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    const-string v3, "Unknown address"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const v3, 0x7f0c013b

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_3
    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->isCmasPrefix(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->getCmasServiceCategoryStringId(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/cover/MissedMsgActivity;->mCmasType:Ljava/lang/String;

    goto :goto_0

    :cond_4
    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->isVZWHiddenContact(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v2, "Verizon Global Support"

    goto :goto_0

    :cond_5
    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_6
    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_7
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v4, :cond_0

    const-string v3, ", "

    invoke-virtual {p1, v3}, Lcom/android/mms/data/ContactList;->formatNames(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private getContactNumberString(Lcom/android/mms/data/ContactList;)Ljava/lang/String;
    .locals 5
    .param p1    # Lcom/android/mms/data/ContactList;

    const/4 v4, 0x1

    const-string v2, ""

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v4, :cond_6

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/data/Contact;

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v0

    const-string v3, "CBmessages"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const v3, 0x7f0c0100

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    const-string v3, "Pushmessage"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const v3, 0x7f0c0163

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    const-string v3, "Unknown address"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const v3, 0x7f0c013b

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_3
    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->isCmasPrefix(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->getCmasServiceCategoryStringId(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/cover/MissedMsgActivity;->mCmasType:Ljava/lang/String;

    goto :goto_0

    :cond_4
    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->isVZWHiddenContact(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v2, "Verizon Global Support"

    goto :goto_0

    :cond_5
    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v4, :cond_0

    const v3, 0x7f0c03a4

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private getFlickType(II)I
    .locals 2
    .param p1    # I
    .param p2    # I

    const/16 v1, 0x14

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-gt v0, v1, :cond_0

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x96

    if-lt p1, v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/16 v0, -0x96

    if-gt p1, v0, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getImage(Lcom/android/mms/model/SlideModel;)Landroid/graphics/Bitmap;
    .locals 5
    .param p0    # Lcom/android/mms/model/SlideModel;

    invoke-virtual {p0}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v2

    if-eqz v2, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/model/ImageModel;->getThumbnailBitmap()Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    :goto_0
    return-object v2

    :catch_0
    move-exception v1

    const-string v2, "Mms/MissedMsgActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getImage OOM occured e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v2, "Mms/MissedMsgActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception occured e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private getMmsUri(J)Landroid/net/Uri;
    .locals 2
    .param p1    # J

    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;
    .locals 1
    .param p0    # Landroid/content/Context;

    sget-object v0, Lcom/android/mms/cover/MissedMsgActivity;->sPduPersister:Lcom/google/android/mms/pdu/PduPersister;

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v0

    sput-object v0, Lcom/android/mms/cover/MissedMsgActivity;->sPduPersister:Lcom/google/android/mms/pdu/PduPersister;

    :cond_0
    sget-object v0, Lcom/android/mms/cover/MissedMsgActivity;->sPduPersister:Lcom/google/android/mms/pdu/PduPersister;

    return-object v0
.end method

.method private getSlideAttachCount(Lcom/android/mms/model/SlideshowModel;)I
    .locals 8
    .param p1    # Lcom/android/mms/model/SlideshowModel;

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v0, 0x0

    const/4 v5, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v6

    :cond_1
    invoke-virtual {p1}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v3

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_5

    invoke-virtual {p1, v1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v7

    if-eqz v7, :cond_2

    add-int/lit8 v2, v2, 0x1

    :cond_2
    invoke-virtual {v5}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v7

    if-eqz v7, :cond_3

    add-int/lit8 v2, v2, 0x1

    :cond_3
    invoke-virtual {v5}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v7

    if-eqz v7, :cond_4

    add-int/lit8 v2, v2, 0x1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    iget-object v6, p1, Lcom/android/mms/model/SlideshowModel;->mRawAttachments:Ljava/util/ArrayList;

    if-eqz v6, :cond_6

    iget-object v6, p1, Lcom/android/mms/model/SlideshowModel;->mRawAttachments:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    :cond_6
    add-int v0, v2, v4

    move v6, v0

    goto :goto_0
.end method

.method private static getText(Lcom/android/mms/model/SlideModel;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/android/mms/model/SlideModel;

    invoke-virtual {p0}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private handleFlick(IIIIJ)V
    .locals 7
    .param p1    # I
    .param p2    # I
    .param p3    # I
    .param p4    # I
    .param p5    # J

    const/4 v6, 0x1

    iget v3, p0, Lcom/android/mms/cover/MissedMsgActivity;->mTotalUnreadMsgCount:I

    if-gt v3, v6, :cond_1

    const-string v3, "Mms/MissedMsgActivity"

    const-string v4, "Only one message exist so do not need to flick"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :cond_1
    sub-int v0, p2, p1

    sub-int v1, p4, p3

    invoke-direct {p0, v0, v1}, Lcom/android/mms/cover/MissedMsgActivity;->getFlickType(II)I

    move-result v2

    const-string v3, "Mms/MissedMsgActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "flick type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    packed-switch v2, :pswitch_data_0

    :pswitch_1
    goto :goto_0

    :pswitch_2
    iget-wide v3, p0, Lcom/android/mms/cover/MissedMsgActivity;->mBlockFlickUntilMillis:J

    cmp-long v3, p5, v3

    if-lez v3, :cond_0

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/mms/cover/MissedMsgActivity;->mCurrentIdx:I

    invoke-direct {p0, v3, v4}, Lcom/android/mms/cover/MissedMsgActivity;->moveToNextMessage(ZI)V

    goto :goto_0

    :pswitch_3
    iget-wide v3, p0, Lcom/android/mms/cover/MissedMsgActivity;->mBlockFlickUntilMillis:J

    cmp-long v3, p5, v3

    if-lez v3, :cond_0

    iget v3, p0, Lcom/android/mms/cover/MissedMsgActivity;->mCurrentIdx:I

    invoke-direct {p0, v6, v3}, Lcom/android/mms/cover/MissedMsgActivity;->moveToNextMessage(ZI)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private handleIntent(Landroid/content/Intent;)V
    .locals 8
    .param p1    # Landroid/content/Intent;

    const/4 v7, 0x0

    const/4 v6, 0x1

    const-wide/16 v4, 0x0

    const-string v0, "thread_id"

    invoke-virtual {p1, v0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mThreadId:J

    const-string v0, "msg_id"

    invoke-virtual {p1, v0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mShowMsgId:J

    const-string v0, "NOTIFICATION_ITEM_URI"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mShowMsgUri:Ljava/lang/String;

    const-string v0, "Mms/MissedMsgActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "thread_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/mms/cover/MissedMsgActivity;->mThreadId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mThreadId:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    iget-wide v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mThreadId:J

    invoke-static {p0, v0, v1, v7}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->conversation:Lcom/android/mms/data/Conversation;

    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->conversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->isCmasMsg()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v6, p0, Lcom/android/mms/cover/MissedMsgActivity;->isCmas:Z

    :cond_0
    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mShowMsgUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-wide v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mShowMsgId:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_2

    iput-boolean v6, p0, Lcom/android/mms/cover/MissedMsgActivity;->mShowMsgPreview:Z

    const-string v0, "Mms/MissedMsgActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mShowMsgUri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/cover/MissedMsgActivity;->mShowMsgUri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mShowMsgId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/mms/cover/MissedMsgActivity;->mShowMsgId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    const-string v0, "Mms/MissedMsgActivity"

    const-string v1, "invalid address"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean v6, Lcom/android/mms/cover/MissedMsgActivity;->mIsFinishing:Z

    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/mms/cover/MissedMsgActivity$2;

    invoke-direct {v1, p0}, Lcom/android/mms/cover/MissedMsgActivity$2;-><init>(Lcom/android/mms/cover/MissedMsgActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    iput-boolean v7, p0, Lcom/android/mms/cover/MissedMsgActivity;->mShowMsgPreview:Z

    goto :goto_0
.end method

.method private initActivity()V
    .locals 8

    const/4 v7, 0x0

    const v6, 0x7f020346

    const/4 v5, 0x6

    const/4 v1, 0x0

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->getCoverType(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v5, :cond_0

    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->setHideIndicatorBar(Landroid/app/Activity;)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mShowMsgPreview:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/cover/MissedMsgActivity;->mShowMsgUri:Ljava/lang/String;

    iget-wide v2, p0, Lcom/android/mms/cover/MissedMsgActivity;->mShowMsgId:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/mms/cover/MissedMsgActivity;->setPreviewMsgInfo(Landroid/content/Context;Ljava/lang/String;J)V

    :goto_0
    iget-boolean v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mIsInvalidMessage:Z

    if-eqz v0, :cond_3

    const-string v0, "Mms/MissedMsgActivity"

    const-string v1, "Enter invalid thread. Do no enter MissedMsgActivity just Return !!!!"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean v4, Lcom/android/mms/cover/MissedMsgActivity;->mIsFinishing:Z

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_1
    return-void

    :cond_1
    sget-boolean v0, Lcom/android/mms/cover/MissedMsgActivity;->sEnablePreview:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/mms/cover/MissedMsgActivity;->initMissedMsgInfos(Landroid/content/Context;)V

    invoke-direct {p0, v1, v1, v4}, Lcom/android/mms/cover/MissedMsgActivity;->setMissedMsgInfo(IZZ)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/mms/cover/MissedMsgActivity;->checkEnterMsgMode()V

    invoke-direct {p0}, Lcom/android/mms/cover/MissedMsgActivity;->setDefaultMsgInfo()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->getCoverType(Landroid/content/Context;)I

    move-result v0

    if-eq v0, v4, :cond_4

    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->getCoverType(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_c

    :cond_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->isEmergencyMode()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Lcom/android/mms/MmsConfig;->isUltraPowerSavingMode()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_5
    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mBackgroundColorLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMissedMsgMainView:Landroid/widget/LinearLayout;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_6
    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x320

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mBlockFlickUntilMillis:J

    goto :goto_1

    :cond_7
    iget v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mCoverWallPaper:I

    if-eq v0, v4, :cond_8

    iget v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mCoverWallPaper:I

    const/16 v1, 0x9

    if-le v0, v1, :cond_b

    :cond_8
    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mCoverBgDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mCoverWallPaper:I

    if-ne v0, v4, :cond_9

    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mCoverBgDrawable:Landroid/graphics/drawable/BitmapDrawable;

    const/high16 v1, 0x4c000000

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DARKEN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_9
    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMissedMsgMainView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/mms/cover/MissedMsgActivity;->mCoverBgDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mBackgroundColorLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_a
    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mBackgroundColorLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMissedMsgMainView:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/android/mms/cover/MissedMsgActivity;->getBackgroundColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_2

    :cond_b
    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mBackgroundColorLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMissedMsgMainView:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/android/mms/cover/MissedMsgActivity;->getBackgroundColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_2

    :cond_c
    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->getCoverType(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v5, :cond_6

    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMissedMsgMainView:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090068

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_2
.end method

.method private initArrayData()V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMsgIds:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMsgIds:Ljava/util/ArrayList;

    :goto_0
    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mThreadIds:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mThreadIds:Ljava/util/ArrayList;

    :goto_1
    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMsgBodys:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMsgBodys:Ljava/util/ArrayList;

    :goto_2
    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMsgTimes:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMsgTimes:Ljava/util/ArrayList;

    :goto_3
    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMsgTypes:Ljava/util/ArrayList;

    if-nez v0, :cond_4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMsgTypes:Ljava/util/ArrayList;

    :goto_4
    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMsgSubjects:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMsgSubjects:Ljava/util/ArrayList;

    :goto_5
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMsgIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mThreadIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMsgBodys:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMsgTimes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMsgTypes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_4

    :cond_5
    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMsgSubjects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_5
.end method

.method private initMissedMsgInfos(Landroid/content/Context;)V
    .locals 18
    .param p1    # Landroid/content/Context;

    const-string v1, "Mms/MissedMsgActivity"

    const-string v3, "initMissedMsgInfos()"

    invoke-static {v1, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->isFreeMessageEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->isBlackBirdFeatureEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    sget-object v1, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "integrated-complete-conversations"

    invoke-static {v1, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/cover/MissedMsgActivity;->projection:[Ljava/lang/String;

    const-string v4, "read=0"

    const/4 v5, 0x0

    const-string v6, "normalized_date DESC"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    invoke-direct/range {p0 .. p0}, Lcom/android/mms/cover/MissedMsgActivity;->initArrayData()V

    if-nez v7, :cond_3

    const-string v1, "Mms/MissedMsgActivity"

    const-string v3, "cursor is null so just return"

    invoke-static {v1, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    sget-object v1, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "complete-conversations"

    invoke-static {v1, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_0

    :cond_3
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/cover/MissedMsgActivity;->mMsgIds:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/cover/MissedMsgActivity;->mMsgIds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/mms/cover/MissedMsgActivity;->mTotalUnreadMsgCount:I

    :cond_4
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    const/4 v7, 0x0

    goto :goto_1

    :cond_5
    const/4 v1, 0x7

    :try_start_1
    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/cover/MissedMsgActivity;->mMsgIds:Ljava/util/ArrayList;

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/cover/MissedMsgActivity;->mThreadIds:Ljava/util/ArrayList;

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x2

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/cover/MissedMsgActivity;->mMsgBodys:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/cover/MissedMsgActivity;->mMsgTypes:Ljava/util/ArrayList;

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x5

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    const/4 v1, 0x4

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    if-eqz v15, :cond_6

    if-eqz v13, :cond_6

    const/4 v1, 0x4

    const/4 v3, 0x5

    invoke-static {v7, v1, v3}, Lcom/android/mms/ui/MessageUtils;->extractEncStrFromCursor(Landroid/database/Cursor;II)Ljava/lang/String;

    move-result-object v13

    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/cover/MissedMsgActivity;->mMsgSubjects:Ljava/util/ArrayList;

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x3

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    const-string v1, "mms"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-wide/16 v3, 0x3e8

    mul-long/2addr v9, v3

    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/cover/MissedMsgActivity;->mMsgTimes:Ljava/util/ArrayList;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-nez v1, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/cover/MissedMsgActivity;->mMsgIds:Ljava/util/ArrayList;

    if-eqz v1, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/cover/MissedMsgActivity;->mMsgIds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/mms/cover/MissedMsgActivity;->mTotalUnreadMsgCount:I

    :cond_8
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    const/4 v7, 0x0

    goto/16 :goto_1

    :catchall_0
    move-exception v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/cover/MissedMsgActivity;->mMsgIds:Ljava/util/ArrayList;

    if-eqz v3, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/cover/MissedMsgActivity;->mMsgIds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/mms/cover/MissedMsgActivity;->mTotalUnreadMsgCount:I

    :cond_9
    if-eqz v7, :cond_a

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    const/4 v7, 0x0

    :cond_a
    throw v1
.end method

.method private initResourceLayout()V
    .locals 8

    const/16 v7, 0x8

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v3, "Mms/MissedMsgActivity"

    const-string v4, "initResourceLayout()"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/mms/cover/MissedMsgActivity;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/mms/ui/MessageUtils;->getCoverType(Landroid/content/Context;)I

    move-result v3

    if-eq v3, v6, :cond_0

    iget-object v3, p0, Lcom/android/mms/cover/MissedMsgActivity;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/mms/ui/MessageUtils;->getCoverType(Landroid/content/Context;)I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    :cond_0
    const v3, 0x7f0b0292

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMmsImageView:Landroid/widget/ImageView;

    const v3, 0x7f0b028f

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMakeCall:Landroid/widget/ImageButton;

    const v3, 0x7f0b028e

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/mms/cover/MissedMsgActivity;->mRecipientNumberView:Landroid/widget/TextView;

    const v3, 0x7f0b028b

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/mms/cover/MissedMsgActivity;->mCurrentTime:Landroid/widget/TextView;

    const v3, 0x7f0b0293

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMmsIndicatorView:Landroid/widget/TextView;

    sget-boolean v3, Lcom/android/mms/cover/MissedMsgActivity;->sEnablePreview:Z

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/android/mms/cover/MissedMsgActivity;->mShowMsgPreview:Z

    if-eqz v3, :cond_6

    :cond_1
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isSimCardAbsent()Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMakeCall:Landroid/widget/ImageButton;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/mms/cover/MissedMsgActivity;->mCurrentTime:Landroid/widget/TextView;

    invoke-static {p0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->formatTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDualStandBy()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDSDSTwochipOnQCOM()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {}, Lcom/android/mms/util/TelephonyUtils;->getInsertedSimNum()I

    move-result v3

    if-le v3, v6, :cond_7

    :cond_2
    const/4 v3, 0x2

    invoke-static {v3}, Lcom/android/mms/util/TelephonyUtils;->getPriorSimSlotToUse(I)I

    move-result v3

    invoke-static {v3}, Lcom/android/mms/util/TelephonyUtils;->getIMSIbySimSlot(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_9

    iget-object v3, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMakeCall:Landroid/widget/ImageButton;

    new-instance v4, Lcom/android/mms/cover/MissedMsgActivity$3;

    invoke-direct {v4, p0}, Lcom/android/mms/cover/MissedMsgActivity$3;-><init>(Lcom/android/mms/cover/MissedMsgActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    :goto_2
    const v3, 0x7f0b0283

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/mms/cover/MissedMsgActivity;->mBackgroundColorLayout:Landroid/widget/LinearLayout;

    const v3, 0x7f0b0281

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/mms/cover/MissedMsgActivity;->mDateView:Landroid/widget/TextView;

    const v3, 0x7f0b027e

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/mms/cover/MissedMsgActivity;->mRecipientView:Landroid/widget/TextView;

    const v3, 0x7f0b0280

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMessageBodyView:Landroid/widget/TextView;

    const v3, 0x7f0b0288

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/android/mms/cover/MissedMsgActivity;->mExitButton:Landroid/widget/ImageButton;

    const v3, 0x7f0b0287

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMsgCountView:Landroid/widget/TextView;

    const v3, 0x7f0b0282

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMissedMsgMainView:Landroid/widget/LinearLayout;

    const v3, 0x7f0b0285

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/mms/cover/MissedMsgActivity;->mAnimLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/mms/cover/MissedMsgActivity;->mExitButton:Landroid/widget/ImageButton;

    if-eqz v3, :cond_5

    invoke-static {}, Lcom/android/mms/MmsConfig;->isSupportHoveringUI()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/mms/cover/MissedMsgActivity;->mExitButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v5}, Landroid/view/View;->setHoverPopupType(I)V

    iget-object v3, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMakeCall:Landroid/widget/ImageButton;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMakeCall:Landroid/widget/ImageButton;

    invoke-virtual {v3, v5}, Landroid/view/View;->setHoverPopupType(I)V

    :cond_4
    iget-object v3, p0, Lcom/android/mms/cover/MissedMsgActivity;->mExitButton:Landroid/widget/ImageButton;

    new-instance v4, Lcom/android/mms/cover/MissedMsgActivity$4;

    invoke-direct {v4, p0}, Lcom/android/mms/cover/MissedMsgActivity$4;-><init>(Lcom/android/mms/cover/MissedMsgActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    return-void

    :cond_6
    iget-object v3, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMakeCall:Landroid/widget/ImageButton;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_7
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getImsi()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_8
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getImsi()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_9
    const-string v3, "Mms/MissedMsgActivity"

    const-string v4, "Doesn\'t regist make a call button listener"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMakeCall:Landroid/widget/ImageButton;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2
.end method

.method private markAsRead(Ljava/lang/Runnable;IZ)V
    .locals 15
    .param p1    # Ljava/lang/Runnable;
    .param p2    # I
    .param p3    # Z

    const/4 v13, 0x0

    if-ltz p2, :cond_0

    iget-object v1, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMsgIds:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMsgIds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move/from16 v0, p2

    if-gt v1, v0, :cond_1

    :cond_0
    const-string v1, "Mms/MissedMsgActivity"

    const-string v2, "There is no unread message or enter invalid index"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMsgIds:Ljava/util/ArrayList;

    move/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    const-wide/16 v1, 0x0

    cmp-long v1, v9, v1

    if-gtz v1, :cond_2

    const-string v1, "Mms/MissedMsgActivity"

    const-string v2, "Invalid msgId"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v2, "sms"

    iget-object v1, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMsgTypes:Ljava/util/ArrayList;

    move/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v2, "cmas"

    iget-object v1, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMsgTypes:Ljava/util/ArrayList;

    move/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_3
    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/cover/MissedMsgActivity;->msgUri:Landroid/net/Uri;

    const/4 v13, 0x0

    :cond_4
    :goto_1
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "read"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v14, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-eqz p3, :cond_5

    const-string v1, "seen"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v14, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_5
    const/4 v1, 0x3

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v4, v1

    const/4 v1, 0x1

    const-string v2, "read"

    aput-object v2, v4, v1

    const/4 v1, 0x2

    const-string v2, "seen"

    aput-object v2, v4, v1

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/cover/MissedMsgActivity;->msgUri:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    if-eqz v12, :cond_8

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    :try_start_0
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_7

    const/4 v1, 0x0

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    cmp-long v1, v1, v9

    if-nez v1, :cond_7

    const/4 v1, 0x1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_6

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/mms/cover/MissedMsgActivity;->update_read:Z

    :cond_6
    const/4 v1, 0x2

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_7

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/mms/cover/MissedMsgActivity;->update_seen:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_7
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_8
    if-eqz v13, :cond_10

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsReadReportPdu()Z

    move-result v1

    if-eqz v1, :cond_d

    if-eqz p3, :cond_b

    iget-object v1, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMsgIds:Ljava/util/ArrayList;

    move/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const/16 v8, 0x80

    new-instance v9, Lcom/android/mms/cover/MissedMsgActivity$10;

    move-object/from16 v0, p1

    invoke-direct {v9, p0, v14, v0}, Lcom/android/mms/cover/MissedMsgActivity$10;-><init>(Lcom/android/mms/cover/MissedMsgActivity;Landroid/content/ContentValues;Ljava/lang/Runnable;)V

    iget-object v10, p0, Lcom/android/mms/cover/MissedMsgActivity;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    move-object v5, p0

    invoke-static/range {v5 .. v10}, Lcom/android/mms/ui/MessageUtils;->handleReadReportOne(Landroid/content/Context;JILjava/lang/Runnable;Lcom/samsung/android/sdk/cover/ScoverManager;)V

    goto/16 :goto_0

    :cond_9
    const-string v2, "wpm"

    iget-object v1, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMsgTypes:Ljava/util/ArrayList;

    move/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://mms-sms/wap-push-messages/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/cover/MissedMsgActivity;->msgUri:Landroid/net/Uri;

    const/4 v13, 0x0

    goto/16 :goto_1

    :cond_a
    const-string v2, "mms"

    iget-object v1, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMsgTypes:Ljava/util/ArrayList;

    move/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/cover/MissedMsgActivity;->msgUri:Landroid/net/Uri;

    const/4 v13, 0x1

    goto/16 :goto_1

    :catchall_0
    move-exception v1

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_b
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/cover/MissedMsgActivity;->msgUri:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v14, v3, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/mms/cover/MissedMsgActivity;->update_read:Z

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/mms/cover/MissedMsgActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/mms/transaction/MessagingNotification;->nonBlockingUpdateNotificationAsRead(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/mms/cover/MissedMsgActivity;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    long-to-int v3, v9

    invoke-static {v1, v2, v3}, Lcom/android/mms/accessory/WatchRelay;->sendReadMsgIntent(Landroid/content/Context;II)V

    :cond_c
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/mms/cover/MissedMsgActivity;->update_read:Z

    invoke-interface/range {p1 .. p1}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_0

    :cond_d
    if-eqz p3, :cond_e

    iget-object v1, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMsgIds:Ljava/util/ArrayList;

    move/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const/16 v8, 0x80

    new-instance v9, Lcom/android/mms/cover/MissedMsgActivity$11;

    move-object/from16 v0, p1

    invoke-direct {v9, p0, v14, v0}, Lcom/android/mms/cover/MissedMsgActivity$11;-><init>(Lcom/android/mms/cover/MissedMsgActivity;Landroid/content/ContentValues;Ljava/lang/Runnable;)V

    iget-object v10, p0, Lcom/android/mms/cover/MissedMsgActivity;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    move-object v5, p0

    invoke-static/range {v5 .. v10}, Lcom/android/mms/ui/MessageUtils;->handleReadReportDataOne(Landroid/content/Context;JILjava/lang/Runnable;Lcom/samsung/android/sdk/cover/ScoverManager;)V

    goto/16 :goto_0

    :cond_e
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/cover/MissedMsgActivity;->msgUri:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v14, v3, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/mms/cover/MissedMsgActivity;->update_read:Z

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/android/mms/cover/MissedMsgActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/mms/transaction/MessagingNotification;->nonBlockingUpdateNotificationAsRead(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/mms/cover/MissedMsgActivity;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    long-to-int v3, v9

    invoke-static {v1, v2, v3}, Lcom/android/mms/accessory/WatchRelay;->sendReadMsgIntent(Landroid/content/Context;II)V

    :cond_f
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/mms/cover/MissedMsgActivity;->update_read:Z

    invoke-interface/range {p1 .. p1}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_0

    :cond_10
    if-eqz p3, :cond_12

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getKTSMSDeliveryReadReportsEnable()Z

    move-result v1

    if-eqz v1, :cond_11

    const/4 v1, 0x0

    new-instance v2, Lcom/android/mms/cover/MissedMsgActivity$12;

    move-object/from16 v0, p1

    invoke-direct {v2, p0, v14, v0}, Lcom/android/mms/cover/MissedMsgActivity$12;-><init>(Lcom/android/mms/cover/MissedMsgActivity;Landroid/content/ContentValues;Ljava/lang/Runnable;)V

    invoke-static {p0, v9, v10, v1, v2}, Lcom/android/mms/ui/MessageUtils;->handleReadReportOneForSmsWithoutConfirmDlg(Landroid/content/Context;JILjava/lang/Runnable;)V

    goto/16 :goto_0

    :cond_11
    new-instance v1, Lcom/android/mms/cover/MissedMsgActivity$13;

    move-object/from16 v0, p1

    invoke-direct {v1, p0, v14, v0}, Lcom/android/mms/cover/MissedMsgActivity$13;-><init>(Lcom/android/mms/cover/MissedMsgActivity;Landroid/content/ContentValues;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :cond_12
    new-instance v5, Lcom/android/mms/cover/MissedMsgActivity$14;

    move-object v6, p0

    move-object v7, v14

    move/from16 v8, p2

    move-object/from16 v11, p1

    invoke-direct/range {v5 .. v11}, Lcom/android/mms/cover/MissedMsgActivity$14;-><init>(Lcom/android/mms/cover/MissedMsgActivity;Landroid/content/ContentValues;IJLjava/lang/Runnable;)V

    invoke-virtual {p0, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method

.method private moveToNextMessage(ZI)V
    .locals 3
    .param p1    # Z
    .param p2    # I

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    add-int/lit8 v0, p2, 0x1

    iget v1, p0, Lcom/android/mms/cover/MissedMsgActivity;->mTotalUnreadMsgCount:I

    if-ge v0, v1, :cond_0

    new-instance v0, Lcom/android/mms/cover/MissedMsgActivity$7;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/mms/cover/MissedMsgActivity$7;-><init>(Lcom/android/mms/cover/MissedMsgActivity;IZ)V

    invoke-direct {p0, v0, p2, v2}, Lcom/android/mms/cover/MissedMsgActivity;->markAsRead(Ljava/lang/Runnable;IZ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    add-int/lit8 v0, p2, -0x1

    if-ltz v0, :cond_0

    new-instance v0, Lcom/android/mms/cover/MissedMsgActivity$8;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/mms/cover/MissedMsgActivity$8;-><init>(Lcom/android/mms/cover/MissedMsgActivity;IZ)V

    invoke-direct {p0, v0, p2, v2}, Lcom/android/mms/cover/MissedMsgActivity;->markAsRead(Ljava/lang/Runnable;IZ)V

    goto :goto_0
.end method

.method private parsingPdu(Landroid/content/Context;JI)V
    .locals 14
    .param p1    # Landroid/content/Context;
    .param p2    # J
    .param p4    # I

    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/mms/cover/MissedMsgActivity;->mAttachmentBitmap:Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    :try_start_0
    move-wide/from16 v0, p2

    invoke-direct {p0, v0, v1}, Lcom/android/mms/cover/MissedMsgActivity;->getMmsUri(J)Landroid/net/Uri;

    move-result-object v6

    invoke-static {p1}, Lcom/android/mms/cover/MissedMsgActivity;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v10

    invoke-virtual {v10, v6}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v7

    if-eqz v7, :cond_d

    instance-of v10, v7, Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    if-eqz v10, :cond_d

    check-cast v7, Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    invoke-virtual {v7}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {p1, v10, v11}, Lcom/android/mms/model/SlideshowModel;->createFromPduBody(Landroid/content/Context;Lcom/google/android/mms/pdu/PduBody;Z)Lcom/android/mms/model/SlideshowModel;

    move-result-object v8

    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-static {v4}, Lcom/android/mms/cover/MissedMsgActivity;->getImage(Lcom/android/mms/model/SlideModel;)Landroid/graphics/Bitmap;

    move-result-object v10

    iput-object v10, p0, Lcom/android/mms/cover/MissedMsgActivity;->mAttachmentBitmap:Landroid/graphics/Bitmap;

    iget-object v10, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMsgSubjects:Ljava/util/ArrayList;

    move/from16 v0, p4

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "<"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v10, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMsgSubjects:Ljava/util/ArrayList;

    move/from16 v0, p4

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ">"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_0
    if-eqz v5, :cond_5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v4}, Lcom/android/mms/cover/MissedMsgActivity;->getText(Lcom/android/mms/model/SlideModel;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_0
    invoke-direct {p0, v8}, Lcom/android/mms/cover/MissedMsgActivity;->getSlideAttachCount(Lcom/android/mms/model/SlideshowModel;)I

    move-result v2

    const-string v9, ""

    iget-object v10, p0, Lcom/android/mms/cover/MissedMsgActivity;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/mms/ui/MessageUtils;->getCoverType(Landroid/content/Context;)I

    move-result v10

    const/4 v11, 0x1

    if-eq v10, v11, :cond_1

    iget-object v10, p0, Lcom/android/mms/cover/MissedMsgActivity;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/mms/ui/MessageUtils;->getCoverType(Landroid/content/Context;)I

    move-result v10

    const/4 v11, 0x3

    if-ne v10, v11, :cond_b

    :cond_1
    iget-object v10, p0, Lcom/android/mms/cover/MissedMsgActivity;->mAttachmentBitmap:Landroid/graphics/Bitmap;

    if-nez v10, :cond_8

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_6

    if-nez v2, :cond_6

    const v10, 0x7f0c0421

    invoke-virtual {p0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    :cond_2
    :goto_1
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_a

    move-object v5, v9

    :cond_3
    :goto_2
    iget-object v10, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMessageBodyView:Landroid/widget/TextView;

    invoke-virtual {v10, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_3
    return-void

    :cond_5
    invoke-static {v4}, Lcom/android/mms/cover/MissedMsgActivity;->getText(Lcom/android/mms/model/SlideModel;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_6
    const/4 v10, 0x1

    if-ne v2, v10, :cond_7

    const v10, 0x7f0c041f

    invoke-virtual {p0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    :cond_7
    const/4 v10, 0x1

    if-le v2, v10, :cond_2

    const v10, 0x7f0c019f

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {p0, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    :cond_8
    add-int/lit8 v10, v2, -0x1

    const/4 v11, 0x1

    if-ne v10, v11, :cond_9

    const v10, 0x7f0c041d

    invoke-virtual {p0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    :cond_9
    add-int/lit8 v10, v2, -0x1

    const/4 v11, 0x1

    if-le v10, v11, :cond_2

    const v10, 0x7f0c041e

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    add-int/lit8 v13, v2, -0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {p0, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    :cond_a
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_b
    iget-object v10, p0, Lcom/android/mms/cover/MissedMsgActivity;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/mms/ui/MessageUtils;->getCoverType(Landroid/content/Context;)I

    move-result v10

    const/4 v11, 0x6

    if-ne v10, v11, :cond_3

    const/4 v10, 0x1

    if-ne v2, v10, :cond_c

    const v10, 0x7f0c041f

    invoke-virtual {p0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_2

    :cond_c
    const/4 v10, 0x1

    if-le v2, v10, :cond_3

    goto/16 :goto_2

    :cond_d
    if-eqz v7, :cond_4

    instance-of v10, v7, Lcom/google/android/mms/pdu/NotificationInd;

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMsgSubjects:Ljava/util/ArrayList;

    move/from16 v0, p4

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_e

    iget-object v11, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMessageBodyView:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMsgSubjects:Ljava/util/ArrayList;

    move/from16 v0, p4

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/CharSequence;

    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception v3

    const-string v10, "Mms/MissedMsgActivity"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "MmsException parsingPdu e = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_e
    :try_start_1
    iget-object v10, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMessageBodyView:Landroid/widget/TextView;

    const v11, 0x7f0c000c

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3
.end method

.method private sendExitBroadCastToScover()V
    .locals 3

    const-string v1, "Mms/MissedMsgActivity"

    const-string v2, "sendExitBroadCastToScover"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.sviewcover.request"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "CoverUnlock"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private setDefaultMsgInfo()V
    .locals 6

    const/16 v4, 0x8

    const/4 v3, 0x1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lcom/android/mms/cover/MissedMsgActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->getCoverType(Landroid/content/Context;)I

    move-result v1

    if-eq v1, v3, :cond_0

    iget-object v1, p0, Lcom/android/mms/cover/MissedMsgActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->getCoverType(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    :cond_0
    iget-object v1, p0, Lcom/android/mms/cover/MissedMsgActivity;->mRecipientView:Landroid/widget/TextView;

    const/high16 v2, 0x7f0c0000

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMsgCountView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/cover/MissedMsgActivity;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/mms/transaction/MessagingNotification;->getNewMessageCount(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMmsImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMmsIndicatorView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/mms/cover/MissedMsgActivity;->conversation:Lcom/android/mms/data/Conversation;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/cover/MissedMsgActivity;->mDateView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/mms/cover/MissedMsgActivity;->conversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getDate()J

    move-result-wide v2

    invoke-static {p0, v2, v3}, Lcom/android/mms/ui/MessageUtils;->formatDateTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v1, p0, Lcom/android/mms/cover/MissedMsgActivity;->mRecipientNumberView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_0
    const v1, 0x7f0c006d

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const v2, 0x7f0c0421

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMessageBodyView:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_3
    iget-object v1, p0, Lcom/android/mms/cover/MissedMsgActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->getCoverType(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMsgCountView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/mms/cover/MissedMsgActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/mms/transaction/MessagingNotification;->getNewMessageCount(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v3, :cond_4

    iget-object v1, p0, Lcom/android/mms/cover/MissedMsgActivity;->mRecipientView:Landroid/widget/TextView;

    const v2, 0x7f0c0363

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/mms/cover/MissedMsgActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/mms/transaction/MessagingNotification;->getNewMessageCount(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/android/mms/cover/MissedMsgActivity;->mRecipientView:Landroid/widget/TextView;

    const v2, 0x7f0c0360

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/mms/cover/MissedMsgActivity;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/mms/transaction/MessagingNotification;->getNewMessageCount(Landroid/content/Context;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setMissedMsgInfo(IZZ)V
    .locals 9
    .param p1    # I
    .param p2    # Z
    .param p3    # Z

    const-string v4, "Mms/MissedMsgActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setMissedMsgInfo() index = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/mms/cover/MissedMsgActivity;->mCmasType:Ljava/lang/String;

    if-ltz p1, :cond_0

    iget-object v4, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMsgIds:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMsgIds:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gt v4, p1, :cond_1

    :cond_0
    const-string v4, "Mms/MissedMsgActivity"

    const-string v5, "There is no unread message"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/mms/cover/MissedMsgActivity;->mIsInvalidMessage:Z

    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_2

    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v4, 0x1

    invoke-direct {v0, v4}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    if-eqz p3, :cond_10

    const-wide/16 v4, 0xc8

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000

    const/4 v8, 0x0

    invoke-static {v4, v5, v6, v7, v8}, Lcom/android/mms/animation/MsgObjectAnimation;->createSlideXByPercent(JLandroid/view/animation/Interpolator;FF)Landroid/view/animation/TranslateAnimation;

    move-result-object v3

    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v4, p0, Lcom/android/mms/cover/MissedMsgActivity;->mAnimLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_2
    iput p1, p0, Lcom/android/mms/cover/MissedMsgActivity;->mCurrentIdx:I

    iget-object v4, p0, Lcom/android/mms/cover/MissedMsgActivity;->mThreadIds:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/mms/cover/MissedMsgActivity;->mThreadId:J

    iget-wide v4, p0, Lcom/android/mms/cover/MissedMsgActivity;->mThreadId:J

    const/4 v6, 0x0

    invoke-static {p0, v4, v5, v6}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/cover/MissedMsgActivity;->conversation:Lcom/android/mms/data/Conversation;

    iget-object v4, p0, Lcom/android/mms/cover/MissedMsgActivity;->conversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v4}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/mms/cover/MissedMsgActivity;->getContactHeaderString(Lcom/android/mms/data/ContactList;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/cover/MissedMsgActivity;->mRecipients:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMakeCall:Landroid/widget/ImageButton;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/mms/cover/MissedMsgActivity;->mRecipients:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/mms/cover/MissedMsgActivity;->mRecipients:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/mms/cover/MissedMsgActivity;->mContext:Landroid/content/Context;

    const v6, 0x7f0c013b

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/mms/cover/MissedMsgActivity;->conversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v4}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/mms/cover/MissedMsgActivity;->getCallableRecipient(Lcom/android/mms/data/ContactList;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isSimCardAbsent()Z

    move-result v4

    if-eqz v4, :cond_11

    :cond_3
    iget-object v4, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMakeCall:Landroid/widget/ImageButton;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_4
    :goto_2
    iget-object v4, p0, Lcom/android/mms/cover/MissedMsgActivity;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/mms/ui/MessageUtils;->getCoverType(Landroid/content/Context;)I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_5

    iget-object v4, p0, Lcom/android/mms/cover/MissedMsgActivity;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/mms/ui/MessageUtils;->getCoverType(Landroid/content/Context;)I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_7

    :cond_5
    iget-object v4, p0, Lcom/android/mms/cover/MissedMsgActivity;->conversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v4}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/data/Contact;

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x7f0c0000

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/cover/MissedMsgActivity;->mRecipients:Ljava/lang/String;

    :cond_6
    iget-object v4, p0, Lcom/android/mms/cover/MissedMsgActivity;->conversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v4}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/mms/cover/MissedMsgActivity;->getContactNumberString(Lcom/android/mms/data/ContactList;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/cover/MissedMsgActivity;->mRecipientNumbers:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/mms/cover/MissedMsgActivity;->mRecipientNumberView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/mms/cover/MissedMsgActivity;->mRecipientNumbers:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/mms/cover/MissedMsgActivity;->mRecipientNumberView:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    iget-object v4, p0, Lcom/android/mms/cover/MissedMsgActivity;->mRecipientView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/mms/cover/MissedMsgActivity;->mRecipients:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/mms/cover/MissedMsgActivity;->mCmasType:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    iget-object v4, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMsgTypes:Ljava/util/ArrayList;

    const-string v5, "cmas"

    invoke-virtual {v4, p1, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_8
    iget v4, p0, Lcom/android/mms/cover/MissedMsgActivity;->mTotalUnreadMsgCount:I

    if-lez v4, :cond_a

    const-string v5, "mms"

    iget-object v4, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMsgTypes:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13

    iget-object v5, p0, Lcom/android/mms/cover/MissedMsgActivity;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMsgIds:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-direct {p0, v5, v6, v7, p1}, Lcom/android/mms/cover/MissedMsgActivity;->parsingPdu(Landroid/content/Context;JI)V

    iget-object v4, p0, Lcom/android/mms/cover/MissedMsgActivity;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/mms/ui/MessageUtils;->getCoverType(Landroid/content/Context;)I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_9

    iget-object v4, p0, Lcom/android/mms/cover/MissedMsgActivity;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/mms/ui/MessageUtils;->getCoverType(Landroid/content/Context;)I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_a

    :cond_9
    iget-object v4, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMmsIndicatorView:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/mms/cover/MissedMsgActivity;->mAttachmentBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_12

    iget-object v4, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMmsImageView:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMmsImageView:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/mms/cover/MissedMsgActivity;->mAttachmentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_a
    :goto_3
    iget v4, p0, Lcom/android/mms/cover/MissedMsgActivity;->mTotalUnreadMsgCount:I

    const/4 v5, 0x1

    if-le v4, v5, :cond_18

    add-int/lit8 v2, p1, 0x1

    iget-object v4, p0, Lcom/android/mms/cover/MissedMsgActivity;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/mms/ui/MessageUtils;->getCoverType(Landroid/content/Context;)I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_b

    iget-object v4, p0, Lcom/android/mms/cover/MissedMsgActivity;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/mms/ui/MessageUtils;->getCoverType(Landroid/content/Context;)I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_17

    :cond_b
    iget-object v4, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMsgCountView:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/mms/cover/MissedMsgActivity;->mTotalUnreadMsgCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_c
    :goto_4
    iget-object v4, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMsgCountView:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_d
    :goto_5
    iget-object v4, p0, Lcom/android/mms/cover/MissedMsgActivity;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/mms/ui/MessageUtils;->getCoverType(Landroid/content/Context;)I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_e

    iget-object v4, p0, Lcom/android/mms/cover/MissedMsgActivity;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/mms/ui/MessageUtils;->getCoverType(Landroid/content/Context;)I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1b

    :cond_e
    iget-object v5, p0, Lcom/android/mms/cover/MissedMsgActivity;->mDateView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMsgTimes:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {p0, v6, v7}, Lcom/android/mms/ui/MessageUtils;->formatDateTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_f
    :goto_6
    if-nez p1, :cond_1c

    iget-object v4, p0, Lcom/android/mms/cover/MissedMsgActivity;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/mms/cover/MissedMsgActivity$5;

    invoke-direct {v5, p0}, Lcom/android/mms/cover/MissedMsgActivity$5;-><init>(Lcom/android/mms/cover/MissedMsgActivity;)V

    const-wide/16 v6, 0x258

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_10
    const-wide/16 v4, 0xc8

    const/4 v6, 0x0

    const/high16 v7, -0x40800000

    const/4 v8, 0x0

    invoke-static {v4, v5, v6, v7, v8}, Lcom/android/mms/animation/MsgObjectAnimation;->createSlideXByPercent(JLandroid/view/animation/Interpolator;FF)Landroid/view/animation/TranslateAnimation;

    move-result-object v3

    goto/16 :goto_1

    :cond_11
    iget-object v4, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMakeCall:Landroid/widget/ImageButton;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    :cond_12
    iget-object v4, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMmsImageView:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_3

    :cond_13
    iget-object v4, p0, Lcom/android/mms/cover/MissedMsgActivity;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/mms/ui/MessageUtils;->getCoverType(Landroid/content/Context;)I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_14

    iget-object v4, p0, Lcom/android/mms/cover/MissedMsgActivity;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/mms/ui/MessageUtils;->getCoverType(Landroid/content/Context;)I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_15

    :cond_14
    iget-object v4, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMmsImageView:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMmsIndicatorView:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_15
    iget-object v4, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMsgBodys:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_16

    iget-object v5, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMessageBodyView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMsgBodys:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_16
    iget-object v4, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMessageBodyView:Landroid/widget/TextView;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_17
    iget-object v4, p0, Lcom/android/mms/cover/MissedMsgActivity;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/mms/ui/MessageUtils;->getCoverType(Landroid/content/Context;)I

    move-result v4

    const/4 v5, 0x6

    if-ne v4, v5, :cond_c

    iget-object v4, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMsgCountView:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/mms/cover/MissedMsgActivity;->mTotalUnreadMsgCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    :cond_18
    iget-object v4, p0, Lcom/android/mms/cover/MissedMsgActivity;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/mms/ui/MessageUtils;->getCoverType(Landroid/content/Context;)I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_19

    iget-object v4, p0, Lcom/android/mms/cover/MissedMsgActivity;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/mms/ui/MessageUtils;->getCoverType(Landroid/content/Context;)I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1a

    :cond_19
    iget-object v4, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMsgCountView:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5

    :cond_1a
    iget-object v4, p0, Lcom/android/mms/cover/MissedMsgActivity;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/mms/ui/MessageUtils;->getCoverType(Landroid/content/Context;)I

    move-result v4

    const/4 v5, 0x6

    if-ne v4, v5, :cond_d

    iget-object v4, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMsgCountView:Landroid/widget/TextView;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5

    :cond_1b
    iget-object v4, p0, Lcom/android/mms/cover/MissedMsgActivity;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/mms/ui/MessageUtils;->getCoverType(Landroid/content/Context;)I

    move-result v4

    const/4 v5, 0x6

    if-ne v4, v5, :cond_f

    iget-object v5, p0, Lcom/android/mms/cover/MissedMsgActivity;->mDateView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMsgTimes:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {p0, v6, v7}, Lcom/android/mms/ui/MessageUtils;->formatTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    :cond_1c
    new-instance v4, Lcom/android/mms/cover/MissedMsgActivity$6;

    invoke-direct {v4, p0}, Lcom/android/mms/cover/MissedMsgActivity$6;-><init>(Lcom/android/mms/cover/MissedMsgActivity;)V

    iget v5, p0, Lcom/android/mms/cover/MissedMsgActivity;->mCurrentIdx:I

    const/4 v6, 0x0

    invoke-direct {p0, v4, v5, v6}, Lcom/android/mms/cover/MissedMsgActivity;->markAsRead(Ljava/lang/Runnable;IZ)V

    goto/16 :goto_0
.end method

.method private setMsgDataToPreview(I)V
    .locals 8
    .param p1    # I

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/16 v5, 0x8

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->conversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/cover/MissedMsgActivity;->getContactHeaderString(Lcom/android/mms/data/ContactList;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mRecipients:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mRecipientView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/mms/cover/MissedMsgActivity;->mRecipients:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->getCoverType(Landroid/content/Context;)I

    move-result v0

    if-eq v0, v6, :cond_0

    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->getCoverType(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v7, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->conversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/cover/MissedMsgActivity;->getContactNumberString(Lcom/android/mms/data/ContactList;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mRecipientNumbers:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mRecipientNumberView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/mms/cover/MissedMsgActivity;->mRecipientNumbers:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mRecipientNumberView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    if-nez p1, :cond_5

    iget-object v1, p0, Lcom/android/mms/cover/MissedMsgActivity;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMsgIds:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/mms/cover/MissedMsgActivity;->parsingPdu(Landroid/content/Context;JI)V

    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->getCoverType(Landroid/content/Context;)I

    move-result v0

    if-eq v0, v6, :cond_2

    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->getCoverType(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v7, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMmsIndicatorView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mAttachmentBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMmsImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMmsImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/mms/cover/MissedMsgActivity;->mAttachmentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMsgCountView:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/mms/cover/MissedMsgActivity;->mDateView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMsgTimes:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {p0, v2, v3}, Lcom/android/mms/ui/MessageUtils;->formatDateTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/android/mms/cover/MissedMsgActivity$15;

    invoke-direct {v0, p0}, Lcom/android/mms/cover/MissedMsgActivity$15;-><init>(Lcom/android/mms/cover/MissedMsgActivity;)V

    iget v1, p0, Lcom/android/mms/cover/MissedMsgActivity;->mCurrentIdx:I

    invoke-direct {p0, v0, v1, v4}, Lcom/android/mms/cover/MissedMsgActivity;->markAsRead(Ljava/lang/Runnable;IZ)V

    return-void

    :cond_4
    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMmsImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->getCoverType(Landroid/content/Context;)I

    move-result v0

    if-eq v0, v6, :cond_6

    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->getCoverType(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v7, :cond_7

    :cond_6
    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMmsImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMmsIndicatorView:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMsgBodys:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v1, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMessageBodyView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMsgBodys:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMessageBodyView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setPreviewMsgInfo(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 17
    .param p1    # Landroid/content/Context;
    .param p2    # Ljava/lang/String;
    .param p3    # J

    invoke-direct/range {p0 .. p0}, Lcom/android/mms/cover/MissedMsgActivity;->initArrayData()V

    const/4 v13, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/mms/cover/MissedMsgActivity;->mCurrentIdx:I

    const/4 v10, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v10, v2, :cond_0

    sget-object v2, Lcom/android/mms/accessory/WatchRelay;->URI:[Ljava/lang/String;

    aget-object v2, v2, v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v13, v10

    const-string v2, "Mms/MissedMsgActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "msgType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v8, 0x0

    const/4 v2, 0x3

    if-ne v2, v13, :cond_1

    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p3

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v2, "Mms/MissedMsgActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "messageUri = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v3, :cond_4

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/mms/cover/MissedMsgActivity;->mIsInvalidMessage:Z

    :cond_2
    :goto_1
    return-void

    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-nez v8, :cond_5

    const/4 v2, 0x1

    :try_start_0
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/mms/cover/MissedMsgActivity;->mIsInvalidMessage:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :cond_5
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_6

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/mms/cover/MissedMsgActivity;->mIsInvalidMessage:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :cond_6
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/cover/MissedMsgActivity;->mMsgIds:Ljava/util/ArrayList;

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v13, :cond_8

    :try_start_3
    const-string v2, "date"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    const-wide/16 v4, 0x3e8

    mul-long/2addr v11, v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/cover/MissedMsgActivity;->mMsgTimes:Ljava/util/ArrayList;

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "sub_cs"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    const-string v2, "sub"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    if-eqz v14, :cond_7

    if-eqz v15, :cond_7

    new-instance v16, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-static {v15}, Lcom/google/android/mms/pdu/PduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    move-object/from16 v0, v16

    invoke-direct {v0, v14, v2}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v15

    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/cover/MissedMsgActivity;->mMsgSubjects:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/cover/MissedMsgActivity;->mMsgTypes:Ljava/util/ArrayList;

    sget-object v4, Lcom/android/mms/cover/MissedMsgActivity;->TYPES:[Ljava/lang/String;

    aget-object v4, v4, v13

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/mms/cover/MissedMsgActivity;->setMsgDataToPreview(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    :cond_8
    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/cover/MissedMsgActivity;->mMsgTimes:Ljava/util/ArrayList;

    const-string v4, "date"

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/cover/MissedMsgActivity;->mMsgBodys:Ljava/util/ArrayList;

    const-string v4, "body"

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v9

    :try_start_6
    const-string v2, "Mms/MissedMsgActivity"

    invoke-virtual {v9}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/mms/cover/MissedMsgActivity;->mIsInvalidMessage:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    :catchall_0
    move-exception v2

    if-eqz v8, :cond_9

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v2
.end method

.method private setWinodowAttribute()V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x80000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v2, 0x100000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const-wide/16 v1, 0x1770

    iput-wide v1, v0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/view/WindowManager$LayoutParams;->screenDimDuration:J

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const-string v1, "statusbar"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/StatusBarManager;

    iput-object v1, p0, Lcom/android/mms/cover/MissedMsgActivity;->mStatusBarManager:Landroid/app/StatusBarManager;

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1    # Landroid/view/MotionEvent;

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->startX:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->startY:I

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->endX:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->endY:I

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    iget v1, p0, Lcom/android/mms/cover/MissedMsgActivity;->startX:I

    iget v2, p0, Lcom/android/mms/cover/MissedMsgActivity;->endX:I

    iget v3, p0, Lcom/android/mms/cover/MissedMsgActivity;->startY:I

    iget v4, p0, Lcom/android/mms/cover/MissedMsgActivity;->endY:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/cover/MissedMsgActivity;->handleFlick(IIIIJ)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v2, "Mms/MissedMsgActivity"

    const-string v3, "onCreate()"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/mms/cover/MissedMsgActivity;->mIsFinishing:Z

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/cover/MissedMsgActivity;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/mms/cover/MissedMsgActivity;->setWinodowAttribute()V

    iget-object v2, p0, Lcom/android/mms/cover/MissedMsgActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->getCoverType(Landroid/content/Context;)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/mms/cover/MissedMsgActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->getCoverType(Landroid/content/Context;)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    :cond_0
    const v2, 0x7f040074

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setContentView(I)V

    :cond_1
    :goto_0
    new-instance v2, Lcom/samsung/android/sdk/cover/Scover;

    invoke-direct {v2}, Lcom/samsung/android/sdk/cover/Scover;-><init>()V

    iput-object v2, p0, Lcom/android/mms/cover/MissedMsgActivity;->mScover:Lcom/samsung/android/sdk/cover/Scover;

    :try_start_0
    iget-object v2, p0, Lcom/android/mms/cover/MissedMsgActivity;->mScover:Lcom/samsung/android/sdk/cover/Scover;

    invoke-virtual {v2, p0}, Lcom/samsung/android/sdk/cover/Scover;->initialize(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/samsung/android/sdk/SsdkUnsupportedException; {:try_start_0 .. :try_end_0} :catch_1

    new-instance v2, Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-direct {v2, p0}, Lcom/samsung/android/sdk/cover/ScoverManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/mms/cover/MissedMsgActivity;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    new-instance v2, Lcom/android/mms/cover/MissedMsgActivity$1;

    invoke-direct {v2, p0}, Lcom/android/mms/cover/MissedMsgActivity$1;-><init>(Lcom/android/mms/cover/MissedMsgActivity;)V

    iput-object v2, p0, Lcom/android/mms/cover/MissedMsgActivity;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    invoke-direct {p0}, Lcom/android/mms/cover/MissedMsgActivity;->createBackgroundDrawable()V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/mms/cover/MissedMsgActivity;->handleIntent(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/mms/cover/MissedMsgActivity;->registerReceiver()V

    invoke-direct {p0}, Lcom/android/mms/cover/MissedMsgActivity;->initResourceLayout()V

    invoke-direct {p0}, Lcom/android/mms/cover/MissedMsgActivity;->initActivity()V

    :goto_1
    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/mms/cover/MissedMsgActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->getCoverType(Landroid/content/Context;)I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_1

    const v2, 0x7f040073

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setContentView(I)V

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Mms/MissedMsgActivity"

    const-string v3, "IllegalArgumentException occur!!! just return!!!!"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v2, "Mms/MissedMsgActivity"

    const-string v3, "S cover does not support this device!!! just return!!!!"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 5

    :try_start_0
    const-string v2, "Mms/MissedMsgActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDestroy mIsFinishing="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/mms/cover/MissedMsgActivity;->mIsFinishing:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/mms/cover/MissedMsgActivity;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    iget-object v3, p0, Lcom/android/mms/cover/MissedMsgActivity;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/cover/ScoverManager;->unregisterListener(Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;)V

    iget-object v2, p0, Lcom/android/mms/cover/MissedMsgActivity;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/cover/MissedMsgActivity;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/StatusBarManager;->disable(I)V

    :cond_0
    iget-object v2, p0, Lcom/android/mms/cover/MissedMsgActivity;->screenOffReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/cover/MissedMsgActivity;->screenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    iget-object v2, p0, Lcom/android/mms/cover/MissedMsgActivity;->mCoverBgDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/mms/cover/MissedMsgActivity;->mCoverBgDrawable:Landroid/graphics/drawable/BitmapDrawable;

    instance-of v2, v2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/mms/cover/MissedMsgActivity;->mCoverBgDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/mms/cover/MissedMsgActivity;->mCoverBgDrawable:Landroid/graphics/drawable/BitmapDrawable;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void

    :catch_0
    move-exception v1

    const-string v2, "Mms/MissedMsgActivity"

    const-string v3, "mMsgClearCoverReceiver is not registered"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1    # I
    .param p2    # Landroid/view/KeyEvent;

    const/4 v0, 0x1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    if-ne p1, v1, :cond_2

    const-string v1, "Mms/MissedMsgActivity"

    const-string v2, "back"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean v0, Lcom/android/mms/cover/MissedMsgActivity;->mIsFinishing:Z

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1    # Landroid/content/Intent;

    const-string v0, "Mms/MissedMsgActivity"

    const-string v1, "onNewIntent"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    invoke-direct {p0, p1}, Lcom/android/mms/cover/MissedMsgActivity;->handleIntent(Landroid/content/Intent;)V

    invoke-direct {p0}, Lcom/android/mms/cover/MissedMsgActivity;->initActivity()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    iget-object v1, p0, Lcom/android/mms/cover/MissedMsgActivity;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/cover/ScoverManager;->registerListener(Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;)V

    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mScoverState:Lcom/samsung/android/sdk/cover/ScoverState;

    return-void
.end method

.method protected onStop()V
    .locals 2

    const-string v0, "Mms/MissedMsgActivity"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    :cond_0
    return-void
.end method

.method public registerReceiver()V
    .locals 2

    const-string v0, "Mms/MissedMsgActivity"

    const-string v1, "onCreate : registerReceiver"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->screenOffReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/mms/cover/MissedMsgActivity;->filter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method
