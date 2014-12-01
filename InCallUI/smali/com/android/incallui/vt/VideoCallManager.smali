.class public Lcom/android/incallui/vt/VideoCallManager;
.super Ljava/lang/Object;
.source "VideoCallManager.java"

# interfaces
.implements Lcom/android/incallui/InCallPresenter$InCallStateListener;
.implements Lcom/android/incallui/InCallPresenter$IncomingCallListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/vt/VideoCallManager$DualCameraTask;
    }
.end annotation


# static fields
.field private static CAMERA_FACING_BACK:I

.field private static CAMERA_FACING_FRONT:I

.field private static final ENG:Z

.field private static sVideoCallManager:Lcom/android/incallui/vt/VideoCallManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCsVTManager:Lsiso/vt/VTManager;

.field mHandler:Landroid/os/Handler;

.field private mHeldCallId:I

.field private mHeldCallId2:I

.field private mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

.field private mImsInterfaceForCall:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForCall;

.field private mImsInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

.field public mIsImageSelected:Z

.field private mIsLowFPSRequested:Z

.field private mIsLowMemoryListenerRegistered:Z

.field public mIsNearEndCaptured:Z

.field public mIsNearEndRecorded:Z

.field private mIsPrevModify:Z

.field private mIsPrevVideo:Z

.field private mIsScreenRotated:Z

.field public mIsStartedCapture:Z

.field public mIsStartedRecord:Z

.field private mIsVideoHeld:Z

.field private mIsVideoHeldRemote:Z

.field private mIsVideoMoResume:Z

.field public mIsVideoSelected:Z

.field private final mLowMemoryReceiver:Landroid/content/BroadcastReceiver;

.field private mNearEndSurface:Landroid/graphics/SurfaceTexture;

.field private mPrevAudioMode:I

.field private mPreviewEffectState:Lcom/android/incallui/vt/PreviewEffectState;

.field private mPreviousVTCallState:I

.field private mToast:Landroid/widget/Toast;

.field private mToastContext:Landroid/content/Context;

.field private mVTCallState:Lcom/android/incallui/vt/VTCallState;

.field private final mVTStateListener:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/incallui/vt/VTStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoProj:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/incallui/vt/VideoCallManager;->ENG:Z

    const/4 v0, 0x0

    sput v0, Lcom/android/incallui/vt/VideoCallManager;->CAMERA_FACING_BACK:I

    const/4 v0, 0x1

    sput v0, Lcom/android/incallui/vt/VideoCallManager;->CAMERA_FACING_FRONT:I

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    const/4 v3, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/incallui/vt/VideoCallManager;->mVTCallState:Lcom/android/incallui/vt/VTCallState;

    iput-object v1, p0, Lcom/android/incallui/vt/VideoCallManager;->mPreviewEffectState:Lcom/android/incallui/vt/PreviewEffectState;

    iput-object v1, p0, Lcom/android/incallui/vt/VideoCallManager;->mToast:Landroid/widget/Toast;

    iput-object v1, p0, Lcom/android/incallui/vt/VideoCallManager;->mImsInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    iput-object v1, p0, Lcom/android/incallui/vt/VideoCallManager;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    iput-object v1, p0, Lcom/android/incallui/vt/VideoCallManager;->mImsInterfaceForCall:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForCall;

    iput-object v1, p0, Lcom/android/incallui/vt/VideoCallManager;->mCsVTManager:Lsiso/vt/VTManager;

    invoke-static {}, Lcom/google/android/collect/Sets;->newArraySet()Landroid/util/ArraySet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/vt/VideoCallManager;->mVTStateListener:Ljava/util/Set;

    iput-boolean v2, p0, Lcom/android/incallui/vt/VideoCallManager;->mIsLowMemoryListenerRegistered:Z

    iput-boolean v2, p0, Lcom/android/incallui/vt/VideoCallManager;->mIsLowFPSRequested:Z

    iput v2, p0, Lcom/android/incallui/vt/VideoCallManager;->mPreviousVTCallState:I

    iput-boolean v2, p0, Lcom/android/incallui/vt/VideoCallManager;->mIsNearEndCaptured:Z

    iput-boolean v2, p0, Lcom/android/incallui/vt/VideoCallManager;->mIsImageSelected:Z

    iput-boolean v2, p0, Lcom/android/incallui/vt/VideoCallManager;->mIsNearEndRecorded:Z

    iput-boolean v2, p0, Lcom/android/incallui/vt/VideoCallManager;->mIsVideoSelected:Z

    iput-boolean v2, p0, Lcom/android/incallui/vt/VideoCallManager;->mIsStartedRecord:Z

    iput-boolean v2, p0, Lcom/android/incallui/vt/VideoCallManager;->mIsStartedCapture:Z

    iput-boolean v2, p0, Lcom/android/incallui/vt/VideoCallManager;->mIsPrevModify:Z

    iput-boolean v2, p0, Lcom/android/incallui/vt/VideoCallManager;->mIsPrevVideo:Z

    iput-boolean v2, p0, Lcom/android/incallui/vt/VideoCallManager;->mIsVideoHeld:Z

    iput-boolean v2, p0, Lcom/android/incallui/vt/VideoCallManager;->mIsVideoHeldRemote:Z

    iput-boolean v2, p0, Lcom/android/incallui/vt/VideoCallManager;->mIsScreenRotated:Z

    iput-boolean v2, p0, Lcom/android/incallui/vt/VideoCallManager;->mIsVideoMoResume:Z

    iput v3, p0, Lcom/android/incallui/vt/VideoCallManager;->mHeldCallId:I

    iput v3, p0, Lcom/android/incallui/vt/VideoCallManager;->mHeldCallId2:I

    iput-object v1, p0, Lcom/android/incallui/vt/VideoCallManager;->mNearEndSurface:Landroid/graphics/SurfaceTexture;

    new-instance v0, Lcom/android/incallui/vt/VideoCallManager$2;

    invoke-direct {v0, p0}, Lcom/android/incallui/vt/VideoCallManager$2;-><init>(Lcom/android/incallui/vt/VideoCallManager;)V

    iput-object v0, p0, Lcom/android/incallui/vt/VideoCallManager;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_data"

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/incallui/vt/VideoCallManager;->mVideoProj:[Ljava/lang/String;

    new-instance v0, Lcom/android/incallui/vt/VideoCallManager$4;

    invoke-direct {v0, p0}, Lcom/android/incallui/vt/VideoCallManager$4;-><init>(Lcom/android/incallui/vt/VideoCallManager;)V

    iput-object v0, p0, Lcom/android/incallui/vt/VideoCallManager;->mLowMemoryReceiver:Landroid/content/BroadcastReceiver;

    iget-object v0, p0, Lcom/android/incallui/vt/VideoCallManager;->mVTCallState:Lcom/android/incallui/vt/VTCallState;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/vt/VTCallState;->getInstance()Lcom/android/incallui/vt/VTCallState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/vt/VideoCallManager;->mVTCallState:Lcom/android/incallui/vt/VTCallState;

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/vt/VideoCallManager;)Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/vt/VideoCallManager;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/incallui/vt/VideoCallManager;)Lsiso/vt/VTManager;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/vt/VideoCallManager;->mCsVTManager:Lsiso/vt/VTManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/incallui/vt/VideoCallManager;)Lcom/android/incallui/vt/PreviewEffectState;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/vt/VideoCallManager;->mPreviewEffectState:Lcom/android/incallui/vt/PreviewEffectState;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/incallui/vt/VideoCallManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/vt/VideoCallManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/incallui/vt/VideoCallManager;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/vt/VideoCallManager;->updateSelectedImageFromGallery(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/incallui/vt/VideoCallManager;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/incallui/vt/VideoCallManager;->getBitmapFromFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/incallui/vt/VideoCallManager;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/vt/VideoCallManager;->updateSelectedVideoFromGallery(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/incallui/vt/VideoCallManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/vt/VideoCallManager;->showVideo(Ljava/lang/String;)V

    return-void
.end method

.method private checkCameraStartConditionSecurity()Z
    .locals 2

    const-string v0, "persist.sys.camera_lock"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "camera_lock.enabled"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cleanup()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/vt/VideoCallManager;->mVTStateListener:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method private createDefaultImages()V
    .locals 3

    const-string v0, "data/data/com.android.incallui/files/preset_defaultimage_qcif.jpg"

    const v1, 0x7f020256

    const-string v2, "preset_defaultimage_qcif.jpg"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/incallui/vt/VideoCallManager;->createImage(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "data/data/com.android.incallui/files/preset_default_image_qvga.jpg"

    const v1, 0x7f020257

    const-string v2, "preset_default_image_qvga.jpg"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/incallui/vt/VideoCallManager;->createImage(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "data/data/com.android.incallui/files/preset_defaultimage_vga.jpg"

    const v1, 0x7f020258

    const-string v2, "preset_defaultimage_vga.jpg"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/incallui/vt/VideoCallManager;->createImage(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "data/data/com.android.incallui/files/preset_defaultimage_vga_land.jpg"

    const v1, 0x7f020259

    const-string v2, "preset_defaultimage_vga_land.jpg"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/incallui/vt/VideoCallManager;->createImage(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "data/data/com.android.incallui/files/video_call_capture_vga.jpg"

    const v1, 0x7f020570

    const-string v2, "video_call_capture_vga.jpg"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/incallui/vt/VideoCallManager;->createImage(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "data/data/com.android.incallui/files/call_capture_noti_176x144.jpg"

    const v1, 0x7f020097

    const-string v2, "call_capture_noti_176x144.jpg"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/incallui/vt/VideoCallManager;->createImage(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "data/data/com.android.incallui/files/call_recording_noti_176x144.jpg"

    const v1, 0x7f020241

    const-string v2, "call_recording_noti_176x144.jpg"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/incallui/vt/VideoCallManager;->createImage(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method private createImage(Ljava/lang/String;ILjava/lang/String;)V
    .locals 5

    iget-object v3, p0, Lcom/android/incallui/vt/VideoCallManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    :try_start_0
    iget-object v3, p0, Lcom/android/incallui/vt/VideoCallManager;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {v3, p3, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private getBitmapFromFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method private getCallType()I
    .locals 2

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getDomain()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x2

    goto :goto_0
.end method

.method private getIMSCallType()I
    .locals 3

    const/4 v0, -0x1

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isPSDomain()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/vt/VideoCallManager;->getVideoResolution()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/16 v0, 0xa

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/vt/VideoCallManager;->getVideoResolution()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    const/16 v0, 0x9

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/incallui/vt/VideoCallManager;->getVideoResolution()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_3

    const/16 v0, 0x1b

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/android/incallui/vt/VideoCallManager;->getVideoResolution()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_4

    const/16 v0, 0x1c

    goto :goto_0

    :cond_4
    const/4 v0, 0x6

    goto :goto_0
.end method

.method public static declared-synchronized getInstance()Lcom/android/incallui/vt/VideoCallManager;
    .locals 2

    const-class v1, Lcom/android/incallui/vt/VideoCallManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/incallui/vt/VideoCallManager;->sVideoCallManager:Lcom/android/incallui/vt/VideoCallManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/incallui/vt/VideoCallManager;

    invoke-direct {v0}, Lcom/android/incallui/vt/VideoCallManager;-><init>()V

    sput-object v0, Lcom/android/incallui/vt/VideoCallManager;->sVideoCallManager:Lcom/android/incallui/vt/VideoCallManager;

    :cond_0
    sget-object v0, Lcom/android/incallui/vt/VideoCallManager;->sVideoCallManager:Lcom/android/incallui/vt/VideoCallManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getVideoFileNameFromUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 7

    const/4 v6, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getVideoFileNameFromUri : Uri is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/vt/VideoCallManager;->log(Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    :try_start_0
    iget-object v0, p0, Lcom/android/incallui/vt/VideoCallManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_4

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v0, "_data"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Video file path is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/incallui/vt/VideoCallManager;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_0
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v6

    :goto_2
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v0, v6

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v1, v6

    :goto_3
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v6

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_4
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    move-object v0, v1

    goto :goto_2

    :cond_4
    move-object v0, v6

    goto :goto_0
.end method

.method private getVideoResolution()I
    .locals 2

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getVideoResolution()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x3

    goto :goto_0
.end method

.method private handleCameraEvent(I)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->isCameraRestricted()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "camera_fail_image"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const v0, 0x7f09021f

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->showToastLong(I)V

    :cond_2
    const-string v0, "camera_fail_image"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->sendStillImage()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x67
        :pswitch_0
    .end packed-switch
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "VideoCallManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "VideoCallManager"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private mediaScan(Ljava/lang/String;)V
    .locals 4

    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iget-object v1, p0, Lcom/android/incallui/vt/VideoCallManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    new-instance v3, Lcom/android/incallui/vt/VideoCallManager$3;

    invoke-direct {v3, p0}, Lcom/android/incallui/vt/VideoCallManager$3;-><init>(Lcom/android/incallui/vt/VideoCallManager;)V

    invoke-static {v1, v0, v2, v3}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    return-void
.end method

.method private notifyCameraInfo(I)V
    .locals 3

    const/16 v2, 0x14

    const/4 v1, 0x3

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getFirstCallState()I

    move-result v0

    if-ne v0, v2, :cond_0

    if-ne p1, v2, :cond_1

    :cond_0
    if-ne v0, v1, :cond_3

    if-eq p1, v1, :cond_3

    :cond_1
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_2

    const v0, 0x7f090149

    invoke-virtual {p0, v0}, Lcom/android/incallui/vt/VideoCallManager;->displayToast(I)V

    :cond_2
    return-void

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyQualityInfo(I)V
    .locals 13

    const/4 v4, -0x1

    const/16 v12, 0x14

    const/4 v11, 0x3

    const/4 v2, 0x0

    const/4 v1, 0x1

    const-string v0, "feature_skt"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    const-string v0, "feature_ktt"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    const-string v0, "feature_lgt"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getFrameSize()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getFirstCallState()I

    move-result v9

    const-string v0, "QCIF"

    if-ne v5, v0, :cond_7

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isDeviceOn3G()Z

    move-result v0

    if-eqz v0, :cond_7

    if-ne v9, v12, :cond_0

    if-ne p1, v12, :cond_1

    :cond_0
    if-ne v9, v11, :cond_7

    if-eq p1, v11, :cond_7

    :cond_1
    move v0, v1

    :goto_0
    const-string v3, "QCIF"

    if-ne v5, v3, :cond_8

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isDeviceOnLTE()Z

    move-result v3

    if-eqz v3, :cond_8

    const/4 v3, 0x2

    if-ne v9, v3, :cond_8

    if-eq p1, v12, :cond_2

    if-ne p1, v11, :cond_8

    :cond_2
    move v3, v1

    :goto_1
    const-string v10, "QVGA"

    if-eq v5, v10, :cond_3

    const-string v10, "QVGALAND"

    if-ne v5, v10, :cond_9

    :cond_3
    const/4 v5, 0x2

    if-ne v9, v5, :cond_9

    if-eq p1, v12, :cond_4

    if-ne p1, v11, :cond_9

    :cond_4
    move v5, v1

    :goto_2
    if-eqz v6, :cond_b

    iget-object v8, p0, Lcom/android/incallui/vt/VideoCallManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "videocallmessage_settings"

    invoke-static {v8, v9, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-nez v8, :cond_a

    :cond_5
    :goto_3
    if-nez v2, :cond_d

    :cond_6
    :goto_4
    return-void

    :cond_7
    move v0, v2

    goto :goto_0

    :cond_8
    move v3, v2

    goto :goto_1

    :cond_9
    move v5, v2

    goto :goto_2

    :cond_a
    move v2, v1

    goto :goto_3

    :cond_b
    if-eqz v7, :cond_c

    move v2, v1

    goto :goto_3

    :cond_c
    if-eqz v8, :cond_5

    move v2, v1

    goto :goto_3

    :cond_d
    if-eqz v0, :cond_16

    if-eqz v6, :cond_10

    const v0, 0x7f090220

    :goto_5
    if-eqz v3, :cond_e

    if-eqz v6, :cond_12

    const v0, 0x7f09021e

    :cond_e
    :goto_6
    if-eqz v5, :cond_f

    if-eqz v6, :cond_14

    const v0, 0x7f09021e

    :cond_f
    :goto_7
    if-eq v0, v4, :cond_6

    invoke-virtual {p0, v0}, Lcom/android/incallui/vt/VideoCallManager;->displayToast(I)V

    goto :goto_4

    :cond_10
    if-eqz v7, :cond_11

    const v0, 0x7f09024d

    goto :goto_5

    :cond_11
    const v0, 0x7f090281

    goto :goto_5

    :cond_12
    if-eqz v7, :cond_13

    const v0, 0x7f09024c

    goto :goto_6

    :cond_13
    const v0, 0x7f090280

    goto :goto_6

    :cond_14
    if-eqz v7, :cond_15

    const v0, 0x7f09024b

    goto :goto_7

    :cond_15
    const v0, 0x7f090280

    goto :goto_7

    :cond_16
    move v0, v4

    goto :goto_5
.end method

.method private registerLowMemoryListener()V
    .locals 3

    const-string v0, "registerLowMemoryListener"

    invoke-direct {p0, v0}, Lcom/android/incallui/vt/VideoCallManager;->log(Ljava/lang/String;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.ACTION_DEVICE_STORAGE_LOW"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/vt/VideoCallManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/incallui/vt/VideoCallManager;->mLowMemoryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/vt/VideoCallManager;->mIsLowMemoryListenerRegistered:Z

    return-void
.end method

.method private requestLowFPS(Z)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Request low FPS : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/vt/VideoCallManager;->log(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/incallui/vt/VideoCallManager;->mIsLowFPSRequested:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/incallui/vt/VideoCallManager;->mIsLowFPSRequested:Z

    const-string v0, "Send low FPS intent"

    invoke-direct {p0, v0}, Lcom/android/incallui/vt/VideoCallManager;->log(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sec.android.intent.action.SSRM_REQUEST"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "SSRM_STATUS_NAME"

    const-string v2, "Phone_vtCall"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "SSRM_STATUS_VALUE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "PackageName"

    iget-object v2, p0, Lcom/android/incallui/vt/VideoCallManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "PID"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/incallui/vt/VideoCallManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private resizeBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 6

    if-nez p1, :cond_1

    const/4 p1, 0x0

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-ne v2, p2, :cond_2

    if-eq v3, p3, :cond_0

    :cond_2
    int-to-float v0, p2

    int-to-float v1, v2

    div-float/2addr v0, v1

    int-to-float v1, p3

    int-to-float v4, v3

    div-float/2addr v1, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    int-to-float v0, v2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v4, v3

    mul-float/2addr v1, v4

    float-to-int v1, v1

    rem-int/lit8 v4, v0, 0x2

    if-eqz v4, :cond_3

    add-int/lit8 v0, v0, 0x1

    :cond_3
    rem-int/lit8 v4, v1, 0x2

    if-eqz v4, :cond_4

    add-int/lit8 v1, v1, 0x1

    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resizeBitmap ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " X "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " => ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " X "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/incallui/vt/VideoCallManager;->log(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-static {p1, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0
.end method

.method private resizeImage(Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 8

    const/16 v0, 0x280

    const/16 v1, 0x1e0

    const/16 v3, 0x140

    const/16 v2, 0xf0

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/16 v5, 0xb0

    const/16 v4, 0x90

    const-string v6, "VGA"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    :goto_1
    invoke-direct {p0, p1, v1, v0}, Lcom/android/incallui/vt/VideoCallManager;->resizeBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v6, "VGALAND"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v7, v1

    move v1, v0

    move v0, v7

    goto :goto_1

    :cond_2
    const-string v0, "QVGALAND"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    move v1, v3

    goto :goto_1

    :cond_3
    const-string v0, "QVGA"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v3

    move v1, v2

    goto :goto_1

    :cond_4
    move v0, v4

    move v1, v5

    goto :goto_1
.end method

.method private setFpsRange(Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;
    .locals 10

    const/4 v9, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->getNegotiatedFPS()I

    move-result v0

    mul-int/lit16 v5, v0, 0x3e8

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_1

    move v1, v2

    move v3, v2

    :goto_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    aget v4, v0, v9

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    aget v0, v0, v2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Supported FPS range = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/incallui/vt/VideoCallManager;->log(Ljava/lang/String;)V

    if-ne v4, v0, :cond_0

    if-gt v4, v5, :cond_0

    if-gt v3, v4, :cond_0

    move v3, v4

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    move v3, v2

    :cond_2
    if-eqz v3, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Best FPS range for the negotiated FPS of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/vt/VideoCallManager;->log(Ljava/lang/String;)V

    invoke-virtual {p1, v3, v3}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    :goto_1
    return-object p1

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Best FPS range for the negotiated FPS of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is not found"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v9}, Lcom/android/incallui/vt/VideoCallManager;->log(Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method private showMemoryFullAlert()V
    .locals 1

    const-string v0, "showMemoryFullDialog"

    invoke-direct {p0, v0}, Lcom/android/incallui/vt/VideoCallManager;->log(Ljava/lang/String;)V

    const v0, 0x7f090139

    invoke-virtual {p0, v0}, Lcom/android/incallui/vt/VideoCallManager;->displayToast(I)V

    return-void
.end method

.method private showVideo(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "inside show video condition and file path is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/vt/VideoCallManager;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/vt/VideoCallManager;->mCsVTManager:Lsiso/vt/VTManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/vt/VideoCallManager;->mCsVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v0, p1}, Lsiso/vt/VTManager;->sendVideo(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/vt/VideoCallManager;->setShowMe(Z)V

    :cond_0
    return-void
.end method

.method private showVideoRecordFileName(Ljava/lang/String;Z)V
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showVideoRecordFileName : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/vt/VideoCallManager;->log(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/incallui/vt/VideoCallManager;->mContext:Landroid/content/Context;

    const v1, 0x7f09036b

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/vt/VideoCallManager;->displayToast(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/vt/VideoCallManager;->mContext:Landroid/content/Context;

    const v1, 0x7f09036a

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/vt/VideoCallManager;->displayToast(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private stopRecordingAudio()V
    .locals 2

    const-string v0, "In stopRecordingAudio"

    invoke-direct {p0, v0}, Lcom/android/incallui/vt/VideoCallManager;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getRecorderMgr()Lcom/android/incallui/PhoneVoiceRecorderManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/PhoneVoiceRecorderManager;->isRecording()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/PhoneVoiceRecorderManager;->stopRecord()V

    :cond_0
    return-void
.end method

.method private unRegisterLowMemoryListener()V
    .locals 2

    const-string v0, "unRegisterLowMemoryListener"

    invoke-direct {p0, v0}, Lcom/android/incallui/vt/VideoCallManager;->log(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/incallui/vt/VideoCallManager;->mIsLowMemoryListenerRegistered:Z

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/incallui/vt/VideoCallManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/incallui/vt/VideoCallManager;->mLowMemoryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/vt/VideoCallManager;->mIsLowMemoryListenerRegistered:Z

    :cond_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method private updateSelectedImageFromGallery(Landroid/graphics/Bitmap;)V
    .locals 4

    const/16 v0, 0x4b

    const-string v1, "ims_video_outgoing_image_picture"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getFrameSize()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/vt/VideoCallManager;->resizeImage(Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    const/16 v0, 0x64

    :cond_0
    if-nez p1, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resolution ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " X "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/incallui/vt/VideoCallManager;->log(Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/vt/VideoCallManager;->mContext:Landroid/content/Context;

    const-string v2, "during_vt_photo.jpg"

    iget-object v3, p0, Lcom/android/incallui/vt/VideoCallManager;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p1, v2, v0, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isAliveVideoCall()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "data/data/com.android.incallui/files/during_vt_photo.jpg"

    invoke-direct {p0, v0}, Lcom/android/incallui/vt/VideoCallManager;->updateSelectedImageFromGallery(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private updateSelectedImageFromGallery(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/incallui/vt/VideoCallManager;->setShowMe(Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/vt/VideoCallManager;->mIsImageSelected:Z

    iput-boolean v1, p0, Lcom/android/incallui/vt/VideoCallManager;->mIsVideoSelected:Z

    iput-boolean v1, p0, Lcom/android/incallui/vt/VideoCallManager;->mIsNearEndRecorded:Z

    iput-boolean v1, p0, Lcom/android/incallui/vt/VideoCallManager;->mIsNearEndCaptured:Z

    invoke-virtual {p0, p1}, Lcom/android/incallui/vt/VideoCallManager;->setCapturedLocalFile(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/incallui/vt/VideoCallManager;->sendStillImage(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->updateVTCallButtons()V

    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-interface {v0, v1}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showDecorationButton(Z)V

    :cond_0
    return-void
.end method

.method private updateSelectedVideoFromGallery(Landroid/net/Uri;)V
    .locals 7

    const/4 v3, 0x0

    const/4 v6, 0x0

    const-string v0, "Response from MediaStore"

    invoke-direct {p0, v0}, Lcom/android/incallui/vt/VideoCallManager;->log(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    const-string v0, "Response from MediaStore  VTPM_VIDEO_REQ"

    invoke-direct {p0, v0}, Lcom/android/incallui/vt/VideoCallManager;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/vt/VideoCallManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/android/incallui/vt/VideoCallManager;->mVideoProj:[Ljava/lang/String;

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->getVTCallState()Lcom/android/incallui/vt/VTCallState;

    move-result-object v0

    const-string v2, "_data"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/incallui/vt/VTCallState;->mSelectedVideoFileName:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value of video filepath  VTPM_VIDEO_REQ"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->getVTCallState()Lcom/android/incallui/vt/VTCallState;

    move-result-object v2

    iget-object v2, v2, Lcom/android/incallui/vt/VTCallState;->mSelectedVideoFileName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/vt/VideoCallManager;->log(Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Lcom/android/incallui/vt/VideoCallManager;->setShowMe(Z)V

    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->getVTCallState()Lcom/android/incallui/vt/VTCallState;

    move-result-object v0

    iget-object v0, v0, Lcom/android/incallui/vt/VTCallState;->mSelectedVideoFileName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/incallui/vt/VideoCallManager;->showVideo(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/vt/VideoCallManager;->mIsVideoSelected:Z

    iput-boolean v6, p0, Lcom/android/incallui/vt/VideoCallManager;->mIsImageSelected:Z

    iput-boolean v6, p0, Lcom/android/incallui/vt/VideoCallManager;->mIsNearEndRecorded:Z

    iput-boolean v6, p0, Lcom/android/incallui/vt/VideoCallManager;->mIsNearEndCaptured:Z

    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-interface {v0, v6}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showDecorationButton(Z)V

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const v0, 0x7f09014a

    invoke-virtual {p0, v0}, Lcom/android/incallui/vt/VideoCallManager;->displayToast(I)V

    const-string v0, "mVideoSelectedFromGalary is null"

    invoke-direct {p0, v0}, Lcom/android/incallui/vt/VideoCallManager;->log(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public GetValidFileName(Z)Ljava/lang/String;
    .locals 5

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    const-string v2, "vt_upgraded_file_name_concept"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/Call/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GetValidFileName dirPath = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/incallui/vt/VideoCallManager;->log(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Directory is not in sdcard. Create new folder : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/incallui/vt/VideoCallManager;->log(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    :goto_1
    const-string v2, "vt_upgraded_file_name_concept"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/android/incallui/CallCardPresenter;->getInstance()Lcom/android/incallui/CallCardPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallCardPresenter;->getCurrentNumber()Ljava/lang/String;

    move-result-object v2

    if-eqz p1, :cond_2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, "VCall_"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "yyyyMMdd_kkmmss"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ".3gp"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File Name : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/vt/VideoCallManager;->log(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/Videocall/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_1
    const-string v2, "Directory is in sdcard already"

    invoke-direct {p0, v2}, Lcom/android/incallui/vt/VideoCallManager;->log(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "VCallScreen_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "yyyyMMdd_kkmmss"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ".jpg"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "VT"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "yyyy-MM-dd kk.mm.ss"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ".3gp"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    :cond_4
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "VT"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "yyyy-MM-dd kk.mm.ss"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ".jpg"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2
.end method

.method public addListener(Lcom/android/incallui/vt/VTStateListener;)V
    .locals 1

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/incallui/vt/VideoCallManager;->mVTStateListener:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public captureOutgoingImage()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->isShowMe()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Capture Image called for Nearend view"

    invoke-direct {p0, v1}, Lcom/android/incallui/vt/VideoCallManager;->log(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/incallui/vt/VideoCallManager;->checkStorageMemorySpace(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/vt/VideoCallManager;->capture_nearend_view(J)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/vt/VideoCallManager;->showMemoryFullAlert()V

    goto :goto_0

    :cond_1
    const v1, 0x7f0900c7

    invoke-virtual {p0, v1}, Lcom/android/incallui/vt/VideoCallManager;->displayToast(I)V

    goto :goto_0
.end method

.method public captureSurfaceImage(Z)V
    .locals 6

    invoke-direct {p0}, Lcom/android/incallui/vt/VideoCallManager;->getIMSCallType()I

    move-result v0

    if-gez v0, :cond_1

    sget-boolean v4, Lcom/android/incallui/vt/VideoCallManager;->ENG:Z

    if-eqz v4, :cond_0

    const-string v4, "captureSurfaceImage failed. IMS callType is not valid "

    invoke-direct {p0, v4}, Lcom/android/incallui/vt/VideoCallManager;->log(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/incallui/vt/VideoCallManager;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    if-eqz v4, :cond_2

    :try_start_0
    iget-object v4, p0, Lcom/android/incallui/vt/VideoCallManager;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    invoke-interface {v4, p1, v0}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;->captureSurfaceImage(ZI)V
    :try_end_0
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    if-eqz p1, :cond_3

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/incallui/vt/VideoCallManager;->setShowMe(Z)V

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lcom/samsung/commonimsinterface/imscommon/IMSException;->printStackTrace()V

    goto :goto_1

    :cond_3
    const-string v3, "data/data/com.android.incallui/files/call_capture_noti_176x144.jpg"

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getFrameSize()Ljava/lang/String;

    move-result-object v2

    const-string v4, "QCIF"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v3, "data/data/com.android.incallui/files/call_capture_noti_176x144.jpg"

    :goto_2
    iget-object v4, p0, Lcom/android/incallui/vt/VideoCallManager;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    if-eqz v4, :cond_0

    :try_start_1
    iget-object v4, p0, Lcom/android/incallui/vt/VideoCallManager;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    const/16 v5, 0x100

    invoke-interface {v4, v3, v5, v2}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;->sendStillImage(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_1
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Lcom/samsung/commonimsinterface/imscommon/IMSException;->printStackTrace()V

    goto :goto_0

    :cond_4
    const-string v4, "QVGA"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "QVGALAND"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_5
    const-string v3, "data/data/com.android.incallui/files/video_call_capture_vga.jpg"

    goto :goto_2

    :cond_6
    const-string v3, "data/data/com.android.incallui/files/video_call_capture_vga.jpg"

    goto :goto_2
.end method

.method public capture_farend_view()Z
    .locals 6

    const/16 v5, 0x12c

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "In capture_farend_view method"

    invoke-direct {p0, v2}, Lcom/android/incallui/vt/VideoCallManager;->log(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/incallui/vt/VideoCallManager;->checkStorageMemorySpace(Z)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/incallui/vt/VideoCallManager;->mCsVTManager:Lsiso/vt/VTManager;

    if-eqz v2, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/incallui/vt/VideoCallManager;->GetValidFileName(Z)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    iput-boolean v1, p0, Lcom/android/incallui/vt/VideoCallManager;->mIsStartedCapture:Z

    iget-object v0, p0, Lcom/android/incallui/vt/VideoCallManager;->mCsVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v0, v2, v1}, Lsiso/vt/VTManager;->CaptureImage(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/vt/VideoCallManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/vt/VideoCallManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    invoke-static {}, Lcom/android/incallui/CallCardPresenter;->getInstance()Lcom/android/incallui/CallCardPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    invoke-interface {v0, v1}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->showAnimationCapture(Z)V

    iget-object v0, p0, Lcom/android/incallui/vt/VideoCallManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x1388

    invoke-virtual {v0, v5, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const-string v0, "data/data/com.android.incallui/files/call_capture_noti_176x144.jpg"

    invoke-virtual {p0, v0}, Lcom/android/incallui/vt/VideoCallManager;->sendStillImage(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Capture File Name : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/vt/VideoCallManager;->log(Ljava/lang/String;)V

    const v0, 0x7f090181

    invoke-virtual {p0, v0}, Lcom/android/incallui/vt/VideoCallManager;->displayToast(I)V

    invoke-direct {p0, v2}, Lcom/android/incallui/vt/VideoCallManager;->mediaScan(Ljava/lang/String;)V

    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-direct {p0}, Lcom/android/incallui/vt/VideoCallManager;->showMemoryFullAlert()V

    goto :goto_0
.end method

.method protected capture_nearend_view(J)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/incallui/vt/VideoCallManager;->checkStorageMemorySpace(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "In capture_nearend_view method"

    invoke-direct {p0, v0}, Lcom/android/incallui/vt/VideoCallManager;->log(Ljava/lang/String;)V

    const-string v0, "kor_cs_vt_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    iget-object v0, p0, Lcom/android/incallui/vt/VideoCallManager;->mCsVTManager:Lsiso/vt/VTManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/vt/VideoCallManager;->mCsVTManager:Lsiso/vt/VTManager;

    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->getVTCallState()Lcom/android/incallui/vt/VTCallState;

    move-result-object v1

    iget-object v1, v1, Lcom/android/incallui/vt/VTCallState;->mCapturedLocalFile:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lsiso/vt/VTManager;->CaptureImage(Ljava/lang/String;Z)V

    const v0, 0x7f090181

    invoke-virtual {p0, v0}, Lcom/android/incallui/vt/VideoCallManager;->displayToast(I)V

    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->getVTCallState()Lcom/android/incallui/vt/VTCallState;

    move-result-object v0

    iget-object v0, v0, Lcom/android/incallui/vt/VTCallState;->mCapturedLocalFile:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/incallui/vt/VideoCallManager;->mediaScan(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->getVTCallState()Lcom/android/incallui/vt/VTCallState;

    move-result-object v0

    iget-object v0, v0, Lcom/android/incallui/vt/VTCallState;->mCapturedLocalFile:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/incallui/vt/VideoCallManager;->sendStillImage(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/vt/VideoCallManager;->mIsNearEndCaptured:Z

    iput-boolean v2, p0, Lcom/android/incallui/vt/VideoCallManager;->mIsVideoSelected:Z

    iput-boolean v2, p0, Lcom/android/incallui/vt/VideoCallManager;->mIsNearEndRecorded:Z

    iput-boolean v2, p0, Lcom/android/incallui/vt/VideoCallManager;->mIsImageSelected:Z

    :goto_1
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->getVTCallState()Lcom/android/incallui/vt/VTCallState;

    move-result-object v0

    invoke-virtual {p0, v2}, Lcom/android/incallui/vt/VideoCallManager;->GetValidFileName(Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/incallui/vt/VTCallState;->mCapturedLocalFile:Ljava/lang/String;

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/incallui/vt/VideoCallManager;->showMemoryFullAlert()V

    goto :goto_1
.end method

.method public checkResumeVideo(I)Z
    .locals 3

    const/4 v2, -0x1

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/incallui/vt/VideoCallManager;->mHeldCallId:I

    if-ne v1, p1, :cond_0

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/incallui/vt/VideoCallManager;->mHeldCallId2:I

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/android/incallui/vt/VideoCallManager;->mHeldCallId2:I

    iput v1, p0, Lcom/android/incallui/vt/VideoCallManager;->mHeldCallId:I

    iput v2, p0, Lcom/android/incallui/vt/VideoCallManager;->mHeldCallId2:I

    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkResumeVideo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/incallui/vt/VideoCallManager;->mHeldCallId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/incallui/vt/VideoCallManager;->mHeldCallId2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/incallui/vt/VideoCallManager;->log(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkResumeVideo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/incallui/vt/VideoCallManager;->log(Ljava/lang/String;)V

    return v0

    :cond_1
    iput v2, p0, Lcom/android/incallui/vt/VideoCallManager;->mHeldCallId:I

    goto :goto_0
.end method

.method public checkStorageMemorySpace(Z)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v2, Ljava/io/File;

    const-string v3, "/sdcard/"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Landroid/os/StatFs;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v2

    int-to-long v4, v2

    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v2

    int-to-long v2, v2

    mul-long/2addr v2, v4

    const-wide/16 v4, 0x400

    div-long/2addr v2, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Memory Size Avialable is in Kb : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/incallui/vt/VideoCallManager;->log(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    const-wide/16 v4, 0x2710

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method cleanupCall()V
    .locals 1

    const-string v0, "cleanupCall for CS VT"

    invoke-direct {p0, v0}, Lcom/android/incallui/vt/VideoCallManager;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/vt/VideoCallManager;->mCsVTManager:Lsiso/vt/VTManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/vt/VideoCallManager;->mCsVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v0}, Lsiso/vt/VTManager;->cleanupCall()V

    :cond_0
    return-void
.end method

.method public closeCamera()V
    .locals 3

    invoke-direct {p0}, Lcom/android/incallui/vt/VideoCallManager;->getCallType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/incallui/vt/VideoCallManager;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/vt/VideoCallManager;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    invoke-interface {v1}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;->closeCamera()V
    :try_end_0
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/samsung/commonimsinterface/imscommon/IMSException;->printStackTrace()V

    goto :goto_0
.end method

.method public deleteFile(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method public displayToast(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/vt/VideoCallManager;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/incallui/vt/VideoCallManager;->mToastContext:Landroid/content/Context;

    const-string v0, "t_white_theme"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/vt/VideoCallManager;->mToastContext:Landroid/content/Context;

    const v1, 0x103012b

    invoke-virtual {v0, v1}, Landroid/content/Context;->setTheme(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/vt/VideoCallManager;->mToastContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/vt/VideoCallManager;->mToast:Landroid/widget/Toast;

    iget-object v0, p0, Lcom/android/incallui/vt/VideoCallManager;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/vt/VideoCallManager;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_1
    return-void
.end method

.method public displayToast(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/vt/VideoCallManager;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/incallui/vt/VideoCallManager;->mToastContext:Landroid/content/Context;

    const-string v0, "t_white_theme"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/vt/VideoCallManager;->mToastContext:Landroid/content/Context;

    const v1, 0x103012b

    invoke-virtual {v0, v1}, Landroid/content/Context;->setTheme(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/vt/VideoCallManager;->mToastContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/vt/VideoCallManager;->mToast:Landroid/widget/Toast;

    iget-object v0, p0, Lcom/android/incallui/vt/VideoCallManager;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/vt/VideoCallManager;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_1
    return-void
.end method

.method public dualCamera(Z)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dualCamera : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/vt/VideoCallManager;->log(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->isCanOpenDualCamera()Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f090152

    invoke-virtual {p0, v0}, Lcom/android/incallui/vt/VideoCallManager;->displayToast(I)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/android/incallui/vt/VideoCallManager$DualCameraTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/incallui/vt/VideoCallManager$DualCameraTask;-><init>(Lcom/android/incallui/vt/VideoCallManager;Lcom/android/incallui/vt/VideoCallManager$1;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Boolean;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/incallui/vt/VideoCallManager$DualCameraTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/incallui/vt/VideoCallManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x190

    const-wide/32 v2, 0x2bf20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v0, p0, Lcom/android/incallui/vt/VideoCallManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x191

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->removeDualCameraMsg()V

    goto :goto_0
.end method

.method public getAllowCamera()Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->getVTCallState()Lcom/android/incallui/vt/VTCallState;

    move-result-object v1

    iget-object v0, p0, Lcom/android/incallui/vt/VideoCallManager;->mContext:Landroid/content/Context;

    const-string v2, "device_policy"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, v1, Lcom/android/incallui/vt/VTCallState;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->getVTCallState()Lcom/android/incallui/vt/VTCallState;

    move-result-object v0

    iget-object v0, v0, Lcom/android/incallui/vt/VTCallState;->mDPM:Landroid/app/admin/DevicePolicyManager;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->getVTCallState()Lcom/android/incallui/vt/VTCallState;

    move-result-object v0

    iget-object v0, v0, Lcom/android/incallui/vt/VTCallState;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getAllowCamera(Landroid/content/ComponentName;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getBackCameraId()I
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/incallui/vt/VideoCallManager;->getCallType()I

    move-result v3

    if-ne v3, v2, :cond_0

    :goto_0
    return v2

    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/vt/VideoCallManager;->getCallType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/incallui/vt/VideoCallManager;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    if-eqz v2, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/android/incallui/vt/VideoCallManager;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    invoke-interface {v2}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;->getBackCameraId()I
    :try_end_0
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_1
    :goto_1
    move v2, v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/samsung/commonimsinterface/imscommon/IMSException;->printStackTrace()V

    goto :goto_1
.end method

.method public getCameraDirection()I
    .locals 4

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/incallui/vt/VideoCallManager;->getCallType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/incallui/vt/VideoCallManager;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/android/incallui/vt/VideoCallManager;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    invoke-interface {v2}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;->getCameraDirection()I
    :try_end_0
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/samsung/commonimsinterface/imscommon/IMSException;->printStackTrace()V

    goto :goto_0
.end method

.method public getCameraParameters(I)I
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/incallui/vt/VideoCallManager;->getCallType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/incallui/vt/VideoCallManager;->mCsVTManager:Lsiso/vt/VTManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/vt/VideoCallManager;->mCsVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v1, p1}, Lsiso/vt/VTManager;->GetCameraParams(I)I

    move-result v0

    :cond_0
    return v0
.end method

.method public getCameraParameters()Landroid/hardware/Camera$Parameters;
    .locals 4

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/incallui/vt/VideoCallManager;->getCallType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/incallui/vt/VideoCallManager;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/android/incallui/vt/VideoCallManager;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    invoke-interface {v2}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;->getCameraParameters()Landroid/hardware/Camera$Parameters;
    :try_end_0
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/samsung/commonimsinterface/imscommon/IMSException;->printStackTrace()V

    goto :goto_0
.end method

.method public getCameraState()Lcom/samsung/commonimsinterface/imscommon/CameraState;
    .locals 4

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/incallui/vt/VideoCallManager;->getCallType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    sget-object v1, Lcom/samsung/commonimsinterface/imscommon/CameraState;->PREVIEW_STARTED:Lcom/samsung/commonimsinterface/imscommon/CameraState;

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/vt/VideoCallManager;->getCallType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/incallui/vt/VideoCallManager;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/android/incallui/vt/VideoCallManager;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    invoke-interface {v2}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;->getCameraState()Lcom/samsung/commonimsinterface/imscommon/CameraState;
    :try_end_0
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/samsung/commonimsinterface/imscommon/IMSException;->printStackTrace()V

    goto :goto_0
.end method

.method public getCapturedLocalFile()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->getVTCallState()Lcom/android/incallui/vt/VTCallState;

    move-result-object v0

    iget-object v0, v0, Lcom/android/incallui/vt/VTCallState;->mCapturedLocalFile:Ljava/lang/String;

    return-object v0
.end method

.method public getFpsAndBitrate()Ljava/lang/String;
    .locals 9

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v8, -0x1

    const-string v0, "getFpsAndBitrate"

    invoke-direct {p0, v0}, Lcom/android/incallui/vt/VideoCallManager;->log(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    const-string v2, "/sdcard/sent_fps_rate.txt"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/io/File;

    const-string v2, "/sdcard/received_fps_rate.txt"

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuffer;

    const-string v2, ""

    invoke-direct {v6, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "displayFpsAndBitrate, finSentValue : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/vt/VideoCallManager;->log(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v3}, Ljava/io/FileInputStream;->read()I

    move-result v0

    if-eq v0, v8, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "displayFpsAndBitrate, ch : "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/incallui/vt/VideoCallManager;->log(Ljava/lang/String;)V

    int-to-char v0, v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v2, v4

    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v3, :cond_0

    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    :cond_0
    :goto_2
    if-eqz v2, :cond_1

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    :cond_1
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "display fps and bitrate strContent= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/vt/VideoCallManager;->log(Ljava/lang/String;)V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_8

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v6}, Ljava/lang/String;-><init>(Ljava/lang/StringBuffer;)V

    const-string v2, ";"

    invoke-virtual {v0, v2, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    move v0, v1

    :goto_4
    array-length v5, v2

    if-ge v0, v5, :cond_8

    aget-object v5, v2, v0

    const-string v6, "="

    invoke-virtual {v5, v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    aget-object v6, v5, v1

    const/4 v7, 0x1

    aget-object v5, v5, v7

    invoke-virtual {v3, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_3
    :try_start_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "displayFpsAndBitrate, strContent : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/vt/VideoCallManager;->log(Ljava/lang/String;)V

    const-string v0, ";"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "displayFpsAndBitrate, finReceivedValue : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/vt/VideoCallManager;->log(Ljava/lang/String;)V

    :goto_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->read()I

    move-result v0

    if-eq v0, v8, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "displayFpsAndBitrate, ch : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/incallui/vt/VideoCallManager;->log(Ljava/lang/String;)V

    int-to-char v0, v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_5

    :catch_1
    move-exception v0

    goto/16 :goto_1

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "displayFpsAndBitrate, strContent : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/vt/VideoCallManager;->log(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v3, :cond_5

    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    :cond_5
    :goto_6
    if-eqz v2, :cond_1

    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_3

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    move-object v3, v4

    :goto_7
    if-eqz v3, :cond_6

    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    :cond_6
    :goto_8
    if-eqz v4, :cond_7

    :try_start_a
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    :cond_7
    :goto_9
    throw v0

    :catch_6
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    :catch_7
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    :cond_8
    const-string v0, "receivedfps"

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "receivedbitrate"

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "sentfps"

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v5, "sentbitrate"

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Send: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "fps/ "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "bps"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Receive: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "fps/ "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "bps"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "display fps and bitrate = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/incallui/vt/VideoCallManager;->log(Ljava/lang/String;)V

    return-object v0

    :catchall_1
    move-exception v0

    goto/16 :goto_7

    :catchall_2
    move-exception v0

    move-object v4, v2

    goto/16 :goto_7

    :catch_8
    move-exception v0

    move-object v2, v4

    move-object v3, v4

    goto/16 :goto_1

    :cond_9
    move-object v0, v4

    goto :goto_a
.end method

.method public getFrontCameraId()I
    .locals 5

    const/4 v2, 0x2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/incallui/vt/VideoCallManager;->getCallType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    :goto_0
    return v2

    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/vt/VideoCallManager;->getCallType()I

    move-result v3

    if-ne v3, v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/vt/VideoCallManager;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    if-eqz v2, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/android/incallui/vt/VideoCallManager;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    invoke-interface {v2}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;->getFrontCameraId()I
    :try_end_0
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_1
    :goto_1
    move v2, v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/samsung/commonimsinterface/imscommon/IMSException;->printStackTrace()V

    goto :goto_1
.end method

.method public getMaxZoom()I
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/vt/VideoCallManager;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    invoke-interface {v1}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;->getMaxZoom()I
    :try_end_0
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Max zoom level["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/incallui/vt/VideoCallManager;->log(Ljava/lang/String;)V

    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lcom/samsung/commonimsinterface/imscommon/IMSException;->printStackTrace()V

    goto :goto_0
.end method

.method public getNegotiatedFPS()I
    .locals 4

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/incallui/vt/VideoCallManager;->getCallType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const/16 v1, 0xf

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/vt/VideoCallManager;->getCallType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/incallui/vt/VideoCallManager;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/android/incallui/vt/VideoCallManager;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    invoke-interface {v2}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;->getNegotiatedFPS()I
    :try_end_0
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/samsung/commonimsinterface/imscommon/IMSException;->printStackTrace()V

    goto :goto_0
.end method

.method public getNegotiatedHeight()I
    .locals 4

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/incallui/vt/VideoCallManager;->getCallType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const/16 v1, 0x90

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/vt/VideoCallManager;->getCallType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/incallui/vt/VideoCallManager;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/android/incallui/vt/VideoCallManager;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    invoke-interface {v2}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;->getNegotiatedHeight()I
    :try_end_0
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/samsung/commonimsinterface/imscommon/IMSException;->printStackTrace()V

    goto :goto_0
.end method

.method public getNegotiatedWidth()I
    .locals 4

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/incallui/vt/VideoCallManager;->getCallType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const/16 v1, 0xb0

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/vt/VideoCallManager;->getCallType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/incallui/vt/VideoCallManager;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/android/incallui/vt/VideoCallManager;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    invoke-interface {v2}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;->getNegotiatedWidth()I
    :try_end_0
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/samsung/commonimsinterface/imscommon/IMSException;->printStackTrace()V

    goto :goto_0
.end method

.method public getPickedImageTempFile()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "temp_picked_image_from_gallery.vci"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRecordingStartTimeFarEnd()J
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->getVTCallState()Lcom/android/incallui/vt/VTCallState;

    move-result-object v0

    iget-wide v0, v0, Lcom/android/incallui/vt/VTCallState;->mRecordTimeFarEnd:J

    return-wide v0
.end method

.method public getRecordingStartTimeNearEnd()J
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->getVTCallState()Lcom/android/incallui/vt/VTCallState;

    move-result-object v0

    iget-wide v0, v0, Lcom/android/incallui/vt/VTCallState;->mRecordTimeNearEnd:J

    return-wide v0
.end method

.method public getScreenRotated()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/vt/VideoCallManager;->mIsScreenRotated:Z

    return v0
.end method

.method public getVTCallState()Lcom/android/incallui/vt/VTCallState;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/vt/VideoCallManager;->mVTCallState:Lcom/android/incallui/vt/VTCallState;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/vt/VTCallState;->getInstance()Lcom/android/incallui/vt/VTCallState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/vt/VideoCallManager;->mVTCallState:Lcom/android/incallui/vt/VTCallState;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/vt/VideoCallManager;->mVTCallState:Lcom/android/incallui/vt/VTCallState;

    return-object v0
.end method

.method public getVideoHeld()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/vt/VideoCallManager;->mIsVideoHeld:Z

    return v0
.end method

.method public getVideoHeldRemote()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/vt/VideoCallManager;->mIsVideoHeldRemote:Z

    return v0
.end method

.method public getVideoMoResume()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/vt/VideoCallManager;->mIsVideoMoResume:Z

    return v0
.end method

.method public getZoom()I
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/vt/VideoCallManager;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    invoke-interface {v1}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;->getZoom()I
    :try_end_0
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Zoom level["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/incallui/vt/VideoCallManager;->log(Ljava/lang/String;)V

    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lcom/samsung/commonimsinterface/imscommon/IMSException;->printStackTrace()V

    goto :goto_0
.end method

.method public holdVideo()V
    .locals 2

    invoke-direct {p0}, Lcom/android/incallui/vt/VideoCallManager;->getCallType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/incallui/vt/VideoCallManager;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    if-eqz v0, :cond_2

    :try_start_0
    const-string v0, "holdVideo"

    invoke-direct {p0, v0}, Lcom/android/incallui/vt/VideoCallManager;->log(Ljava/lang/String;)V

    const-string v0, "att_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "tmo_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->stopCameraPreview()V

    :goto_0
    const-string v0, "vzw_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "volte_jpn_orientation_feature"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "att_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "tmo_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/vt/VideoCallManager;->mIsVideoHeld:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/vt/VideoCallManager;->mIsVideoMoResume:Z

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/vt/VideoCallManager;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    invoke-interface {v0}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;->holdVideo()V
    :try_end_0
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/samsung/commonimsinterface/imscommon/IMSException;->printStackTrace()V

    goto :goto_1
.end method

.method public initialize(Landroid/content/Context;)V
    .locals 4

    const-string v1, "Instantiating VideoCallManager"

    invoke-direct {p0, v1}, Lcom/android/incallui/vt/VideoCallManager;->log(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/incallui/vt/VideoCallManager;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/InCallPresenter;->addListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/InCallPresenter;->addIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    const/4 v1, 0x7

    invoke-static {v1, p1}, Lcom/samsung/commonimsinterface/imsinterface/CommonIMSInterface;->getInstance(ILandroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    iput-object v1, p0, Lcom/android/incallui/vt/VideoCallManager;->mImsInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    const/4 v1, 0x4

    invoke-static {v1, p1}, Lcom/samsung/commonimsinterface/imsinterface/CommonIMSInterface;->getInstance(ILandroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    iput-object v1, p0, Lcom/android/incallui/vt/VideoCallManager;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    const/4 v1, 0x0

    invoke-static {v1, p1}, Lcom/samsung/commonimsinterface/imsinterface/CommonIMSInterface;->getInstance(ILandroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForCall;

    iput-object v1, p0, Lcom/android/incallui/vt/VideoCallManager;->mImsInterfaceForCall:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForCall;

    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/vt/VideoCallManager;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/vt/VideoCallManager;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    new-instance v2, Lcom/android/incallui/vt/IMSMediaStateListener;

    iget-object v3, p0, Lcom/android/incallui/vt/VideoCallManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/incallui/vt/IMSMediaStateListener;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v2}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;->registerForMediaStateChange(Lcom/samsung/commonimsinterface/imscommon/IIMSListener;)V

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/vt/VideoCallManager;->mImsInterfaceForCall:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForCall;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/vt/VideoCallManager;->mImsInterfaceForCall:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForCall;

    new-instance v2, Lcom/android/incallui/vt/IMSMediaStateListener;

    iget-object v3, p0, Lcom/android/incallui/vt/VideoCallManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/incallui/vt/IMSMediaStateListener;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v2}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForCall;->registerForCallStateChange(Lcom/samsung/commonimsinterface/imscommon/IIMSListener;)V
    :try_end_0
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/incallui/vt/VideoCallManager;->createDefaultImages()V

    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->getBackCameraId()I

    move-result v1

    sput v1, Lcom/android/incallui/vt/VideoCallManager;->CAMERA_FACING_BACK:I

    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->getFrontCameraId()I

    move-result v1

    sput v1, Lcom/android/incallui/vt/VideoCallManager;->CAMERA_FACING_FRONT:I

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/samsung/commonimsinterface/imscommon/IMSException;->printStackTrace()V

    goto :goto_0
.end method

.method public initializeCamera(Landroid/graphics/SurfaceTexture;)V
    .locals 5

    const/4 v4, 0x1

    const-string v0, "Initializing camera"

    invoke-direct {p0, v0}, Lcom/android/incallui/vt/VideoCallManager;->log(Ljava/lang/String;)V

    :try_start_0
    const-string v0, "vzw_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "att_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getType()I

    move-result v1

    if-ne v1, v4, :cond_3

    const/4 v0, 0x3

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Initializing camera callType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "imsCallType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/incallui/vt/VideoCallManager;->log(Ljava/lang/String;)V

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallButtonPresenter;->getVideoRequestType()I

    move-result v1

    if-ne v1, v4, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->getVTCallState()Lcom/android/incallui/vt/VTCallState;

    move-result-object v1

    sget v2, Lcom/android/incallui/vt/VideoCallManager;->CAMERA_FACING_BACK:I

    iput v2, v1, Lcom/android/incallui/vt/VTCallState;->mCurrentCameraId:I

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->getVTCallState()Lcom/android/incallui/vt/VTCallState;

    move-result-object v1

    iget v1, v1, Lcom/android/incallui/vt/VTCallState;->mCurrentCameraId:I

    invoke-virtual {p0, v1, v0}, Lcom/android/incallui/vt/VideoCallManager;->openCamera(II)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_2
    :goto_1
    return-void

    :cond_3
    const/16 v0, 0x9

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->getVTCallState()Lcom/android/incallui/vt/VTCallState;

    move-result-object v0

    iget v0, v0, Lcom/android/incallui/vt/VTCallState;->mCurrentCameraId:I

    invoke-virtual {p0, v0}, Lcom/android/incallui/vt/VideoCallManager;->openCamera(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-eqz v0, :cond_2

    :cond_5
    :goto_2
    :try_start_1
    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->getCameraParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    if-eqz v0, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Supported Preview Sizes = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/incallui/vt/VideoCallManager;->log(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set Preview Size directly with negotiated Height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->getNegotiatedHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " negotiated width= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->getNegotiatedWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/incallui/vt/VideoCallManager;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->getNegotiatedWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->getNegotiatedHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    invoke-direct {p0, v0}, Lcom/android/incallui/vt/VideoCallManager;->setFpsRange(Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/vt/VideoCallManager;->setCameraParameters(Landroid/hardware/Camera$Parameters;)V

    :goto_3
    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->setCurrentOrientation()V

    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->getNegotiatedWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->getNegotiatedHeight()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/incallui/vt/VideoCallManager;->startCameraPreview(Landroid/graphics/SurfaceTexture;II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->closeCamera()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception while setting preview texture, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/vt/VideoCallManager;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to open camera device, error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/vt/VideoCallManager;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_6
    :try_start_2
    const-string v0, "CameraParameters is null"

    invoke-direct {p0, v0}, Lcom/android/incallui/vt/VideoCallManager;->log(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3
.end method

.method public isCameraClosed()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/incallui/vt/VideoCallManager;->getCallType()I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->getCameraState()Lcom/samsung/commonimsinterface/imscommon/CameraState;

    move-result-object v2

    sget-object v3, Lcom/samsung/commonimsinterface/imscommon/CameraState;->CAMERA_CLOSED:Lcom/samsung/commonimsinterface/imscommon/CameraState;

    if-ne v2, v3, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public isCameraEnabled()Z
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/vt/VideoCallManager;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->getVTCallState()Lcom/android/incallui/vt/VTCallState;

    move-result-object v1

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v0

    iput-object v0, v1, Lcom/android/incallui/vt/VTCallState;->mRP:Landroid/app/enterprise/RestrictionPolicy;

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->getVTCallState()Lcom/android/incallui/vt/VTCallState;

    move-result-object v0

    iget-object v0, v0, Lcom/android/incallui/vt/VTCallState;->mRP:Landroid/app/enterprise/RestrictionPolicy;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->getVTCallState()Lcom/android/incallui/vt/VTCallState;

    move-result-object v0

    iget-object v0, v0, Lcom/android/incallui/vt/VTCallState;->mRP:Landroid/app/enterprise/RestrictionPolicy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/enterprise/RestrictionPolicy;->isCameraEnabled(Z)Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isCameraRestricted()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->getAllowCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->isCameraEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/vt/VideoCallManager;->checkCameraStartConditionSecurity()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method protected isCanOpenDualCamera()Z
    .locals 4

    const/4 v0, 0x1

    const-string v1, "sys.siop.curlevel"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "currentTemperatureLevel : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lcom/android/incallui/vt/VideoCallManager;->log(Ljava/lang/String;Z)V

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public isEPDGCall(I)Z
    .locals 3

    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/CallCommandClient;->isEPDGCall(I)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isEPDGCall() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/incallui/vt/VideoCallManager;->log(Ljava/lang/String;Z)V

    return v0
.end method

.method public isFarEndRecord()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->getVTCallState()Lcom/android/incallui/vt/VTCallState;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/incallui/vt/VTCallState;->mIsFarEndRecord:Z

    return v0
.end method

.method public isFarFrameReady()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->getVTCallState()Lcom/android/incallui/vt/VTCallState;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/incallui/vt/VTCallState;->mIsFarFrameReady:Z

    return v0
.end method

.method public isLTEVideoCallMenuShow()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/incallui/vt/VideoCallManager;->mImsInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/vt/VideoCallManager;->mImsInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    invoke-interface {v0}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->isLTEVideoCallMenuShow()Z

    move-result v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isLTEVideoCallMenuShow : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/incallui/vt/VideoCallManager;->log(Ljava/lang/String;Z)V

    return v0
.end method

.method public isNearEndRecord()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->getVTCallState()Lcom/android/incallui/vt/VTCallState;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/incallui/vt/VTCallState;->mIsNearEndRecord:Z

    return v0
.end method

.method public isServiceRegistered(I)Z
    .locals 5

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/incallui/vt/VideoCallManager;->mImsInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/vt/VideoCallManager;->mImsInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    invoke-interface {v0}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->getFeatureMask()I

    move-result v0

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registeredFeature : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Lcom/android/incallui/vt/VideoCallManager;->log(Ljava/lang/String;Z)V

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    move v1, v2

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isServiceRegistered["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "] : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/android/incallui/vt/VideoCallManager;->log(Ljava/lang/String;Z)V

    return v1

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public isShowMe()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->getVTCallState()Lcom/android/incallui/vt/VTCallState;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/incallui/vt/VTCallState;->mIsShowMe:Z

    return v0
.end method

.method public isSurfaceViewSwipe()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->getVTCallState()Lcom/android/incallui/vt/VTCallState;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/incallui/vt/VTCallState;->mIsSurfaceViewSwipe:Z

    return v0
.end method

.method public isSwitchCameraClicked()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->getVTCallState()Lcom/android/incallui/vt/VTCallState;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/incallui/vt/VTCallState;->mIsSwitchCameraClicked:Z

    return v0
.end method

.method public mediaDeInit()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mediaDeInit hasLiveCall :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->hasLiveCall()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v5}, Lcom/android/incallui/vt/VideoCallManager;->log(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/incallui/vt/VideoCallManager;->mPreviewEffectState:Lcom/android/incallui/vt/PreviewEffectState;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/vt/VideoCallManager;->mPreviewEffectState:Lcom/android/incallui/vt/PreviewEffectState;

    invoke-virtual {v1}, Lcom/android/incallui/vt/PreviewEffectState;->reset()V

    :cond_0
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->hasLiveCallExceptDisconnecting()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->getVTCallState()Lcom/android/incallui/vt/VTCallState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/vt/VTCallState;->clear()V

    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/vt/VideoCallManager;->getCallType()I

    move-result v1

    if-ne v1, v5, :cond_4

    iget-object v1, p0, Lcom/android/incallui/vt/VideoCallManager;->mCsVTManager:Lsiso/vt/VTManager;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/vt/VideoCallManager;->mCsVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v1}, Lsiso/vt/VTManager;->releaseVTManager()V

    iget-object v1, p0, Lcom/android/incallui/vt/VideoCallManager;->mCsVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v1}, Lsiso/vt/VTManager;->deinitVTManager()V

    iget-object v1, p0, Lcom/android/incallui/vt/VideoCallManager;->mCsVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v1, v3}, Lsiso/vt/VTManager;->setStackStateListener(Lsiso/vt/VTManager$VTStackStateListener;)V

    iput-object v3, p0, Lcom/android/incallui/vt/VideoCallManager;->mCsVTManager:Lsiso/vt/VTManager;

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->removeDualCameraMsg()V

    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/android/incallui/vt/VideoCallManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x258

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    invoke-direct {p0}, Lcom/android/incallui/vt/VideoCallManager;->cleanup()V

    invoke-direct {p0}, Lcom/android/incallui/vt/VideoCallManager;->unRegisterLowMemoryListener()V

    invoke-direct {p0, v4}, Lcom/android/incallui/vt/VideoCallManager;->requestLowFPS(Z)V

    iput-boolean v4, p0, Lcom/android/incallui/vt/VideoCallManager;->mIsImageSelected:Z

    iput-boolean v4, p0, Lcom/android/incallui/vt/VideoCallManager;->mIsVideoSelected:Z

    iput-boolean v4, p0, Lcom/android/incallui/vt/VideoCallManager;->mIsNearEndRecorded:Z

    iput-boolean v4, p0, Lcom/android/incallui/vt/VideoCallManager;->mIsNearEndCaptured:Z

    return-void

    :cond_4
    invoke-direct {p0}, Lcom/android/incallui/vt/VideoCallManager;->getCallType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->isCameraClosed()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->stopCameraPreview()V

    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->closeCamera()V

    :cond_5
    iput-object v3, p0, Lcom/android/incallui/vt/VideoCallManager;->mNearEndSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p0, v4}, Lcom/android/incallui/vt/VideoCallManager;->setIsMediaReadyToReceivePreview(Z)V

    invoke-virtual {p0, v4}, Lcom/android/incallui/vt/VideoCallManager;->setFarFrameReady(Z)V

    iget-object v1, p0, Lcom/android/incallui/vt/VideoCallManager;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    if-eqz v1, :cond_6

    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/vt/VideoCallManager;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;->setFarEndSurface(Landroid/graphics/SurfaceTexture;)V

    iget-object v1, p0, Lcom/android/incallui/vt/VideoCallManager;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;->setDisplay(Landroid/graphics/SurfaceTexture;)V

    iget-object v1, p0, Lcom/android/incallui/vt/VideoCallManager;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    invoke-interface {v1}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;->mediaDeInit()V
    :try_end_0
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    :goto_1
    iget-object v1, p0, Lcom/android/incallui/vt/VideoCallManager;->mCsVTManager:Lsiso/vt/VTManager;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/vt/VideoCallManager;->mCsVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v1}, Lsiso/vt/VTManager;->releaseVTManager()V

    iget-object v1, p0, Lcom/android/incallui/vt/VideoCallManager;->mCsVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v1}, Lsiso/vt/VTManager;->deinitVTManager()V

    iget-object v1, p0, Lcom/android/incallui/vt/VideoCallManager;->mCsVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v1, v3}, Lsiso/vt/VTManager;->setStackStateListener(Lsiso/vt/VTManager$VTStackStateListener;)V

    iput-object v3, p0, Lcom/android/incallui/vt/VideoCallManager;->mCsVTManager:Lsiso/vt/VTManager;

    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->removeDualCameraMsg()V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/samsung/commonimsinterface/imscommon/IMSException;->printStackTrace()V

    goto :goto_1
.end method

.method public mediaInit()V
    .locals 7

    const/4 v6, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v1, "mediaInit"

    invoke-direct {p0, v1, v5}, Lcom/android/incallui/vt/VideoCallManager;->log(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/vt/PreviewEffectState;->getInstance()Lcom/android/incallui/vt/PreviewEffectState;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/vt/VideoCallManager;->mPreviewEffectState:Lcom/android/incallui/vt/PreviewEffectState;

    iput-boolean v4, p0, Lcom/android/incallui/vt/VideoCallManager;->mIsImageSelected:Z

    iput-boolean v4, p0, Lcom/android/incallui/vt/VideoCallManager;->mIsVideoSelected:Z

    iput-boolean v4, p0, Lcom/android/incallui/vt/VideoCallManager;->mIsNearEndRecorded:Z

    iput-boolean v4, p0, Lcom/android/incallui/vt/VideoCallManager;->mIsNearEndCaptured:Z

    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->getVTCallState()Lcom/android/incallui/vt/VTCallState;

    move-result-object v1

    iput-boolean v5, v1, Lcom/android/incallui/vt/VTCallState;->mMediaInitialized:Z

    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->getVTCallState()Lcom/android/incallui/vt/VTCallState;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->getBackCameraId()I

    move-result v2

    iput v2, v1, Lcom/android/incallui/vt/VTCallState;->mBackCameraId:I

    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->getVTCallState()Lcom/android/incallui/vt/VTCallState;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->getFrontCameraId()I

    move-result v2

    iput v2, v1, Lcom/android/incallui/vt/VTCallState;->mFrontCameraId:I

    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->getVTCallState()Lcom/android/incallui/vt/VTCallState;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->getVTCallState()Lcom/android/incallui/vt/VTCallState;

    move-result-object v2

    iget v2, v2, Lcom/android/incallui/vt/VTCallState;->mFrontCameraId:I

    iput v2, v1, Lcom/android/incallui/vt/VTCallState;->mCurrentCameraId:I

    invoke-direct {p0}, Lcom/android/incallui/vt/VideoCallManager;->getCallType()I

    move-result v1

    if-ne v1, v5, :cond_5

    iget-object v1, p0, Lcom/android/incallui/vt/VideoCallManager;->mCsVTManager:Lsiso/vt/VTManager;

    if-nez v1, :cond_4

    invoke-static {}, Lsiso/vt/VTManager;->getInstance()Lsiso/vt/VTManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/vt/VideoCallManager;->mCsVTManager:Lsiso/vt/VTManager;

    iget-object v1, p0, Lcom/android/incallui/vt/VideoCallManager;->mCsVTManager:Lsiso/vt/VTManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/vt/VideoCallManager;->mCsVTManager:Lsiso/vt/VTManager;

    new-instance v2, Lcom/android/incallui/vt/CsVTStackStateListener;

    iget-object v3, p0, Lcom/android/incallui/vt/VideoCallManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/incallui/vt/CsVTStackStateListener;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lsiso/vt/VTManager;->setStackStateListener(Lsiso/vt/VTManager$VTStackStateListener;)V

    iget-object v1, p0, Lcom/android/incallui/vt/VideoCallManager;->mCsVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v1, v6}, Lsiso/vt/VTManager;->setEmotionalAnimation(I)V

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/incallui/vt/VideoCallManager;->registerLowMemoryListener()V

    :cond_1
    :goto_1
    invoke-direct {p0, v5}, Lcom/android/incallui/vt/VideoCallManager;->requestLowFPS(Z)V

    const-string v1, "vzw_volte_ui"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "att_volte_ui"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "tmo_volte_ui"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "volte_jpn_orientation_feature"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    iput-boolean v4, p0, Lcom/android/incallui/vt/VideoCallManager;->mIsVideoHeld:Z

    iput-boolean v4, p0, Lcom/android/incallui/vt/VideoCallManager;->mIsVideoHeldRemote:Z

    iput-boolean v4, p0, Lcom/android/incallui/vt/VideoCallManager;->mIsVideoMoResume:Z

    iput v6, p0, Lcom/android/incallui/vt/VideoCallManager;->mHeldCallId:I

    iput v6, p0, Lcom/android/incallui/vt/VideoCallManager;->mHeldCallId2:I

    :cond_3
    return-void

    :cond_4
    const-string v1, "CS VT already mediaInit"

    invoke-direct {p0, v1}, Lcom/android/incallui/vt/VideoCallManager;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/android/incallui/vt/VideoCallManager;->getCallType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/incallui/vt/VideoCallManager;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    if-eqz v1, :cond_6

    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/vt/VideoCallManager;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    invoke-interface {v1}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;->mediaInit()V
    :try_end_0
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    :goto_2
    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->isCameraClosed()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/vt/VideoCallManager;->mNearEndSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p0, v1}, Lcom/android/incallui/vt/VideoCallManager;->initializeCamera(Landroid/graphics/SurfaceTexture;)V

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/samsung/commonimsinterface/imscommon/IMSException;->printStackTrace()V

    goto :goto_2
.end method

.method public muteCamera()V
    .locals 2

    invoke-direct {p0}, Lcom/android/incallui/vt/VideoCallManager;->getCallType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/vt/VideoCallManager;->mCsVTManager:Lsiso/vt/VTManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/vt/VideoCallManager;->mCsVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v0}, Lsiso/vt/VTManager;->MuteCamera()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/vt/VideoCallManager;->setShowMe(Z)V

    :cond_0
    return-void
.end method

.method public notifyCameraEvent(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyCameraEvent - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/vt/VideoCallManager;->log(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/incallui/vt/VideoCallManager;->handleCameraEvent(I)V

    iget-object v0, p0, Lcom/android/incallui/vt/VideoCallManager;->mVTStateListener:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/vt/VTStateListener;

    invoke-interface {v0, p1}, Lcom/android/incallui/vt/VTStateListener;->onCameraEvent(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyCameraSwitchFail(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyCameraSwitchFail - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/vt/VideoCallManager;->log(Ljava/lang/String;)V

    const v0, 0x7f090275

    invoke-virtual {p0, v0}, Lcom/android/incallui/vt/VideoCallManager;->displayToast(I)V

    sget v0, Lcom/android/incallui/vt/VideoCallManager;->CAMERA_FACING_FRONT:I

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->getVTCallState()Lcom/android/incallui/vt/VTCallState;

    move-result-object v0

    sget v1, Lcom/android/incallui/vt/VideoCallManager;->CAMERA_FACING_BACK:I

    iput v1, v0, Lcom/android/incallui/vt/VTCallState;->mCurrentCameraId:I

    :goto_0
    iget-object v0, p0, Lcom/android/incallui/vt/VideoCallManager;->mNearEndSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p0, v0}, Lcom/android/incallui/vt/VideoCallManager;->initializeCamera(Landroid/graphics/SurfaceTexture;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->getVTCallState()Lcom/android/incallui/vt/VTCallState;

    move-result-object v0

    sget v1, Lcom/android/incallui/vt/VideoCallManager;->CAMERA_FACING_FRONT:I

    iput v1, v0, Lcom/android/incallui/vt/VTCallState;->mCurrentCameraId:I

    goto :goto_0
.end method

.method public notifyCaptureAndRecordEvent(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyCaptureAndRecordEvent - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/vt/VideoCallManager;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/vt/VideoCallManager;->mVTStateListener:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/vt/VTStateListener;

    invoke-interface {v0, p1}, Lcom/android/incallui/vt/VTStateListener;->onCaptureAndRecordEvent(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyCastingEvent(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyCastingEvent - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/vt/VideoCallManager;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/vt/VideoCallManager;->mVTStateListener:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/vt/VTStateListener;

    invoke-interface {v0, p1}, Lcom/android/incallui/vt/VTStateListener;->onCastingEvent(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyVideoCallEvent(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyVideoCallEvent - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/vt/VideoCallManager;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/vt/VideoCallManager;->mVTStateListener:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/vt/VTStateListener;

    invoke-interface {v0, p1}, Lcom/android/incallui/vt/VTStateListener;->onVideoCallEvent(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyVideoCallEvent(ILsiso/vt/VideoTelephonyData;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyVideoCallEvent - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", with data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/vt/VideoCallManager;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/vt/VideoCallManager;->mVTStateListener:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/vt/VTStateListener;

    invoke-interface {v0, p1, p2}, Lcom/android/incallui/vt/VTStateListener;->onVideoCallEvent(ILsiso/vt/VideoTelephonyData;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onIncomingCall(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/services/telephony/common/Call;)V
    .locals 2

    const-string v0, "onIncomingCall"

    invoke-direct {p0, v0}, Lcom/android/incallui/vt/VideoCallManager;->log(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/android/services/telephony/common/Call;->getType()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/android/services/telephony/common/Call;->getDomain()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->mediaInit()V

    :cond_0
    const-string v0, "ims_ui_for_kor"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/incallui/vt/VideoCallManager;->mPreviousVTCallState:I

    invoke-direct {p0, v0}, Lcom/android/incallui/vt/VideoCallManager;->notifyQualityInfo(I)V

    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->isCameraRestricted()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/incallui/vt/VideoCallManager;->mPreviousVTCallState:I

    invoke-direct {p0, v0}, Lcom/android/incallui/vt/VideoCallManager;->notifyCameraInfo(I)V

    :cond_1
    invoke-virtual {p2}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v0

    iput v0, p0, Lcom/android/incallui/vt/VideoCallManager;->mPreviousVTCallState:I

    :cond_2
    return-void
.end method

.method public onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 8

    const/4 v7, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-virtual {p2}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/services/telephony/common/Call;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getType()I

    move-result v5

    if-eqz v5, :cond_3

    move v2, v3

    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v0

    iget v5, p0, Lcom/android/incallui/vt/VideoCallManager;->mPreviousVTCallState:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_1

    if-ne v0, v7, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/incallui/InCallPresenter;->bringToForeground(Z)V

    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/vt/VideoCallManager;->getCallType()I

    move-result v4

    if-ne v4, v3, :cond_4

    invoke-virtual {p0, p1, p2}, Lcom/android/incallui/vt/VideoCallManager;->onStateChange_CS(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    :cond_2
    :goto_1
    iput v0, p0, Lcom/android/incallui/vt/VideoCallManager;->mPreviousVTCallState:I

    return-void

    :cond_3
    move v2, v4

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/android/incallui/vt/VideoCallManager;->getCallType()I

    move-result v3

    if-ne v3, v7, :cond_2

    invoke-virtual {p0, p1, p2}, Lcom/android/incallui/vt/VideoCallManager;->onStateChange_PS(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    goto :goto_1
.end method

.method public onStateChange_CS(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStateChange_CS - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v4}, Lcom/android/incallui/vt/VideoCallManager;->log(Ljava/lang/String;Z)V

    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->getVTCallState()Lcom/android/incallui/vt/VTCallState;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/incallui/vt/VTCallState;->mIsVTStart:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->stopVTCall()V

    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->getVTCallState()Lcom/android/incallui/vt/VTCallState;

    move-result-object v0

    iput-boolean v5, v0, Lcom/android/incallui/vt/VTCallState;->mIsVTStart:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p1, v0, :cond_6

    invoke-virtual {p2}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/incallui/CallList;->getDisconnectedCall()Lcom/android/services/telephony/common/Call;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/incallui/CallList;->getDisconnectingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v2

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getType()I

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getDomain()I

    move-result v0

    if-ne v0, v4, :cond_2

    iget-object v0, p0, Lcom/android/incallui/vt/VideoCallManager;->mCsVTManager:Lsiso/vt/VTManager;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->mediaInit()V

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->getVTCallState()Lcom/android/incallui/vt/VTCallState;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/incallui/vt/VTCallState;->mIsVTStart:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->startVTCall()V

    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->getVTCallState()Lcom/android/incallui/vt/VTCallState;

    move-result-object v0

    iput-boolean v4, v0, Lcom/android/incallui/vt/VTCallState;->mIsVTStart:Z

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/android/services/telephony/common/Call;->getType()I

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getType()I

    move-result v0

    if-eqz v0, :cond_0

    :cond_5
    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->getVTCallState()Lcom/android/incallui/vt/VTCallState;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/incallui/vt/VTCallState;->mIsVTStart:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->getVTCallState()Lcom/android/incallui/vt/VTCallState;

    move-result-object v0

    iput-boolean v5, v0, Lcom/android/incallui/vt/VTCallState;->mIsVTStart:Z

    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->stopVTCall()V

    goto :goto_0

    :cond_6
    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getType()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->mediaInit()V

    goto :goto_0
.end method

.method public onStateChange_PS(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 8

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/services/telephony/common/Call;

    move-result-object v4

    if-eqz v4, :cond_e

    invoke-virtual {v4}, Lcom/android/services/telephony/common/Call;->getType()I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_0
    invoke-virtual {v4}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v3

    invoke-static {v3}, Lcom/android/services/telephony/common/Call$State;->isConnected(I)Z

    move-result v3

    move v7, v3

    move v3, v0

    move v0, v7

    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onStateChange_PS - state : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " isVideoCall : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " isAlive : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v1}, Lcom/android/incallui/vt/VideoCallManager;->log(Ljava/lang/String;Z)V

    if-eqz v3, :cond_a

    if-eqz v0, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onStateChange_PS - mMediaInitialized : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->getVTCallState()Lcom/android/incallui/vt/VTCallState;

    move-result-object v5

    iget-boolean v5, v5, Lcom/android/incallui/vt/VTCallState;->mMediaInitialized:Z

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " mIsVTStart : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->getVTCallState()Lcom/android/incallui/vt/VTCallState;

    move-result-object v5

    iget-boolean v5, v5, Lcom/android/incallui/vt/VTCallState;->mIsVTStart:Z

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/vt/VideoCallManager;->log(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->getVTCallState()Lcom/android/incallui/vt/VTCallState;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/incallui/vt/VTCallState;->mMediaInitialized:Z

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->mediaInit()V

    :cond_0
    :goto_2
    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->getVTCallState()Lcom/android/incallui/vt/VTCallState;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/incallui/vt/VTCallState;->mIsVTStart:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->getVTCallState()Lcom/android/incallui/vt/VTCallState;

    move-result-object v0

    iput-boolean v1, v0, Lcom/android/incallui/vt/VTCallState;->mIsVTStart:Z

    :cond_1
    const-string v0, "vzw_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "att_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "tmo_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_2
    invoke-virtual {v4}, Lcom/android/services/telephony/common/Call;->getType()I

    move-result v0

    const/4 v5, 0x4

    if-eq v0, v5, :cond_3

    invoke-virtual {v4}, Lcom/android/services/telephony/common/Call;->getType()I

    move-result v0

    const/4 v4, 0x5

    if-ne v0, v4, :cond_6

    :cond_3
    iput-boolean v1, p0, Lcom/android/incallui/vt/VideoCallManager;->mIsPrevModify:Z

    :goto_3
    return-void

    :cond_4
    move v0, v2

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->isCameraClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/vt/VideoCallManager;->mNearEndSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p0, v0}, Lcom/android/incallui/vt/VideoCallManager;->initializeCamera(Landroid/graphics/SurfaceTexture;)V

    goto :goto_2

    :cond_6
    iget-boolean v0, p0, Lcom/android/incallui/vt/VideoCallManager;->mIsPrevVideo:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/android/incallui/vt/VideoCallManager;->mIsPrevModify:Z

    if-ne v0, v1, :cond_7

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getAudioMode()I

    move-result v0

    iput v0, p0, Lcom/android/incallui/vt/VideoCallManager;->mPrevAudioMode:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onStateChange_PS mPrevSpeakerMode "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p0, Lcom/android/incallui/vt/VideoCallManager;->mPrevAudioMode:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/vt/VideoCallManager;->log(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getAudioMode()I

    move-result v0

    sget v1, Lcom/android/services/telephony/common/AudioMode;->WIRED_HEADSET:I

    if-eq v0, v1, :cond_7

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getAudioMode()I

    move-result v0

    sget v1, Lcom/android/services/telephony/common/AudioMode;->BLUETOOTH:I

    if-eq v0, v1, :cond_7

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    sget v1, Lcom/android/services/telephony/common/AudioMode;->SPEAKER:I

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->setAudioMode(I)V

    :cond_7
    :goto_4
    const-string v0, "ims_ui_for_kor"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/android/incallui/vt/VideoCallManager;->mPreviousVTCallState:I

    invoke-direct {p0, v0}, Lcom/android/incallui/vt/VideoCallManager;->notifyQualityInfo(I)V

    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->isCameraRestricted()Z

    move-result v0

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/android/incallui/vt/VideoCallManager;->mPreviousVTCallState:I

    invoke-direct {p0, v0}, Lcom/android/incallui/vt/VideoCallManager;->notifyCameraInfo(I)V

    :cond_8
    :goto_5
    iput-boolean v3, p0, Lcom/android/incallui/vt/VideoCallManager;->mIsPrevVideo:Z

    iput-boolean v2, p0, Lcom/android/incallui/vt/VideoCallManager;->mIsPrevModify:Z

    goto :goto_3

    :cond_9
    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->getVTCallState()Lcom/android/incallui/vt/VTCallState;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/incallui/vt/VTCallState;->mMediaInitialized:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->getVTCallState()Lcom/android/incallui/vt/VTCallState;

    move-result-object v0

    iput-boolean v2, v0, Lcom/android/incallui/vt/VTCallState;->mIsVTStart:Z

    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->mediaDeInit()V

    goto :goto_4

    :cond_a
    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->getVTCallState()Lcom/android/incallui/vt/VTCallState;

    move-result-object v4

    iget-boolean v4, v4, Lcom/android/incallui/vt/VTCallState;->mMediaInitialized:Z

    if-eqz v4, :cond_c

    sget-object v4, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p1, v4, :cond_b

    if-nez v0, :cond_b

    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->cleanupCall()V

    :cond_b
    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->mediaDeInit()V

    :cond_c
    const-string v4, "vzw_volte_ui"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallPresenter;->getAudioMode()I

    move-result v4

    sget v5, Lcom/android/services/telephony/common/AudioMode;->WIRED_HEADSET:I

    if-eq v4, v5, :cond_8

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallPresenter;->getAudioMode()I

    move-result v4

    sget v5, Lcom/android/services/telephony/common/AudioMode;->BLUETOOTH:I

    if-eq v4, v5, :cond_8

    sget-object v4, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p1, v4, :cond_d

    if-nez v0, :cond_d

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    sget v1, Lcom/android/services/telephony/common/AudioMode;->WIRED_OR_EARPIECE:I

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->setAudioMode(I)V

    goto :goto_5

    :cond_d
    iget-boolean v0, p0, Lcom/android/incallui/vt/VideoCallManager;->mIsPrevVideo:Z

    if-ne v0, v1, :cond_8

    goto :goto_5

    :cond_e
    move v0, v2

    move v3, v2

    goto/16 :goto_1
.end method

.method public declared-synchronized openCamera(I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "openCamera["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/incallui/vt/VideoCallManager;->log(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/incallui/vt/VideoCallManager;->getCallType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/incallui/vt/VideoCallManager;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    :try_start_1
    iget-object v2, p0, Lcom/android/incallui/vt/VideoCallManager;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    invoke-direct {p0}, Lcom/android/incallui/vt/VideoCallManager;->getIMSCallType()I

    move-result v3

    invoke-interface {v2, p1, v3}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;->openCamera(II)Z
    :try_end_1
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    :cond_0
    :goto_0
    monitor-exit p0

    return v1

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Lcom/samsung/commonimsinterface/imscommon/IMSException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized openCamera(II)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/incallui/vt/VideoCallManager;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    invoke-interface {v2, p1, p2}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;->openCamera(II)Z
    :try_end_0
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    :goto_0
    monitor-exit p0

    return v1

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Lcom/samsung/commonimsinterface/imscommon/IMSException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public recordVideo(I)Z
    .locals 2

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->startRecordingFarEndView()Z

    move-result v0

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->isShowMe()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->startRecordingNearEndView()Z

    move-result v0

    goto :goto_0

    :cond_0
    const v1, 0x7f0900c7

    invoke-virtual {p0, v1}, Lcom/android/incallui/vt/VideoCallManager;->displayToast(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public removeDualCameraMsg()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/vt/VideoCallManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x190

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/incallui/vt/VideoCallManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x191

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public removeListener(Lcom/android/incallui/vt/VTStateListener;)V
    .locals 1

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/incallui/vt/VideoCallManager;->mVTStateListener:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public resumeVideo()V
    .locals 2

    invoke-direct {p0}, Lcom/android/incallui/vt/VideoCallManager;->getCallType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/incallui/vt/VideoCallManager;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    if-eqz v0, :cond_2

    :try_start_0
    const-string v0, "resumeVideo"

    invoke-direct {p0, v0}, Lcom/android/incallui/vt/VideoCallManager;->log(Ljava/lang/String;)V

    const-string v0, "att_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "tmo_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->startCameraPreview()V

    :goto_0
    const-string v0, "volte_jpn_orientation_feature"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/vt/VideoCallManager;->mIsVideoHeld:Z

    :cond_1
    const-string v0, "vzw_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/vt/VideoCallManager;->mIsVideoMoResume:Z

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/vt/VideoCallManager;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    invoke-interface {v0}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;->resumeVideo()V
    :try_end_0
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/samsung/commonimsinterface/imscommon/IMSException;->printStackTrace()V

    goto :goto_1
.end method

.method public selectOutgoingImageFromMyFiles()V
    .locals 5

    const/4 v0, 0x0

    const/4 v4, 0x1

    const-string v1, "In selectImageFromMyFiles method"

    invoke-direct {p0, v1, v4}, Lcom/android/incallui/vt/VideoCallManager;->log(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/incallui/vt/VideoCallManager;->mHandler:Landroid/os/Handler;

    invoke-static {v1}, Lcom/android/incallui/vt/PickImageFromGallery;->registerForImageGalleryResponse(Landroid/os/Handler;)V

    const-string v1, "External Media is present"

    invoke-direct {p0, v1}, Lcom/android/incallui/vt/VideoCallManager;->log(Ljava/lang/String;)V

    new-instance v2, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/incallui/vt/VideoCallManager;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/incallui/vt/PickImageFromGallery;

    invoke-direct {v2, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "senderIsVideoCall"

    invoke-virtual {v2, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "imageSelected"

    invoke-virtual {v2, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "ims_video_outgoing_image_picture"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getFrameSize()Ljava/lang/String;

    move-result-object v1

    const-string v3, "resolution"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/incallui/vt/VideoCallManager;->checkStorageMemorySpace(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "return_file"

    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "file_path"

    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->getPickedImageTempFile()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    :goto_0
    const/high16 v0, 0x10000000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/incallui/vt/VideoCallManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_1
    invoke-static {}, Lcom/android/incallui/CallCardPresenter;->getInstance()Lcom/android/incallui/CallCardPresenter;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/incallui/CallCardPresenter;->getInstance()Lcom/android/incallui/CallCardPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/incallui/CallCardPresenter;->getInstance()Lcom/android/incallui/CallCardPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    invoke-interface {v0, v4}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->getSurfaceViewWidth(I)I

    move-result v1

    invoke-static {}, Lcom/android/incallui/CallCardPresenter;->getInstance()Lcom/android/incallui/CallCardPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    invoke-interface {v0, v4}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->getSurfaceViewHeight(I)I

    move-result v0

    :goto_1
    const-string v3, "surfaceWidth"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "surfaceHeight"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    :cond_2
    move v1, v0

    goto :goto_1
.end method

.method public selectVideoFromMyFiles()V
    .locals 4

    const/4 v3, 0x1

    const-string v0, "In selectVideoFromMyFiles method"

    invoke-direct {p0, v0, v3}, Lcom/android/incallui/vt/VideoCallManager;->log(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/vt/VideoCallManager;->mHandler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/android/incallui/vt/PickImageFromGallery;->registerForImageGalleryResponse(Landroid/os/Handler;)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/incallui/vt/VideoCallManager;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/incallui/vt/PickImageFromGallery;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "senderIsVideoCall"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "imageSelected"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/incallui/vt/VideoCallManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const-string v0, "Out selectMyVideofile method"

    invoke-direct {p0, v0}, Lcom/android/incallui/vt/VideoCallManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method public sendDTMF(Ljava/lang/String;I)V
    .locals 2

    const-string v0, "sendDTMF for VT"

    invoke-direct {p0, v0}, Lcom/android/incallui/vt/VideoCallManager;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/incallui/vt/VideoCallManager;->getCallType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/vt/VideoCallManager;->mCsVTManager:Lsiso/vt/VTManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/vt/VideoCallManager;->mCsVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v0, p1, p2}, Lsiso/vt/VTManager;->sendDTMF(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public sendLiveVideo()V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/android/incallui/vt/VideoCallManager;->getCallType()I

    move-result v1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/incallui/vt/VideoCallManager;->mCsVTManager:Lsiso/vt/VTManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/vt/VideoCallManager;->mCsVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v1}, Lsiso/vt/VTManager;->sendLiveVideo()V

    invoke-virtual {p0, v2}, Lcom/android/incallui/vt/VideoCallManager;->setShowMe(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/vt/VideoCallManager;->getCallType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/incallui/vt/VideoCallManager;->setCapturedLocalFile(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/vt/VideoCallManager;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/vt/VideoCallManager;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    invoke-interface {v1}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;->sendLiveVideo()V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/incallui/vt/VideoCallManager;->setShowMe(Z)V
    :try_end_0
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/samsung/commonimsinterface/imscommon/IMSException;->printStackTrace()V

    goto :goto_0
.end method

.method public sendStillImage()V
    .locals 9

    const-string v1, "data/data/com.android.incallui/files/preset_defaultimage_vga.jpg"

    iget-object v7, p0, Lcom/android/incallui/vt/VideoCallManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "preset_name"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v7, p0, Lcom/android/incallui/vt/VideoCallManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "preset_path"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sendStillImage preset_Name : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/incallui/vt/VideoCallManager;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/incallui/vt/VideoCallManager;->getCallType()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_b

    if-eqz v3, :cond_3

    const-string v7, "photo"

    invoke-virtual {v3, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "Default"

    invoke-virtual {v3, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_3

    :cond_0
    if-eqz v2, :cond_2

    invoke-virtual {p0, v2}, Lcom/android/incallui/vt/VideoCallManager;->sendStillImage(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v7, "data/data/com.android.incallui/files/preset_defaultimage_qcif.jpg"

    invoke-virtual {p0, v7}, Lcom/android/incallui/vt/VideoCallManager;->sendStillImage(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    if-eqz v3, :cond_a

    const-string v7, "video"

    invoke-virtual {v3, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_a

    iget-object v7, p0, Lcom/android/incallui/vt/VideoCallManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "preset_video_path"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v5, 0x0

    if-eqz v4, :cond_4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    :cond_4
    if-eqz v6, :cond_5

    invoke-direct {p0, v6}, Lcom/android/incallui/vt/VideoCallManager;->getVideoFileNameFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    :cond_5
    if-eqz v5, :cond_6

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/incallui/vt/VideoCallManager;->showVideo(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    if-nez v4, :cond_7

    const-string v7, "sendStillImage: uriString is Null,"

    invoke-direct {p0, v7}, Lcom/android/incallui/vt/VideoCallManager;->log(Ljava/lang/String;)V

    :cond_7
    if-nez v6, :cond_8

    const-string v7, "sendStillImage: videoUri is Null,"

    invoke-direct {p0, v7}, Lcom/android/incallui/vt/VideoCallManager;->log(Ljava/lang/String;)V

    :cond_8
    if-nez v5, :cond_9

    const-string v7, "sendStillImage: videoPath is null,"

    invoke-direct {p0, v7}, Lcom/android/incallui/vt/VideoCallManager;->log(Ljava/lang/String;)V

    :cond_9
    const-string v7, "sendStillImage: so setting Default Image"

    invoke-direct {p0, v7}, Lcom/android/incallui/vt/VideoCallManager;->log(Ljava/lang/String;)V

    const-string v7, "data/data/com.android.incallui/files/preset_defaultimage_qcif.jpg"

    invoke-virtual {p0, v7}, Lcom/android/incallui/vt/VideoCallManager;->sendStillImage(Ljava/lang/String;)V

    goto :goto_0

    :cond_a
    const-string v7, "sendStillImage ::preset_Name is Null "

    invoke-direct {p0, v7}, Lcom/android/incallui/vt/VideoCallManager;->log(Ljava/lang/String;)V

    const-string v7, "data/data/com.android.incallui/files/preset_defaultimage_qcif.jpg"

    invoke-virtual {p0, v7}, Lcom/android/incallui/vt/VideoCallManager;->sendStillImage(Ljava/lang/String;)V

    goto :goto_0

    :cond_b
    invoke-direct {p0}, Lcom/android/incallui/vt/VideoCallManager;->getCallType()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->getCapturedLocalFile()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_e

    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->isShowMe()Z

    move-result v7

    if-nez v7, :cond_d

    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->getCapturedLocalFile()Ljava/lang/String;

    move-result-object v1

    sget-boolean v7, Lcom/android/incallui/vt/VideoCallManager;->ENG:Z

    if-eqz v7, :cond_c

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sendStillImage imagePath : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/incallui/vt/VideoCallManager;->log(Ljava/lang/String;)V

    :cond_c
    invoke-virtual {p0, v1}, Lcom/android/incallui/vt/VideoCallManager;->sendStillImage(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_d
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/android/incallui/vt/VideoCallManager;->setCapturedLocalFile(Ljava/lang/String;)V

    :cond_e
    if-eqz v3, :cond_10

    const-string v7, "photo"

    invoke-virtual {v3, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_10

    if-eqz v2, :cond_10

    move-object v1, v2

    :goto_1
    sget-boolean v7, Lcom/android/incallui/vt/VideoCallManager;->ENG:Z

    if-eqz v7, :cond_f

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sendStillImage imagePath : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/incallui/vt/VideoCallManager;->log(Ljava/lang/String;)V

    :cond_f
    invoke-virtual {p0, v1}, Lcom/android/incallui/vt/VideoCallManager;->sendStillImage(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_10
    invoke-static {}, Lcom/android/incallui/InCallUtils;->getFrameSize()Ljava/lang/String;

    move-result-object v0

    const-string v7, "QCIF"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    const-string v1, "data/data/com.android.incallui/files/preset_defaultimage_qcif.jpg"

    goto :goto_1

    :cond_11
    const-string v7, "QVGALAND"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    const-string v1, "data/data/com.android.incallui/files/preset_default_image_qvga.jpg"

    goto :goto_1

    :cond_12
    const-string v7, "QVGA"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    const-string v1, "data/data/com.android.incallui/files/preset_defaultimage_vga.jpg"

    goto :goto_1

    :cond_13
    const-string v7, "VGALAND"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14

    const-string v1, "data/data/com.android.incallui/files/preset_defaultimage_vga_land.jpg"

    goto :goto_1

    :cond_14
    const-string v1, "data/data/com.android.incallui/files/preset_defaultimage_vga.jpg"

    goto :goto_1
.end method

.method public sendStillImage(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendStillImage file path : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/incallui/vt/VideoCallManager;->log(Ljava/lang/String;)V

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/vt/VideoCallManager;->getCallType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/incallui/vt/VideoCallManager;->mCsVTManager:Lsiso/vt/VTManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/vt/VideoCallManager;->mCsVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v2, p1}, Lsiso/vt/VTManager;->sendStillImage(Ljava/lang/String;)V

    const-string v2, "data/data/com.android.incallui/files/call_capture_noti_176x144.jpg"

    if-eq p1, v2, :cond_0

    const-string v2, "data/data/com.android.incallui/files/call_recording_noti_176x144.jpg"

    if-eq p1, v2, :cond_0

    invoke-virtual {p0, v4}, Lcom/android/incallui/vt/VideoCallManager;->setShowMe(Z)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/incallui/vt/VideoCallManager;->getCallType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v1, 0x0

    const-string v2, ".vci"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v1, 0x1

    :cond_3
    iget-object v2, p0, Lcom/android/incallui/vt/VideoCallManager;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/android/incallui/vt/VideoCallManager;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    const/16 v3, 0x100

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getFrameSize()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, p1, v3, v4, v1}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;->sendStillImage(Ljava/lang/String;ILjava/lang/String;I)V

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/incallui/vt/VideoCallManager;->setShowMe(Z)V
    :try_end_0
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/samsung/commonimsinterface/imscommon/IMSException;->printStackTrace()V

    goto :goto_0
.end method

.method setCameraDisplayOrientation(I)V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCameraDisplayOrientation orientation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/incallui/vt/VideoCallManager;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/incallui/vt/VideoCallManager;->getCallType()I

    move-result v1

    if-ne v1, v4, :cond_2

    if-ne p1, v4, :cond_0

    const-string v1, "volte_jpn_orientation_feature"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/vt/VideoCallManager;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/vt/VideoCallManager;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    invoke-interface {v1, p1}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;->setCameraDisplayOrientation(I)V
    :try_end_0
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/samsung/commonimsinterface/imscommon/IMSException;->printStackTrace()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/incallui/vt/VideoCallManager;->getCallType()I

    move-result v1

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/android/incallui/vt/VideoCallManager;->mCsVTManager:Lsiso/vt/VTManager;

    if-eqz v1, :cond_1

    packed-switch p1, :pswitch_data_0

    iget-object v1, p0, Lcom/android/incallui/vt/VideoCallManager;->mCsVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v1, v3}, Lsiso/vt/VTManager;->setOrientation(I)V

    const-string v1, "sVideoCallManager.log(VTManager.VT_ORIENTATION_PORTAIT_TOP"

    invoke-direct {p0, v1}, Lcom/android/incallui/vt/VideoCallManager;->log(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "orientation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/incallui/vt/VideoCallManager;->log(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/android/incallui/vt/VideoCallManager;->mCsVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v1, v3}, Lsiso/vt/VTManager;->setOrientation(I)V

    const-string v1, "sVideoCallManager.log(VTManager.VT_ORIENTATION_PORTAIT_TOP"

    invoke-direct {p0, v1}, Lcom/android/incallui/vt/VideoCallManager;->log(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "orientation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/incallui/vt/VideoCallManager;->log(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/incallui/vt/VideoCallManager;->mCsVTManager:Lsiso/vt/VTManager;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lsiso/vt/VTManager;->setOrientation(I)V

    const-string v1, "sVideoCallManager.log(VTManager.VT_ORIENTATION_LANDSCAPE_BOTTOM"

    invoke-direct {p0, v1}, Lcom/android/incallui/vt/VideoCallManager;->log(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "orientation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/incallui/vt/VideoCallManager;->log(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/android/incallui/vt/VideoCallManager;->mCsVTManager:Lsiso/vt/VTManager;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lsiso/vt/VTManager;->setOrientation(I)V

    const-string v1, "sVideoCallManager.log(VTManager.VT_ORIENTATION_PORTAIT_BOTTOM"

    invoke-direct {p0, v1}, Lcom/android/incallui/vt/VideoCallManager;->log(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "orientation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/incallui/vt/VideoCallManager;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/android/incallui/vt/VideoCallManager;->mCsVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v1, v4}, Lsiso/vt/VTManager;->setOrientation(I)V

    const-string v1, "sVideoCallManager.log(VTManager.VT_ORIENTATION_LANDSCAPE_TOP"

    invoke-direct {p0, v1}, Lcom/android/incallui/vt/VideoCallManager;->log(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "orientation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/incallui/vt/VideoCallManager;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setCameraEffect(I)V
    .locals 3

    const/4 v2, 0x2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCameraEffect type : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/vt/VideoCallManager;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/incallui/vt/VideoCallManager;->getCallType()I

    move-result v0

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/incallui/vt/VideoCallManager;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/incallui/vt/VideoCallManager;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    invoke-interface {v0, p1}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;->setCameraEffect(I)V
    :try_end_0
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/samsung/commonimsinterface/imscommon/IMSException;->printStackTrace()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/vt/VideoCallManager;->getCallType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0xf

    if-gt p1, v0, :cond_2

    const/4 v0, 0x5

    invoke-virtual {p0, v0, p1}, Lcom/android/incallui/vt/VideoCallManager;->setCameraParameters(II)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x10

    if-ne p1, v0, :cond_0

    const/4 v0, 0x3

    invoke-virtual {p0, v2, v0}, Lcom/android/incallui/vt/VideoCallManager;->setCameraParameters(II)V

    goto :goto_0
.end method

.method public setCameraParameters(II)V
    .locals 2

    invoke-direct {p0}, Lcom/android/incallui/vt/VideoCallManager;->getCallType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/vt/VideoCallManager;->mCsVTManager:Lsiso/vt/VTManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/vt/VideoCallManager;->mCsVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v0, p1, p2}, Lsiso/vt/VTManager;->SetCameraParams(II)I

    :cond_0
    return-void
.end method

.method public setCameraParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 3

    invoke-direct {p0}, Lcom/android/incallui/vt/VideoCallManager;->getCallType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/incallui/vt/VideoCallManager;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/vt/VideoCallManager;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    invoke-interface {v1, p1}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;->setCameraParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/samsung/commonimsinterface/imscommon/IMSException;->printStackTrace()V

    goto :goto_0
.end method

.method public setCapturedLocalFile(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->getVTCallState()Lcom/android/incallui/vt/VTCallState;

    move-result-object v0

    iput-object p1, v0, Lcom/android/incallui/vt/VTCallState;->mCapturedLocalFile:Ljava/lang/String;

    return-void
.end method

.method public setCurrentOrientation()V
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/incallui/vt/VideoCallManager;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCurrentOrientation  display rotation["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] mCurrentRotation["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->getVTCallState()Lcom/android/incallui/vt/VTCallState;

    move-result-object v3

    iget v3, v3, Lcom/android/incallui/vt/VTCallState;->mCurrentRotation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/incallui/vt/VideoCallManager;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->getVTCallState()Lcom/android/incallui/vt/VTCallState;

    move-result-object v2

    iget v2, v2, Lcom/android/incallui/vt/VTCallState;->mCurrentRotation:I

    if-eq v2, v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/incallui/vt/VideoCallManager;->setCameraDisplayOrientation(I)V

    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->getVTCallState()Lcom/android/incallui/vt/VTCallState;

    move-result-object v2

    iput v1, v2, Lcom/android/incallui/vt/VTCallState;->mCurrentRotation:I

    :cond_0
    return-void
.end method

.method public setCurrentOrientation(IZ)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCurrentOrientation vzw display rotation["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] mCurrentRotation["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->getVTCallState()Lcom/android/incallui/vt/VTCallState;

    move-result-object v1

    iget v1, v1, Lcom/android/incallui/vt/VTCallState;->mCurrentRotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] needScreenRotate["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/vt/VideoCallManager;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->getVTCallState()Lcom/android/incallui/vt/VTCallState;

    move-result-object v0

    iget v0, v0, Lcom/android/incallui/vt/VTCallState;->mCurrentRotation:I

    if-eq v0, p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/incallui/vt/VideoCallManager;->setCameraDisplayOrientation(I)V

    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->getVTCallState()Lcom/android/incallui/vt/VTCallState;

    move-result-object v0

    iput p1, v0, Lcom/android/incallui/vt/VTCallState;->mCurrentRotation:I

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/vt/VideoCallManager;->mIsScreenRotated:Z

    :cond_0
    return-void
.end method

.method public setEmotionalAnimation(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/vt/VideoCallManager;->mCsVTManager:Lsiso/vt/VTManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/vt/VideoCallManager;->mCsVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v0, p1}, Lsiso/vt/VTManager;->setEmotionalAnimation(I)V

    :cond_0
    return-void
.end method

.method public setEmotionalEyeContact(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setEmotionalEyeContact : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/vt/VideoCallManager;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/vt/VideoCallManager;->mCsVTManager:Lsiso/vt/VTManager;

    if-eqz v0, :cond_0

    :cond_0
    return-void
.end method

.method public setFarEndRecord(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->getVTCallState()Lcom/android/incallui/vt/VTCallState;

    move-result-object v0

    iput-boolean p1, v0, Lcom/android/incallui/vt/VTCallState;->mIsFarEndRecord:Z

    return-void
.end method

.method public setFarEndSurface(Landroid/graphics/SurfaceTexture;II)V
    .locals 4

    const/4 v3, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFarEndSurface surfaceTexture : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v3}, Lcom/android/incallui/vt/VideoCallManager;->log(Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/android/incallui/vt/VideoCallManager;->getCallType()I

    move-result v1

    if-ne v1, v3, :cond_2

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/vt/VideoCallManager;->mCsVTManager:Lsiso/vt/VTManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/vt/VideoCallManager;->mCsVTManager:Lsiso/vt/VTManager;

    new-instance v2, Landroid/view/Surface;

    invoke-direct {v2, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {v1, v2, p2, p3}, Lsiso/vt/VTManager;->setPreviewDisplay(Landroid/view/Surface;II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/vt/VideoCallManager;->mCsVTManager:Lsiso/vt/VTManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/vt/VideoCallManager;->mCsVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v1}, Lsiso/vt/VTManager;->ResetPreviewDisplay()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/incallui/vt/VideoCallManager;->getCallType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/incallui/vt/VideoCallManager;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/vt/VideoCallManager;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    invoke-interface {v1, p1}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;->setFarEndSurface(Landroid/graphics/SurfaceTexture;)V
    :try_end_0
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/samsung/commonimsinterface/imscommon/IMSException;->printStackTrace()V

    goto :goto_0
.end method

.method public setFarFrameReady(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->getVTCallState()Lcom/android/incallui/vt/VTCallState;

    move-result-object v0

    iput-boolean p1, v0, Lcom/android/incallui/vt/VTCallState;->mIsFarFrameReady:Z

    return-void
.end method

.method public setHeldVideoCallId()V
    .locals 3

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

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHeldVideoCallId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/incallui/vt/VideoCallManager;->mHeldCallId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/incallui/vt/VideoCallManager;->mHeldCallId2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/incallui/vt/VideoCallManager;->log(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/incallui/vt/VideoCallManager;->mHeldCallId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v0

    iput v0, p0, Lcom/android/incallui/vt/VideoCallManager;->mHeldCallId2:I

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v0

    iput v0, p0, Lcom/android/incallui/vt/VideoCallManager;->mHeldCallId:I

    goto :goto_0
.end method

.method public setIsMediaReadyToReceivePreview(Z)V
    .locals 3

    invoke-direct {p0}, Lcom/android/incallui/vt/VideoCallManager;->getCallType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/incallui/vt/VideoCallManager;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/vt/VideoCallManager;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    invoke-interface {v1, p1}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;->setIsMediaReadyToReceivePreview(Z)V
    :try_end_0
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/samsung/commonimsinterface/imscommon/IMSException;->printStackTrace()V

    goto :goto_0
.end method

.method public setNearEndRecord(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->getVTCallState()Lcom/android/incallui/vt/VTCallState;

    move-result-object v0

    iput-boolean p1, v0, Lcom/android/incallui/vt/VTCallState;->mIsNearEndRecord:Z

    return-void
.end method

.method public setNearEndSurface(Landroid/graphics/SurfaceTexture;II)V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setNearEndSurface surfaceTexture : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v4}, Lcom/android/incallui/vt/VideoCallManager;->log(Ljava/lang/String;Z)V

    iput-object p1, p0, Lcom/android/incallui/vt/VideoCallManager;->mNearEndSurface:Landroid/graphics/SurfaceTexture;

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->isCameraClosed()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "ims_ui_for_kor"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->hasLiveCallExceptDisconnecting()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "setNearEndSurface - no live call. so return"

    invoke-direct {p0, v2, v4}, Lcom/android/incallui/vt/VideoCallManager;->log(Ljava/lang/String;Z)V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/incallui/vt/VideoCallManager;->mNearEndSurface:Landroid/graphics/SurfaceTexture;

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->getVTCallState()Lcom/android/incallui/vt/VTCallState;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/incallui/vt/VTCallState;->mMediaInitialized:Z

    if-nez v2, :cond_2

    invoke-direct {p0}, Lcom/android/incallui/vt/VideoCallManager;->getCallType()I

    move-result v2

    if-ne v2, v5, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->mediaInit()V

    goto :goto_0

    :cond_2
    const-string v2, "vzw_volte_ui"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/services/telephony/common/Call;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getType()I

    move-result v2

    if-eq v2, v5, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/incallui/vt/VideoCallManager;->initializeCamera(Landroid/graphics/SurfaceTexture;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/incallui/vt/VideoCallManager;->initializeCamera(Landroid/graphics/SurfaceTexture;)V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/android/incallui/vt/VideoCallManager;->getCallType()I

    move-result v2

    if-ne v2, v4, :cond_6

    if-eqz p1, :cond_5

    iget-object v2, p0, Lcom/android/incallui/vt/VideoCallManager;->mCsVTManager:Lsiso/vt/VTManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/vt/VideoCallManager;->mCsVTManager:Lsiso/vt/VTManager;

    new-instance v3, Landroid/view/Surface;

    invoke-direct {v3, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {v2, v3, p2, p3}, Lsiso/vt/VTManager;->startCamera(Landroid/view/Surface;II)V

    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->isShowMe()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->sendLiveVideo()V

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/android/incallui/vt/VideoCallManager;->mCsVTManager:Lsiso/vt/VTManager;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->stopCameraPreview()V

    iget-object v2, p0, Lcom/android/incallui/vt/VideoCallManager;->mCsVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v2}, Lsiso/vt/VTManager;->ResetNearEndDisplay()V

    goto :goto_0

    :cond_6
    invoke-direct {p0}, Lcom/android/incallui/vt/VideoCallManager;->getCallType()I

    move-result v2

    if-ne v2, v5, :cond_0

    iget-object v2, p0, Lcom/android/incallui/vt/VideoCallManager;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/android/incallui/vt/VideoCallManager;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    invoke-interface {v2, p1}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;->setDisplay(Landroid/graphics/SurfaceTexture;)V
    :try_end_0
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/samsung/commonimsinterface/imscommon/IMSException;->printStackTrace()V

    goto :goto_0
.end method

.method public setScreenRotated(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/vt/VideoCallManager;->mIsScreenRotated:Z

    return-void
.end method

.method public setShowMe(Z)V
    .locals 2

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/services/telephony/common/Call;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->getVTCallState()Lcom/android/incallui/vt/VTCallState;

    move-result-object v0

    iput-boolean p1, v0, Lcom/android/incallui/vt/VTCallState;->mIsShowMe:Z

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/vt/VideoCallManager;->mIsImageSelected:Z

    iput-boolean v0, p0, Lcom/android/incallui/vt/VideoCallManager;->mIsVideoSelected:Z

    iput-boolean v0, p0, Lcom/android/incallui/vt/VideoCallManager;->mIsNearEndRecorded:Z

    iput-boolean v0, p0, Lcom/android/incallui/vt/VideoCallManager;->mIsNearEndCaptured:Z

    :goto_0
    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->isFarEndRecord()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->isNearEndRecord()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-interface {v0, p1}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showSwitchButton(Z)V

    const-string v0, "ims_ui_for_kor"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "volte_jpn_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-interface {v0, p1}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showDecorationButton(Z)V

    :cond_0
    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-interface {v0, p1}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->enableSwitchButton(Z)V

    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-interface {v0, p1}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->enableDecorationButton(Z)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/incallui/vt/VideoCallManager;->setEmotionalAnimation(I)V

    goto :goto_0
.end method

.method public setSurfaceViewSwipe(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->getVTCallState()Lcom/android/incallui/vt/VTCallState;

    move-result-object v0

    iput-boolean p1, v0, Lcom/android/incallui/vt/VTCallState;->mIsSurfaceViewSwipe:Z

    return-void
.end method

.method public setSwitchCameraClicked(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->getVTCallState()Lcom/android/incallui/vt/VTCallState;

    move-result-object v0

    iput-boolean p1, v0, Lcom/android/incallui/vt/VTCallState;->mIsSwitchCameraClicked:Z

    return-void
.end method

.method public setVideoHeld(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/vt/VideoCallManager;->mIsVideoHeld:Z

    return-void
.end method

.method public setVideoHeldRemote(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/vt/VideoCallManager;->mIsVideoHeldRemote:Z

    return-void
.end method

.method public setVideoMoResume(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/vt/VideoCallManager;->mIsVideoMoResume:Z

    return-void
.end method

.method public setZoom(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set zoom["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/vt/VideoCallManager;->log(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/android/incallui/vt/VideoCallManager;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    invoke-interface {v0, p1}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;->setZoom(I)V
    :try_end_0
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/samsung/commonimsinterface/imscommon/IMSException;->printStackTrace()V

    goto :goto_0
.end method

.method public showSeekBar(I)V
    .locals 1

    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/CallButtonPresenter;->showSeekBar(I)V

    return-void
.end method

.method public startCameraPreview()V
    .locals 4

    invoke-direct {p0}, Lcom/android/incallui/vt/VideoCallManager;->getCallType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/incallui/vt/VideoCallManager;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/vt/VideoCallManager;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;->startCameraPreview(Landroid/graphics/SurfaceTexture;)V
    :try_end_0
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/incallui/vt/VideoCallManager;->mNearEndSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->getNegotiatedWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->getNegotiatedHeight()I

    move-result v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/incallui/vt/VideoCallManager;->setNearEndSurface(Landroid/graphics/SurfaceTexture;II)V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/samsung/commonimsinterface/imscommon/IMSException;->printStackTrace()V

    goto :goto_0
.end method

.method public startCameraPreview(Landroid/graphics/SurfaceTexture;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/incallui/vt/VideoCallManager;->getCallType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/incallui/vt/VideoCallManager;->mCsVTManager:Lsiso/vt/VTManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/vt/VideoCallManager;->mCsVTManager:Lsiso/vt/VTManager;

    new-instance v2, Landroid/view/Surface;

    invoke-direct {v2, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {v1, v2, p2, p3}, Lsiso/vt/VTManager;->startCamera(Landroid/view/Surface;II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/vt/VideoCallManager;->getCallType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    move-object v0, p1

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/incallui/vt/VideoCallManager$1;

    invoke-direct {v2, p0, v0}, Lcom/android/incallui/vt/VideoCallManager$1;-><init>(Lcom/android/incallui/vt/VideoCallManager;Landroid/graphics/SurfaceTexture;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public startCameraPreviewWithSurface()V
    .locals 3

    invoke-direct {p0}, Lcom/android/incallui/vt/VideoCallManager;->getCallType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/incallui/vt/VideoCallManager;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/vt/VideoCallManager;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    iget-object v2, p0, Lcom/android/incallui/vt/VideoCallManager;->mNearEndSurface:Landroid/graphics/SurfaceTexture;

    invoke-interface {v1, v2}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;->startCameraPreview(Landroid/graphics/SurfaceTexture;)V
    :try_end_0
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/samsung/commonimsinterface/imscommon/IMSException;->printStackTrace()V

    goto :goto_0
.end method

.method protected startRecordingAudio()V
    .locals 2

    const-string v0, "Enter into Start Audio Recording Method..."

    invoke-direct {p0, v0}, Lcom/android/incallui/vt/VideoCallManager;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getRecorderMgr()Lcom/android/incallui/PhoneVoiceRecorderManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/PhoneVoiceRecorderManager;->isRecording()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/PhoneVoiceRecorderManager;->startRecord()V

    :cond_0
    return-void
.end method

.method public startRecordingFarEndView()Z
    .locals 5

    const/16 v4, 0x12c

    const/4 v1, 0x1

    const-string v0, "Enter into Start Far End Recording Method..."

    invoke-direct {p0, v0}, Lcom/android/incallui/vt/VideoCallManager;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/vt/VideoCallManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x258

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v1}, Lcom/android/incallui/vt/VideoCallManager;->checkStorageMemorySpace(Z)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->isNearEndRecord()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, "Already Far End Recording in Process"

    invoke-direct {p0, v1}, Lcom/android/incallui/vt/VideoCallManager;->log(Ljava/lang/String;)V

    :goto_0
    const-string v1, "End of Start Far End Recording Method..."

    invoke-direct {p0, v1}, Lcom/android/incallui/vt/VideoCallManager;->log(Ljava/lang/String;)V

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->getVTCallState()Lcom/android/incallui/vt/VTCallState;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/incallui/vt/VTCallState;->mRecordTimeFarEnd:J

    const-string v0, "vt_audio_mixed_recording"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->getVTCallState()Lcom/android/incallui/vt/VTCallState;

    move-result-object v0

    invoke-virtual {p0, v1}, Lcom/android/incallui/vt/VideoCallManager;->GetValidFileName(Z)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/incallui/vt/VTCallState;->mRecordingFileName:Ljava/lang/String;

    const-string v0, "vt_audio_mixed_recording_via_stack"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/vt/VideoCallManager;->mCsVTManager:Lsiso/vt/VTManager;

    iget-object v0, p0, Lcom/android/incallui/vt/VideoCallManager;->mCsVTManager:Lsiso/vt/VTManager;

    const/4 v0, 0x3

    :goto_2
    const-string v2, "vt_audio_mixed_recording"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "vt_audio_mixed_recording_via_stack"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->startRecordingAudio()V

    :goto_3
    invoke-virtual {p0, v1}, Lcom/android/incallui/vt/VideoCallManager;->setFarEndRecord(Z)V

    move v0, v1

    goto :goto_0

    :cond_1
    iput-boolean v1, p0, Lcom/android/incallui/vt/VideoCallManager;->mIsStartedRecord:Z

    const-string v0, "data/data/com.android.incallui/files/call_recording_noti_176x144.jpg"

    invoke-virtual {p0, v0}, Lcom/android/incallui/vt/VideoCallManager;->sendStillImage(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/vt/VideoCallManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/vt/VideoCallManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    invoke-static {}, Lcom/android/incallui/CallCardPresenter;->getInstance()Lcom/android/incallui/CallCardPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    invoke-interface {v0, v1}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->showAnimationRecord(Z)V

    iget-object v0, p0, Lcom/android/incallui/vt/VideoCallManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/vt/VideoCallManager;->mCsVTManager:Lsiso/vt/VTManager;

    iget-object v0, p0, Lcom/android/incallui/vt/VideoCallManager;->mCsVTManager:Lsiso/vt/VTManager;

    const/16 v0, 0xa

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lcom/android/incallui/vt/VideoCallManager;->mCsVTManager:Lsiso/vt/VTManager;

    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->getVTCallState()Lcom/android/incallui/vt/VTCallState;

    move-result-object v3

    iget-object v3, v3, Lcom/android/incallui/vt/VTCallState;->mRecordingFileName:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lsiso/vt/VTManager;->StartRecording(Ljava/lang/String;I)V

    goto :goto_3

    :cond_5
    invoke-direct {p0}, Lcom/android/incallui/vt/VideoCallManager;->showMemoryFullAlert()V

    goto/16 :goto_0
.end method

.method public startRecordingNearEndView()Z
    .locals 4

    const/4 v0, 0x1

    const-string v1, "Enter into Start Near End Recording Method..."

    invoke-direct {p0, v1}, Lcom/android/incallui/vt/VideoCallManager;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/vt/VideoCallManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x258

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/vt/VideoCallManager;->checkStorageMemorySpace(Z)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->getVTCallState()Lcom/android/incallui/vt/VTCallState;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/incallui/vt/VTCallState;->mRecordTimeNearEnd:J

    iget-object v1, p0, Lcom/android/incallui/vt/VideoCallManager;->mCsVTManager:Lsiso/vt/VTManager;

    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->getVTCallState()Lcom/android/incallui/vt/VTCallState;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/android/incallui/vt/VideoCallManager;->GetValidFileName(Z)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/incallui/vt/VTCallState;->mNearEndRecordingFileName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/incallui/vt/VideoCallManager;->mCsVTManager:Lsiso/vt/VTManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/vt/VideoCallManager;->mCsVTManager:Lsiso/vt/VTManager;

    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->getVTCallState()Lcom/android/incallui/vt/VTCallState;

    move-result-object v3

    iget-object v3, v3, Lcom/android/incallui/vt/VTCallState;->mNearEndRecordingFileName:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lsiso/vt/VTManager;->StartRecording(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/android/incallui/vt/VideoCallManager;->setNearEndRecord(Z)V

    :cond_0
    :goto_0
    const-string v1, "End into Start Near End Recording Method..."

    invoke-direct {p0, v1}, Lcom/android/incallui/vt/VideoCallManager;->log(Ljava/lang/String;)V

    return v0

    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/vt/VideoCallManager;->showMemoryFullAlert()V

    move v0, v1

    goto :goto_0
.end method

.method public startRecordingNearEndViewWithDelay()V
    .locals 4

    const/16 v3, 0x258

    const-string v0, "startRecordingNearEndViewWithDelay"

    invoke-direct {p0, v0}, Lcom/android/incallui/vt/VideoCallManager;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/vt/VideoCallManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/incallui/vt/VideoCallManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xfa0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public startRender(Z)V
    .locals 0

    return-void
.end method

.method startVTCall()V
    .locals 2

    invoke-direct {p0}, Lcom/android/incallui/vt/VideoCallManager;->getCallType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "startVTCall for CS VT"

    invoke-direct {p0, v0}, Lcom/android/incallui/vt/VideoCallManager;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/vt/VideoCallManager;->mCsVTManager:Lsiso/vt/VTManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/vt/VideoCallManager;->mCsVTManager:Lsiso/vt/VTManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lsiso/vt/VTManager;->StartVTCall(Z)V

    :cond_0
    return-void
.end method

.method public stopCameraPreview()V
    .locals 3

    invoke-direct {p0}, Lcom/android/incallui/vt/VideoCallManager;->getCallType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/incallui/vt/VideoCallManager;->mCsVTManager:Lsiso/vt/VTManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/vt/VideoCallManager;->mCsVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v1}, Lsiso/vt/VTManager;->stopCamera()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/vt/VideoCallManager;->getCallType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/incallui/vt/VideoCallManager;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/vt/VideoCallManager;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    invoke-interface {v1}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;->stopCameraPreview()V
    :try_end_0
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/samsung/commonimsinterface/imscommon/IMSException;->printStackTrace()V

    goto :goto_0
.end method

.method public stopRecordingFarEndView(Z)V
    .locals 7

    const-wide/16 v5, 0x3e8

    const/4 v4, 0x0

    const-string v0, "In stopRecordingFarEndView"

    invoke-direct {p0, v0}, Lcom/android/incallui/vt/VideoCallManager;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/vt/VideoCallManager;->mCsVTManager:Lsiso/vt/VTManager;

    if-eqz v0, :cond_2

    const-string v0, "vt_audio_mixed_recording"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "vt_audio_mixed_recording_via_stack"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/android/incallui/vt/VideoCallManager;->stopRecordingAudio()V

    :goto_0
    invoke-virtual {p0, v4}, Lcom/android/incallui/vt/VideoCallManager;->setFarEndRecord(Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->getRecordingStartTimeFarEnd()J

    move-result-wide v2

    sub-long/2addr v0, v2

    cmp-long v0, v0, v5

    if-gez v0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->getVTCallState()Lcom/android/incallui/vt/VTCallState;

    move-result-object v1

    iget-object v1, v1, Lcom/android/incallui/vt/VTCallState;->mRecordingFileName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    const-string v0, "vt_audio_mixed_recording"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "vt_audio_mixed_recording_via_stack"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->getVTCallState()Lcom/android/incallui/vt/VTCallState;

    move-result-object v0

    iget-object v0, v0, Lcom/android/incallui/vt/VTCallState;->mRecordingFileName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/incallui/vt/VideoCallManager;->mediaScan(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/CallCardPresenter;->getInstance()Lcom/android/incallui/CallCardPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    invoke-interface {v0, v4}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->showFarEndRecordingInfo(Z)V

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/vt/VideoCallManager;->mCsVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v0, v4}, Lsiso/vt/VTManager;->StopRecording(Z)V

    goto :goto_0

    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->getRecordingStartTimeFarEnd()J

    move-result-wide v2

    sub-long/2addr v0, v2

    cmp-long v0, v0, v5

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->getVTCallState()Lcom/android/incallui/vt/VTCallState;

    move-result-object v0

    iget-object v0, v0, Lcom/android/incallui/vt/VTCallState;->mRecordingFileName:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/android/incallui/vt/VideoCallManager;->showVideoRecordFileName(Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method public stopRecordingNearEndView(Z)V
    .locals 8

    const-wide/16 v6, 0x3e8

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/incallui/vt/VideoCallManager;->mCsVTManager:Lsiso/vt/VTManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/vt/VideoCallManager;->mCsVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v0, v5}, Lsiso/vt/VTManager;->StopRecording(Z)V

    invoke-virtual {p0, v4}, Lcom/android/incallui/vt/VideoCallManager;->setNearEndRecord(Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->getRecordingStartTimeNearEnd()J

    move-result-wide v2

    sub-long/2addr v0, v2

    cmp-long v0, v0, v6

    if-gez v0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->getVTCallState()Lcom/android/incallui/vt/VTCallState;

    move-result-object v1

    iget-object v1, v1, Lcom/android/incallui/vt/VTCallState;->mNearEndRecordingFileName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->getVTCallState()Lcom/android/incallui/vt/VTCallState;

    move-result-object v0

    iget-object v0, v0, Lcom/android/incallui/vt/VTCallState;->mNearEndRecordingFileName:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->getVTCallState()Lcom/android/incallui/vt/VTCallState;

    move-result-object v0

    iget-object v0, v0, Lcom/android/incallui/vt/VTCallState;->mNearEndRecordingFileName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/incallui/vt/VideoCallManager;->showVideo(Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/android/incallui/CallCardPresenter;->getInstance()Lcom/android/incallui/CallCardPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    invoke-interface {v0, v4}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->showNearEndRecordingInfo(Z)V

    invoke-virtual {p0, v4}, Lcom/android/incallui/vt/VideoCallManager;->setShowMe(Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->getRecordingStartTimeNearEnd()J

    move-result-wide v2

    sub-long/2addr v0, v2

    cmp-long v0, v0, v6

    if-gez v0, :cond_2

    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->getVTCallState()Lcom/android/incallui/vt/VTCallState;

    move-result-object v0

    iget-object v0, v0, Lcom/android/incallui/vt/VTCallState;->mNearEndRecordingFileName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/incallui/vt/VideoCallManager;->mediaScan(Ljava/lang/String;)V

    iput-boolean v5, p0, Lcom/android/incallui/vt/VideoCallManager;->mIsNearEndRecorded:Z

    const-string v0, "Out stop_recording"

    invoke-direct {p0, v0}, Lcom/android/incallui/vt/VideoCallManager;->log(Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->getVTCallState()Lcom/android/incallui/vt/VTCallState;

    move-result-object v0

    iget-object v0, v0, Lcom/android/incallui/vt/VTCallState;->mNearEndRecordingFileName:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/android/incallui/vt/VideoCallManager;->showVideoRecordFileName(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method stopVTCall()V
    .locals 2

    const/4 v1, 0x0

    const-string v0, "stopVTCall for CS VT"

    invoke-direct {p0, v0}, Lcom/android/incallui/vt/VideoCallManager;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/vt/VideoCallManager;->mCsVTManager:Lsiso/vt/VTManager;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->isFarEndRecord()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v1}, Lcom/android/incallui/vt/VideoCallManager;->stopRecordingFarEndView(Z)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/incallui/vt/VideoCallManager;->mCsVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v0}, Lsiso/vt/VTManager;->StopVTCall()V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->isNearEndRecord()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/incallui/vt/VideoCallManager;->stopRecordingNearEndView(Z)V

    goto :goto_0
.end method

.method public switchCamera()V
    .locals 6

    const/16 v5, 0x69

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const-string v1, "This is inside CallVtScreen switchCamera method"

    invoke-direct {p0, v1}, Lcom/android/incallui/vt/VideoCallManager;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/incallui/vt/VideoCallManager;->getCallType()I

    move-result v1

    if-ne v1, v2, :cond_4

    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->getVTCallState()Lcom/android/incallui/vt/VTCallState;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/incallui/vt/VTCallState;->isFrontCameraEnabled:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/vt/VideoCallManager;->mCsVTManager:Lsiso/vt/VTManager;

    if-eqz v1, :cond_0

    invoke-virtual {p0, v5}, Lcom/android/incallui/vt/VideoCallManager;->notifyCameraEvent(I)V

    iget-object v1, p0, Lcom/android/incallui/vt/VideoCallManager;->mCsVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v1, v4, v2}, Lsiso/vt/VTManager;->SetCameraParams(II)I

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->getVTCallState()Lcom/android/incallui/vt/VTCallState;

    move-result-object v1

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/incallui/vt/VTCallState;->isFrontCameraEnabled:Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/vt/VideoCallManager;->mCsVTManager:Lsiso/vt/VTManager;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/vt/VideoCallManager;->mCsVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v1, v4, v3}, Lsiso/vt/VTManager;->SetCameraParams(II)I

    invoke-virtual {p0, v5}, Lcom/android/incallui/vt/VideoCallManager;->notifyCameraEvent(I)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->getVTCallState()Lcom/android/incallui/vt/VTCallState;

    move-result-object v1

    iput-boolean v2, v1, Lcom/android/incallui/vt/VTCallState;->isFrontCameraEnabled:Z

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/android/incallui/vt/VideoCallManager;->getCallType()I

    move-result v1

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/android/incallui/vt/VideoCallManager;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/vt/VideoCallManager;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    invoke-interface {v1}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;->switchCamera()V

    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->getVTCallState()Lcom/android/incallui/vt/VTCallState;

    move-result-object v1

    iget v1, v1, Lcom/android/incallui/vt/VTCallState;->mCurrentCameraId:I

    sget v2, Lcom/android/incallui/vt/VideoCallManager;->CAMERA_FACING_FRONT:I

    if-ne v1, v2, :cond_5

    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->getVTCallState()Lcom/android/incallui/vt/VTCallState;

    move-result-object v1

    sget v2, Lcom/android/incallui/vt/VideoCallManager;->CAMERA_FACING_BACK:I

    iput v2, v1, Lcom/android/incallui/vt/VTCallState;->mCurrentCameraId:I
    :try_end_0
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/samsung/commonimsinterface/imscommon/IMSException;->printStackTrace()V

    goto :goto_0

    :cond_5
    :try_start_1
    invoke-virtual {p0}, Lcom/android/incallui/vt/VideoCallManager;->getVTCallState()Lcom/android/incallui/vt/VTCallState;

    move-result-object v1

    sget v2, Lcom/android/incallui/vt/VideoCallManager;->CAMERA_FACING_FRONT:I

    iput v2, v1, Lcom/android/incallui/vt/VTCallState;->mCurrentCameraId:I
    :try_end_1
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public unmuteCamera()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/android/incallui/vt/VideoCallManager;->getCallType()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/vt/VideoCallManager;->mCsVTManager:Lsiso/vt/VTManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/vt/VideoCallManager;->mCsVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v0}, Lsiso/vt/VTManager;->UnmuteCamera()V

    invoke-virtual {p0, v1}, Lcom/android/incallui/vt/VideoCallManager;->setShowMe(Z)V

    :cond_0
    return-void
.end method
