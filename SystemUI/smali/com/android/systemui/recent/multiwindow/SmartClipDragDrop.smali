.class public Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;
.super Landroid/app/SallyService;
.source "SmartClipDragDrop.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop$SaveImageFileTask;,
        Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop$ShadowBuilder;
    }
.end annotation


# static fields
.field private static final ACTION_APPLIST_OPENED:Ljava/lang/String; = "com.sec.android.intent.action.APPLIST_OPENED"

.field private static final ACTION_HOME_RESUME:Ljava/lang/String; = "com.sec.android.intent.action.HOME_RESUME"

.field private static final ACTION_NOTIFY_START_DRAG_MODE:Ljava/lang/String; = "com.sec.android.action.NOTIFY_START_DRAG_MODE"

.field private static final ACTION_NOTIFY_STOP_DRAG_MODE:Ljava/lang/String; = "com.sec.android.action.NOTIFY_STOP_DRAG_MODE"

.field private static final ACTION_NOTIFY_STOP_SMARTCLIP_DRAGDROP:Ljava/lang/String; = "com.sec.android.action.NOTIFY_STOP_SMARTCLIP_DRAGDROP"

.field private static final ACTION_RECENTSPANEL_OPEN:Ljava/lang/String; = "com.android.systemui.recent.RECENTSPANEL_OPEN"

.field private static final DEBUG:Z = true

.field private static final DRAG_IMAGE_FILE_NAME:Ljava/lang/String; = "DragImage[%d].png"

.field private static final DRAG_IMAGE_FILE_PATH_TEMPLATE:Ljava/lang/String; = "%s/%s"

.field private static DRAG_SHADOW_BORDER_LINE_THICK:I = 0x0

.field private static DRAG_SHADOW_MAX_TEXT_LENGTH:I = 0x0

.field private static final MULTI_WINDOW_DRAG_AND_DROP_IMAGE:Ljava/lang/String; = "Multiwindow drag and drop image"

.field private static final MULTI_WINDOW_DRAG_AND_DROP_TEXT:Ljava/lang/String; = "Multiwindow drag and drop text"

.field private static final PACKAGE_GOOGLE_CHROME:Ljava/lang/String; = "com.android.chrome"

.field private static final TAG:Ljava/lang/String; = "SmartClipDragDrop"


# instance fields
.field mAm:Landroid/app/IActivityManager;

.field mAppListExpandReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field final mForegroundToken:Landroid/os/IBinder;

.field private final mHandler:Landroid/os/Handler;

.field private mHasCocktailBar:Z

.field mHomeResumeReceiver:Landroid/content/BroadcastReceiver;

.field private mIsDragging:Z

.field private mIvt:[B

.field private mMainFrame:Landroid/widget/FrameLayout;

.field mMultiWindowStatusReceiver:Landroid/content/BroadcastReceiver;

.field mOpenRecentsPanelReceiver:Landroid/content/BroadcastReceiver;

.field private volatile mServiceHandler:Landroid/os/Handler;

.field private volatile mServiceLooper:Landroid/os/Looper;

.field private mServiceRunning:Z

.field private mSmartClipNewFileName:Lcom/android/systemui/recent/multiwindow/SmartClipNewFileName;

.field mStopServiceReceiver:Landroid/content/BroadcastReceiver;

.field private mThread:Landroid/os/HandlerThread;

.field private mVibrator:Landroid/os/SystemVibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x14

    sput v0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->DRAG_SHADOW_MAX_TEXT_LENGTH:I

    const/4 v0, 0x3

    sput v0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->DRAG_SHADOW_BORDER_LINE_THICK:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/SallyService;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->mMainFrame:Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->mContext:Landroid/content/Context;

    iput-boolean v0, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->mServiceRunning:Z

    iput-boolean v0, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->mIsDragging:Z

    iput-boolean v0, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->mHasCocktailBar:Z

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->mForegroundToken:Landroid/os/IBinder;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->mAm:Landroid/app/IActivityManager;

    iput-object v1, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->mSmartClipNewFileName:Lcom/android/systemui/recent/multiwindow/SmartClipNewFileName;

    const/16 v0, 0x26

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->mIvt:[B

    new-instance v0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop$1;-><init>(Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;)V

    iput-object v0, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->mHomeResumeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop$2;-><init>(Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;)V

    iput-object v0, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->mAppListExpandReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop$3;-><init>(Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;)V

    iput-object v0, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->mMultiWindowStatusReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop$4;-><init>(Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;)V

    iput-object v0, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->mOpenRecentsPanelReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop$5;-><init>(Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;)V

    iput-object v0, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->mStopServiceReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SmartClipDragDropThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->mThread:Landroid/os/HandlerThread;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->mHandler:Landroid/os/Handler;

    return-void

    nop

    :array_0
    .array-data 1
        0x1t
        0x0t
        0x1t
        0x0t
        0xat
        0x0t
        0x14t
        0x0t
        0x0t
        0x0t
        0x20t
        0x1t
        0x0t
        0x0t
        0x7ft
        0x0t
        0x0t
        0x42t
        0x0t
        0x0t
        0x4dt
        0x0t
        0x61t
        0x0t
        0x67t
        0x0t
        0x53t
        0x0t
        0x77t
        0x0t
        0x65t
        0x0t
        0x65t
        0x0t
        0x70t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method static synthetic access$000()I
    .locals 1

    sget v0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->DRAG_SHADOW_BORDER_LINE_THICK:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;)V
    .locals 0
    .param p0    # Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;

    invoke-direct {p0}, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->notifyStartDragMode()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;Landroid/view/View;Ljava/lang/String;Landroid/graphics/Rect;I)V
    .locals 0
    .param p0    # Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;
    .param p1    # Landroid/view/View;
    .param p2    # Ljava/lang/String;
    .param p3    # Landroid/graphics/Rect;
    .param p4    # I

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->startTextDrag(Landroid/view/View;Ljava/lang/String;Landroid/graphics/Rect;I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;Landroid/view/View;Landroid/graphics/Rect;I)V
    .locals 0
    .param p0    # Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/graphics/Rect;
    .param p3    # I

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->startImageDrag(Landroid/view/View;Landroid/graphics/Rect;I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;)V
    .locals 0
    .param p0    # Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;

    invoke-direct {p0}, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->stopSmartClipDragDropThread()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;Landroid/graphics/Rect;I)Landroid/graphics/Bitmap;
    .locals 1
    .param p0    # Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;
    .param p1    # Landroid/graphics/Rect;
    .param p2    # I

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->cropScreen(Landroid/graphics/Rect;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;
    .param p1    # Landroid/graphics/Bitmap;

    invoke-direct {p0, p1}, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->saveImageFile(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;)V
    .locals 0
    .param p0    # Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;

    invoke-direct {p0}, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->minimize()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;)[B
    .locals 1
    .param p0    # Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;

    iget-object v0, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->mIvt:[B

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;)Landroid/os/SystemVibrator;
    .locals 1
    .param p0    # Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;

    iget-object v0, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->mVibrator:Landroid/os/SystemVibrator;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;

    iget-object v0, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;Z)Z
    .locals 0
    .param p0    # Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->mIsDragging:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;)Landroid/os/HandlerThread;
    .locals 1
    .param p0    # Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;

    iget-object v0, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->mThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;)Landroid/os/Looper;
    .locals 1
    .param p0    # Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;

    iget-object v0, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->mServiceLooper:Landroid/os/Looper;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;Landroid/os/Looper;)Landroid/os/Looper;
    .locals 0
    .param p0    # Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;
    .param p1    # Landroid/os/Looper;

    iput-object p1, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->mServiceLooper:Landroid/os/Looper;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;)Landroid/os/Handler;
    .locals 1
    .param p0    # Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;

    iget-object v0, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->mServiceHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .param p0    # Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;
    .param p1    # Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->mServiceHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 0
    .param p0    # Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/view/MotionEvent;

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->getSmartClipData(Landroid/view/View;Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;
    .param p1    # Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    invoke-direct {p0, p1}, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->getTextMetaData(Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;
    .param p1    # Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    invoke-direct {p0, p1}, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->getUrlMetaData(Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;
    .param p1    # Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    invoke-direct {p0, p1}, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->getTextSelectionMetaData(Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private adjustCropRectForReduceScreen(Landroid/graphics/Rect;)V
    .locals 9
    .param p1    # Landroid/graphics/Rect;

    const/4 v8, 0x0

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->mContext:Landroid/content/Context;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "any_screen_running"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "any_screen_running_scale"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$Secure;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v3

    iget-object v5, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "any_screen_running_offset_x"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iget-object v5, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "any_screen_running_offset_y"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    cmpl-float v5, v3, v8

    if-lez v5, :cond_0

    const/high16 v5, 0x3f800000

    cmpg-float v5, v3, v5

    if-gtz v5, :cond_0

    int-to-float v5, v1

    iget v6, p1, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    mul-float/2addr v6, v3

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p1, Landroid/graphics/Rect;->left:I

    int-to-float v5, v2

    iget v6, p1, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    mul-float/2addr v6, v3

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p1, Landroid/graphics/Rect;->top:I

    iget v5, p1, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    int-to-float v6, v4

    mul-float/2addr v6, v3

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p1, Landroid/graphics/Rect;->right:I

    iget v5, p1, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    int-to-float v6, v0

    mul-float/2addr v6, v3

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p1, Landroid/graphics/Rect;->bottom:I

    :cond_0
    const-string v5, "SmartClipDragDrop"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "any_screen_running : Crope rect : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", scale="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", offsetX="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", offsetY="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private cropScreen(Landroid/graphics/Rect;I)Landroid/graphics/Bitmap;
    .locals 12
    .param p1    # Landroid/graphics/Rect;
    .param p2    # I

    const/4 v7, 0x0

    const/4 v11, 0x0

    iget-object v8, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->mContext:Landroid/content/Context;

    const-string v9, "window"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    :cond_0
    iget v5, v2, Landroid/graphics/Point;->x:I

    iget v4, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v8

    if-lez v8, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v8

    if-gtz v8, :cond_2

    :cond_1
    move-object v1, v7

    :goto_0
    return-object v1

    :cond_2
    invoke-virtual {p1, v11, v11, v5, v4}, Landroid/graphics/Rect;->intersect(IIII)Z

    const-string v8, "SmartClipDragDrop"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "cropScreen : Crope rect : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p2}, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->getFullScreenShotBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_3

    const-string v8, "SmartClipDragDrop"

    const-string v9, "Cannot capture the screen!"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v7

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1}, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->adjustCropRectForReduceScreen(Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v9

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v8, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v9

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v10

    invoke-direct {v8, v11, v11, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v3, p1, v8, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private getDegreesForRotation(I)F
    .locals 1
    .param p1    # I

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    const/high16 v0, 0x43870000

    goto :goto_0

    :pswitch_1
    const/high16 v0, 0x43340000

    goto :goto_0

    :pswitch_2
    const/high16 v0, 0x42b40000

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getFullScreenShotBitmap(I)Landroid/graphics/Bitmap;
    .locals 1
    .param p1    # I

    const/16 v0, 0x4e20

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->getFullScreenShotBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private getFullScreenShotBitmap(II)Landroid/graphics/Bitmap;
    .locals 29
    .param p1    # I
    .param p2    # I

    const-string v24, "SmartClipDragDrop"

    const-string v25, "getFullScreenShotBitmap"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Landroid/util/DisplayMetrics;

    invoke-direct {v10}, Landroid/util/DisplayMetrics;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    const-string v25, "window"

    invoke-virtual/range {v24 .. v25}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/view/WindowManager;

    invoke-interface/range {v24 .. v24}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v15

    invoke-virtual {v15, v10}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    invoke-virtual {v15}, Landroid/view/Display;->getRotation()I

    move-result v9

    iget v0, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(I)I

    move-result v22

    iget v0, v10, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(I)I

    move-result v20

    move/from16 v5, v22

    move/from16 v4, v20

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->mHasCocktailBar:Z

    move/from16 v24, v0

    if-eqz v24, :cond_0

    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v24

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v24

    if-eqz v24, :cond_0

    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v24

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v24

    move-object/from16 v0, v24

    iget v5, v0, Landroid/view/DisplayInfo;->appWidth:I

    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v24

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v24

    move-object/from16 v0, v24

    iget v4, v0, Landroid/view/DisplayInfo;->appHeight:I

    move/from16 v0, v22

    if-eq v0, v5, :cond_4

    sub-int v8, v22, v5

    :cond_0
    :goto_0
    move/from16 v14, v22

    move/from16 v13, v20

    packed-switch v9, :pswitch_data_0

    :goto_1
    :pswitch_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->mHasCocktailBar:Z

    move/from16 v24, v0

    if-eqz v24, :cond_1

    move/from16 v22, v5

    move/from16 v20, v4

    :cond_1
    const/16 v19, 0x0

    const/16 v21, 0x0

    if-gez p1, :cond_2

    const/16 p1, 0x4e20

    :cond_2
    if-gez p2, :cond_3

    const p2, 0x30d40

    :cond_3
    :try_start_0
    const-class v24, Landroid/view/Surface;

    const-string v25, "screenshot"

    const/16 v26, 0x4

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    sget-object v28, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v28, v26, v27

    const/16 v27, 0x1

    sget-object v28, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v28, v26, v27

    const/16 v27, 0x2

    sget-object v28, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v28, v26, v27

    const/16 v27, 0x3

    sget-object v28, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v28, v26, v27

    invoke-virtual/range {v24 .. v26}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v21

    :goto_2
    :try_start_1
    const-string v24, "SmartClipDragDrop"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "getFullScreenShotBitmap : screenShotMethod="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v24, 0x0

    const/16 v25, 0x4

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    const/16 v26, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    const/16 v26, 0x2

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    const/16 v26, 0x3

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v0, v24

    check-cast v0, Landroid/graphics/Bitmap;

    move-object/from16 v19, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :goto_3
    if-nez v19, :cond_5

    const-string v24, "SmartClipDragDrop"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Could not capture the screen! lcdWidth="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " lcdHeight="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " rotation="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v24, 0x0

    :goto_4
    return-object v24

    :cond_4
    sub-int v8, v20, v4

    goto/16 :goto_0

    :pswitch_1
    move/from16 v14, v20

    move/from16 v13, v22

    goto/16 :goto_1

    :catch_0
    move-exception v12

    :try_start_2
    const-string v24, "android.view.SurfaceControl"

    invoke-static/range {v24 .. v24}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const-string v24, "screenshot"

    const/16 v25, 0x4

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    sget-object v27, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v27, v25, v26

    const/16 v26, 0x1

    sget-object v27, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v27, v25, v26

    const/16 v26, 0x2

    sget-object v27, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v27, v25, v26

    const/16 v26, 0x3

    sget-object v27, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v27, v25, v26

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v7, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v21

    goto/16 :goto_2

    :catch_1
    move-exception v16

    const-string v24, "SmartClipDragDrop"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "getFullScreenShotBitmap : exception throwed during access android.view.SurfaceControl.screenshot() e="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :catch_2
    move-exception v12

    const-string v24, "SmartClipDragDrop"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "getFullScreenShotBitmap : failed to invoke screenshot() method : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_5
    if-nez v9, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->mHasCocktailBar:Z

    move/from16 v24, v0

    if-eqz v24, :cond_7

    :cond_6
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->getDegreesForRotation(I)F

    move-result v18

    sget-object v24, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v22

    move/from16 v1, v20

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v17

    new-instance v6, Landroid/graphics/Canvas;

    move-object/from16 v0, v17

    invoke-direct {v6, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v23, Landroid/graphics/Point;

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v24

    div-int/lit8 v24, v24, 0x2

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v25

    div-int/lit8 v25, v25, 0x2

    invoke-direct/range {v23 .. v25}, Landroid/graphics/Point;-><init>(II)V

    new-instance v11, Landroid/graphics/Point;

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v24

    div-int/lit8 v24, v24, 0x2

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v25

    div-int/lit8 v25, v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-direct {v11, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    iget v0, v11, Landroid/graphics/Point;->x:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    iget v0, v11, Landroid/graphics/Point;->y:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move/from16 v0, v18

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v6, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget v0, v11, Landroid/graphics/Point;->x:I

    move/from16 v24, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    div-int/lit8 v25, v8, 0x2

    add-int v24, v24, v25

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    iget v0, v11, Landroid/graphics/Point;->y:I

    move/from16 v25, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v24

    move/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    move-object/from16 v19, v17

    :cond_7
    move-object/from16 v24, v19

    goto/16 :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getSmartClipData(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 8
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/view/MotionEvent;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v3, v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v4, v5

    move-object v2, p1

    iget-boolean v5, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->mServiceRunning:Z

    if-nez v5, :cond_0

    const-string v5, "SmartClipDragDrop"

    const-string v6, "onTouch : SmartClipDragDrop service is already stopped"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->stopSmartClipDragDropThread()V

    :goto_0
    return-void

    :cond_0
    const-string v5, "spengestureservice"

    invoke-virtual {p0, v5}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/smartclip/SpenGestureManager;

    new-instance v5, Landroid/graphics/Rect;

    add-int/lit8 v6, v3, 0x1

    add-int/lit8 v7, v4, 0x1

    invoke-direct {v5, v3, v4, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0}, Landroid/app/SallyService;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v1, v5, v6, v7}, Lcom/samsung/android/smartclip/SpenGestureManager;->getSmartClipDataByScreenRect(Landroid/graphics/Rect;Landroid/os/IBinder;I)Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    move-result-object v0

    iget-object v5, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop$8;

    invoke-direct {v6, p0, v0, v2}, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop$8;-><init>(Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;Landroid/view/View;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private getTextMetaData(Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;)Ljava/lang/String;
    .locals 8
    .param p1    # Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    const/4 v5, 0x0

    const-string v6, "plain_text"

    invoke-virtual {p1, v6}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->getMetaTag(Ljava/lang/String;)Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_1

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;->getValue()Ljava/lang/String;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    :cond_1
    :goto_1
    return-object v5

    :cond_2
    move-object v5, v4

    goto :goto_1
.end method

.method private getTextSelectionMetaData(Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;)Ljava/lang/String;
    .locals 8
    .param p1    # Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    const/4 v5, 0x0

    const-string v6, "text_selection"

    invoke-virtual {p1, v6}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->getMetaTag(Ljava/lang/String;)Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_1

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;->getValue()Ljava/lang/String;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    :cond_1
    :goto_1
    return-object v5

    :cond_2
    move-object v5, v4

    goto :goto_1
.end method

.method private getTextThumbnailBuilder(Ljava/lang/CharSequence;)Landroid/view/View$DragShadowBuilder;
    .locals 7
    .param p1    # Ljava/lang/CharSequence;

    const/4 v6, -0x2

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->mContext:Landroid/content/Context;

    const v3, 0x10900d4

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-nez v0, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unable to inflate text drag thumbnail"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sget v3, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->DRAG_SHADOW_MAX_TEXT_LENGTH:I

    if-le v2, v3, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->DRAG_SHADOW_MAX_TEXT_LENGTH:I

    invoke-interface {p1, v5, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    const v2, -0xbbbbbc

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v0, v1, v1}, Landroid/view/View;->measure(II)V

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v0, v5, v5, v2, v3}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    new-instance v2, Landroid/view/View$DragShadowBuilder;

    invoke-direct {v2, v0}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    return-object v2
.end method

.method private getUrlMetaData(Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;)Ljava/lang/String;
    .locals 2
    .param p1    # Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    const-string v1, "url"

    invoke-virtual {p1, v1}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->getMetaTag(Ljava/lang/String;)Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;->getValue()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private minimize()V
    .locals 6

    :try_start_0
    invoke-virtual {p0}, Landroid/app/SallyService;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v3, v3, 0x8

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v3, 0x0

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    const/4 v3, 0x0

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v3, 0x0

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v3, 0x0

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/16 v3, 0x33

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-virtual {p0, v1}, Landroid/app/SallyService;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    iget-object v3, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->mContext:Landroid/content/Context;

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-virtual {p0}, Landroid/app/SallyService;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v3, "SmartClipDragDrop"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IllegalArgumentException "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private notifyStartDragMode()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sec.android.action.NOTIFY_START_DRAG_MODE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private saveImageFile(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 16
    .param p1    # Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->mContext:Landroid/content/Context;

    sget-object v12, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-virtual {v11, v12}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v7, 0x0

    :goto_0
    return-object v7

    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const-string v11, "DragImage[%d].png"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->mSmartClipNewFileName:Lcom/android/systemui/recent/multiwindow/SmartClipNewFileName;

    sget-object v15, Lcom/android/systemui/recent/multiwindow/SmartClipNewFileName$IndexMode;->DRAGDRAP:Lcom/android/systemui/recent/multiwindow/SmartClipNewFileName$IndexMode;

    invoke-virtual {v14, v15}, Lcom/android/systemui/recent/multiwindow/SmartClipNewFileName;->getIndex(Lcom/android/systemui/recent/multiwindow/SmartClipNewFileName$IndexMode;)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v11, "%s/%s"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v5, v12, v13

    const/4 v13, 0x1

    aput-object v6, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const-string v11, "SmartClipDragDrop"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "saveImageFile : Saving the image file to "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    :cond_1
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v11, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v12, 0x64

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12, v8}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v8}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    const-string v11, "SmartClipDragDrop"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "saveImageFile : Encoding and file save finished. elapsed time = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    sub-long/2addr v13, v9

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "ms"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v3

    const-string v11, "SmartClipDragDrop"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "saveImageFile : File saving failed : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v7, 0x0

    goto/16 :goto_0
.end method

.method private startImageDrag(Landroid/view/View;Landroid/graphics/Rect;I)V
    .locals 2
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/graphics/Rect;
    .param p3    # I

    new-instance v0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop$SaveImageFileTask;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop$SaveImageFileTask;-><init>(Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;Landroid/view/View;Landroid/graphics/Rect;I)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private startTextDrag(Landroid/view/View;Ljava/lang/String;Landroid/graphics/Rect;I)V
    .locals 8
    .param p1    # Landroid/view/View;
    .param p2    # Ljava/lang/String;
    .param p3    # Landroid/graphics/Rect;
    .param p4    # I

    const v5, 0x7f0b0268

    const/4 v7, 0x0

    const-string v4, "Multiwindow drag and drop text"

    invoke-static {v4, p2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    invoke-direct {p0, p4}, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->getFullScreenShotBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1, v7}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->minimize()V

    iget-object v4, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->mVibrator:Landroid/os/SystemVibrator;

    iget-object v5, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->mIvt:[B

    iget-object v6, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->mVibrator:Landroid/os/SystemVibrator;

    invoke-virtual {v6}, Landroid/os/SystemVibrator;->getMaxMagnitude()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/os/SystemVibrator;->vibrateImmVibe([BI)V

    invoke-direct {p0, p2}, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->getTextThumbnailBuilder(Ljava/lang/CharSequence;)Landroid/view/View$DragShadowBuilder;

    move-result-object v4

    invoke-virtual {p1, v1, v4, p1, v7}, Landroid/view/View;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->mContext:Landroid/content/Context;

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    if-eqz p3, :cond_3

    invoke-direct {p0, p3, p4}, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->cropScreen(Landroid/graphics/Rect;I)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-lez v4, :cond_3

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-lez v4, :cond_3

    iget-object v4, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->mContext:Landroid/content/Context;

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_3
    invoke-virtual {p1, v7}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->minimize()V

    if-eqz v0, :cond_4

    iget-object v4, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->mVibrator:Landroid/os/SystemVibrator;

    iget-object v5, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->mIvt:[B

    iget-object v6, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->mVibrator:Landroid/os/SystemVibrator;

    invoke-virtual {v6}, Landroid/os/SystemVibrator;->getMaxMagnitude()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/os/SystemVibrator;->vibrateImmVibe([BI)V

    new-instance v4, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop$ShadowBuilder;

    invoke-direct {v4, p0, p1, v0}, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop$ShadowBuilder;-><init>(Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;Landroid/view/View;Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v1, v4, p1, v7}, Landroid/view/View;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->mVibrator:Landroid/os/SystemVibrator;

    iget-object v5, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->mIvt:[B

    iget-object v6, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->mVibrator:Landroid/os/SystemVibrator;

    invoke-virtual {v6}, Landroid/os/SystemVibrator;->getMaxMagnitude()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/os/SystemVibrator;->vibrateImmVibe([BI)V

    invoke-direct {p0, p2}, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->getTextThumbnailBuilder(Ljava/lang/CharSequence;)Landroid/view/View$DragShadowBuilder;

    move-result-object v4

    invoke-virtual {p1, v1, v4, p1, v7}, Landroid/view/View;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    goto :goto_0
.end method

.method private stopSmartClipDragDropThread()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->mServiceLooper:Landroid/os/Looper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->mServiceLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->mThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public initDragDrop()V
    .locals 2

    const v0, 0x7f080063

    invoke-virtual {p0, v0}, Landroid/app/SallyService;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->mMainFrame:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->mMainFrame:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop$6;

    invoke-direct {v1, p0}, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop$6;-><init>(Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    iget-object v0, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->mMainFrame:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop$7;

    invoke-direct {v1, p0}, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop$7;-><init>(Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public onCreate()V
    .locals 11

    const/4 v9, 0x1

    invoke-super {p0}, Landroid/app/SallyService;->onCreate()V

    const-string v7, "SmartClipDragDrop"

    const-string v8, "onCreate()"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    iput-object v7, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->mContext:Landroid/content/Context;

    const-string v8, "window"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager;

    iput-object v7, p0, Landroid/app/SallyService;->mWindowManager:Landroid/view/WindowManager;

    iput-boolean v9, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->mServiceRunning:Z

    invoke-virtual {p0}, Landroid/app/SallyService;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    const/16 v7, 0x7d8

    iput v7, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {p0}, Landroid/app/SallyService;->getWindow()Landroid/view/Window;

    move-result-object v7

    const v8, 0x106000d

    invoke-virtual {v7, v8}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    const v7, 0x7f04000d

    invoke-virtual {p0, v7}, Landroid/app/SallyService;->setContentView(I)V

    invoke-virtual {p0}, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->initDragDrop()V

    :try_start_0
    iget-object v7, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->mAm:Landroid/app/IActivityManager;

    iget-object v8, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->mForegroundToken:Landroid/os/IBinder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v9

    const/4 v10, 0x1

    invoke-interface {v7, v8, v9, v10}, Landroid/app/IActivityManager;->setProcessForeground(Landroid/os/IBinder;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v2, Landroid/content/IntentFilter;

    const-string v7, "com.sec.android.intent.action.HOME_RESUME"

    invoke-direct {v2, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->mHomeResumeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v7, v2}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v7, "com.sec.android.intent.action.APPLIST_OPENED"

    invoke-direct {v0, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->mAppListExpandReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v7, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v7, "com.sec.android.action.NOTIFY_MULTIWINDOW_STATUS"

    invoke-direct {v4, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->mMultiWindowStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v7, v4}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v5, Landroid/content/IntentFilter;

    const-string v7, "com.android.systemui.recent.RECENTSPANEL_OPEN"

    invoke-direct {v5, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->mOpenRecentsPanelReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v7, v5}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "com.sec.android.action.NOTIFY_STOP_SMARTCLIP_DRAGDROP"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->mStopServiceReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v7, v6}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->mContext:Landroid/content/Context;

    const-string v8, "vibrator"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/SystemVibrator;

    iput-object v7, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->mVibrator:Landroid/os/SystemVibrator;

    new-instance v7, Lcom/android/systemui/recent/multiwindow/SmartClipNewFileName;

    iget-object v8, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Lcom/android/systemui/recent/multiwindow/SmartClipNewFileName;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->mSmartClipNewFileName:Lcom/android/systemui/recent/multiwindow/SmartClipNewFileName;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x111008b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->mHasCocktailBar:Z

    return-void

    :catch_0
    move-exception v1

    const-string v7, "SmartClipDragDrop"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onCreate : Exception - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 5

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->mHomeResumeReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->mHomeResumeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->mHomeResumeReceiver:Landroid/content/BroadcastReceiver;

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->mAppListExpandReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->mAppListExpandReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->mAppListExpandReceiver:Landroid/content/BroadcastReceiver;

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->mMultiWindowStatusReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->mMultiWindowStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->mMultiWindowStatusReceiver:Landroid/content/BroadcastReceiver;

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->mOpenRecentsPanelReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->mOpenRecentsPanelReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->mOpenRecentsPanelReceiver:Landroid/content/BroadcastReceiver;

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->mStopServiceReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->mStopServiceReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->mStopServiceReceiver:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->mAm:Landroid/app/IActivityManager;

    iget-object v2, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->mForegroundToken:Landroid/os/IBinder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/app/IActivityManager;->setProcessForeground(Landroid/os/IBinder;IZ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    iget-object v1, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->mSmartClipNewFileName:Lcom/android/systemui/recent/multiwindow/SmartClipNewFileName;

    sget-object v2, Lcom/android/systemui/recent/multiwindow/SmartClipNewFileName$IndexMode;->DRAGDRAP:Lcom/android/systemui/recent/multiwindow/SmartClipNewFileName$IndexMode;

    invoke-virtual {v1, v2}, Lcom/android/systemui/recent/multiwindow/SmartClipNewFileName;->saveIndex(Lcom/android/systemui/recent/multiwindow/SmartClipNewFileName$IndexMode;)V

    invoke-super {p0}, Landroid/app/SallyService;->onDestroy()V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "SmartClipDragDrop"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDestroy : Exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "SmartClipDragDrop"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDestroy : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1    # Landroid/content/Intent;
    .param p2    # I
    .param p3    # I

    invoke-super {p0, p1, p2, p3}, Landroid/app/SallyService;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method

.method public stopService()V
    .locals 3

    iget-boolean v1, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->mIsDragging:Z

    if-nez v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sec.android.action.NOTIFY_STOP_DRAG_MODE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->mServiceRunning:Z

    invoke-super {p0}, Landroid/app/SallyService;->stopService()V

    const-string v1, "SmartClipDragDrop"

    const-string v2, "SmartClipDragDrop service finished."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
