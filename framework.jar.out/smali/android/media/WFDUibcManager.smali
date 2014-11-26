.class public Landroid/media/WFDUibcManager;
.super Ljava/lang/Object;
.source "WFDUibcManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/WFDUibcManager$2;,
        Landroid/media/WFDUibcManager$EventQueue;,
        Landroid/media/WFDUibcManager$EventDispatcher;,
        Landroid/media/WFDUibcManager$Keyevnt_arrC;,
        Landroid/media/WFDUibcManager$UIBC_Mode;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final MAX_EVENTS:I = 0xa

.field private static final MAX_KEY_EVENTS:I = 0xf

.field private static final TAG:Ljava/lang/String; = "WFDUibcManager"


# instance fields
.field private final CAMERA_0:I

.field private final CAMERA_180:I

.field private final CAMERA_270:I

.field private final CAMERA_90:I

.field private bCap:Z

.field private bNum:Z

.field private bScroll:Z

.field private bSim:Z

.field last_Ke:Landroid/view/KeyEvent;

.field private mCameraOrientation:I

.field private mContext:Landroid/content/Context;

.field private mCoupleShot:Z

.field private mEventDispatcher:Landroid/media/WFDUibcManager$EventDispatcher;

.field private mEventDispatcherThread:Ljava/lang/Thread;

.field private mEventReaderThread:Ljava/lang/Thread;

.field private mFlag:I

.field private mKeyDownTime:J

.field private mKeyUpTime:J

.field private mLandscapeOrientation:Z

.field private mMetaFlag:I

.field private mNegRs_X:F

.field private mNegRs_Y:F

.field private mOrientation:I

.field private mOrientationListener:Landroid/view/OrientationEventListener;

.field private mRepeatCnt:I

.field private mSPCOrientation:Z

.field private mTouchDownTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1    # Landroid/content/Context;

    const/4 v0, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Landroid/media/WFDUibcManager;->mEventDispatcher:Landroid/media/WFDUibcManager$EventDispatcher;

    iput-object v2, p0, Landroid/media/WFDUibcManager;->mEventReaderThread:Ljava/lang/Thread;

    iput-object v2, p0, Landroid/media/WFDUibcManager;->mEventDispatcherThread:Ljava/lang/Thread;

    iput-boolean v0, p0, Landroid/media/WFDUibcManager;->mLandscapeOrientation:Z

    iput-boolean v1, p0, Landroid/media/WFDUibcManager;->mSPCOrientation:Z

    iput v3, p0, Landroid/media/WFDUibcManager;->mOrientation:I

    iput v1, p0, Landroid/media/WFDUibcManager;->CAMERA_0:I

    iput v0, p0, Landroid/media/WFDUibcManager;->CAMERA_90:I

    const/4 v0, 0x2

    iput v0, p0, Landroid/media/WFDUibcManager;->CAMERA_180:I

    const/4 v0, 0x3

    iput v0, p0, Landroid/media/WFDUibcManager;->CAMERA_270:I

    iput v3, p0, Landroid/media/WFDUibcManager;->mCameraOrientation:I

    iput-boolean v1, p0, Landroid/media/WFDUibcManager;->mCoupleShot:Z

    iput v3, p0, Landroid/media/WFDUibcManager;->mRepeatCnt:I

    iput v1, p0, Landroid/media/WFDUibcManager;->mFlag:I

    iput-object v2, p0, Landroid/media/WFDUibcManager;->last_Ke:Landroid/view/KeyEvent;

    iput v1, p0, Landroid/media/WFDUibcManager;->mMetaFlag:I

    iput-boolean v1, p0, Landroid/media/WFDUibcManager;->bCap:Z

    iput-boolean v1, p0, Landroid/media/WFDUibcManager;->bSim:Z

    iput-boolean v1, p0, Landroid/media/WFDUibcManager;->bNum:Z

    iput-boolean v1, p0, Landroid/media/WFDUibcManager;->bScroll:Z

    const/high16 v0, 0x44f00000

    iput v0, p0, Landroid/media/WFDUibcManager;->mNegRs_X:F

    const/high16 v0, 0x44870000

    iput v0, p0, Landroid/media/WFDUibcManager;->mNegRs_Y:F

    iput-object p1, p0, Landroid/media/WFDUibcManager;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/media/WFDUibcManager$1;

    iget-object v1, p0, Landroid/media/WFDUibcManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Landroid/media/WFDUibcManager$1;-><init>(Landroid/media/WFDUibcManager;Landroid/content/Context;)V

    iput-object v0, p0, Landroid/media/WFDUibcManager;->mOrientationListener:Landroid/view/OrientationEventListener;

    return-void
.end method

.method static synthetic access$000(Landroid/media/WFDUibcManager;)I
    .locals 1
    .param p0    # Landroid/media/WFDUibcManager;

    iget v0, p0, Landroid/media/WFDUibcManager;->mOrientation:I

    return v0
.end method

.method static synthetic access$002(Landroid/media/WFDUibcManager;I)I
    .locals 0
    .param p0    # Landroid/media/WFDUibcManager;
    .param p1    # I

    iput p1, p0, Landroid/media/WFDUibcManager;->mOrientation:I

    return p1
.end method

.method static synthetic access$1002(Landroid/media/WFDUibcManager;Z)Z
    .locals 0
    .param p0    # Landroid/media/WFDUibcManager;
    .param p1    # Z

    iput-boolean p1, p0, Landroid/media/WFDUibcManager;->bSim:Z

    return p1
.end method

.method static synthetic access$1102(Landroid/media/WFDUibcManager;Z)Z
    .locals 0
    .param p0    # Landroid/media/WFDUibcManager;
    .param p1    # Z

    iput-boolean p1, p0, Landroid/media/WFDUibcManager;->bNum:Z

    return p1
.end method

.method static synthetic access$1202(Landroid/media/WFDUibcManager;Z)Z
    .locals 0
    .param p0    # Landroid/media/WFDUibcManager;
    .param p1    # Z

    iput-boolean p1, p0, Landroid/media/WFDUibcManager;->bScroll:Z

    return p1
.end method

.method static synthetic access$1300(Landroid/media/WFDUibcManager;)J
    .locals 2
    .param p0    # Landroid/media/WFDUibcManager;

    iget-wide v0, p0, Landroid/media/WFDUibcManager;->mTouchDownTime:J

    return-wide v0
.end method

.method static synthetic access$1302(Landroid/media/WFDUibcManager;J)J
    .locals 0
    .param p0    # Landroid/media/WFDUibcManager;
    .param p1    # J

    iput-wide p1, p0, Landroid/media/WFDUibcManager;->mTouchDownTime:J

    return-wide p1
.end method

.method static synthetic access$1400(Landroid/media/WFDUibcManager;)F
    .locals 1
    .param p0    # Landroid/media/WFDUibcManager;

    iget v0, p0, Landroid/media/WFDUibcManager;->mNegRs_X:F

    return v0
.end method

.method static synthetic access$1500(Landroid/media/WFDUibcManager;)F
    .locals 1
    .param p0    # Landroid/media/WFDUibcManager;

    iget v0, p0, Landroid/media/WFDUibcManager;->mNegRs_Y:F

    return v0
.end method

.method static synthetic access$1602(Landroid/media/WFDUibcManager;Z)Z
    .locals 0
    .param p0    # Landroid/media/WFDUibcManager;
    .param p1    # Z

    iput-boolean p1, p0, Landroid/media/WFDUibcManager;->mSPCOrientation:Z

    return p1
.end method

.method static synthetic access$1700(Landroid/media/WFDUibcManager;)I
    .locals 1
    .param p0    # Landroid/media/WFDUibcManager;

    iget v0, p0, Landroid/media/WFDUibcManager;->mCameraOrientation:I

    return v0
.end method

.method static synthetic access$1702(Landroid/media/WFDUibcManager;I)I
    .locals 0
    .param p0    # Landroid/media/WFDUibcManager;
    .param p1    # I

    iput p1, p0, Landroid/media/WFDUibcManager;->mCameraOrientation:I

    return p1
.end method

.method static synthetic access$1712(Landroid/media/WFDUibcManager;I)I
    .locals 1
    .param p0    # Landroid/media/WFDUibcManager;
    .param p1    # I

    iget v0, p0, Landroid/media/WFDUibcManager;->mCameraOrientation:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/media/WFDUibcManager;->mCameraOrientation:I

    return v0
.end method

.method static synthetic access$1800(Landroid/media/WFDUibcManager;)Z
    .locals 1
    .param p0    # Landroid/media/WFDUibcManager;

    iget-boolean v0, p0, Landroid/media/WFDUibcManager;->mCoupleShot:Z

    return v0
.end method

.method static synthetic access$1900(Landroid/media/WFDUibcManager;)I
    .locals 1
    .param p0    # Landroid/media/WFDUibcManager;

    iget v0, p0, Landroid/media/WFDUibcManager;->mFlag:I

    return v0
.end method

.method static synthetic access$1902(Landroid/media/WFDUibcManager;I)I
    .locals 0
    .param p0    # Landroid/media/WFDUibcManager;
    .param p1    # I

    iput p1, p0, Landroid/media/WFDUibcManager;->mFlag:I

    return p1
.end method

.method static synthetic access$1976(Landroid/media/WFDUibcManager;I)I
    .locals 1
    .param p0    # Landroid/media/WFDUibcManager;
    .param p1    # I

    iget v0, p0, Landroid/media/WFDUibcManager;->mFlag:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/media/WFDUibcManager;->mFlag:I

    return v0
.end method

.method static synthetic access$2000(Landroid/media/WFDUibcManager;)J
    .locals 2
    .param p0    # Landroid/media/WFDUibcManager;

    iget-wide v0, p0, Landroid/media/WFDUibcManager;->mKeyDownTime:J

    return-wide v0
.end method

.method static synthetic access$2002(Landroid/media/WFDUibcManager;J)J
    .locals 0
    .param p0    # Landroid/media/WFDUibcManager;
    .param p1    # J

    iput-wide p1, p0, Landroid/media/WFDUibcManager;->mKeyDownTime:J

    return-wide p1
.end method

.method static synthetic access$2100(Landroid/media/WFDUibcManager;)I
    .locals 1
    .param p0    # Landroid/media/WFDUibcManager;

    iget v0, p0, Landroid/media/WFDUibcManager;->mRepeatCnt:I

    return v0
.end method

.method static synthetic access$2102(Landroid/media/WFDUibcManager;I)I
    .locals 0
    .param p0    # Landroid/media/WFDUibcManager;
    .param p1    # I

    iput p1, p0, Landroid/media/WFDUibcManager;->mRepeatCnt:I

    return p1
.end method

.method static synthetic access$700(Landroid/media/WFDUibcManager;)Landroid/content/Context;
    .locals 1
    .param p0    # Landroid/media/WFDUibcManager;

    iget-object v0, p0, Landroid/media/WFDUibcManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Landroid/media/WFDUibcManager;)I
    .locals 1
    .param p0    # Landroid/media/WFDUibcManager;

    iget v0, p0, Landroid/media/WFDUibcManager;->mMetaFlag:I

    return v0
.end method

.method static synthetic access$802(Landroid/media/WFDUibcManager;I)I
    .locals 0
    .param p0    # Landroid/media/WFDUibcManager;
    .param p1    # I

    iput p1, p0, Landroid/media/WFDUibcManager;->mMetaFlag:I

    return p1
.end method

.method static synthetic access$872(Landroid/media/WFDUibcManager;I)I
    .locals 1
    .param p0    # Landroid/media/WFDUibcManager;
    .param p1    # I

    iget v0, p0, Landroid/media/WFDUibcManager;->mMetaFlag:I

    and-int/2addr v0, p1

    iput v0, p0, Landroid/media/WFDUibcManager;->mMetaFlag:I

    return v0
.end method

.method static synthetic access$876(Landroid/media/WFDUibcManager;I)I
    .locals 1
    .param p0    # Landroid/media/WFDUibcManager;
    .param p1    # I

    iget v0, p0, Landroid/media/WFDUibcManager;->mMetaFlag:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/media/WFDUibcManager;->mMetaFlag:I

    return v0
.end method

.method static synthetic access$900(Landroid/media/WFDUibcManager;)Z
    .locals 1
    .param p0    # Landroid/media/WFDUibcManager;

    iget-boolean v0, p0, Landroid/media/WFDUibcManager;->bCap:Z

    return v0
.end method

.method static synthetic access$902(Landroid/media/WFDUibcManager;Z)Z
    .locals 0
    .param p0    # Landroid/media/WFDUibcManager;
    .param p1    # Z

    iput-boolean p1, p0, Landroid/media/WFDUibcManager;->bCap:Z

    return p1
.end method


# virtual methods
.method public setCoupleShotMode(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Landroid/media/WFDUibcManager;->mCoupleShot:Z

    return-void
.end method

.method public setUIBCNegotiagedResolution(FF)V
    .locals 0
    .param p1    # F
    .param p2    # F

    iput p1, p0, Landroid/media/WFDUibcManager;->mNegRs_X:F

    iput p2, p0, Landroid/media/WFDUibcManager;->mNegRs_Y:F

    return-void
.end method

.method public start()Z
    .locals 5

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    new-instance v0, Landroid/media/WFDUibcManager$EventDispatcher;

    invoke-direct {v0, p0}, Landroid/media/WFDUibcManager$EventDispatcher;-><init>(Landroid/media/WFDUibcManager;)V

    iput-object v0, p0, Landroid/media/WFDUibcManager;->mEventDispatcher:Landroid/media/WFDUibcManager$EventDispatcher;

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Landroid/media/WFDUibcManager;->mEventDispatcher:Landroid/media/WFDUibcManager$EventDispatcher;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Landroid/media/WFDUibcManager;->mEventDispatcherThread:Ljava/lang/Thread;

    iget-object v0, p0, Landroid/media/WFDUibcManager;->mEventDispatcher:Landroid/media/WFDUibcManager$EventDispatcher;

    invoke-static {v0}, Landroid/media/RemoteDisplay;->nativeStartUIBC(Ljava/lang/Object;)V

    iget-object v0, p0, Landroid/media/WFDUibcManager;->mEventDispatcherThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-object v0, p0, Landroid/media/WFDUibcManager;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    iput-wide v3, p0, Landroid/media/WFDUibcManager;->mTouchDownTime:J

    iput-wide v3, p0, Landroid/media/WFDUibcManager;->mKeyDownTime:J

    iput-wide v3, p0, Landroid/media/WFDUibcManager;->mKeyUpTime:J

    const/4 v0, -0x1

    iput v0, p0, Landroid/media/WFDUibcManager;->mRepeatCnt:I

    iput v2, p0, Landroid/media/WFDUibcManager;->mFlag:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/WFDUibcManager;->last_Ke:Landroid/view/KeyEvent;

    iput v2, p0, Landroid/media/WFDUibcManager;->mMetaFlag:I

    iput-boolean v2, p0, Landroid/media/WFDUibcManager;->bCap:Z

    iput-boolean v2, p0, Landroid/media/WFDUibcManager;->bSim:Z

    iput-boolean v2, p0, Landroid/media/WFDUibcManager;->bNum:Z

    iput-boolean v2, p0, Landroid/media/WFDUibcManager;->bScroll:Z

    const-string v0, "WFDUibcManager"

    const-string v1, "Uibc Manager started"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method

.method public start(I)Z
    .locals 5
    .param p1    # I

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    new-instance v0, Landroid/media/WFDUibcManager$EventDispatcher;

    invoke-direct {v0, p0}, Landroid/media/WFDUibcManager$EventDispatcher;-><init>(Landroid/media/WFDUibcManager;)V

    iput-object v0, p0, Landroid/media/WFDUibcManager;->mEventDispatcher:Landroid/media/WFDUibcManager$EventDispatcher;

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Landroid/media/WFDUibcManager;->mEventDispatcher:Landroid/media/WFDUibcManager$EventDispatcher;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Landroid/media/WFDUibcManager;->mEventDispatcherThread:Ljava/lang/Thread;

    iget-object v0, p0, Landroid/media/WFDUibcManager;->mEventDispatcherThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-object v0, p0, Landroid/media/WFDUibcManager;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    iput-wide v3, p0, Landroid/media/WFDUibcManager;->mTouchDownTime:J

    iput-wide v3, p0, Landroid/media/WFDUibcManager;->mKeyDownTime:J

    iput-wide v3, p0, Landroid/media/WFDUibcManager;->mKeyUpTime:J

    const/4 v0, -0x1

    iput v0, p0, Landroid/media/WFDUibcManager;->mRepeatCnt:I

    iput v2, p0, Landroid/media/WFDUibcManager;->mFlag:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/WFDUibcManager;->last_Ke:Landroid/view/KeyEvent;

    iput v2, p0, Landroid/media/WFDUibcManager;->mMetaFlag:I

    iput-boolean v2, p0, Landroid/media/WFDUibcManager;->bCap:Z

    iput-boolean v2, p0, Landroid/media/WFDUibcManager;->bSim:Z

    iput-boolean v2, p0, Landroid/media/WFDUibcManager;->bNum:Z

    iput-boolean v2, p0, Landroid/media/WFDUibcManager;->bScroll:Z

    const-string v0, "WFDUibcManager"

    const-string v1, "Uibc Manager started"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method

.method public stop()Z
    .locals 8

    const/4 v7, 0x1

    const-wide/16 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v1, p0, Landroid/media/WFDUibcManager;->mEventDispatcher:Landroid/media/WFDUibcManager$EventDispatcher;

    if-nez v1, :cond_0

    :goto_0
    return v7

    :cond_0
    iget-object v1, p0, Landroid/media/WFDUibcManager;->mEventDispatcher:Landroid/media/WFDUibcManager$EventDispatcher;

    iput-boolean v3, v1, Landroid/media/WFDUibcManager$EventDispatcher;->running:Z

    invoke-static {}, Landroid/media/RemoteDisplay;->nativeStopUIBC()V

    const-string v1, "WFDUibcManager"

    const-string v2, "Going to stop Uibc manager"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v1, p0, Landroid/media/WFDUibcManager;->mEventDispatcherThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const-string v1, "WFDUibcManager"

    const-string v2, "Uibc manager stopped"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v4, p0, Landroid/media/WFDUibcManager;->mEventDispatcher:Landroid/media/WFDUibcManager$EventDispatcher;

    iput-object v4, p0, Landroid/media/WFDUibcManager;->mEventDispatcherThread:Ljava/lang/Thread;

    iput-wide v5, p0, Landroid/media/WFDUibcManager;->mTouchDownTime:J

    iput-wide v5, p0, Landroid/media/WFDUibcManager;->mKeyDownTime:J

    iput-wide v5, p0, Landroid/media/WFDUibcManager;->mKeyUpTime:J

    const/4 v1, -0x1

    iput v1, p0, Landroid/media/WFDUibcManager;->mRepeatCnt:I

    iput v3, p0, Landroid/media/WFDUibcManager;->mFlag:I

    iput-object v4, p0, Landroid/media/WFDUibcManager;->last_Ke:Landroid/view/KeyEvent;

    iput v3, p0, Landroid/media/WFDUibcManager;->mMetaFlag:I

    iput-boolean v3, p0, Landroid/media/WFDUibcManager;->bCap:Z

    iput-boolean v3, p0, Landroid/media/WFDUibcManager;->bSim:Z

    iput-boolean v3, p0, Landroid/media/WFDUibcManager;->bNum:Z

    iput-boolean v3, p0, Landroid/media/WFDUibcManager;->bScroll:Z

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "WFDUibcManager"

    const-string v2, "Error joining event dispatcher thread"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public stop(I)Z
    .locals 8
    .param p1    # I

    const/4 v7, 0x1

    const-wide/16 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v1, p0, Landroid/media/WFDUibcManager;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v1}, Landroid/view/OrientationEventListener;->disable()V

    iget-object v1, p0, Landroid/media/WFDUibcManager;->mEventDispatcher:Landroid/media/WFDUibcManager$EventDispatcher;

    if-nez v1, :cond_0

    :goto_0
    return v7

    :cond_0
    iget-object v1, p0, Landroid/media/WFDUibcManager;->mEventDispatcher:Landroid/media/WFDUibcManager$EventDispatcher;

    iput-boolean v3, v1, Landroid/media/WFDUibcManager$EventDispatcher;->running:Z

    const-string v1, "WFDUibcManager"

    const-string v2, "Going to stop Uibc manager"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v1, p0, Landroid/media/WFDUibcManager;->mEventDispatcherThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const-string v1, "WFDUibcManager"

    const-string v2, "Uibc manager stopped"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v4, p0, Landroid/media/WFDUibcManager;->mEventDispatcher:Landroid/media/WFDUibcManager$EventDispatcher;

    iput-object v4, p0, Landroid/media/WFDUibcManager;->mEventDispatcherThread:Ljava/lang/Thread;

    iput-wide v5, p0, Landroid/media/WFDUibcManager;->mTouchDownTime:J

    iput-wide v5, p0, Landroid/media/WFDUibcManager;->mKeyDownTime:J

    iput-wide v5, p0, Landroid/media/WFDUibcManager;->mKeyUpTime:J

    const/4 v1, -0x1

    iput v1, p0, Landroid/media/WFDUibcManager;->mRepeatCnt:I

    iput v3, p0, Landroid/media/WFDUibcManager;->mFlag:I

    iput-object v4, p0, Landroid/media/WFDUibcManager;->last_Ke:Landroid/view/KeyEvent;

    iput v3, p0, Landroid/media/WFDUibcManager;->mMetaFlag:I

    iput-boolean v3, p0, Landroid/media/WFDUibcManager;->bCap:Z

    iput-boolean v3, p0, Landroid/media/WFDUibcManager;->bSim:Z

    iput-boolean v3, p0, Landroid/media/WFDUibcManager;->bNum:Z

    iput-boolean v3, p0, Landroid/media/WFDUibcManager;->bScroll:Z

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "WFDUibcManager"

    const-string v2, "Error joining event dispatcher thread"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
