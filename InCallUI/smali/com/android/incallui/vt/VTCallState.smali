.class public Lcom/android/incallui/vt/VTCallState;
.super Ljava/lang/Object;
.source "VTCallState.java"


# static fields
.field private static sVTCallState:Lcom/android/incallui/vt/VTCallState;


# instance fields
.field isFrontCameraEnabled:Z

.field mBackCameraId:I

.field mCapturedLocalFile:Ljava/lang/String;

.field mCurrentCameraId:I

.field public mCurrentRotation:I

.field protected mDPM:Landroid/app/admin/DevicePolicyManager;

.field mFrontCameraId:I

.field mIsFarEndRecord:Z

.field mIsFarFrameReady:Z

.field mIsNearEndRecord:Z

.field mIsShowMe:Z

.field mIsSurfaceViewSwipe:Z

.field mIsSwitchCameraClicked:Z

.field mIsVTStart:Z

.field mMediaInitialized:Z

.field mNearEndRecordingFileName:Ljava/lang/String;

.field protected mRP:Landroid/app/enterprise/RestrictionPolicy;

.field mRecordTimeFarEnd:J

.field mRecordTimeNearEnd:J

.field mRecordingFileName:Ljava/lang/String;

.field mSelectedVideoFileName:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/android/incallui/vt/VTCallState;->mIsVTStart:Z

    iput-boolean v0, p0, Lcom/android/incallui/vt/VTCallState;->mMediaInitialized:Z

    iput-boolean v0, p0, Lcom/android/incallui/vt/VTCallState;->mIsFarFrameReady:Z

    iput-boolean v0, p0, Lcom/android/incallui/vt/VTCallState;->mIsSurfaceViewSwipe:Z

    iput-boolean v0, p0, Lcom/android/incallui/vt/VTCallState;->mIsSwitchCameraClicked:Z

    iput-boolean v2, p0, Lcom/android/incallui/vt/VTCallState;->mIsShowMe:Z

    iput-boolean v0, p0, Lcom/android/incallui/vt/VTCallState;->mIsFarEndRecord:Z

    iput-boolean v0, p0, Lcom/android/incallui/vt/VTCallState;->mIsNearEndRecord:Z

    iput-object v1, p0, Lcom/android/incallui/vt/VTCallState;->mRecordingFileName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/incallui/vt/VTCallState;->mNearEndRecordingFileName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/incallui/vt/VTCallState;->mSelectedVideoFileName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/incallui/vt/VTCallState;->mCapturedLocalFile:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/android/incallui/vt/VTCallState;->isFrontCameraEnabled:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/incallui/vt/VTCallState;->mCurrentRotation:I

    iput-object v1, p0, Lcom/android/incallui/vt/VTCallState;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iput-object v1, p0, Lcom/android/incallui/vt/VTCallState;->mRP:Landroid/app/enterprise/RestrictionPolicy;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/incallui/vt/VTCallState;
    .locals 2

    const-class v1, Lcom/android/incallui/vt/VTCallState;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/incallui/vt/VTCallState;->sVTCallState:Lcom/android/incallui/vt/VTCallState;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/incallui/vt/VTCallState;

    invoke-direct {v0}, Lcom/android/incallui/vt/VTCallState;-><init>()V

    sput-object v0, Lcom/android/incallui/vt/VTCallState;->sVTCallState:Lcom/android/incallui/vt/VTCallState;

    :cond_0
    sget-object v0, Lcom/android/incallui/vt/VTCallState;->sVTCallState:Lcom/android/incallui/vt/VTCallState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public clear()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/vt/VTCallState;->mIsVTStart:Z

    iput-boolean v0, p0, Lcom/android/incallui/vt/VTCallState;->mMediaInitialized:Z

    iput-boolean v0, p0, Lcom/android/incallui/vt/VTCallState;->mIsFarFrameReady:Z

    iput-boolean v0, p0, Lcom/android/incallui/vt/VTCallState;->mIsSurfaceViewSwipe:Z

    iput-boolean v0, p0, Lcom/android/incallui/vt/VTCallState;->mIsSwitchCameraClicked:Z

    iput-boolean v2, p0, Lcom/android/incallui/vt/VTCallState;->mIsShowMe:Z

    iput-boolean v0, p0, Lcom/android/incallui/vt/VTCallState;->mIsFarEndRecord:Z

    iput-boolean v0, p0, Lcom/android/incallui/vt/VTCallState;->mIsNearEndRecord:Z

    iput-object v1, p0, Lcom/android/incallui/vt/VTCallState;->mRecordingFileName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/incallui/vt/VTCallState;->mNearEndRecordingFileName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/incallui/vt/VTCallState;->mSelectedVideoFileName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/incallui/vt/VTCallState;->mCapturedLocalFile:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/android/incallui/vt/VTCallState;->isFrontCameraEnabled:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/incallui/vt/VTCallState;->mCurrentRotation:I

    iput-object v1, p0, Lcom/android/incallui/vt/VTCallState;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iput-object v1, p0, Lcom/android/incallui/vt/VTCallState;->mRP:Landroid/app/enterprise/RestrictionPolicy;

    return-void
.end method
