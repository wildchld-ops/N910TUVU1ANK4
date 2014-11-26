.class public Lcom/android/phone/PhoneVoiceRecorder;
.super Ljava/lang/Object;
.source "PhoneVoiceRecorder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;
    }
.end annotation


# static fields
.field public static final PHONE_PATH:Ljava/lang/String;

.field private static sMe:Lcom/android/phone/PhoneVoiceRecorder;


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private mApp:Lcom/android/phone/PhoneGlobals;

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mCallerName:Ljava/lang/String;

.field private mCallerNumber:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mInfoDurationRegistrantList:Landroid/os/RegistrantList;

.field private mIsPaused:Z

.field private mIsPreparing:Z

.field private mIsRecording:Z

.field private mIsServiceAlive:Z

.field private mRecordedDurationMSec:I

.field private mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

.field private mRecorderThread:Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;

.field private mStartRecordTime:J

.field private mStateChangedRegistrantList:Landroid/os/RegistrantList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Call"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/PhoneVoiceRecorder;->PHONE_PATH:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "PhoneVoiceRecorder"

    iput-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->LOG_TAG:Ljava/lang/String;

    iput-wide v4, p0, Lcom/android/phone/PhoneVoiceRecorder;->mStartRecordTime:J

    iput v2, p0, Lcom/android/phone/PhoneVoiceRecorder;->mRecordedDurationMSec:I

    iput-object v3, p0, Lcom/android/phone/PhoneVoiceRecorder;->mCallerNumber:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/phone/PhoneVoiceRecorder;->mCallerName:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/android/phone/PhoneVoiceRecorder;->mIsPreparing:Z

    iput-boolean v2, p0, Lcom/android/phone/PhoneVoiceRecorder;->mIsRecording:Z

    iput-boolean v2, p0, Lcom/android/phone/PhoneVoiceRecorder;->mIsPaused:Z

    iput-boolean v2, p0, Lcom/android/phone/PhoneVoiceRecorder;->mIsServiceAlive:Z

    iput-object v3, p0, Lcom/android/phone/PhoneVoiceRecorder;->mInfoDurationRegistrantList:Landroid/os/RegistrantList;

    iput-object v3, p0, Lcom/android/phone/PhoneVoiceRecorder;->mStateChangedRegistrantList:Landroid/os/RegistrantList;

    new-instance v0, Lcom/android/phone/PhoneVoiceRecorder$1;

    invoke-direct {v0, p0}, Lcom/android/phone/PhoneVoiceRecorder$1;-><init>(Lcom/android/phone/PhoneVoiceRecorder;)V

    iput-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->mHandler:Landroid/os/Handler;

    const-string v0, "PhoneVoiceRecorder Create"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/PhoneVoiceRecorder;->log(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v3, p0, Lcom/android/phone/PhoneVoiceRecorder;->mRecorderThread:Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;

    iput-boolean v2, p0, Lcom/android/phone/PhoneVoiceRecorder;->mIsPreparing:Z

    iput-boolean v2, p0, Lcom/android/phone/PhoneVoiceRecorder;->mIsRecording:Z

    iput-boolean v2, p0, Lcom/android/phone/PhoneVoiceRecorder;->mIsPaused:Z

    iput-wide v4, p0, Lcom/android/phone/PhoneVoiceRecorder;->mStartRecordTime:J

    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->mInfoDurationRegistrantList:Landroid/os/RegistrantList;

    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->mStateChangedRegistrantList:Landroid/os/RegistrantList;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/PhoneVoiceRecorder;)Z
    .locals 1
    .param p0    # Lcom/android/phone/PhoneVoiceRecorder;

    iget-boolean v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->mIsServiceAlive:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/phone/PhoneVoiceRecorder;)Landroid/os/RegistrantList;
    .locals 1
    .param p0    # Lcom/android/phone/PhoneVoiceRecorder;

    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->mStateChangedRegistrantList:Landroid/os/RegistrantList;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/phone/PhoneVoiceRecorder;)J
    .locals 2
    .param p0    # Lcom/android/phone/PhoneVoiceRecorder;

    invoke-direct {p0}, Lcom/android/phone/PhoneVoiceRecorder;->getAvailableStorage()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1102(Lcom/android/phone/PhoneVoiceRecorder;J)J
    .locals 0
    .param p0    # Lcom/android/phone/PhoneVoiceRecorder;
    .param p1    # J

    iput-wide p1, p0, Lcom/android/phone/PhoneVoiceRecorder;->mStartRecordTime:J

    return-wide p1
.end method

.method static synthetic access$1200(Lcom/android/phone/PhoneVoiceRecorder;)I
    .locals 1
    .param p0    # Lcom/android/phone/PhoneVoiceRecorder;

    iget v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->mRecordedDurationMSec:I

    return v0
.end method

.method static synthetic access$1202(Lcom/android/phone/PhoneVoiceRecorder;I)I
    .locals 0
    .param p0    # Lcom/android/phone/PhoneVoiceRecorder;
    .param p1    # I

    iput p1, p0, Lcom/android/phone/PhoneVoiceRecorder;->mRecordedDurationMSec:I

    return p1
.end method

.method static synthetic access$1300(Lcom/android/phone/PhoneVoiceRecorder;Ljava/lang/String;)V
    .locals 0
    .param p0    # Lcom/android/phone/PhoneVoiceRecorder;
    .param p1    # Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/phone/PhoneVoiceRecorder;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/phone/PhoneVoiceRecorder;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/android/phone/PhoneVoiceRecorder;

    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->mCallerNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/phone/PhoneVoiceRecorder;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0    # Lcom/android/phone/PhoneVoiceRecorder;
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/android/phone/PhoneVoiceRecorder;->mCallerNumber:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/phone/PhoneVoiceRecorder;)Lcom/android/internal/telephony/CallManager;
    .locals 1
    .param p0    # Lcom/android/phone/PhoneVoiceRecorder;

    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->mCM:Lcom/android/internal/telephony/CallManager;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/phone/PhoneVoiceRecorder;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/android/phone/PhoneVoiceRecorder;

    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->mCallerName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/PhoneVoiceRecorder;Ljava/lang/String;Z)V
    .locals 0
    .param p0    # Lcom/android/phone/PhoneVoiceRecorder;
    .param p1    # Ljava/lang/String;
    .param p2    # Z

    invoke-direct {p0, p1, p2}, Lcom/android/phone/PhoneVoiceRecorder;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/PhoneVoiceRecorder;)Lcom/android/phone/PhoneGlobals;
    .locals 1
    .param p0    # Lcom/android/phone/PhoneVoiceRecorder;

    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->mApp:Lcom/android/phone/PhoneGlobals;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/PhoneVoiceRecorder;)Landroid/os/Handler;
    .locals 1
    .param p0    # Lcom/android/phone/PhoneVoiceRecorder;

    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/phone/PhoneVoiceRecorder;Z)Z
    .locals 0
    .param p0    # Lcom/android/phone/PhoneVoiceRecorder;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/phone/PhoneVoiceRecorder;->mIsRecording:Z

    return p1
.end method

.method static synthetic access$702(Lcom/android/phone/PhoneVoiceRecorder;Z)Z
    .locals 0
    .param p0    # Lcom/android/phone/PhoneVoiceRecorder;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/phone/PhoneVoiceRecorder;->mIsPaused:Z

    return p1
.end method

.method static synthetic access$802(Lcom/android/phone/PhoneVoiceRecorder;Z)Z
    .locals 0
    .param p0    # Lcom/android/phone/PhoneVoiceRecorder;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/phone/PhoneVoiceRecorder;->mIsPreparing:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/phone/PhoneVoiceRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    .locals 1
    .param p0    # Lcom/android/phone/PhoneVoiceRecorder;

    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/phone/PhoneVoiceRecorder;Lcom/sec/android/secmediarecorder/SecMediaRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    .locals 0
    .param p0    # Lcom/android/phone/PhoneVoiceRecorder;
    .param p1    # Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iput-object p1, p0, Lcom/android/phone/PhoneVoiceRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    return-object p1
.end method

.method private checkAvailableStorage()Z
    .locals 6

    const-wide/32 v2, 0xa00000

    const-wide/32 v0, 0x10000000

    invoke-direct {p0}, Lcom/android/phone/PhoneVoiceRecorder;->getAvailableStorage()J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-lez v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private getAvailableStorage()J
    .locals 6

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAvailableStorage. storageDirectory : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/android/phone/PhoneVoiceRecorder;->log(Ljava/lang/String;Z)V

    new-instance v0, Landroid/os/StatFs;

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v2, v4

    return-wide v2
.end method

.method public static getInstance()Lcom/android/phone/PhoneVoiceRecorder;
    .locals 1

    sget-object v0, Lcom/android/phone/PhoneVoiceRecorder;->sMe:Lcom/android/phone/PhoneVoiceRecorder;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/phone/PhoneVoiceRecorder;

    invoke-direct {v0}, Lcom/android/phone/PhoneVoiceRecorder;-><init>()V

    sput-object v0, Lcom/android/phone/PhoneVoiceRecorder;->sMe:Lcom/android/phone/PhoneVoiceRecorder;

    :cond_0
    sget-object v0, Lcom/android/phone/PhoneVoiceRecorder;->sMe:Lcom/android/phone/PhoneVoiceRecorder;

    return-object v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;

    const-string v0, "PhoneVoiceRecorder"

    invoke-static {v0, p1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # Z

    const-string v0, "PhoneVoiceRecorder"

    invoke-static {v0, p1, p2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    return-void
.end method


# virtual methods
.method public checkMediaScannerRunning(Landroid/content/ContentResolver;)Z
    .locals 11
    .param p1    # Landroid/content/ContentResolver;

    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v0, "checkMediaScannerRunning()"

    invoke-direct {p0, v0, v10}, Lcom/android/phone/PhoneVoiceRecorder;->log(Ljava/lang/String;Z)V

    const/4 v8, 0x0

    if-nez p1, :cond_0

    move v0, v8

    :goto_0
    return v0

    :cond_0
    :try_start_0
    invoke-static {}, Landroid/provider/MediaStore;->getMediaScannerUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "volume"

    aput-object v3, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v10, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v0, "external"

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    move v0, v8

    goto :goto_0

    :catch_0
    move-exception v7

    move v0, v9

    goto :goto_0
.end method

.method public checkSDCardMount()Z
    .locals 3

    const-string v1, "checkMediaScannerRunning()"

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/phone/PhoneVoiceRecorder;->log(Ljava/lang/String;Z)V

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getRecordTime()J
    .locals 2

    iget v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->mRecordedDurationMSec:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getStartRecordTime()J
    .locals 2

    iget-wide v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->mStartRecordTime:J

    return-wide v0
.end method

.method public isPaused()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->mIsPaused:Z

    return v0
.end method

.method public isVoiceRecording()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->mIsRecording:Z

    return v0
.end method

.method public pauseRecord()V
    .locals 2

    const/4 v1, 0x1

    const-string v0, "pauseRecord"

    invoke-direct {p0, v0, v1}, Lcom/android/phone/PhoneVoiceRecorder;->log(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->mRecorderThread:Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/PhoneVoiceRecorder;->isPaused()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->mRecorderThread:Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;

    invoke-virtual {v0}, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->pauseRecording()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "pauseRecording failed"

    invoke-direct {p0, v0, v1}, Lcom/android/phone/PhoneVoiceRecorder;->log(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public registerForInfoStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1    # Landroid/os/Handler;
    .param p2    # I
    .param p3    # Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->mStateChangedRegistrantList:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public resumeRecord()V
    .locals 2

    const/4 v1, 0x1

    const-string v0, "resumeRecord"

    invoke-direct {p0, v0, v1}, Lcom/android/phone/PhoneVoiceRecorder;->log(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->mRecorderThread:Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/PhoneVoiceRecorder;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->mRecorderThread:Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;

    invoke-virtual {v0}, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->resumeRecording()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "resumeRecording failed"

    invoke-direct {p0, v0, v1}, Lcom/android/phone/PhoneVoiceRecorder;->log(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public setCallerNumber(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/android/phone/PhoneVoiceRecorder;->mCallerNumber:Ljava/lang/String;

    return-void
.end method

.method public setServiceAlive(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/phone/PhoneVoiceRecorder;->mIsServiceAlive:Z

    return-void
.end method

.method public startRecord()V
    .locals 7

    const/16 v6, 0x12c

    const/4 v5, 0x0

    const/4 v3, 0x1

    const-string v2, "startRecord"

    invoke-direct {p0, v2, v3}, Lcom/android/phone/PhoneVoiceRecorder;->log(Ljava/lang/String;Z)V

    iget-boolean v2, p0, Lcom/android/phone/PhoneVoiceRecorder;->mIsRecording:Z

    if-nez v2, :cond_6

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/phone/PhoneVoiceRecorder;->checkMediaScannerRunning(Landroid/content/ContentResolver;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "checkMediaScannerRunning failed"

    invoke-direct {p0, v2, v3}, Lcom/android/phone/PhoneVoiceRecorder;->log(Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/android/phone/PhoneVoiceRecorder;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/phone/PhoneVoiceRecorder;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v3}, Lcom/android/phone/PhoneGlobals;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0903f0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v2, v6, v5, v5, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/PhoneVoiceRecorder;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/PhoneVoiceRecorder;->checkSDCardMount()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "checkSDCardMount failed"

    invoke-direct {p0, v2, v3}, Lcom/android/phone/PhoneVoiceRecorder;->log(Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/android/phone/PhoneVoiceRecorder;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/phone/PhoneVoiceRecorder;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v3}, Lcom/android/phone/PhoneGlobals;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0903f1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v2, v6, v5, v5, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/PhoneVoiceRecorder;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/phone/PhoneVoiceRecorder;->checkAvailableStorage()Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "checkAvailableStorage failed"

    invoke-direct {p0, v2, v3}, Lcom/android/phone/PhoneVoiceRecorder;->log(Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/android/phone/PhoneVoiceRecorder;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/phone/PhoneVoiceRecorder;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v3}, Lcom/android/phone/PhoneGlobals;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0903ee

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v2, v6, v5, v5, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/PhoneVoiceRecorder;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_2
    iget-boolean v2, p0, Lcom/android/phone/PhoneVoiceRecorder;->mIsPreparing:Z

    if-eqz v2, :cond_3

    const-string v2, "Call recording is already running - ignore"

    invoke-direct {p0, v2, v3}, Lcom/android/phone/PhoneVoiceRecorder;->log(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    iput-boolean v3, p0, Lcom/android/phone/PhoneVoiceRecorder;->mIsPreparing:Z

    new-instance v2, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;-><init>(Lcom/android/phone/PhoneVoiceRecorder;Lcom/android/phone/PhoneVoiceRecorder$1;)V

    iput-object v2, p0, Lcom/android/phone/PhoneVoiceRecorder;->mRecorderThread:Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;

    iget-object v2, p0, Lcom/android/phone/PhoneVoiceRecorder;->mRecorderThread:Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;

    invoke-virtual {v2}, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->start()V

    iget-object v2, p0, Lcom/android/phone/PhoneVoiceRecorder;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Lcom/android/internal/telephony/CallManager;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-boolean v2, v0, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/phone/PhoneVoiceRecorder;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->getCallerName(Lcom/android/internal/telephony/CallManager;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/PhoneVoiceRecorder;->mCallerName:Ljava/lang/String;

    :cond_4
    iget-object v2, p0, Lcom/android/phone/PhoneVoiceRecorder;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->getCallerNumber(Lcom/android/internal/telephony/CallManager;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/PhoneVoiceRecorder;->mCallerNumber:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/phone/PhoneVoiceRecorder;->mCallerNumber:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/phone/PhoneVoiceRecorder;->mCallerNumber:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/PhoneVoiceRecorder;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v3}, Lcom/android/phone/PhoneGlobals;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090051

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/phone/PhoneVoiceRecorder;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->getVoicemailCallerNumber(Lcom/android/internal/telephony/CallManager;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/PhoneVoiceRecorder;->mCallerNumber:Ljava/lang/String;

    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startRecord() mCallerName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/PhoneVoiceRecorder;->mCallerName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mCallerNumber = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/PhoneVoiceRecorder;->mCallerNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/PhoneVoiceRecorder;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    const-string v2, "Call recording is already running - ignore"

    invoke-direct {p0, v2, v3}, Lcom/android/phone/PhoneVoiceRecorder;->log(Ljava/lang/String;Z)V

    goto/16 :goto_0
.end method

.method public stopRecord()V
    .locals 9

    const/16 v8, 0x12c

    const/4 v7, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    const-string v3, "stopRecord"

    invoke-direct {p0, v3, v4}, Lcom/android/phone/PhoneVoiceRecorder;->log(Ljava/lang/String;Z)V

    iget-object v3, p0, Lcom/android/phone/PhoneVoiceRecorder;->mRecorderThread:Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;

    if-eqz v3, :cond_1

    const-string v3, "stopRecording"

    invoke-direct {p0, v3, v4}, Lcom/android/phone/PhoneVoiceRecorder;->log(Ljava/lang/String;Z)V

    iget-object v3, p0, Lcom/android/phone/PhoneVoiceRecorder;->mRecorderThread:Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;

    invoke-virtual {v3}, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->stopRecording()Z

    move-result v3

    if-eqz v3, :cond_2

    const v1, 0x7f0903eb

    const-string v2, "com.sec.android.app.voicenote"

    const-string v3, "com.sec.android.app.voicenote"

    invoke-static {v3}, Lcom/android/phone/PhoneUtilsCommon;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const v1, 0x7f0903ea

    :cond_0
    iget-object v3, p0, Lcom/android/phone/PhoneVoiceRecorder;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/phone/PhoneVoiceRecorder;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v3, v8, v6, v6, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v3, p0, Lcom/android/phone/PhoneVoiceRecorder;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    iput-object v7, p0, Lcom/android/phone/PhoneVoiceRecorder;->mRecorderThread:Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;

    iput v6, p0, Lcom/android/phone/PhoneVoiceRecorder;->mRecordedDurationMSec:I

    :cond_1
    iput-boolean v6, p0, Lcom/android/phone/PhoneVoiceRecorder;->mIsPreparing:Z

    iput-boolean v6, p0, Lcom/android/phone/PhoneVoiceRecorder;->mIsRecording:Z

    iput-boolean v6, p0, Lcom/android/phone/PhoneVoiceRecorder;->mIsPaused:Z

    iput-object v7, p0, Lcom/android/phone/PhoneVoiceRecorder;->mCallerName:Ljava/lang/String;

    iput-object v7, p0, Lcom/android/phone/PhoneVoiceRecorder;->mCallerNumber:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/PhoneVoiceRecorder;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_2
    const-string v3, "stopRecording failed"

    invoke-direct {p0, v3, v4}, Lcom/android/phone/PhoneVoiceRecorder;->log(Ljava/lang/String;Z)V

    iget-object v3, p0, Lcom/android/phone/PhoneVoiceRecorder;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/phone/PhoneVoiceRecorder;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0903ec

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v3, v8, v6, v6, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v3, p0, Lcom/android/phone/PhoneVoiceRecorder;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public unregisterForInfoStateChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1    # Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->mStateChangedRegistrantList:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method
